`timescale 1ns / 1ps

// morse_decoder_table - Kombinacioni (bez-stanja) dekoder koji preslikava Morse simbole u ASCII karaktere

module morse_decoder_table #(
    parameter MAX_SYMBOLS = 6
) (
    input  wire [MAX_SYMBOLS-1:0] symbols,
    input  wire [3:0]             count,
    output reg  [7:0]             ascii_out,
    output reg                    valid
);

    // Kljuc za case() = {count, symbols}: 4 bita count + 6 bita symbols = 10 bita
    // Ovo je jednoznacno jer count uvek tacno odredjuje koliko najnizih bitova
    // u symbols je relevantno (visi bitovi su 0 i ne uticu na kljuc)
    wire [9:0] key = {count, symbols};

    always @(*) begin
        valid     = 1'b1;
        ascii_out = 8'h3F; // default '?' - prepisano ispod ako se pronadje match

        case (key)
            // ---- 1 simbol ----
            {4'd1, 6'b000000} : ascii_out = "E"; // .
            {4'd1, 6'b000001} : ascii_out = "T"; // -

            // ---- 2 simbola ----
            {4'd2, 6'b000000} : ascii_out = "I"; // ..
            {4'd2, 6'b000001} : ascii_out = "N"; // -.
            {4'd2, 6'b000010} : ascii_out = "A"; // .-
            {4'd2, 6'b000011} : ascii_out = "M"; // --

            // ---- 3 simbola ----
            {4'd3, 6'b000000} : ascii_out = "S"; // ...
            {4'd3, 6'b000001} : ascii_out = "D"; // -..
            {4'd3, 6'b000010} : ascii_out = "R"; // .-.
            {4'd3, 6'b000011} : ascii_out = "G"; // --.
            {4'd3, 6'b000100} : ascii_out = "U"; // ..-
            {4'd3, 6'b000101} : ascii_out = "K"; // -.-
            {4'd3, 6'b000110} : ascii_out = "W"; // .--
            {4'd3, 6'b000111} : ascii_out = "O"; // ---

            // ---- 4 simbola ----
            {4'd4, 6'b000000} : ascii_out = "H"; // ....
            {4'd4, 6'b000001} : ascii_out = "B"; // -...
            {4'd4, 6'b000010} : ascii_out = "L"; // .-..
            {4'd4, 6'b000011} : ascii_out = "Z"; // --..
            {4'd4, 6'b000100} : ascii_out = "F"; // ..-.
            {4'd4, 6'b000101} : ascii_out = "C"; // -.-.
            {4'd4, 6'b000110} : ascii_out = "P"; // .--.
            {4'd4, 6'b001000} : ascii_out = "V"; // ...-
            {4'd4, 6'b001001} : ascii_out = "X"; // -..-
            {4'd4, 6'b001011} : ascii_out = "Q"; // --.-
            {4'd4, 6'b001101} : ascii_out = "Y"; // -.--
            {4'd4, 6'b001110} : ascii_out = "J"; // .---

            // ---- 5 simbola (cifre 0-9) ----
            {4'd5, 6'b000000} : ascii_out = "5"; // .....
            {4'd5, 6'b000001} : ascii_out = "6"; // -....
            {4'd5, 6'b000011} : ascii_out = "7"; // --...
            {4'd5, 6'b000111} : ascii_out = "8"; // ---..
            {4'd5, 6'b001111} : ascii_out = "9"; // ----.
            {4'd5, 6'b010000} : ascii_out = "4"; // ....-
            {4'd5, 6'b011000} : ascii_out = "3"; // ...--
            {4'd5, 6'b011100} : ascii_out = "2"; // ..---
            {4'd5, 6'b011110} : ascii_out = "1"; // .----
            {4'd5, 6'b011111} : ascii_out = "0"; // -----

            default : begin
                ascii_out = 8'h3F; // '?' - nepoznata/nepostojeca Morse sekvenca
                valid     = 1'b0;
            end
        endcase
    end

endmodule
