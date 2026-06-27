`timescale 1ns / 1ps

// long_press_detect - Razlikuje kratak od dugog pritiska na debounce-ovanom signalu dugmeta

module long_press_detect #(
    parameter CLK_FREQ_HZ = 125_000_000,
    parameter LONG_MS     = 1500   // prag za "dug pritisak" u milisekundama
) (
    input  wire clk,
    input  wire rst,
    input  wire btn_clean,     // debounce-ovan signal dugmeta (1 = pritisnuto)

    output reg  short_pulse,   // 1-ciklus puls: otpusteno PRE LONG_MS praga
    output reg  long_pulse     // 1-ciklus puls: otpusteno NAKON LONG_MS praga
);

    localparam integer LONG_CYCLES = (CLK_FREQ_HZ / 1000) * LONG_MS;
    localparam integer CNT_WIDTH   = $clog2(LONG_CYCLES + 1);

    reg [CNT_WIDTH-1:0] hold_cnt;
    reg btn_prev;
    reg long_fired; // sprecava da long_pulse "okine" vise puta

    always @(posedge clk) begin
        if (rst) begin
            hold_cnt    <= 0;
            btn_prev    <= 1'b0;
            long_fired  <= 1'b0;
            short_pulse <= 1'b0;
            long_pulse  <= 1'b0;
        end else begin
            // Pulsni izlazi - default 0, postavljaju se samo u tacnom ciklusu
            short_pulse <= 1'b0;
            long_pulse  <= 1'b0;

            if (btn_clean) begin
                // Dugme je trenutno pritisnuto - brojimo trajanje
                if (hold_cnt < LONG_CYCLES) begin
                    hold_cnt <= hold_cnt + 1'b1;
                end

                // Cim brojac dostigne prag, odmah okidamo long_pulse, kako bi korisnik odmah dobio RGB echo
                // feedback da je replay pokrenut, bez potrebe da nagadja koliko dugo da drzi dugme
                if (hold_cnt == LONG_CYCLES - 1 && !long_fired) begin
                    long_pulse <= 1'b1;
                    long_fired <= 1'b1;
                end
            end else begin
                // Dugme je otpusteno
                if (btn_prev && !long_fired) begin
                    // Bilo je pritisnuto u prethodnom ciklusu, sada nije,
                    // i long_pulse jos nije okinut tokom ovog pritiska
                    short_pulse <= 1'b1;
                end
                hold_cnt   <= 0;
                long_fired <= 1'b0;
            end

            btn_prev <= btn_clean;
        end
    end

endmodule
