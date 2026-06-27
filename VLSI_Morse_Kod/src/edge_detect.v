`timescale 1ns / 1ps

// edge_detect - Detektuje rastucu ivicu (0 -> 1 prelaz) na debounce-ovanom signalu dugmeta i generise jednociklusni puls
// Koristi se da pritisak dugmeta proizvede tacno jedan "dogadjaj" bez obzira koliko dugo je dugme drzano pritisnuto

module edge_detect (
    input  wire clk,
    input  wire rst,
    input  wire sig_in,      // debounce-ovan ulazni signal
    output wire rising_pulse // 1-ciklus puls na rastucoj ivici
);

    reg sig_previous;

    always @(posedge clk) begin
        if (rst)
            sig_previous <= 1'b0;
        else
            sig_previous <= sig_in;
    end

    assign rising_pulse = sig_in & ~sig_previous;

endmodule
