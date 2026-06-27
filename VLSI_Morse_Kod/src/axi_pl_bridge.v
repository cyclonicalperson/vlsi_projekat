`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////
// Modul: axi_pl_bridge
// Opis : Drzi (latch) jedan dekodovani ASCII karakter i "data_valid" flag
//        za AXI GPIO IP u block design-u, tako da ih ARM (PS) moze pokupiti
//        polling-om preko AXI4-Lite citanja. Kada PS pokupi karakter, salje
//        nazad jedan ACK puls (preko drugog AXI GPIO kanala, konfigurisanog
//        kao izlaz iz PS-a), koji ovaj modul obradjuje da obori data_valid.
//
//        ps_ack_raw dolazi iz drugog clock domena (AXI/PS takt), zato se
//        sinhronizuje sa standardnim dvostrukim flip-flopom, isti princip
//        kao u debounce.v/edge_detect.v u ovom projektu.
//
//        NAPOMENA: ako PS ne pokupi karakter na vreme (data_valid jos = 1)
//        kada stigne sledeci char_ready, taj novi karakter se preskace.
//        Kod ljudskog tempa kucanja (stotine ms po karakteru) i PS
//        polling petlje (mikrosekunde) ovo se u praksi ne desava.
//////////////////////////////////////////////////////////////////////////////
module axi_pl_bridge (
    input  wire       clk,
    input  wire       rst,

    input  wire        char_ready, // 1-ciklus puls: nov karakter dekodovan (live ili replay echo)
    input  wire [7:0]  ascii_in,   // ASCII karakter koji odgovara char_ready pulsu

    input  wire        ps_ack_raw, // asinhroni ulaz iz AXI GPIO (PS potvrdio prijem)

    output reg  [7:0]  ascii_data, // drzani ASCII karakter - cita ga AXI GPIO (PL -> PS)
    output reg         data_valid  // 1 = nov karakter ceka da ga PS pokupi
);

    // Sinhronizacija ps_ack_raw (CDC zastita) + detekcija rastuce ivice
    reg ack_sync0, ack_sync1, ack_prev;

    always @(posedge clk) begin
        if (rst) begin
            ack_sync0 <= 1'b0;
            ack_sync1 <= 1'b0;
            ack_prev  <= 1'b0;
        end else begin
            ack_sync0 <= ps_ack_raw;
            ack_sync1 <= ack_sync0;
            ack_prev  <= ack_sync1;
        end
    end

    wire ack_rising = ack_sync1 & ~ack_prev;

    always @(posedge clk) begin
        if (rst) begin
            ascii_data <= 8'h00;
            data_valid <= 1'b0;
        end else begin
            if (char_ready && !data_valid) begin
                // Novi karakter spreman, PS jos nije zauzet prethodnim
                ascii_data <= ascii_in;
                data_valid <= 1'b1;
            end else if (ack_rising) begin
                // PS je pokupio karakter - obori valid, cekaj sledeci
                data_valid <= 1'b0;
            end
        end
    end

endmodule
