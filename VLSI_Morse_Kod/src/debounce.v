`timescale 1ns / 1ps

// Debounce modul za dugmice

module debounce #(
    parameter CLK_FREQ_HZ = 125_000_000,
    parameter DEBOUNCE_MS = 5
) (
    input  wire clk,
    input  wire rst,        // sinhroni reset, aktivan-visok
    input  wire btn_raw,    // sirovi (nedebounce-ovani) signal sa pina dugmeta
    output reg  btn_clean   // debounce-ovan, stabilan izlaz
);

    // Broj taktnih ciklusa potrebnih da signal bude stabilan
    localparam integer DEBOUNCE_CIKLUSI = (CLK_FREQ_HZ / 1000) * DEBOUNCE_MS;
    localparam integer CNT_WIDTH = $clog2(DEBOUNCE_CIKLUSI + 1); // $clog2 racuna minimalni broj bitova za adresu koja bi cuvala DEBOUNCE_CIKLUSI

    reg [CNT_WIDTH-1:0] counter;
    reg btn_sync_0, btn_sync_1; // dvostruki flip-flop za sinhronizaciju asinhronog ulaza

    // Sinhronizacija ulaza (CDC - clock domain crossing zastita)
    always @(posedge clk) begin
        if (rst) begin
            btn_sync_0 <= 1'b0;
            btn_sync_1 <= 1'b0;
        end else begin
            btn_sync_0 <= btn_raw;
            btn_sync_1 <= btn_sync_0;
        end
    end

    // Debounce logika: brojac se resetuje svaki put kad ulaz promeni vrednost
    // u odnosu na trenutni "clean" izlaz, kada brojac dostigne prag, izlaz
    // se azurira na novu vrednost
    always @(posedge clk) begin
        if (rst) begin
            counter    <= 0;
            btn_clean  <= 1'b0;
        end else if (btn_sync_1 != btn_clean) begin
            if (counter >= DEBOUNCE_CIKLUSI) begin
                btn_clean <= btn_sync_1;
                counter   <= 0;
            end else begin
                counter <= counter + 1'b1;
            end
        end else begin
            counter <= 0;
        end
    end

endmodule
