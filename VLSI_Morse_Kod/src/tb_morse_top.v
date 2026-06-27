`timescale 1ns / 1ps

// Testbench za projekat
// Ovo sam samo generisao za dodatno testiranje ako bude trebalo, sve je radilo na plocici

module tb_morse_top;

    localparam CLK_PERIOD = 8; // 8ns period

    reg clk = 0;
    reg button0 = 0, button1 = 0, button2 = 0, button3 = 0;

    wire led0, led1, led2, led3;
    wire rgb_r_n, rgb_g_n, rgb_b_n;

    // CLK_FREQ_HZ = 1MHz za simulaciju (skalirano vreme, identicna logika)
    morse_top #(
        .CLK_FREQ_HZ(1_000_000),
        .MAX_SYMBOLS(6),
        .MAX_CHARS(32)
    ) dut (
        .clk      (clk),
        .button0  (button0),
        .button1  (button1),
        .button2  (button2),
        .button3  (button3),
        .led0     (led0), .led1(led1), .led2(led2), .led3(led3),
        .rgb_r_n  (rgb_r_n), .rgb_g_n(rgb_g_n), .rgb_b_n(rgb_b_n)
    );

    always #(CLK_PERIOD/2) clk = ~clk;

    wire rgb_r = ~rgb_r_n;
    wire rgb_g = ~rgb_g_n;
    wire rgb_b = ~rgb_b_n;

    reg prev_r = 0, prev_g = 0, prev_b = 0;
    always @(posedge clk) begin
        if (rgb_g !== prev_g) $display("[%0t ns] RGB GREEN -> %b", $time, rgb_g);
        if (rgb_b !== prev_b) $display("[%0t ns] RGB BLUE  -> %b", $time, rgb_b);
        if (rgb_r !== prev_r) $display("[%0t ns] RGB RED   -> %b", $time, rgb_r);
        prev_r <= rgb_r; prev_g <= rgb_g; prev_b <= rgb_b;
    end

    // Debounce: CLK_FREQ_HZ = 1MHz, DEBOUNCE_MS = 5 => 5000 ciklusa
    // Long-press prag: LONG_MS = 1500 => 1,500,000 ciklusa
    task press_and_release;
        input integer is_dot, is_dash, is_reset, is_enter;
        input integer hold_cycles; // koliko ciklusa drzati pritisnuto
        begin
            if (is_dot)   button0 = 1;
            if (is_dash)  button1 = 1;
            if (is_reset) button2 = 1;
            if (is_enter) button3 = 1;

            #(CLK_PERIOD * hold_cycles);

            button0 = 0; button1 = 0; button2 = 0; button3 = 0;

            #(CLK_PERIOD * 5200); // pauza izmedju pritisaka (> debounce)
        end
    endtask

    task send_dot;        begin press_and_release(1,0,0,0, 5200);    end endtask
    task send_dash;       begin press_and_release(0,1,0,0, 5200);    end endtask
    task send_short_enter;begin press_and_release(0,0,0,1, 5200);    end endtask
    task send_reset;      begin press_and_release(0,0,1,0, 5200);    end endtask
    task send_long_enter; begin press_and_release(0,0,0,1, 1_600_000); end endtask

    initial begin
        $display("=== Pokretanje simulacije morse_top (poruka + replay) ===");
        $dumpfile("tb_morse_top.vcd");
        $dumpvars(0, tb_morse_top);

        #(CLK_PERIOD * 100);

        // ---- Kucanje "S" ----
        $display("\n--- Kucam 'S' (...) ---");
        send_dot; send_dot; send_dot;
        send_short_enter;
        #(CLK_PERIOD * 1_300_000); // sacekaj kraj live echo-a

        // ---- Kucanje "O" ----
        $display("\n--- Kucam 'O' (---) ---");
        send_dash; send_dash; send_dash;
        send_short_enter;
        #(CLK_PERIOD * 2_200_000);

        // ---- Kucanje "S" ----
        $display("\n--- Kucam 'S' (...) ---");
        send_dot; send_dot; send_dot;
        send_short_enter;
        #(CLK_PERIOD * 1_300_000);

        // ---- Razmak ----
        $display("\n--- Razmak ---");
        send_short_enter;
        #(CLK_PERIOD * 400_000);

        // ---- Kucanje "K" (-.-)  ----
        $display("\n--- Kucam 'K' (-.-) ---");
        send_dash; send_dot; send_dash;
        send_short_enter;
        #(CLK_PERIOD * 2_500_000);

        $display("\n=== Poruka otkucana: 'SOS K'. Pokrecem REPLAY (dug pritisak BTN3) ===");
        send_long_enter;

        // Sacekaj da ceo replay zavrsi, procena: 5 karaktera (S,O,S,space,K)
        // Velika sigurnosna pauza da pokrijemo sve
        #(CLK_PERIOD * 12_000_000);

        $display("\n=== ZAVRSENO - simulacija prosla bez gresaka ===");
        $finish;
    end

    initial begin
        #(CLK_PERIOD * 30_000_000);
        $display("GRESKA: WATCHDOG TIMEOUT");
        $finish;
    end

endmodule
