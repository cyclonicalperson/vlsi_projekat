`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////
// Modul: morse_echo
// Opis : Reprodukuje (echo-uje) upravo dekodiranu Morse sekvencu kroz
//        bljeskanje RGB LED-a, kao vizuelnu potvrdu da je hardver tacno
//        procitao unos sa dugmica. Ovo zamenjuje potrebu za stvarnim
//        alfanumerickim displejom, koji plocica nema.
//
//        Kada char_ready puls stigne (iz morse_fsm), modul "pokrene"
//        animaciju:
//          - Za svaki simbol u echo_symbols (citano od bit[0] nadalje,
//            echo_count simbola ukupno): kratak bljesak (tacka) ili
//            duzi bljesak (crta), razdvojeni kratkim periodom gasenja.
//          - Boja bljeskanja: zelena za normalan simbol.
//          - Ako je echo_count==0 (razmak izmedju reci): jedan kratak
//            plavi bljesak umesto Morse sekvence.
//          - Ako je decode_error=1 (nevalidna sekvenca): na kraju
//            animacije, dodatni duzi CRVENI bljesak kao signal greske.
//          - Dok je animacija u toku, novi char_ready pulsevi se
//            ignorisu (korisnik treba sacekati kraj echo-a pre unosa
//            sledeceg slova - u praksi ENTER je vec spor ljudski dogadjaj,
//            tako da ovo ne ometa normalnu upotrebu).
//
//        Vremenski parametri (podesivi preko parametara modula):
//          DOT_MS   - trajanje bljeska za tacku (ms)
//          DASH_MS  - trajanje bljeska za crtu (ms), tipicno 3x DOT_MS
//          GAP_MS   - pauza (LED ugasen) izmedju simbola (ms)
//          ERROR_MS - trajanje zavrsnog crvenog bljeska za gresku (ms)
//
//        NAPOMENA: ovaj modul animira JEDAN karakter po pozivu (jedan
//        char_ready puls = jedna animacija). Koristi se na dva mesta:
//          1) Live echo - morse_top.v prosledjuje char_ready direktno
//             iz morse_fsm.v za trenutno otkucano slovo.
//          2) Replay cele poruke - morse_replay.v "diriguje" ovaj modul
//             redom za svaki karakter iz message_buffer.v, koristeci
//             done izlaz da zna kada da prosledi sledeci karakter.
//////////////////////////////////////////////////////////////////////////////
module morse_echo #(
    parameter CLK_FREQ_HZ = 125_000_000,
    parameter MAX_SYMBOLS = 6,
    parameter DOT_MS = 150,
    parameter DASH_MS = 450,
    parameter GAP_MS = 200,
    parameter SPACE_MS = 150, // trajanje plavog bljeska za razmak
    parameter ERROR_MS = 600  // trajanje crvenog bljeska za gresku
) (
    input wire clk,
    input wire rst,

    input wire char_ready, // 1-ciklus puls: pokreni echo animaciju
    input wire [MAX_SYMBOLS-1:0] echo_symbols,
    input wire [3:0] echo_count,
    input wire decode_error,

    // RGB LED izlazi - NAPOMENA: na PYNQ-Z2 RGB LED je INVERTOVANA (0 = boja upaljena, 1 = boja ugasena)
    // Negacija za fizicke pinove se radi u top-level modulu (morse_top), ne ovde
	// Takodje, same boje se ne poklapaju..
    output reg rgb_r, // crvena - signalizuje gresku
    output reg rgb_g, // zelena - normalan simbol (tacka/crta)
    output reg rgb_b, // plava  - razmak izmedju reci

    // 1-ciklus puls: animacija za TRENUTNI karakter je upravo zavrsena i modul se vratio u IDLE
	// Koristi se od strane morse_replay.v da zna kada moze da prosledi sledeci karakter iz buffera
    output reg done
);

    // Pretvaranje milisekundi u broj taktnih ciklusa
    localparam integer DOT_CYCLES   = (CLK_FREQ_HZ / 1000) * DOT_MS;
    localparam integer DASH_CYCLES  = (CLK_FREQ_HZ / 1000) * DASH_MS;
    localparam integer GAP_CYCLES   = (CLK_FREQ_HZ / 1000) * GAP_MS;
    localparam integer SPACE_CYCLES = (CLK_FREQ_HZ / 1000) * SPACE_MS;
    localparam integer ERROR_CYCLES = (CLK_FREQ_HZ / 1000) * ERROR_MS;

    localparam integer MAX_CYCLES = (DASH_CYCLES > ERROR_CYCLES) ? DASH_CYCLES : ERROR_CYCLES;
    localparam integer CNT_WIDTH  = $clog2(MAX_CYCLES + 1);

    // FSM stanja za animaciju
    localparam ST_IDLE        = 3'd0;
    localparam ST_SYMBOL_ON   = 3'd1; // LED upaljen tokom trajanja simbola
    localparam ST_SYMBOL_GAP  = 3'd2; // LED ugasen, pauza izmedju simbola
    localparam ST_SPACE_ON    = 3'd3; // plavi bljesak za razmak
    localparam ST_ERROR_ON    = 3'd4; // crveni bljesak za gresku (na kraju)
    localparam ST_DONE_GAP    = 3'd5; // mala pauza pre povratka u IDLE

    reg [2:0] state;
    reg [CNT_WIDTH-1:0] timer_cnt;
    reg [3:0] symbol_idx; // indeks simbola koji se trenutno prikazuje
    reg [MAX_SYMBOLS-1:0] symbols_latched;
    reg [3:0] count_latched;
    reg error_latched;

    always @(posedge clk) begin
        if (rst) begin
            state <= ST_IDLE;
            timer_cnt <= 0;
            symbol_idx <= 0;
            symbols_latched <= {MAX_SYMBOLS{1'b0}};
            count_latched <= 4'd0;
            error_latched <= 1'b0;
            rgb_r <= 1'b0;
            rgb_g <= 1'b0;
            rgb_b <= 1'b0;
            done  <= 1'b0;
        end else begin
            // Pulsni izlaz - default 0, postavlja se samo u tacnom ciklusu
            done <= 1'b0;

            case (state)

                ST_IDLE: begin
                    rgb_r <= 1'b0;
                    rgb_g <= 1'b0;
                    rgb_b <= 1'b0;
                    if (char_ready) begin
                        // Pokreni novu animaciju - zakacimo snapshot da
                        // promena na ulazima u toku animacije ne utice
                        symbols_latched <= echo_symbols;
                        count_latched <= echo_count;
                        error_latched <= decode_error;
                        symbol_idx <= 0;
                        timer_cnt <= 0;

                        if (echo_count == 4'd0) begin
                            // Razmak izmedju reci - kratak plavi bljesak
                            state <= ST_SPACE_ON;
                            rgb_b <= 1'b1;
                        end else begin
                            // Prikazi prvi simbol
                            state <= ST_SYMBOL_ON;
                            rgb_g <= 1'b1;
                        end
                    end
                end

                ST_SYMBOL_ON: begin
                    // Trajanje bljeska zavisi od toga da li je trenutni simbol tacka (bit = 0, kratko) ili crta (bit = 1, duze)
                    if ((symbols_latched[symbol_idx] == 1'b0 && timer_cnt >= DOT_CYCLES - 1) ||
                        (symbols_latched[symbol_idx] == 1'b1 && timer_cnt >= DASH_CYCLES - 1)) begin
                        timer_cnt <= 0;
                        rgb_g <= 1'b0;
                        state <= ST_SYMBOL_GAP;
                    end else begin
                        timer_cnt <= timer_cnt + 1'b1;
                    end
                end

                ST_SYMBOL_GAP: begin
                    if (timer_cnt >= GAP_CYCLES - 1) begin
                        timer_cnt <= 0;
                        if (symbol_idx + 1 >= count_latched) begin
                            // Svi simboli prikazani
                            if (error_latched) begin
                                state <= ST_ERROR_ON;
                                rgb_r <= 1'b1;
                            end else begin
                                state <= ST_DONE_GAP;
                            end
                        end else begin
                            symbol_idx <= symbol_idx + 1'b1;
                            state <= ST_SYMBOL_ON;
                            rgb_g <= 1'b1;
                        end
                    end else begin
                        timer_cnt <= timer_cnt + 1'b1;
                    end
                end

                ST_SPACE_ON: begin
                    if (timer_cnt >= SPACE_CYCLES - 1) begin
                        timer_cnt <= 0;
                        rgb_b <= 1'b0;
                        state <= ST_DONE_GAP;
                    end else begin
                        timer_cnt <= timer_cnt + 1'b1;
                    end
                end

                ST_ERROR_ON: begin
                    if (timer_cnt >= ERROR_CYCLES - 1) begin
                        timer_cnt <= 0;
                        rgb_r <= 1'b0;
                        state <= ST_DONE_GAP;
                    end else begin
                        timer_cnt <= timer_cnt + 1'b1;
                    end
                end

                ST_DONE_GAP: begin
                    // Kratka pauza (koristimo GAP_CYCLES) pre povratka u IDLE,
                    // da se bljeskovi vizuelno odvoje od eventualnog sledeceg unosa
                    if (timer_cnt >= GAP_CYCLES - 1) begin
                        timer_cnt <= 0;
                        state <= ST_IDLE;
                        done <= 1'b1; // signaliziraj da je animacija zavrsena
                    end else begin
                        timer_cnt <= timer_cnt + 1'b1;
                    end
                end

                default: state <= ST_IDLE;

            endcase
        end
    end

endmodule
