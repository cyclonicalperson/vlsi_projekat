`timescale 1ns / 1ps

// morse_top - top-level modul za projekat

module morse_top #(
    parameter CLK_FREQ_HZ = 125_000_000,
    parameter MAX_SYMBOLS = 6,
    parameter MAX_CHARS   = 32
) (
    input  wire clk, // 125MHz oscilator (pin H16)

    input  wire button0, // TACKA (.)
    input  wire button1, // CRTA  (-)
    input  wire button2, // RESET / CLEAR MESSAGE
    input  wire button3, // ENTER (kratak) / REPLAY (dug pritisak)
	
	// Trenutni broj unetih simbola kao 4-bitni broj
    output wire led0, // bit0
    output wire led1, // bit1
    output wire led2, // bit2
    output wire led3, // bit3

    // RGB LED LD4 - invertovana na PYNQ-Z2 (0 = upaljeno, 1 = ugaseno)
    // negacija se radi ovde, interni moduli izlazu logicki aktivno-visoke signale
    output wire rgb_r_n,
    output wire rgb_g_n,
    output wire rgb_b_n,

    // ---- AXI/PS komunikacija ----
    // PS (ARM) periodicno cita ova dva signala preko AXI GPIO IP-a i, kada
    // je uart_data_valid=1, salje uart_ascii_data preko PS UART-a (UART1)
    // na serijski terminal racunara. ps_ack je puls koji PS salje nazad
    // (preko drugog AXI GPIO kanala) da potvrdi da je karakter pokupljen.
    output wire [7:0] uart_ascii_data,
    output wire       uart_data_valid,
    input  wire       ps_ack
);

    localparam PTR_WIDTH = $clog2(MAX_CHARS);
    localparam LEN_WIDTH = $clog2(MAX_CHARS + 1);

    // Power-on-reset generator
    reg [3:0] por_cnt = 4'd0;
    reg rst = 1'b1;

    always @(posedge clk) begin
        if (por_cnt < 4'hF) begin
            por_cnt <= por_cnt + 1'b1;
            rst     <= 1'b1;
        end else begin
            rst <= 1'b0;
        end
    end

    // Debounce za sva 4 dugmeta
    wire btn_dot_clean, btn_dash_clean, btn_reset_clean, btn_enter_clean;

    debounce #(.CLK_FREQ_HZ(CLK_FREQ_HZ), .DEBOUNCE_MS(5)) u_db_dot (
        .clk(clk), .rst(rst), .btn_raw(button0), .btn_clean(btn_dot_clean)
    );
    debounce #(.CLK_FREQ_HZ(CLK_FREQ_HZ), .DEBOUNCE_MS(5)) u_db_dash (
        .clk(clk), .rst(rst), .btn_raw(button1), .btn_clean(btn_dash_clean)
    );
    debounce #(.CLK_FREQ_HZ(CLK_FREQ_HZ), .DEBOUNCE_MS(5)) u_db_reset (
        .clk(clk), .rst(rst), .btn_raw(button2), .btn_clean(btn_reset_clean)
    );
    debounce #(.CLK_FREQ_HZ(CLK_FREQ_HZ), .DEBOUNCE_MS(5)) u_db_enter (
        .clk(clk), .rst(rst), .btn_raw(button3), .btn_clean(btn_enter_clean)
    );

    // Edge detect za dot/dash/reset (ovi ostaju jednostavni pulsevi)
    wire dot_pulse, dash_pulse, reset_pulse;

    edge_detect u_edge_dot   (.clk(clk), .rst(rst), .sig_in(btn_dot_clean),   .rising_pulse(dot_pulse));
    edge_detect u_edge_dash  (.clk(clk), .rst(rst), .sig_in(btn_dash_clean),  .rising_pulse(dash_pulse));
    edge_detect u_edge_reset (.clk(clk), .rst(rst), .sig_in(btn_reset_clean), .rising_pulse(reset_pulse));

    // BTN3 (enter) - kratak vs dug pritisak
    wire short_enter_pulse, long_enter_pulse;

    long_press_detect #(.CLK_FREQ_HZ(CLK_FREQ_HZ), .LONG_MS(1500)) u_long_press (
        .clk         (clk),
        .rst         (rst),
        .btn_clean   (btn_enter_clean),
        .short_pulse (short_enter_pulse),
        .long_pulse  (long_enter_pulse)
    );

    // Glavna Morse FSM
    wire [MAX_SYMBOLS-1:0] morse_symbols;
    wire [3:0] symbol_count;
    wire fsm_char_ready;
    wire fsm_decode_error;
	
    wire [MAX_SYMBOLS-1:0] fsm_echo_symbols;
    wire [3:0] fsm_echo_count;
    wire fsm_buf_write_en;
	
    wire [MAX_SYMBOLS-1:0] fsm_buf_write_symbols;
    wire [3:0] fsm_buf_write_count;
    wire fsm_buf_write_error;

    // BTN2 se ponasa razlicito zavisno od toga da li je akumulator
    // (symbol_count) trenutno prazan: ako NIJE prazan, radi kao "obrisi
    // trenutni unos" (clear_pulse) u FSM; ako JE prazan, radi kao "obrisi
    // CELU poruku" (clear_message) direktno u buffer, FSM ga ne vidi
    wire clear_pulse        = reset_pulse && (symbol_count != 4'd0);
    wire clear_message_pulse = reset_pulse && (symbol_count == 4'd0);

    morse_fsm #(.MAX_SYMBOLS(MAX_SYMBOLS)) u_fsm (
        .clk               (clk),
        .rst               (rst),
        .dot_pulse         (dot_pulse),
        .dash_pulse        (dash_pulse),
        .short_enter_pulse (short_enter_pulse),
        .clear_pulse       (clear_pulse),
        .morse_symbols     (morse_symbols),
        .symbol_count      (symbol_count),
        .char_ready        (fsm_char_ready),
        .decode_error      (fsm_decode_error),
        .echo_symbols      (fsm_echo_symbols),
        .echo_count        (fsm_echo_count),
        .buf_write_en      (fsm_buf_write_en),
        .buf_write_symbols (fsm_buf_write_symbols),
        .buf_write_count   (fsm_buf_write_count),
        .buf_write_error   (fsm_buf_write_error)
    );

    // 4 LED-a prikazuju trenutni broj unetih simbola (binarno)
    assign led0 = symbol_count[0];
    assign led1 = symbol_count[1];
    assign led2 = symbol_count[2];
    assign led3 = symbol_count[3];

    // Message buffer - cuva celu poruku
    wire [PTR_WIDTH-1:0] replay_read_idx;
    wire [MAX_SYMBOLS-1:0] buf_read_symbols;
    wire [3:0] buf_read_count;
    wire buf_read_error;
    wire [LEN_WIDTH-1:0] msg_length;

    message_buffer #(.MAX_SYMBOLS(MAX_SYMBOLS), .MAX_CHARS(MAX_CHARS)) u_buffer (
        .clk           (clk),
        .rst           (rst),
        .write_en      (fsm_buf_write_en),
        .write_symbols (fsm_buf_write_symbols),
        .write_count   (fsm_buf_write_count),
        .write_error   (fsm_buf_write_error),
        .clear_message (clear_message_pulse),
        .read_idx      (replay_read_idx),
        .read_symbols  (buf_read_symbols),
        .read_count    (buf_read_count),
        .read_error    (buf_read_error),
        .msg_length    (msg_length)
    );

    // 5) Replay - cita iz buffera, pokrece echo za svaki karakter

    wire replay_echo_char_ready, replay_echo_decode_error, replay_active;

    morse_replay #(
        .MAX_CHARS     (MAX_CHARS),
        .INTER_CHAR_MS (300),
        .CLK_FREQ_HZ   (CLK_FREQ_HZ)
    ) u_replay (
        .clk               (clk),
        .rst               (rst),
        .start_replay      (long_enter_pulse),
        .msg_length        (msg_length),
        .read_idx          (replay_read_idx),
        .echo_char_ready   (replay_echo_char_ready),
        .echo_decode_error (replay_echo_decode_error),
        .echo_done         (echo_done),
        .buf_read_error    (buf_read_error),
        .replay_active     (replay_active)
    );

    // 6) Arbitracija - jedan deljeni morse_echo modul, ulaz mu je ili
    //    live-echo (trenutno kucano slovo, iz morse_fsm.v) ili replay
    //    (iz morse_replay.v + message_buffer.v), nikad oba istovremeno
	
    //    Kada je replay_active = 1, live-echo char_ready se ignorise (FSM
    //    nastavlja da radi normalno u pozadini - korisnik tehnicki moze
    //    kucati tokom replay-a, ali taj live echo nece biti vidljiv dok
    //    se replay ne zavrsi)

    wire echo_char_ready_mux = replay_active ? replay_echo_char_ready : fsm_char_ready;
    wire [MAX_SYMBOLS-1:0] echo_symbols_mux = replay_active ? buf_read_symbols : fsm_echo_symbols;
    wire [3:0] echo_count_mux = replay_active ? buf_read_count : fsm_echo_count;
    wire echo_error_mux = replay_active ? replay_echo_decode_error : fsm_decode_error;

    // ---- AXI/PS grananje ----
    // Ponovo koristimo POSTOJECI kombinacioni morse_decoder_table (bez izmena
    // u njemu) da iz istog echo_symbols_mux/echo_count_mux dobijemo ASCII
    // karakter koji se salje ka PS-u. Ovo je TACAN isti karakter koji se vec
    // prikazuje preko RGB echo-a (live unos ili replay), samo u ASCII formi.
    wire [7:0] uart_decoded_ascii;
    wire       uart_decoded_valid;

    morse_decoder_table u_decoder_uart (
        .symbols   (echo_symbols_mux),
        .count     (echo_count_mux),
        .ascii_out (uart_decoded_ascii),
        .valid     (uart_decoded_valid)
    );

    // echo_count_mux == 0 znaci razmak izmedju reci (morse_fsm.v) - dekoder
    // tabela nema case za count=0, pa ASCII razmak (0x20) postavljamo rucno
    wire [7:0] uart_ascii_char = (echo_count_mux == 4'd0) ? 8'h20 : uart_decoded_ascii;

    axi_pl_bridge u_axi_bridge (
        .clk        (clk),
        .rst        (rst),
        .char_ready (echo_char_ready_mux),
        .ascii_in   (uart_ascii_char),
        .ps_ack_raw (ps_ack),
        .ascii_data (uart_ascii_data),
        .data_valid (uart_data_valid)
    );

    wire echo_r, echo_g, echo_b, echo_done;

    morse_echo #(
        .CLK_FREQ_HZ (CLK_FREQ_HZ),
        .MAX_SYMBOLS (MAX_SYMBOLS),
        .DOT_MS      (150),
        .DASH_MS     (450),
        .GAP_MS      (200),
        .SPACE_MS    (150),
        .ERROR_MS    (600)
    ) u_echo (
        .clk          (clk),
        .rst          (rst),
        .char_ready   (echo_char_ready_mux),
        .echo_symbols (echo_symbols_mux),
        .echo_count   (echo_count_mux),
        .decode_error (echo_error_mux),
        .rgb_r        (echo_r),
        .rgb_g        (echo_g),
        .rgb_b        (echo_b),
        .done         (echo_done)
    );

    // RGB LED na PYNQ-Z2 je invertovana (0 = upaljeno, 1 = ugaseno)
    assign rgb_r_n = ~echo_r;
    assign rgb_g_n = ~echo_g;
    assign rgb_b_n = ~echo_b;

endmodule
