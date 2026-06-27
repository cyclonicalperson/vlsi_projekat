`timescale 1ns / 1ps

// message_buffer - Cuva celu otkucanu poruku kao niz "slotova" (do MAX_CHARS znakova)

module message_buffer #(
    parameter MAX_SYMBOLS = 6,
    parameter MAX_CHARS   = 32
) (
    input wire clk,
    input wire rst,

    // Write interfejs (iz morse_fsm.v, na kratak ENTER)
    input wire write_en,
    input wire [MAX_SYMBOLS-1:0]  write_symbols,
    input wire [3:0] write_count,
    input wire write_error,

    // Brisanje cele poruke (BTN2 dok je akumulator prazan)
    input wire clear_message,

    // Read interfejs (za morse_replay.v)
    input wire [$clog2(MAX_CHARS)-1:0] read_idx,
    output wire [MAX_SYMBOLS-1:0] read_symbols,
    output wire [3:0] read_count,
    output wire read_error,

    // Status
    output reg  [$clog2(MAX_CHARS+1)-1:0] msg_length  // broj trenutno upisanih znakova
);

    localparam PTR_WIDTH = $clog2(MAX_CHARS);

    // Memorija - 3 paralelna registra niza (jednostavnije od pakovanja u
    // jedan veliki bit-vektor, citljivije i sintetizuje se identicno)
    reg [MAX_SYMBOLS-1:0] mem_symbols [0:MAX_CHARS-1];
    reg [3:0]             mem_count   [0:MAX_CHARS-1];
    reg                   mem_error   [0:MAX_CHARS-1];

    reg [PTR_WIDTH-1:0] write_ptr;

    integer i;

    always @(posedge clk) begin
        if (rst) begin
            write_ptr  <= 0;
            msg_length <= 0;
            for (i = 0; i < MAX_CHARS; i = i + 1) begin
                mem_symbols[i] <= {MAX_SYMBOLS{1'b0}};
                mem_count[i]   <= 4'd0;
                mem_error[i]   <= 1'b0;
            end
        end else begin
            if (clear_message) begin
                write_ptr  <= 0;
                msg_length <= 0;
                // NAPOMENA: ne brisemo sadrzaj mem_* nizova ovde - samo
                // resetujemo pokazivace, stari podaci ostaju u memoriji
            end else if (write_en && (msg_length < MAX_CHARS)) begin
                mem_symbols[write_ptr] <= write_symbols;
                mem_count[write_ptr]   <= write_count;
                mem_error[write_ptr]   <= write_error;
                write_ptr              <= write_ptr + 1'b1;
                msg_length             <= msg_length + 1'b1;
            end
        end
    end

    assign read_symbols = mem_symbols[read_idx];
    assign read_count   = mem_count[read_idx];
    assign read_error   = mem_error[read_idx];

endmodule
