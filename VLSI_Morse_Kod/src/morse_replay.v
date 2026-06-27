`timescale 1ns / 1ps

// morse_replay - Reprodukcija cele otkucane poruke

module morse_replay #(
    parameter MAX_CHARS     = 32,
    parameter INTER_CHAR_MS = 300,
    parameter CLK_FREQ_HZ   = 125_000_000
) (
    input wire clk,
    input wire rst,

    input wire start_replay, // 1-ciklus puls: pokreni replay (dug pritisak BTN3)
    input wire [$clog2(MAX_CHARS+1)-1:0] msg_length, // broj upisanih karaktera u buffer-u

    // Read interfejs ka message_buffer.v
    output reg  [$clog2(MAX_CHARS)-1:0] read_idx,

    // Interfejs ka morse_echo.v
    output reg echo_char_ready,
    output wire echo_decode_error, // prosledjeno direktno iz buffer read_error
    input  wire echo_done, // done puls od morse_echo.v

    input  wire buf_read_error, // iz message_buffer.v (za read_idx)

    output reg replay_active // 1 dok je replay u toku - koristi se u morse_top.v da blokira unos novih karaktera pri replay-u
);

    localparam integer INTER_CHAR_CYCLES = (CLK_FREQ_HZ / 1000) * INTER_CHAR_MS;
    localparam integer CNT_WIDTH = $clog2(INTER_CHAR_CYCLES + 1);

    localparam ST_IDLE       = 2'd0;
    localparam ST_TRIGGER    = 2'd1; // 1 ciklus: postavi echo_char_ready
    localparam ST_WAIT_DONE  = 2'd2; // cekaj echo_done od morse_echo.v
    localparam ST_INTER_GAP  = 2'd3; // pauza izmedju karaktera

    reg [1:0] state;
    reg [CNT_WIDTH-1:0] gap_cnt;

    assign echo_decode_error = buf_read_error;

    always @(posedge clk) begin
        if (rst) begin
            state <= ST_IDLE;
            read_idx <= 0;
            gap_cnt <= 0;
            echo_char_ready <= 1'b0;
            replay_active <= 1'b0;
        end else begin
            echo_char_ready <= 1'b0; // pulsni izlaz, default 0

            case (state)

                ST_IDLE: begin
                    replay_active <= 1'b0;
                    if (start_replay && msg_length != 0) begin
                        read_idx <= 0;
                        replay_active <= 1'b1;
                        state <= ST_TRIGGER;
                    end
                end

                ST_TRIGGER: begin
                    // read_idx je vec postavljen (na 0 iz IDLE, ili inkrementiran u ST_INTER_GAP)
                    echo_char_ready <= 1'b1;
                    state <= ST_WAIT_DONE;
                end

                ST_WAIT_DONE: begin
                    if (echo_done) begin
                        if (read_idx + 1 >= msg_length) begin
                            // Bio je to poslednji karakter u poruci
                            state <= ST_IDLE;
                            replay_active <= 1'b0;
                        end else begin
                            gap_cnt <= 0;
                            state <= ST_INTER_GAP;
                        end
                    end
                end

                ST_INTER_GAP: begin
                    if (gap_cnt >= INTER_CHAR_CYCLES - 1) begin
                        read_idx <= read_idx + 1'b1;
                        gap_cnt <= 0;
                        state <= ST_TRIGGER;
                    end else begin
                        gap_cnt <= gap_cnt + 1'b1;
                    end
                end

                default: state <= ST_IDLE;

            endcase
        end
    end

endmodule
