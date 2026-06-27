`timescale 1ns / 1ps

// Modul: morse_fsm - parsiranje i obrada ulaza u Morzeuov kod

module morse_fsm #(
    parameter MAX_SYMBOLS = 6   // maksimalan broj tacaka/crta po jednom slovu
) (
    input wire clk,
    input wire rst,

    input wire dot_pulse, // korisnik je uneo tacku  (.)
    input wire dash_pulse, // korisnik je uneo crtu   (-)
    input wire short_enter_pulse, // kratak ENTER (kraj slova/razmak)
    input wire clear_pulse, // obrisi trenutni unos (BTN2, akumulator nije prazan)
	// Dugi enter (replay) ne obradjujemo ovde

    // Status trenutnog unosa - korisno za eventualnu vizuelizaciju (LED)
    output wire [MAX_SYMBOLS-1:0] morse_symbols, // 0 = tacka, 1 = crta (LSB prvi unet)
    output wire [3:0] symbol_count, // broj trenutno unetih simbola

    // Live-echo interfejs (za morse_echo.v, trenutno kucano slovo)
    output reg char_ready, // pokreni live echo
    output reg decode_error, // nepoznata Morse sekvenca
    output reg [MAX_SYMBOLS-1:0] echo_symbols, // zamrznut snapshot za echo
    output reg [3:0] echo_count,

    // Write interfejs ka message_buffer.v - upisuje se istovremeno sa
    // live-echo trigerom, na isti kratak ENTER dogadjaj
    output reg buf_write_en,
    output reg [MAX_SYMBOLS-1:0] buf_write_symbols,
    output reg [3:0] buf_write_count,
    output reg buf_write_error
);

    // Interni registri za akumulaciju simbola
    reg [MAX_SYMBOLS-1:0] symbols_reg;
    reg [3:0] count_reg;

    assign morse_symbols = symbols_reg;
    assign symbol_count = count_reg;

    // Kombinacioni dekoder: ulaz su trenutno akumulirani simboli + broj,
    // izlaz je ASCII karakter i flag da li je sekvenca validna.
    wire [7:0] decoded_char;
    wire decoded_valid;

    morse_decoder_table u_decoder (
        .symbols    (symbols_reg),
        .count      (count_reg),
        .ascii_out  (decoded_char),
        .valid      (decoded_valid)
    );

    always @(posedge clk) begin
        if (rst) begin
            symbols_reg <= {MAX_SYMBOLS{1'b0}};
            count_reg <= 4'd0;
            char_ready <= 1'b0;
            decode_error <= 1'b0;
            echo_symbols <= {MAX_SYMBOLS{1'b0}};
            echo_count <= 4'd0;
            buf_write_en <= 1'b0;
            buf_write_symbols <= {MAX_SYMBOLS{1'b0}};
            buf_write_count <= 4'd0;
            buf_write_error <= 1'b0;
        end else begin
            // Default: pulsni izlazi se vracaju na 0 svaki ciklus osim kad se
            // aktivno postavljaju ispod (1-ciklus pulsna semantika)
            char_ready   <= 1'b0;
            decode_error <= 1'b0;
            buf_write_en <= 1'b0;

            if (clear_pulse) begin
                // BTN2 (akumulator nije prazan): obrisi trenutni
                // (nedovrseni) unos, ne salji nista, ne diraj buffer
                symbols_reg <= {MAX_SYMBOLS{1'b0}};
                count_reg   <= 4'd0;

            end else if (dot_pulse && count_reg < MAX_SYMBOLS) begin
                // Dodaj tacku (0) na poziciju count_reg, pa povecaj brojac
                symbols_reg[count_reg] <= 1'b0;
                count_reg <= count_reg + 1'b1;

            end else if (dash_pulse && count_reg < MAX_SYMBOLS) begin
                // Dodaj crtu (1) na poziciju count_reg, pa povecaj brojac
                symbols_reg[count_reg] <= 1'b1;
                count_reg <= count_reg + 1'b1;

            end else if (short_enter_pulse) begin
                // Zamrzavamo snapshot TRENUTNIH simbola/broja PRE brisanja -
                // echo modul ce ovo koristiti za vizuelnu reprodukciju kroz
                // RGB LED, nezavisno od toga sto se akumulator odmah brise
                echo_symbols <= symbols_reg;
                echo_count <= count_reg;

                // Upisi ISTI snapshot u message_buffer.v - cuva se trajno
                // kao deo cele poruke, za kasniji replay
                buf_write_en <= 1'b1;
                buf_write_symbols <= symbols_reg;
                buf_write_count <= count_reg;

                if (count_reg == 4'd0) begin
                    // Nije unet nijedan simbol - korisnik trazi razmak izmedju reci
                    char_ready <= 1'b1;
                    buf_write_error <= 1'b0;
                end else if (decoded_valid) begin
                    // Validna Morse sekvenca
                    char_ready <= 1'b1;
                    buf_write_error <= 1'b0;
                end else begin
                    // Sekvenca ne postoji u tabeli - prijavi gresku
                    char_ready <= 1'b1;
                    decode_error <= 1'b1;
                    buf_write_error <= 1'b1;
                end
                // Bilo koji ENTER, validan ili ne, brise akumulator za
                // pocetak unosa sledeceg slova
                symbols_reg <= {MAX_SYMBOLS{1'b0}};
                count_reg   <= 4'd0;
            end
        end
    end

endmodule
