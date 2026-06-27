// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat Jun 27 15:15:54 2026
// Host        : Pavle-Laptop-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Pavle/Downloads/vlsi_projekat/VLSI_Morse_Kod/morse_pynq_ps_build/morse_pynq_ps.gen/sources_1/bd/system/ip/system_morse_top_0_0/system_morse_top_0_0_sim_netlist.v
// Design      : system_morse_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_morse_top_0_0,morse_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "morse_top,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module system_morse_top_0_0
   (clk,
    button0,
    button1,
    button2,
    button3,
    led0,
    led1,
    led2,
    led3,
    rgb_r_n,
    rgb_g_n,
    rgb_b_n,
    uart_ascii_data,
    uart_data_valid,
    ps_ack);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input button0;
  input button1;
  input button2;
  input button3;
  output led0;
  output led1;
  output led2;
  output led3;
  output rgb_r_n;
  output rgb_g_n;
  output rgb_b_n;
  output [7:0]uart_ascii_data;
  output uart_data_valid;
  input ps_ack;

  wire \<const0> ;
  wire button0;
  wire button1;
  wire button2;
  wire button3;
  wire clk;
  wire led0;
  wire led1;
  wire led2;
  wire led3;
  wire ps_ack;
  wire rgb_b_n;
  wire rgb_g_n;
  wire rgb_r_n;
  wire [6:0]\^uart_ascii_data ;
  wire uart_data_valid;

  assign uart_ascii_data[7] = \<const0> ;
  assign uart_ascii_data[6:0] = \^uart_ascii_data [6:0];
  GND GND
       (.G(\<const0> ));
  system_morse_top_0_0_morse_top inst
       (.button0(button0),
        .button1(button1),
        .button2(button2),
        .button3(button3),
        .clk(clk),
        .out({led3,led2,led1,led0}),
        .ps_ack(ps_ack),
        .rgb_b_n(rgb_b_n),
        .rgb_g_n(rgb_g_n),
        .rgb_r_n(rgb_r_n),
        .uart_ascii_data(\^uart_ascii_data ),
        .uart_data_valid(uart_data_valid));
endmodule

(* ORIG_REF_NAME = "axi_pl_bridge" *) 
module system_morse_top_0_0_axi_pl_bridge
   (uart_data_valid,
    uart_ascii_data,
    rst,
    ps_ack,
    clk,
    replay_echo_char_ready,
    replay_active,
    fsm_buf_write_en,
    E,
    D);
  output uart_data_valid;
  output [6:0]uart_ascii_data;
  input rst;
  input ps_ack;
  input clk;
  input replay_echo_char_ready;
  input replay_active;
  input fsm_buf_write_en;
  input [0:0]E;
  input [6:0]D;

  wire [6:0]D;
  wire [0:0]E;
  wire ack_prev;
  wire ack_sync0;
  wire ack_sync1;
  wire clk;
  wire data_valid_i_1_n_0;
  wire fsm_buf_write_en;
  wire ps_ack;
  wire replay_active;
  wire replay_echo_char_ready;
  wire rst;
  wire [6:0]uart_ascii_data;
  wire uart_data_valid;

  FDRE ack_prev_reg
       (.C(clk),
        .CE(1'b1),
        .D(ack_sync1),
        .Q(ack_prev),
        .R(rst));
  FDRE ack_sync0_reg
       (.C(clk),
        .CE(1'b1),
        .D(ps_ack),
        .Q(ack_sync0),
        .R(rst));
  FDRE ack_sync1_reg
       (.C(clk),
        .CE(1'b1),
        .D(ack_sync0),
        .Q(ack_sync1),
        .R(rst));
  FDRE \ascii_data_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(uart_ascii_data[0]),
        .R(rst));
  FDRE \ascii_data_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(uart_ascii_data[1]),
        .R(rst));
  FDRE \ascii_data_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(uart_ascii_data[2]),
        .R(rst));
  FDRE \ascii_data_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(uart_ascii_data[3]),
        .R(rst));
  FDRE \ascii_data_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(uart_ascii_data[4]),
        .R(rst));
  FDRE \ascii_data_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(uart_ascii_data[5]),
        .R(rst));
  FDRE \ascii_data_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(uart_ascii_data[6]),
        .R(rst));
  LUT6 #(
    .INIT(64'hBFB0BFBFBFB0B0B0)) 
    data_valid_i_1
       (.I0(ack_prev),
        .I1(ack_sync1),
        .I2(uart_data_valid),
        .I3(replay_echo_char_ready),
        .I4(replay_active),
        .I5(fsm_buf_write_en),
        .O(data_valid_i_1_n_0));
  FDRE data_valid_reg
       (.C(clk),
        .CE(1'b1),
        .D(data_valid_i_1_n_0),
        .Q(uart_data_valid),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module system_morse_top_0_0_debounce
   (btn_dash_clean,
    rst,
    button1,
    clk);
  output btn_dash_clean;
  input rst;
  input button1;
  input clk;

  wire btn_clean_i_1__0_n_0;
  wire btn_dash_clean;
  wire btn_sync_0_reg_n_0;
  wire btn_sync_1_reg_n_0;
  wire button1;
  wire clk;
  wire \counter[0]_i_1__0_n_0 ;
  wire \counter[0]_i_3__0_n_0 ;
  wire \counter[0]_i_4__0_n_0 ;
  wire \counter[0]_i_5__0_n_0 ;
  wire \counter[0]_i_6__0_n_0 ;
  wire \counter[0]_i_7__0_n_0 ;
  wire [19:3]counter_reg;
  wire \counter_reg[0]_i_2__0_n_0 ;
  wire \counter_reg[0]_i_2__0_n_1 ;
  wire \counter_reg[0]_i_2__0_n_2 ;
  wire \counter_reg[0]_i_2__0_n_3 ;
  wire \counter_reg[0]_i_2__0_n_4 ;
  wire \counter_reg[0]_i_2__0_n_5 ;
  wire \counter_reg[0]_i_2__0_n_6 ;
  wire \counter_reg[0]_i_2__0_n_7 ;
  wire \counter_reg[12]_i_1__0_n_0 ;
  wire \counter_reg[12]_i_1__0_n_1 ;
  wire \counter_reg[12]_i_1__0_n_2 ;
  wire \counter_reg[12]_i_1__0_n_3 ;
  wire \counter_reg[12]_i_1__0_n_4 ;
  wire \counter_reg[12]_i_1__0_n_5 ;
  wire \counter_reg[12]_i_1__0_n_6 ;
  wire \counter_reg[12]_i_1__0_n_7 ;
  wire \counter_reg[16]_i_1__0_n_1 ;
  wire \counter_reg[16]_i_1__0_n_2 ;
  wire \counter_reg[16]_i_1__0_n_3 ;
  wire \counter_reg[16]_i_1__0_n_4 ;
  wire \counter_reg[16]_i_1__0_n_5 ;
  wire \counter_reg[16]_i_1__0_n_6 ;
  wire \counter_reg[16]_i_1__0_n_7 ;
  wire \counter_reg[4]_i_1__0_n_0 ;
  wire \counter_reg[4]_i_1__0_n_1 ;
  wire \counter_reg[4]_i_1__0_n_2 ;
  wire \counter_reg[4]_i_1__0_n_3 ;
  wire \counter_reg[4]_i_1__0_n_4 ;
  wire \counter_reg[4]_i_1__0_n_5 ;
  wire \counter_reg[4]_i_1__0_n_6 ;
  wire \counter_reg[4]_i_1__0_n_7 ;
  wire \counter_reg[8]_i_1__0_n_0 ;
  wire \counter_reg[8]_i_1__0_n_1 ;
  wire \counter_reg[8]_i_1__0_n_2 ;
  wire \counter_reg[8]_i_1__0_n_3 ;
  wire \counter_reg[8]_i_1__0_n_4 ;
  wire \counter_reg[8]_i_1__0_n_5 ;
  wire \counter_reg[8]_i_1__0_n_6 ;
  wire \counter_reg[8]_i_1__0_n_7 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire rst;
  wire [3:3]\NLW_counter_reg[16]_i_1__0_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hD8)) 
    btn_clean_i_1__0
       (.I0(\counter[0]_i_3__0_n_0 ),
        .I1(btn_sync_1_reg_n_0),
        .I2(btn_dash_clean),
        .O(btn_clean_i_1__0_n_0));
  FDRE btn_clean_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_clean_i_1__0_n_0),
        .Q(btn_dash_clean),
        .R(rst));
  FDRE btn_sync_0_reg
       (.C(clk),
        .CE(1'b1),
        .D(button1),
        .Q(btn_sync_0_reg_n_0),
        .R(rst));
  FDRE btn_sync_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_sync_0_reg_n_0),
        .Q(btn_sync_1_reg_n_0),
        .R(rst));
  LUT4 #(
    .INIT(16'hFFEB)) 
    \counter[0]_i_1__0 
       (.I0(\counter[0]_i_3__0_n_0 ),
        .I1(btn_dash_clean),
        .I2(btn_sync_1_reg_n_0),
        .I3(rst),
        .O(\counter[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAA8A8A8A8A8A8)) 
    \counter[0]_i_3__0 
       (.I0(counter_reg[19]),
        .I1(counter_reg[18]),
        .I2(counter_reg[17]),
        .I3(\counter[0]_i_5__0_n_0 ),
        .I4(counter_reg[15]),
        .I5(counter_reg[16]),
        .O(\counter[0]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4__0 
       (.I0(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'h000010FF)) 
    \counter[0]_i_5__0 
       (.I0(counter_reg[9]),
        .I1(counter_reg[10]),
        .I2(\counter[0]_i_6__0_n_0 ),
        .I3(counter_reg[11]),
        .I4(\counter[0]_i_7__0_n_0 ),
        .O(\counter[0]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555557FFFFFF)) 
    \counter[0]_i_6__0 
       (.I0(counter_reg[8]),
        .I1(counter_reg[4]),
        .I2(counter_reg[3]),
        .I3(counter_reg[5]),
        .I4(counter_reg[6]),
        .I5(counter_reg[7]),
        .O(\counter[0]_i_6__0_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \counter[0]_i_7__0 
       (.I0(counter_reg[14]),
        .I1(counter_reg[12]),
        .I2(counter_reg[13]),
        .O(\counter[0]_i_7__0_n_0 ));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2__0_n_7 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(\counter[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2__0_n_0 ,\counter_reg[0]_i_2__0_n_1 ,\counter_reg[0]_i_2__0_n_2 ,\counter_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2__0_n_4 ,\counter_reg[0]_i_2__0_n_5 ,\counter_reg[0]_i_2__0_n_6 ,\counter_reg[0]_i_2__0_n_7 }),
        .S({counter_reg[3],\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] ,\counter[0]_i_4__0_n_0 }));
  FDRE \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__0_n_7 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[12]_i_1__0 
       (.CI(\counter_reg[8]_i_1__0_n_0 ),
        .CO({\counter_reg[12]_i_1__0_n_0 ,\counter_reg[12]_i_1__0_n_1 ,\counter_reg[12]_i_1__0_n_2 ,\counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__0_n_4 ,\counter_reg[12]_i_1__0_n_5 ,\counter_reg[12]_i_1__0_n_6 ,\counter_reg[12]_i_1__0_n_7 }),
        .S(counter_reg[15:12]));
  FDRE \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__0_n_6 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__0_n_5 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__0_n_4 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_7 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[16]_i_1__0 
       (.CI(\counter_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_counter_reg[16]_i_1__0_CO_UNCONNECTED [3],\counter_reg[16]_i_1__0_n_1 ,\counter_reg[16]_i_1__0_n_2 ,\counter_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__0_n_4 ,\counter_reg[16]_i_1__0_n_5 ,\counter_reg[16]_i_1__0_n_6 ,\counter_reg[16]_i_1__0_n_7 }),
        .S(counter_reg[19:16]));
  FDRE \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_6 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_5 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_4 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2__0_n_6 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2__0_n_5 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2__0_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__0_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_1__0 
       (.CI(\counter_reg[0]_i_2__0_n_0 ),
        .CO({\counter_reg[4]_i_1__0_n_0 ,\counter_reg[4]_i_1__0_n_1 ,\counter_reg[4]_i_1__0_n_2 ,\counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__0_n_4 ,\counter_reg[4]_i_1__0_n_5 ,\counter_reg[4]_i_1__0_n_6 ,\counter_reg[4]_i_1__0_n_7 }),
        .S(counter_reg[7:4]));
  FDRE \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__0_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__0_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__0_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1__0_n_0 ));
  FDRE \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_1__0 
       (.CI(\counter_reg[4]_i_1__0_n_0 ),
        .CO({\counter_reg[8]_i_1__0_n_0 ,\counter_reg[8]_i_1__0_n_1 ,\counter_reg[8]_i_1__0_n_2 ,\counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__0_n_4 ,\counter_reg[8]_i_1__0_n_5 ,\counter_reg[8]_i_1__0_n_6 ,\counter_reg[8]_i_1__0_n_7 }),
        .S(counter_reg[11:8]));
  FDRE \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module system_morse_top_0_0_debounce_0
   (btn_dot_clean,
    rst,
    button0,
    clk);
  output btn_dot_clean;
  input rst;
  input button0;
  input clk;

  wire btn_clean_i_1_n_0;
  wire btn_dot_clean;
  wire btn_sync_0;
  wire btn_sync_1;
  wire button0;
  wire clk;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire [19:3]counter_reg;
  wire \counter_reg[0]_i_2_n_0 ;
  wire \counter_reg[0]_i_2_n_1 ;
  wire \counter_reg[0]_i_2_n_2 ;
  wire \counter_reg[0]_i_2_n_3 ;
  wire \counter_reg[0]_i_2_n_4 ;
  wire \counter_reg[0]_i_2_n_5 ;
  wire \counter_reg[0]_i_2_n_6 ;
  wire \counter_reg[0]_i_2_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire rst;
  wire [3:3]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hD8)) 
    btn_clean_i_1
       (.I0(\counter[0]_i_3_n_0 ),
        .I1(btn_sync_1),
        .I2(btn_dot_clean),
        .O(btn_clean_i_1_n_0));
  FDRE btn_clean_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_clean_i_1_n_0),
        .Q(btn_dot_clean),
        .R(rst));
  FDRE btn_sync_0_reg
       (.C(clk),
        .CE(1'b1),
        .D(button0),
        .Q(btn_sync_0),
        .R(rst));
  FDRE btn_sync_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_sync_0),
        .Q(btn_sync_1),
        .R(rst));
  LUT4 #(
    .INIT(16'hFFEB)) 
    \counter[0]_i_1 
       (.I0(\counter[0]_i_3_n_0 ),
        .I1(btn_dot_clean),
        .I2(btn_sync_1),
        .I3(rst),
        .O(\counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAA8A8A8A8A8A8)) 
    \counter[0]_i_3 
       (.I0(counter_reg[19]),
        .I1(counter_reg[18]),
        .I2(counter_reg[17]),
        .I3(\counter[0]_i_5_n_0 ),
        .I4(counter_reg[15]),
        .I5(counter_reg[16]),
        .O(\counter[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4 
       (.I0(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h000010FF)) 
    \counter[0]_i_5 
       (.I0(counter_reg[9]),
        .I1(counter_reg[10]),
        .I2(\counter[0]_i_6_n_0 ),
        .I3(counter_reg[11]),
        .I4(\counter[0]_i_7_n_0 ),
        .O(\counter[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555555557FFFFFF)) 
    \counter[0]_i_6 
       (.I0(counter_reg[8]),
        .I1(counter_reg[4]),
        .I2(counter_reg[3]),
        .I3(counter_reg[5]),
        .I4(counter_reg[6]),
        .I5(counter_reg[7]),
        .O(\counter[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \counter[0]_i_7 
       (.I0(counter_reg[14]),
        .I1(counter_reg[12]),
        .I2(counter_reg[13]),
        .O(\counter[0]_i_7_n_0 ));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_7 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2_n_0 ,\counter_reg[0]_i_2_n_1 ,\counter_reg[0]_i_2_n_2 ,\counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2_n_4 ,\counter_reg[0]_i_2_n_5 ,\counter_reg[0]_i_2_n_6 ,\counter_reg[0]_i_2_n_7 }),
        .S({counter_reg[3],\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] ,\counter[0]_i_4_n_0 }));
  FDRE \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [3],\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S(counter_reg[19:16]));
  FDRE \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_6 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_5 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_2_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1_n_0 ));
  FDRE \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module system_morse_top_0_0_debounce_1
   (btn_enter_clean,
    long_fired,
    rst_reg,
    rst,
    button3,
    clk,
    long_pulse_reg);
  output btn_enter_clean;
  output long_fired;
  output rst_reg;
  input rst;
  input button3;
  input clk;
  input long_pulse_reg;

  wire btn_clean_i_1__2_n_0;
  wire btn_enter_clean;
  wire btn_sync_0_reg_n_0;
  wire btn_sync_1_reg_n_0;
  wire button3;
  wire clk;
  wire \counter[0]_i_1__2_n_0 ;
  wire \counter[0]_i_3__2_n_0 ;
  wire \counter[0]_i_4__2_n_0 ;
  wire \counter[0]_i_5__2_n_0 ;
  wire \counter[0]_i_6__2_n_0 ;
  wire \counter[0]_i_7__2_n_0 ;
  wire [19:3]counter_reg;
  wire \counter_reg[0]_i_2__2_n_0 ;
  wire \counter_reg[0]_i_2__2_n_1 ;
  wire \counter_reg[0]_i_2__2_n_2 ;
  wire \counter_reg[0]_i_2__2_n_3 ;
  wire \counter_reg[0]_i_2__2_n_4 ;
  wire \counter_reg[0]_i_2__2_n_5 ;
  wire \counter_reg[0]_i_2__2_n_6 ;
  wire \counter_reg[0]_i_2__2_n_7 ;
  wire \counter_reg[12]_i_1__2_n_0 ;
  wire \counter_reg[12]_i_1__2_n_1 ;
  wire \counter_reg[12]_i_1__2_n_2 ;
  wire \counter_reg[12]_i_1__2_n_3 ;
  wire \counter_reg[12]_i_1__2_n_4 ;
  wire \counter_reg[12]_i_1__2_n_5 ;
  wire \counter_reg[12]_i_1__2_n_6 ;
  wire \counter_reg[12]_i_1__2_n_7 ;
  wire \counter_reg[16]_i_1__2_n_1 ;
  wire \counter_reg[16]_i_1__2_n_2 ;
  wire \counter_reg[16]_i_1__2_n_3 ;
  wire \counter_reg[16]_i_1__2_n_4 ;
  wire \counter_reg[16]_i_1__2_n_5 ;
  wire \counter_reg[16]_i_1__2_n_6 ;
  wire \counter_reg[16]_i_1__2_n_7 ;
  wire \counter_reg[4]_i_1__2_n_0 ;
  wire \counter_reg[4]_i_1__2_n_1 ;
  wire \counter_reg[4]_i_1__2_n_2 ;
  wire \counter_reg[4]_i_1__2_n_3 ;
  wire \counter_reg[4]_i_1__2_n_4 ;
  wire \counter_reg[4]_i_1__2_n_5 ;
  wire \counter_reg[4]_i_1__2_n_6 ;
  wire \counter_reg[4]_i_1__2_n_7 ;
  wire \counter_reg[8]_i_1__2_n_0 ;
  wire \counter_reg[8]_i_1__2_n_1 ;
  wire \counter_reg[8]_i_1__2_n_2 ;
  wire \counter_reg[8]_i_1__2_n_3 ;
  wire \counter_reg[8]_i_1__2_n_4 ;
  wire \counter_reg[8]_i_1__2_n_5 ;
  wire \counter_reg[8]_i_1__2_n_6 ;
  wire \counter_reg[8]_i_1__2_n_7 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire long_fired;
  wire long_pulse_reg;
  wire rst;
  wire rst_reg;
  wire [3:3]\NLW_counter_reg[16]_i_1__2_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hD8)) 
    btn_clean_i_1__2
       (.I0(\counter[0]_i_3__2_n_0 ),
        .I1(btn_sync_1_reg_n_0),
        .I2(btn_enter_clean),
        .O(btn_clean_i_1__2_n_0));
  FDRE btn_clean_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_clean_i_1__2_n_0),
        .Q(btn_enter_clean),
        .R(rst));
  FDRE btn_sync_0_reg
       (.C(clk),
        .CE(1'b1),
        .D(button3),
        .Q(btn_sync_0_reg_n_0),
        .R(rst));
  FDRE btn_sync_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_sync_0_reg_n_0),
        .Q(btn_sync_1_reg_n_0),
        .R(rst));
  LUT4 #(
    .INIT(16'hFFEB)) 
    \counter[0]_i_1__2 
       (.I0(\counter[0]_i_3__2_n_0 ),
        .I1(btn_enter_clean),
        .I2(btn_sync_1_reg_n_0),
        .I3(rst),
        .O(\counter[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAA8A8A8A8A8A8)) 
    \counter[0]_i_3__2 
       (.I0(counter_reg[19]),
        .I1(counter_reg[18]),
        .I2(counter_reg[17]),
        .I3(\counter[0]_i_5__2_n_0 ),
        .I4(counter_reg[15]),
        .I5(counter_reg[16]),
        .O(\counter[0]_i_3__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4__2 
       (.I0(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_4__2_n_0 ));
  LUT5 #(
    .INIT(32'h000010FF)) 
    \counter[0]_i_5__2 
       (.I0(counter_reg[9]),
        .I1(counter_reg[10]),
        .I2(\counter[0]_i_6__2_n_0 ),
        .I3(counter_reg[11]),
        .I4(\counter[0]_i_7__2_n_0 ),
        .O(\counter[0]_i_5__2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555557FFFFFF)) 
    \counter[0]_i_6__2 
       (.I0(counter_reg[8]),
        .I1(counter_reg[4]),
        .I2(counter_reg[3]),
        .I3(counter_reg[5]),
        .I4(counter_reg[6]),
        .I5(counter_reg[7]),
        .O(\counter[0]_i_6__2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \counter[0]_i_7__2 
       (.I0(counter_reg[14]),
        .I1(counter_reg[12]),
        .I2(counter_reg[13]),
        .O(\counter[0]_i_7__2_n_0 ));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2__2_n_7 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(\counter[0]_i_1__2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[0]_i_2__2 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2__2_n_0 ,\counter_reg[0]_i_2__2_n_1 ,\counter_reg[0]_i_2__2_n_2 ,\counter_reg[0]_i_2__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2__2_n_4 ,\counter_reg[0]_i_2__2_n_5 ,\counter_reg[0]_i_2__2_n_6 ,\counter_reg[0]_i_2__2_n_7 }),
        .S({counter_reg[3],\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] ,\counter[0]_i_4__2_n_0 }));
  FDRE \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__2_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1__2_n_0 ));
  FDRE \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__2_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1__2_n_0 ));
  FDRE \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__2_n_7 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1__2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[12]_i_1__2 
       (.CI(\counter_reg[8]_i_1__2_n_0 ),
        .CO({\counter_reg[12]_i_1__2_n_0 ,\counter_reg[12]_i_1__2_n_1 ,\counter_reg[12]_i_1__2_n_2 ,\counter_reg[12]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__2_n_4 ,\counter_reg[12]_i_1__2_n_5 ,\counter_reg[12]_i_1__2_n_6 ,\counter_reg[12]_i_1__2_n_7 }),
        .S(counter_reg[15:12]));
  FDRE \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__2_n_6 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1__2_n_0 ));
  FDRE \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__2_n_5 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1__2_n_0 ));
  FDRE \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__2_n_4 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1__2_n_0 ));
  FDRE \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__2_n_7 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1__2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[16]_i_1__2 
       (.CI(\counter_reg[12]_i_1__2_n_0 ),
        .CO({\NLW_counter_reg[16]_i_1__2_CO_UNCONNECTED [3],\counter_reg[16]_i_1__2_n_1 ,\counter_reg[16]_i_1__2_n_2 ,\counter_reg[16]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__2_n_4 ,\counter_reg[16]_i_1__2_n_5 ,\counter_reg[16]_i_1__2_n_6 ,\counter_reg[16]_i_1__2_n_7 }),
        .S(counter_reg[19:16]));
  FDRE \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__2_n_6 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1__2_n_0 ));
  FDRE \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__2_n_5 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1__2_n_0 ));
  FDRE \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__2_n_4 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1__2_n_0 ));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2__2_n_6 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(\counter[0]_i_1__2_n_0 ));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2__2_n_5 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(\counter[0]_i_1__2_n_0 ));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2__2_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1__2_n_0 ));
  FDRE \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__2_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1__2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_1__2 
       (.CI(\counter_reg[0]_i_2__2_n_0 ),
        .CO({\counter_reg[4]_i_1__2_n_0 ,\counter_reg[4]_i_1__2_n_1 ,\counter_reg[4]_i_1__2_n_2 ,\counter_reg[4]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__2_n_4 ,\counter_reg[4]_i_1__2_n_5 ,\counter_reg[4]_i_1__2_n_6 ,\counter_reg[4]_i_1__2_n_7 }),
        .S(counter_reg[7:4]));
  FDRE \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__2_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1__2_n_0 ));
  FDRE \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__2_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1__2_n_0 ));
  FDRE \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__2_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1__2_n_0 ));
  FDRE \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__2_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1__2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_1__2 
       (.CI(\counter_reg[4]_i_1__2_n_0 ),
        .CO({\counter_reg[8]_i_1__2_n_0 ,\counter_reg[8]_i_1__2_n_1 ,\counter_reg[8]_i_1__2_n_2 ,\counter_reg[8]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__2_n_4 ,\counter_reg[8]_i_1__2_n_5 ,\counter_reg[8]_i_1__2_n_6 ,\counter_reg[8]_i_1__2_n_7 }),
        .S(counter_reg[11:8]));
  FDRE \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__2_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \hold_cnt[0]_i_1 
       (.I0(rst),
        .I1(btn_enter_clean),
        .O(rst_reg));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    long_pulse_i_1
       (.I0(btn_enter_clean),
        .I1(long_pulse_reg),
        .O(long_fired));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module system_morse_top_0_0_debounce_2
   (btn_reset_clean,
    rst,
    button2,
    clk);
  output btn_reset_clean;
  input rst;
  input button2;
  input clk;

  wire btn_clean_i_1__1_n_0;
  wire btn_reset_clean;
  wire btn_sync_0_reg_n_0;
  wire btn_sync_1_reg_n_0;
  wire button2;
  wire clk;
  wire \counter[0]_i_1__1_n_0 ;
  wire \counter[0]_i_3__1_n_0 ;
  wire \counter[0]_i_4__1_n_0 ;
  wire \counter[0]_i_5__1_n_0 ;
  wire \counter[0]_i_6__1_n_0 ;
  wire \counter[0]_i_7__1_n_0 ;
  wire [19:3]counter_reg;
  wire \counter_reg[0]_i_2__1_n_0 ;
  wire \counter_reg[0]_i_2__1_n_1 ;
  wire \counter_reg[0]_i_2__1_n_2 ;
  wire \counter_reg[0]_i_2__1_n_3 ;
  wire \counter_reg[0]_i_2__1_n_4 ;
  wire \counter_reg[0]_i_2__1_n_5 ;
  wire \counter_reg[0]_i_2__1_n_6 ;
  wire \counter_reg[0]_i_2__1_n_7 ;
  wire \counter_reg[12]_i_1__1_n_0 ;
  wire \counter_reg[12]_i_1__1_n_1 ;
  wire \counter_reg[12]_i_1__1_n_2 ;
  wire \counter_reg[12]_i_1__1_n_3 ;
  wire \counter_reg[12]_i_1__1_n_4 ;
  wire \counter_reg[12]_i_1__1_n_5 ;
  wire \counter_reg[12]_i_1__1_n_6 ;
  wire \counter_reg[12]_i_1__1_n_7 ;
  wire \counter_reg[16]_i_1__1_n_1 ;
  wire \counter_reg[16]_i_1__1_n_2 ;
  wire \counter_reg[16]_i_1__1_n_3 ;
  wire \counter_reg[16]_i_1__1_n_4 ;
  wire \counter_reg[16]_i_1__1_n_5 ;
  wire \counter_reg[16]_i_1__1_n_6 ;
  wire \counter_reg[16]_i_1__1_n_7 ;
  wire \counter_reg[4]_i_1__1_n_0 ;
  wire \counter_reg[4]_i_1__1_n_1 ;
  wire \counter_reg[4]_i_1__1_n_2 ;
  wire \counter_reg[4]_i_1__1_n_3 ;
  wire \counter_reg[4]_i_1__1_n_4 ;
  wire \counter_reg[4]_i_1__1_n_5 ;
  wire \counter_reg[4]_i_1__1_n_6 ;
  wire \counter_reg[4]_i_1__1_n_7 ;
  wire \counter_reg[8]_i_1__1_n_0 ;
  wire \counter_reg[8]_i_1__1_n_1 ;
  wire \counter_reg[8]_i_1__1_n_2 ;
  wire \counter_reg[8]_i_1__1_n_3 ;
  wire \counter_reg[8]_i_1__1_n_4 ;
  wire \counter_reg[8]_i_1__1_n_5 ;
  wire \counter_reg[8]_i_1__1_n_6 ;
  wire \counter_reg[8]_i_1__1_n_7 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire rst;
  wire [3:3]\NLW_counter_reg[16]_i_1__1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hD8)) 
    btn_clean_i_1__1
       (.I0(\counter[0]_i_3__1_n_0 ),
        .I1(btn_sync_1_reg_n_0),
        .I2(btn_reset_clean),
        .O(btn_clean_i_1__1_n_0));
  FDRE btn_clean_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_clean_i_1__1_n_0),
        .Q(btn_reset_clean),
        .R(rst));
  FDRE btn_sync_0_reg
       (.C(clk),
        .CE(1'b1),
        .D(button2),
        .Q(btn_sync_0_reg_n_0),
        .R(rst));
  FDRE btn_sync_1_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_sync_0_reg_n_0),
        .Q(btn_sync_1_reg_n_0),
        .R(rst));
  LUT4 #(
    .INIT(16'hFFEB)) 
    \counter[0]_i_1__1 
       (.I0(\counter[0]_i_3__1_n_0 ),
        .I1(btn_reset_clean),
        .I2(btn_sync_1_reg_n_0),
        .I3(rst),
        .O(\counter[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAA8A8A8A8A8A8)) 
    \counter[0]_i_3__1 
       (.I0(counter_reg[19]),
        .I1(counter_reg[18]),
        .I2(counter_reg[17]),
        .I3(\counter[0]_i_5__1_n_0 ),
        .I4(counter_reg[15]),
        .I5(counter_reg[16]),
        .O(\counter[0]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_4__1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'h000010FF)) 
    \counter[0]_i_5__1 
       (.I0(counter_reg[9]),
        .I1(counter_reg[10]),
        .I2(\counter[0]_i_6__1_n_0 ),
        .I3(counter_reg[11]),
        .I4(\counter[0]_i_7__1_n_0 ),
        .O(\counter[0]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555557FFFFFF)) 
    \counter[0]_i_6__1 
       (.I0(counter_reg[8]),
        .I1(counter_reg[4]),
        .I2(counter_reg[3]),
        .I3(counter_reg[5]),
        .I4(counter_reg[6]),
        .I5(counter_reg[7]),
        .O(\counter[0]_i_6__1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \counter[0]_i_7__1 
       (.I0(counter_reg[14]),
        .I1(counter_reg[12]),
        .I2(counter_reg[13]),
        .O(\counter[0]_i_7__1_n_0 ));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2__1_n_7 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(\counter[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[0]_i_2__1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_2__1_n_0 ,\counter_reg[0]_i_2__1_n_1 ,\counter_reg[0]_i_2__1_n_2 ,\counter_reg[0]_i_2__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[0]_i_2__1_n_4 ,\counter_reg[0]_i_2__1_n_5 ,\counter_reg[0]_i_2__1_n_6 ,\counter_reg[0]_i_2__1_n_7 }),
        .S({counter_reg[3],\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] ,\counter[0]_i_4__1_n_0 }));
  FDRE \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__1_n_5 ),
        .Q(counter_reg[10]),
        .R(\counter[0]_i_1__1_n_0 ));
  FDRE \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__1_n_4 ),
        .Q(counter_reg[11]),
        .R(\counter[0]_i_1__1_n_0 ));
  FDRE \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__1_n_7 ),
        .Q(counter_reg[12]),
        .R(\counter[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[12]_i_1__1 
       (.CI(\counter_reg[8]_i_1__1_n_0 ),
        .CO({\counter_reg[12]_i_1__1_n_0 ,\counter_reg[12]_i_1__1_n_1 ,\counter_reg[12]_i_1__1_n_2 ,\counter_reg[12]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__1_n_4 ,\counter_reg[12]_i_1__1_n_5 ,\counter_reg[12]_i_1__1_n_6 ,\counter_reg[12]_i_1__1_n_7 }),
        .S(counter_reg[15:12]));
  FDRE \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__1_n_6 ),
        .Q(counter_reg[13]),
        .R(\counter[0]_i_1__1_n_0 ));
  FDRE \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__1_n_5 ),
        .Q(counter_reg[14]),
        .R(\counter[0]_i_1__1_n_0 ));
  FDRE \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__1_n_4 ),
        .Q(counter_reg[15]),
        .R(\counter[0]_i_1__1_n_0 ));
  FDRE \counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__1_n_7 ),
        .Q(counter_reg[16]),
        .R(\counter[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[16]_i_1__1 
       (.CI(\counter_reg[12]_i_1__1_n_0 ),
        .CO({\NLW_counter_reg[16]_i_1__1_CO_UNCONNECTED [3],\counter_reg[16]_i_1__1_n_1 ,\counter_reg[16]_i_1__1_n_2 ,\counter_reg[16]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1__1_n_4 ,\counter_reg[16]_i_1__1_n_5 ,\counter_reg[16]_i_1__1_n_6 ,\counter_reg[16]_i_1__1_n_7 }),
        .S(counter_reg[19:16]));
  FDRE \counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__1_n_6 ),
        .Q(counter_reg[17]),
        .R(\counter[0]_i_1__1_n_0 ));
  FDRE \counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__1_n_5 ),
        .Q(counter_reg[18]),
        .R(\counter[0]_i_1__1_n_0 ));
  FDRE \counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__1_n_4 ),
        .Q(counter_reg[19]),
        .R(\counter[0]_i_1__1_n_0 ));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2__1_n_6 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(\counter[0]_i_1__1_n_0 ));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2__1_n_5 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(\counter[0]_i_1__1_n_0 ));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[0]_i_2__1_n_4 ),
        .Q(counter_reg[3]),
        .R(\counter[0]_i_1__1_n_0 ));
  FDRE \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__1_n_7 ),
        .Q(counter_reg[4]),
        .R(\counter[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_1__1 
       (.CI(\counter_reg[0]_i_2__1_n_0 ),
        .CO({\counter_reg[4]_i_1__1_n_0 ,\counter_reg[4]_i_1__1_n_1 ,\counter_reg[4]_i_1__1_n_2 ,\counter_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__1_n_4 ,\counter_reg[4]_i_1__1_n_5 ,\counter_reg[4]_i_1__1_n_6 ,\counter_reg[4]_i_1__1_n_7 }),
        .S(counter_reg[7:4]));
  FDRE \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__1_n_6 ),
        .Q(counter_reg[5]),
        .R(\counter[0]_i_1__1_n_0 ));
  FDRE \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__1_n_5 ),
        .Q(counter_reg[6]),
        .R(\counter[0]_i_1__1_n_0 ));
  FDRE \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__1_n_4 ),
        .Q(counter_reg[7]),
        .R(\counter[0]_i_1__1_n_0 ));
  FDRE \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__1_n_7 ),
        .Q(counter_reg[8]),
        .R(\counter[0]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_1__1 
       (.CI(\counter_reg[4]_i_1__1_n_0 ),
        .CO({\counter_reg[8]_i_1__1_n_0 ,\counter_reg[8]_i_1__1_n_1 ,\counter_reg[8]_i_1__1_n_2 ,\counter_reg[8]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__1_n_4 ,\counter_reg[8]_i_1__1_n_5 ,\counter_reg[8]_i_1__1_n_6 ,\counter_reg[8]_i_1__1_n_7 }),
        .S(counter_reg[11:8]));
  FDRE \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__1_n_6 ),
        .Q(counter_reg[9]),
        .R(\counter[0]_i_1__1_n_0 ));
endmodule

(* ORIG_REF_NAME = "edge_detect" *) 
module system_morse_top_0_0_edge_detect
   (sig_previous,
    rst,
    btn_dash_clean,
    clk);
  output sig_previous;
  input rst;
  input btn_dash_clean;
  input clk;

  wire btn_dash_clean;
  wire clk;
  wire rst;
  wire sig_previous;

  FDRE sig_previous_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_dash_clean),
        .Q(sig_previous),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "edge_detect" *) 
module system_morse_top_0_0_edge_detect_3
   (sig_previous,
    rst,
    btn_dot_clean,
    clk);
  output sig_previous;
  input rst;
  input btn_dot_clean;
  input clk;

  wire btn_dot_clean;
  wire clk;
  wire rst;
  wire sig_previous;

  FDRE sig_previous_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_dot_clean),
        .Q(sig_previous),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "edge_detect" *) 
module system_morse_top_0_0_edge_detect_4
   (sig_previous,
    symbols_reg,
    rst,
    btn_reset_clean,
    clk,
    \symbols_reg[5]_i_2_0 ,
    \symbols_reg_reg[5] ,
    btn_dash_clean,
    sig_previous_0,
    btn_dot_clean,
    sig_previous_1);
  output sig_previous;
  output [0:0]symbols_reg;
  input rst;
  input btn_reset_clean;
  input clk;
  input \symbols_reg[5]_i_2_0 ;
  input \symbols_reg_reg[5] ;
  input btn_dash_clean;
  input sig_previous_0;
  input btn_dot_clean;
  input sig_previous_1;

  wire btn_dash_clean;
  wire btn_dot_clean;
  wire btn_reset_clean;
  wire clk;
  wire rst;
  wire sig_previous;
  wire sig_previous_0;
  wire sig_previous_1;
  wire [0:0]symbols_reg;
  wire \symbols_reg[5]_i_2_0 ;
  wire \symbols_reg[5]_i_4_n_0 ;
  wire \symbols_reg_reg[5] ;

  FDRE sig_previous_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_reset_clean),
        .Q(sig_previous),
        .R(rst));
  LUT6 #(
    .INIT(64'h0080008000000080)) 
    \symbols_reg[5]_i_2 
       (.I0(\symbols_reg[5]_i_4_n_0 ),
        .I1(\symbols_reg_reg[5] ),
        .I2(btn_dash_clean),
        .I3(sig_previous_0),
        .I4(btn_dot_clean),
        .I5(sig_previous_1),
        .O(symbols_reg));
  LUT4 #(
    .INIT(16'h5545)) 
    \symbols_reg[5]_i_4 
       (.I0(rst),
        .I1(sig_previous),
        .I2(btn_reset_clean),
        .I3(\symbols_reg[5]_i_2_0 ),
        .O(\symbols_reg[5]_i_4_n_0 ));
endmodule

(* ORIG_REF_NAME = "long_press_detect" *) 
module system_morse_top_0_0_long_press_detect
   (long_enter_pulse,
    short_enter_pulse,
    \hold_cnt_reg[22]_0 ,
    rst,
    btn_enter_clean,
    clk,
    \hold_cnt_reg[0]_0 ,
    long_fired);
  output long_enter_pulse;
  output short_enter_pulse;
  output \hold_cnt_reg[22]_0 ;
  input rst;
  input btn_enter_clean;
  input clk;
  input \hold_cnt_reg[0]_0 ;
  input long_fired;

  wire btn_enter_clean;
  wire btn_prev;
  wire clk;
  wire \hold_cnt[0]_i_4_n_0 ;
  wire \hold_cnt[0]_i_5_n_0 ;
  wire \hold_cnt[0]_i_6_n_0 ;
  wire \hold_cnt[0]_i_7_n_0 ;
  wire \hold_cnt[0]_i_8_n_0 ;
  wire \hold_cnt[0]_i_9_n_0 ;
  wire [27:0]hold_cnt_reg;
  wire \hold_cnt_reg[0]_0 ;
  wire \hold_cnt_reg[0]_i_3_n_0 ;
  wire \hold_cnt_reg[0]_i_3_n_1 ;
  wire \hold_cnt_reg[0]_i_3_n_2 ;
  wire \hold_cnt_reg[0]_i_3_n_3 ;
  wire \hold_cnt_reg[0]_i_3_n_4 ;
  wire \hold_cnt_reg[0]_i_3_n_5 ;
  wire \hold_cnt_reg[0]_i_3_n_6 ;
  wire \hold_cnt_reg[0]_i_3_n_7 ;
  wire \hold_cnt_reg[12]_i_1_n_0 ;
  wire \hold_cnt_reg[12]_i_1_n_1 ;
  wire \hold_cnt_reg[12]_i_1_n_2 ;
  wire \hold_cnt_reg[12]_i_1_n_3 ;
  wire \hold_cnt_reg[12]_i_1_n_4 ;
  wire \hold_cnt_reg[12]_i_1_n_5 ;
  wire \hold_cnt_reg[12]_i_1_n_6 ;
  wire \hold_cnt_reg[12]_i_1_n_7 ;
  wire \hold_cnt_reg[16]_i_1_n_0 ;
  wire \hold_cnt_reg[16]_i_1_n_1 ;
  wire \hold_cnt_reg[16]_i_1_n_2 ;
  wire \hold_cnt_reg[16]_i_1_n_3 ;
  wire \hold_cnt_reg[16]_i_1_n_4 ;
  wire \hold_cnt_reg[16]_i_1_n_5 ;
  wire \hold_cnt_reg[16]_i_1_n_6 ;
  wire \hold_cnt_reg[16]_i_1_n_7 ;
  wire \hold_cnt_reg[20]_i_1_n_0 ;
  wire \hold_cnt_reg[20]_i_1_n_1 ;
  wire \hold_cnt_reg[20]_i_1_n_2 ;
  wire \hold_cnt_reg[20]_i_1_n_3 ;
  wire \hold_cnt_reg[20]_i_1_n_4 ;
  wire \hold_cnt_reg[20]_i_1_n_5 ;
  wire \hold_cnt_reg[20]_i_1_n_6 ;
  wire \hold_cnt_reg[20]_i_1_n_7 ;
  wire \hold_cnt_reg[22]_0 ;
  wire \hold_cnt_reg[24]_i_1_n_1 ;
  wire \hold_cnt_reg[24]_i_1_n_2 ;
  wire \hold_cnt_reg[24]_i_1_n_3 ;
  wire \hold_cnt_reg[24]_i_1_n_4 ;
  wire \hold_cnt_reg[24]_i_1_n_5 ;
  wire \hold_cnt_reg[24]_i_1_n_6 ;
  wire \hold_cnt_reg[24]_i_1_n_7 ;
  wire \hold_cnt_reg[4]_i_1_n_0 ;
  wire \hold_cnt_reg[4]_i_1_n_1 ;
  wire \hold_cnt_reg[4]_i_1_n_2 ;
  wire \hold_cnt_reg[4]_i_1_n_3 ;
  wire \hold_cnt_reg[4]_i_1_n_4 ;
  wire \hold_cnt_reg[4]_i_1_n_5 ;
  wire \hold_cnt_reg[4]_i_1_n_6 ;
  wire \hold_cnt_reg[4]_i_1_n_7 ;
  wire \hold_cnt_reg[8]_i_1_n_0 ;
  wire \hold_cnt_reg[8]_i_1_n_1 ;
  wire \hold_cnt_reg[8]_i_1_n_2 ;
  wire \hold_cnt_reg[8]_i_1_n_3 ;
  wire \hold_cnt_reg[8]_i_1_n_4 ;
  wire \hold_cnt_reg[8]_i_1_n_5 ;
  wire \hold_cnt_reg[8]_i_1_n_6 ;
  wire \hold_cnt_reg[8]_i_1_n_7 ;
  wire long_enter_pulse;
  wire long_fired;
  wire long_fired_i_1_n_0;
  wire long_fired_reg_n_0;
  wire long_pulse_i_3_n_0;
  wire long_pulse_i_4_n_0;
  wire long_pulse_i_5_n_0;
  wire long_pulse_i_6_n_0;
  wire long_pulse_i_7_n_0;
  wire long_pulse_i_8_n_0;
  wire rst;
  wire sel;
  wire short_enter_pulse;
  wire short_pulse_i_1_n_0;
  wire [3:3]\NLW_hold_cnt_reg[24]_i_1_CO_UNCONNECTED ;

  FDRE btn_prev_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_enter_clean),
        .Q(btn_prev),
        .R(rst));
  LUT5 #(
    .INIT(32'h5555FF57)) 
    \hold_cnt[0]_i_2 
       (.I0(hold_cnt_reg[27]),
        .I1(\hold_cnt[0]_i_4_n_0 ),
        .I2(\hold_cnt[0]_i_5_n_0 ),
        .I3(\hold_cnt[0]_i_6_n_0 ),
        .I4(hold_cnt_reg[26]),
        .O(sel));
  LUT6 #(
    .INIT(64'h8880888880808080)) 
    \hold_cnt[0]_i_4 
       (.I0(hold_cnt_reg[18]),
        .I1(hold_cnt_reg[19]),
        .I2(hold_cnt_reg[17]),
        .I3(\hold_cnt[0]_i_8_n_0 ),
        .I4(\hold_cnt[0]_i_9_n_0 ),
        .I5(hold_cnt_reg[16]),
        .O(\hold_cnt[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \hold_cnt[0]_i_5 
       (.I0(hold_cnt_reg[20]),
        .I1(hold_cnt_reg[23]),
        .I2(hold_cnt_reg[22]),
        .O(\hold_cnt[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h7777777F)) 
    \hold_cnt[0]_i_6 
       (.I0(hold_cnt_reg[24]),
        .I1(hold_cnt_reg[25]),
        .I2(hold_cnt_reg[22]),
        .I3(hold_cnt_reg[23]),
        .I4(hold_cnt_reg[21]),
        .O(\hold_cnt[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hold_cnt[0]_i_7 
       (.I0(hold_cnt_reg[0]),
        .O(\hold_cnt[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \hold_cnt[0]_i_8 
       (.I0(hold_cnt_reg[12]),
        .I1(hold_cnt_reg[13]),
        .I2(hold_cnt_reg[15]),
        .I3(hold_cnt_reg[11]),
        .I4(hold_cnt_reg[14]),
        .O(\hold_cnt[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h555555557FFFFFFF)) 
    \hold_cnt[0]_i_9 
       (.I0(hold_cnt_reg[10]),
        .I1(hold_cnt_reg[7]),
        .I2(hold_cnt_reg[6]),
        .I3(hold_cnt_reg[5]),
        .I4(hold_cnt_reg[8]),
        .I5(hold_cnt_reg[9]),
        .O(\hold_cnt[0]_i_9_n_0 ));
  FDRE \hold_cnt_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[0]_i_3_n_7 ),
        .Q(hold_cnt_reg[0]),
        .R(\hold_cnt_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hold_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\hold_cnt_reg[0]_i_3_n_0 ,\hold_cnt_reg[0]_i_3_n_1 ,\hold_cnt_reg[0]_i_3_n_2 ,\hold_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\hold_cnt_reg[0]_i_3_n_4 ,\hold_cnt_reg[0]_i_3_n_5 ,\hold_cnt_reg[0]_i_3_n_6 ,\hold_cnt_reg[0]_i_3_n_7 }),
        .S({hold_cnt_reg[3:1],\hold_cnt[0]_i_7_n_0 }));
  FDRE \hold_cnt_reg[10] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[8]_i_1_n_5 ),
        .Q(hold_cnt_reg[10]),
        .R(\hold_cnt_reg[0]_0 ));
  FDRE \hold_cnt_reg[11] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[8]_i_1_n_4 ),
        .Q(hold_cnt_reg[11]),
        .R(\hold_cnt_reg[0]_0 ));
  FDRE \hold_cnt_reg[12] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[12]_i_1_n_7 ),
        .Q(hold_cnt_reg[12]),
        .R(\hold_cnt_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hold_cnt_reg[12]_i_1 
       (.CI(\hold_cnt_reg[8]_i_1_n_0 ),
        .CO({\hold_cnt_reg[12]_i_1_n_0 ,\hold_cnt_reg[12]_i_1_n_1 ,\hold_cnt_reg[12]_i_1_n_2 ,\hold_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hold_cnt_reg[12]_i_1_n_4 ,\hold_cnt_reg[12]_i_1_n_5 ,\hold_cnt_reg[12]_i_1_n_6 ,\hold_cnt_reg[12]_i_1_n_7 }),
        .S(hold_cnt_reg[15:12]));
  FDRE \hold_cnt_reg[13] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[12]_i_1_n_6 ),
        .Q(hold_cnt_reg[13]),
        .R(\hold_cnt_reg[0]_0 ));
  FDRE \hold_cnt_reg[14] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[12]_i_1_n_5 ),
        .Q(hold_cnt_reg[14]),
        .R(\hold_cnt_reg[0]_0 ));
  FDRE \hold_cnt_reg[15] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[12]_i_1_n_4 ),
        .Q(hold_cnt_reg[15]),
        .R(\hold_cnt_reg[0]_0 ));
  FDRE \hold_cnt_reg[16] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[16]_i_1_n_7 ),
        .Q(hold_cnt_reg[16]),
        .R(\hold_cnt_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hold_cnt_reg[16]_i_1 
       (.CI(\hold_cnt_reg[12]_i_1_n_0 ),
        .CO({\hold_cnt_reg[16]_i_1_n_0 ,\hold_cnt_reg[16]_i_1_n_1 ,\hold_cnt_reg[16]_i_1_n_2 ,\hold_cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hold_cnt_reg[16]_i_1_n_4 ,\hold_cnt_reg[16]_i_1_n_5 ,\hold_cnt_reg[16]_i_1_n_6 ,\hold_cnt_reg[16]_i_1_n_7 }),
        .S(hold_cnt_reg[19:16]));
  FDRE \hold_cnt_reg[17] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[16]_i_1_n_6 ),
        .Q(hold_cnt_reg[17]),
        .R(\hold_cnt_reg[0]_0 ));
  FDRE \hold_cnt_reg[18] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[16]_i_1_n_5 ),
        .Q(hold_cnt_reg[18]),
        .R(\hold_cnt_reg[0]_0 ));
  FDRE \hold_cnt_reg[19] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[16]_i_1_n_4 ),
        .Q(hold_cnt_reg[19]),
        .R(\hold_cnt_reg[0]_0 ));
  FDRE \hold_cnt_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[0]_i_3_n_6 ),
        .Q(hold_cnt_reg[1]),
        .R(\hold_cnt_reg[0]_0 ));
  FDRE \hold_cnt_reg[20] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[20]_i_1_n_7 ),
        .Q(hold_cnt_reg[20]),
        .R(\hold_cnt_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hold_cnt_reg[20]_i_1 
       (.CI(\hold_cnt_reg[16]_i_1_n_0 ),
        .CO({\hold_cnt_reg[20]_i_1_n_0 ,\hold_cnt_reg[20]_i_1_n_1 ,\hold_cnt_reg[20]_i_1_n_2 ,\hold_cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hold_cnt_reg[20]_i_1_n_4 ,\hold_cnt_reg[20]_i_1_n_5 ,\hold_cnt_reg[20]_i_1_n_6 ,\hold_cnt_reg[20]_i_1_n_7 }),
        .S(hold_cnt_reg[23:20]));
  FDRE \hold_cnt_reg[21] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[20]_i_1_n_6 ),
        .Q(hold_cnt_reg[21]),
        .R(\hold_cnt_reg[0]_0 ));
  FDRE \hold_cnt_reg[22] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[20]_i_1_n_5 ),
        .Q(hold_cnt_reg[22]),
        .R(\hold_cnt_reg[0]_0 ));
  FDRE \hold_cnt_reg[23] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[20]_i_1_n_4 ),
        .Q(hold_cnt_reg[23]),
        .R(\hold_cnt_reg[0]_0 ));
  FDRE \hold_cnt_reg[24] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[24]_i_1_n_7 ),
        .Q(hold_cnt_reg[24]),
        .R(\hold_cnt_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hold_cnt_reg[24]_i_1 
       (.CI(\hold_cnt_reg[20]_i_1_n_0 ),
        .CO({\NLW_hold_cnt_reg[24]_i_1_CO_UNCONNECTED [3],\hold_cnt_reg[24]_i_1_n_1 ,\hold_cnt_reg[24]_i_1_n_2 ,\hold_cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hold_cnt_reg[24]_i_1_n_4 ,\hold_cnt_reg[24]_i_1_n_5 ,\hold_cnt_reg[24]_i_1_n_6 ,\hold_cnt_reg[24]_i_1_n_7 }),
        .S(hold_cnt_reg[27:24]));
  FDRE \hold_cnt_reg[25] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[24]_i_1_n_6 ),
        .Q(hold_cnt_reg[25]),
        .R(\hold_cnt_reg[0]_0 ));
  FDRE \hold_cnt_reg[26] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[24]_i_1_n_5 ),
        .Q(hold_cnt_reg[26]),
        .R(\hold_cnt_reg[0]_0 ));
  FDRE \hold_cnt_reg[27] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[24]_i_1_n_4 ),
        .Q(hold_cnt_reg[27]),
        .R(\hold_cnt_reg[0]_0 ));
  FDRE \hold_cnt_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[0]_i_3_n_5 ),
        .Q(hold_cnt_reg[2]),
        .R(\hold_cnt_reg[0]_0 ));
  FDRE \hold_cnt_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[0]_i_3_n_4 ),
        .Q(hold_cnt_reg[3]),
        .R(\hold_cnt_reg[0]_0 ));
  FDRE \hold_cnt_reg[4] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[4]_i_1_n_7 ),
        .Q(hold_cnt_reg[4]),
        .R(\hold_cnt_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hold_cnt_reg[4]_i_1 
       (.CI(\hold_cnt_reg[0]_i_3_n_0 ),
        .CO({\hold_cnt_reg[4]_i_1_n_0 ,\hold_cnt_reg[4]_i_1_n_1 ,\hold_cnt_reg[4]_i_1_n_2 ,\hold_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hold_cnt_reg[4]_i_1_n_4 ,\hold_cnt_reg[4]_i_1_n_5 ,\hold_cnt_reg[4]_i_1_n_6 ,\hold_cnt_reg[4]_i_1_n_7 }),
        .S(hold_cnt_reg[7:4]));
  FDRE \hold_cnt_reg[5] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[4]_i_1_n_6 ),
        .Q(hold_cnt_reg[5]),
        .R(\hold_cnt_reg[0]_0 ));
  FDRE \hold_cnt_reg[6] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[4]_i_1_n_5 ),
        .Q(hold_cnt_reg[6]),
        .R(\hold_cnt_reg[0]_0 ));
  FDRE \hold_cnt_reg[7] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[4]_i_1_n_4 ),
        .Q(hold_cnt_reg[7]),
        .R(\hold_cnt_reg[0]_0 ));
  FDRE \hold_cnt_reg[8] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[8]_i_1_n_7 ),
        .Q(hold_cnt_reg[8]),
        .R(\hold_cnt_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \hold_cnt_reg[8]_i_1 
       (.CI(\hold_cnt_reg[4]_i_1_n_0 ),
        .CO({\hold_cnt_reg[8]_i_1_n_0 ,\hold_cnt_reg[8]_i_1_n_1 ,\hold_cnt_reg[8]_i_1_n_2 ,\hold_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\hold_cnt_reg[8]_i_1_n_4 ,\hold_cnt_reg[8]_i_1_n_5 ,\hold_cnt_reg[8]_i_1_n_6 ,\hold_cnt_reg[8]_i_1_n_7 }),
        .S(hold_cnt_reg[11:8]));
  FDRE \hold_cnt_reg[9] 
       (.C(clk),
        .CE(sel),
        .D(\hold_cnt_reg[8]_i_1_n_6 ),
        .Q(hold_cnt_reg[9]),
        .R(\hold_cnt_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hA2)) 
    long_fired_i_1
       (.I0(btn_enter_clean),
        .I1(\hold_cnt_reg[22]_0 ),
        .I2(long_fired_reg_n_0),
        .O(long_fired_i_1_n_0));
  FDRE long_fired_reg
       (.C(clk),
        .CE(1'b1),
        .D(long_fired_i_1_n_0),
        .Q(long_fired_reg_n_0),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    long_pulse_i_2
       (.I0(hold_cnt_reg[22]),
        .I1(hold_cnt_reg[23]),
        .I2(hold_cnt_reg[20]),
        .I3(long_pulse_i_3_n_0),
        .I4(long_pulse_i_4_n_0),
        .I5(long_pulse_i_5_n_0),
        .O(\hold_cnt_reg[22]_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    long_pulse_i_3
       (.I0(hold_cnt_reg[3]),
        .I1(long_fired_reg_n_0),
        .I2(hold_cnt_reg[8]),
        .I3(hold_cnt_reg[9]),
        .O(long_pulse_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    long_pulse_i_4
       (.I0(hold_cnt_reg[0]),
        .I1(hold_cnt_reg[1]),
        .I2(hold_cnt_reg[11]),
        .I3(hold_cnt_reg[17]),
        .I4(long_pulse_i_6_n_0),
        .O(long_pulse_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    long_pulse_i_5
       (.I0(long_pulse_i_7_n_0),
        .I1(long_pulse_i_8_n_0),
        .I2(hold_cnt_reg[21]),
        .I3(hold_cnt_reg[4]),
        .I4(hold_cnt_reg[10]),
        .I5(hold_cnt_reg[5]),
        .O(long_pulse_i_5_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    long_pulse_i_6
       (.I0(hold_cnt_reg[26]),
        .I1(hold_cnt_reg[15]),
        .I2(hold_cnt_reg[27]),
        .I3(hold_cnt_reg[16]),
        .O(long_pulse_i_6_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    long_pulse_i_7
       (.I0(hold_cnt_reg[12]),
        .I1(hold_cnt_reg[13]),
        .I2(hold_cnt_reg[19]),
        .I3(hold_cnt_reg[18]),
        .I4(hold_cnt_reg[6]),
        .I5(hold_cnt_reg[7]),
        .O(long_pulse_i_7_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    long_pulse_i_8
       (.I0(hold_cnt_reg[24]),
        .I1(hold_cnt_reg[25]),
        .I2(hold_cnt_reg[2]),
        .I3(hold_cnt_reg[14]),
        .O(long_pulse_i_8_n_0));
  FDRE long_pulse_reg
       (.C(clk),
        .CE(1'b1),
        .D(long_fired),
        .Q(long_enter_pulse),
        .R(rst));
  LUT4 #(
    .INIT(16'h0004)) 
    short_pulse_i_1
       (.I0(btn_enter_clean),
        .I1(btn_prev),
        .I2(long_fired_reg_n_0),
        .I3(rst),
        .O(short_pulse_i_1_n_0));
  FDRE short_pulse_reg
       (.C(clk),
        .CE(1'b1),
        .D(short_pulse_i_1_n_0),
        .Q(short_enter_pulse),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "message_buffer" *) 
module system_morse_top_0_0_message_buffer
   (\read_idx_reg[4] ,
    echo_symbols_mux,
    \read_idx_reg[4]_0 ,
    echo_count_mux,
    D,
    \read_idx_reg[4]_1 ,
    Q,
    echo_error_mux,
    long_pulse_reg,
    rst,
    fsm_buf_write_error,
    clk,
    \mem_error_reg[9]_0 ,
    \ascii_data_reg[6] ,
    \ascii_data_reg[0] ,
    \ascii_data_reg[0]_0 ,
    \ascii_data_reg[1] ,
    \ascii_data_reg[1]_0 ,
    \ascii_data_reg[2] ,
    \ascii_data_reg[2]_0 ,
    \ascii_data_reg[3] ,
    \ascii_data_reg[3]_0 ,
    \ascii_data_reg[4] ,
    \ascii_data_reg[4]_0 ,
    \ascii_data_reg[5] ,
    \ascii_data_reg[5]_0 ,
    \mem_error_reg[28]_0 ,
    fsm_buf_write_en,
    error_latched_reg,
    replay_active,
    fsm_decode_error,
    \mem_count_reg[0][3]_0 ,
    long_enter_pulse,
    state,
    \mem_symbols_reg[0][5]_0 ,
    SR,
    E);
  output \read_idx_reg[4] ;
  output [5:0]echo_symbols_mux;
  output \read_idx_reg[4]_0 ;
  output [3:0]echo_count_mux;
  output [6:0]D;
  output \read_idx_reg[4]_1 ;
  output [5:0]Q;
  output echo_error_mux;
  output long_pulse_reg;
  input rst;
  input fsm_buf_write_error;
  input clk;
  input \mem_error_reg[9]_0 ;
  input \ascii_data_reg[6] ;
  input \ascii_data_reg[0] ;
  input \ascii_data_reg[0]_0 ;
  input \ascii_data_reg[1] ;
  input \ascii_data_reg[1]_0 ;
  input \ascii_data_reg[2] ;
  input \ascii_data_reg[2]_0 ;
  input \ascii_data_reg[3] ;
  input \ascii_data_reg[3]_0 ;
  input \ascii_data_reg[4] ;
  input \ascii_data_reg[4]_0 ;
  input \ascii_data_reg[5] ;
  input \ascii_data_reg[5]_0 ;
  input \mem_error_reg[28]_0 ;
  input fsm_buf_write_en;
  input [4:0]error_latched_reg;
  input replay_active;
  input fsm_decode_error;
  input [3:0]\mem_count_reg[0][3]_0 ;
  input long_enter_pulse;
  input [0:0]state;
  input [5:0]\mem_symbols_reg[0][5]_0 ;
  input [0:0]SR;
  input [0:0]E;

  wire [6:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire [5:0]Q;
  wire [0:0]SR;
  wire \ascii_data[6]_i_3_n_0 ;
  wire \ascii_data[6]_i_4_n_0 ;
  wire \ascii_data[6]_i_5_n_0 ;
  wire \ascii_data_reg[0] ;
  wire \ascii_data_reg[0]_0 ;
  wire \ascii_data_reg[1] ;
  wire \ascii_data_reg[1]_0 ;
  wire \ascii_data_reg[2] ;
  wire \ascii_data_reg[2]_0 ;
  wire \ascii_data_reg[3] ;
  wire \ascii_data_reg[3]_0 ;
  wire \ascii_data_reg[4] ;
  wire \ascii_data_reg[4]_0 ;
  wire \ascii_data_reg[5] ;
  wire \ascii_data_reg[5]_0 ;
  wire \ascii_data_reg[6] ;
  wire clk;
  wire \count_latched[0]_i_10_n_0 ;
  wire \count_latched[0]_i_11_n_0 ;
  wire \count_latched[0]_i_12_n_0 ;
  wire \count_latched[0]_i_13_n_0 ;
  wire \count_latched[0]_i_14_n_0 ;
  wire \count_latched[0]_i_15_n_0 ;
  wire \count_latched[0]_i_8_n_0 ;
  wire \count_latched[0]_i_9_n_0 ;
  wire \count_latched[1]_i_10_n_0 ;
  wire \count_latched[1]_i_11_n_0 ;
  wire \count_latched[1]_i_12_n_0 ;
  wire \count_latched[1]_i_3_n_0 ;
  wire \count_latched[1]_i_4_n_0 ;
  wire \count_latched[1]_i_5_n_0 ;
  wire \count_latched[1]_i_6_n_0 ;
  wire \count_latched[1]_i_7_n_0 ;
  wire \count_latched[1]_i_8_n_0 ;
  wire \count_latched[1]_i_9_n_0 ;
  wire \count_latched[2]_i_10_n_0 ;
  wire \count_latched[2]_i_11_n_0 ;
  wire \count_latched[2]_i_12_n_0 ;
  wire \count_latched[2]_i_13_n_0 ;
  wire \count_latched[2]_i_14_n_0 ;
  wire \count_latched[2]_i_15_n_0 ;
  wire \count_latched[2]_i_8_n_0 ;
  wire \count_latched[2]_i_9_n_0 ;
  wire \count_latched[3]_i_10_n_0 ;
  wire \count_latched[3]_i_11_n_0 ;
  wire \count_latched[3]_i_12_n_0 ;
  wire \count_latched[3]_i_13_n_0 ;
  wire \count_latched[3]_i_14_n_0 ;
  wire \count_latched[3]_i_15_n_0 ;
  wire \count_latched[3]_i_8_n_0 ;
  wire \count_latched[3]_i_9_n_0 ;
  wire \count_latched_reg[0]_i_2_n_0 ;
  wire \count_latched_reg[0]_i_3_n_0 ;
  wire \count_latched_reg[0]_i_4_n_0 ;
  wire \count_latched_reg[0]_i_5_n_0 ;
  wire \count_latched_reg[0]_i_6_n_0 ;
  wire \count_latched_reg[0]_i_7_n_0 ;
  wire \count_latched_reg[2]_i_2_n_0 ;
  wire \count_latched_reg[2]_i_3_n_0 ;
  wire \count_latched_reg[2]_i_4_n_0 ;
  wire \count_latched_reg[2]_i_5_n_0 ;
  wire \count_latched_reg[2]_i_6_n_0 ;
  wire \count_latched_reg[2]_i_7_n_0 ;
  wire \count_latched_reg[3]_i_2_n_0 ;
  wire \count_latched_reg[3]_i_3_n_0 ;
  wire \count_latched_reg[3]_i_4_n_0 ;
  wire \count_latched_reg[3]_i_5_n_0 ;
  wire \count_latched_reg[3]_i_6_n_0 ;
  wire \count_latched_reg[3]_i_7_n_0 ;
  wire [3:0]echo_count_mux;
  wire echo_error_mux;
  wire [5:0]echo_symbols_mux;
  wire error_latched_i_10_n_0;
  wire error_latched_i_11_n_0;
  wire error_latched_i_12_n_0;
  wire error_latched_i_13_n_0;
  wire error_latched_i_14_n_0;
  wire error_latched_i_15_n_0;
  wire error_latched_i_8_n_0;
  wire error_latched_i_9_n_0;
  wire [4:0]error_latched_reg;
  wire error_latched_reg_i_2_n_0;
  wire error_latched_reg_i_3_n_0;
  wire error_latched_reg_i_4_n_0;
  wire error_latched_reg_i_5_n_0;
  wire error_latched_reg_i_6_n_0;
  wire error_latched_reg_i_7_n_0;
  wire fsm_buf_write_en;
  wire fsm_buf_write_error;
  wire fsm_decode_error;
  wire long_enter_pulse;
  wire long_pulse_reg;
  wire [3:0]\mem_count_reg[0][3]_0 ;
  wire [3:0]\mem_count_reg[0]_32 ;
  wire [3:0]\mem_count_reg[10]_42 ;
  wire [3:0]\mem_count_reg[11]_43 ;
  wire [3:0]\mem_count_reg[12]_44 ;
  wire [3:0]\mem_count_reg[13]_45 ;
  wire [3:0]\mem_count_reg[14]_46 ;
  wire [3:0]\mem_count_reg[15]_47 ;
  wire [3:0]\mem_count_reg[16]_48 ;
  wire [3:0]\mem_count_reg[17]_49 ;
  wire [3:0]\mem_count_reg[18]_50 ;
  wire [3:0]\mem_count_reg[19]_51 ;
  wire [3:0]\mem_count_reg[1]_33 ;
  wire [3:0]\mem_count_reg[20]_52 ;
  wire [3:0]\mem_count_reg[21]_53 ;
  wire [3:0]\mem_count_reg[22]_54 ;
  wire [3:0]\mem_count_reg[23]_55 ;
  wire [3:0]\mem_count_reg[24]_56 ;
  wire [3:0]\mem_count_reg[25]_57 ;
  wire [3:0]\mem_count_reg[26]_58 ;
  wire [3:0]\mem_count_reg[27]_59 ;
  wire [3:0]\mem_count_reg[28]_60 ;
  wire [3:0]\mem_count_reg[29]_61 ;
  wire [3:0]\mem_count_reg[2]_34 ;
  wire [3:0]\mem_count_reg[30]_62 ;
  wire [3:0]\mem_count_reg[31]_63 ;
  wire [3:0]\mem_count_reg[3]_35 ;
  wire [3:0]\mem_count_reg[4]_36 ;
  wire [3:0]\mem_count_reg[5]_37 ;
  wire [3:0]\mem_count_reg[6]_38 ;
  wire [3:0]\mem_count_reg[7]_39 ;
  wire [3:0]\mem_count_reg[8]_40 ;
  wire [3:0]\mem_count_reg[9]_41 ;
  wire \mem_error_reg[0]__1 ;
  wire \mem_error_reg[10]__1 ;
  wire \mem_error_reg[11]__1 ;
  wire \mem_error_reg[12]__1 ;
  wire \mem_error_reg[13]__1 ;
  wire \mem_error_reg[14]__1 ;
  wire \mem_error_reg[15]__1 ;
  wire \mem_error_reg[16]__1 ;
  wire \mem_error_reg[17]__1 ;
  wire \mem_error_reg[18]__1 ;
  wire \mem_error_reg[19]__1 ;
  wire \mem_error_reg[1]__1 ;
  wire \mem_error_reg[20]__1 ;
  wire \mem_error_reg[21]__1 ;
  wire \mem_error_reg[22]__1 ;
  wire \mem_error_reg[23]__1 ;
  wire \mem_error_reg[24]__1 ;
  wire \mem_error_reg[25]__1 ;
  wire \mem_error_reg[26]__1 ;
  wire \mem_error_reg[27]__1 ;
  wire \mem_error_reg[28]_0 ;
  wire \mem_error_reg[28]__1 ;
  wire \mem_error_reg[29]__1 ;
  wire \mem_error_reg[2]__1 ;
  wire \mem_error_reg[30]__1 ;
  wire \mem_error_reg[31]__1 ;
  wire \mem_error_reg[3]__1 ;
  wire \mem_error_reg[4]__1 ;
  wire \mem_error_reg[5]__1 ;
  wire \mem_error_reg[6]__1 ;
  wire \mem_error_reg[7]__1 ;
  wire \mem_error_reg[8]__1 ;
  wire \mem_error_reg[9]_0 ;
  wire \mem_error_reg[9]__1 ;
  wire [0:0]mem_symbols;
  wire \mem_symbols[10][5]_i_1_n_0 ;
  wire \mem_symbols[11][5]_i_1_n_0 ;
  wire \mem_symbols[12][5]_i_1_n_0 ;
  wire \mem_symbols[13][5]_i_1_n_0 ;
  wire \mem_symbols[14][5]_i_1_n_0 ;
  wire \mem_symbols[15][5]_i_1_n_0 ;
  wire \mem_symbols[16][5]_i_1_n_0 ;
  wire \mem_symbols[17][5]_i_1_n_0 ;
  wire \mem_symbols[18][5]_i_1_n_0 ;
  wire \mem_symbols[19][5]_i_1_n_0 ;
  wire \mem_symbols[1][5]_i_1_n_0 ;
  wire \mem_symbols[20][5]_i_1_n_0 ;
  wire \mem_symbols[21][5]_i_1_n_0 ;
  wire \mem_symbols[22][5]_i_1_n_0 ;
  wire \mem_symbols[23][5]_i_1_n_0 ;
  wire \mem_symbols[24][5]_i_1_n_0 ;
  wire \mem_symbols[25][5]_i_1_n_0 ;
  wire \mem_symbols[25][5]_i_2_n_0 ;
  wire \mem_symbols[26][5]_i_1_n_0 ;
  wire \mem_symbols[26][5]_i_2_n_0 ;
  wire \mem_symbols[27][5]_i_1_n_0 ;
  wire \mem_symbols[28][5]_i_1_n_0 ;
  wire \mem_symbols[28][5]_i_2_n_0 ;
  wire \mem_symbols[29][5]_i_1_n_0 ;
  wire \mem_symbols[2][5]_i_1_n_0 ;
  wire \mem_symbols[30][5]_i_1_n_0 ;
  wire \mem_symbols[31][5]_i_1_n_0 ;
  wire \mem_symbols[3][5]_i_1_n_0 ;
  wire \mem_symbols[4][5]_i_1_n_0 ;
  wire \mem_symbols[5][5]_i_1_n_0 ;
  wire \mem_symbols[6][5]_i_1_n_0 ;
  wire \mem_symbols[7][5]_i_1_n_0 ;
  wire \mem_symbols[8][5]_i_1_n_0 ;
  wire \mem_symbols[9][5]_i_1_n_0 ;
  wire [5:0]\mem_symbols_reg[0][5]_0 ;
  wire [5:0]\mem_symbols_reg[0]_0 ;
  wire [5:0]\mem_symbols_reg[10]_10 ;
  wire [5:0]\mem_symbols_reg[11]_11 ;
  wire [5:0]\mem_symbols_reg[12]_12 ;
  wire [5:0]\mem_symbols_reg[13]_13 ;
  wire [5:0]\mem_symbols_reg[14]_14 ;
  wire [5:0]\mem_symbols_reg[15]_15 ;
  wire [5:0]\mem_symbols_reg[16]_16 ;
  wire [5:0]\mem_symbols_reg[17]_17 ;
  wire [5:0]\mem_symbols_reg[18]_18 ;
  wire [5:0]\mem_symbols_reg[19]_19 ;
  wire [5:0]\mem_symbols_reg[1]_1 ;
  wire [5:0]\mem_symbols_reg[20]_20 ;
  wire [5:0]\mem_symbols_reg[21]_21 ;
  wire [5:0]\mem_symbols_reg[22]_22 ;
  wire [5:0]\mem_symbols_reg[23]_23 ;
  wire [5:0]\mem_symbols_reg[24]_24 ;
  wire [5:0]\mem_symbols_reg[25]_25 ;
  wire [5:0]\mem_symbols_reg[26]_26 ;
  wire [5:0]\mem_symbols_reg[27]_27 ;
  wire [5:0]\mem_symbols_reg[28]_28 ;
  wire [5:0]\mem_symbols_reg[29]_29 ;
  wire [5:0]\mem_symbols_reg[2]_2 ;
  wire [5:0]\mem_symbols_reg[30]_30 ;
  wire [5:0]\mem_symbols_reg[31]_31 ;
  wire [5:0]\mem_symbols_reg[3]_3 ;
  wire [5:0]\mem_symbols_reg[4]_4 ;
  wire [5:0]\mem_symbols_reg[5]_5 ;
  wire [5:0]\mem_symbols_reg[6]_6 ;
  wire [5:0]\mem_symbols_reg[7]_7 ;
  wire [5:0]\mem_symbols_reg[8]_8 ;
  wire [5:0]\mem_symbols_reg[9]_9 ;
  wire \msg_length[0]_i_1_n_0 ;
  wire [5:1]p_0_in__0;
  wire [4:1]p_0_in__1;
  wire \read_idx_reg[4] ;
  wire \read_idx_reg[4]_0 ;
  wire \read_idx_reg[4]_1 ;
  wire replay_active;
  wire rst;
  wire [0:0]state;
  wire \symbols_latched[0]_i_10_n_0 ;
  wire \symbols_latched[0]_i_11_n_0 ;
  wire \symbols_latched[0]_i_12_n_0 ;
  wire \symbols_latched[0]_i_13_n_0 ;
  wire \symbols_latched[0]_i_14_n_0 ;
  wire \symbols_latched[0]_i_15_n_0 ;
  wire \symbols_latched[0]_i_8_n_0 ;
  wire \symbols_latched[0]_i_9_n_0 ;
  wire \symbols_latched[1]_i_10_n_0 ;
  wire \symbols_latched[1]_i_11_n_0 ;
  wire \symbols_latched[1]_i_12_n_0 ;
  wire \symbols_latched[1]_i_13_n_0 ;
  wire \symbols_latched[1]_i_14_n_0 ;
  wire \symbols_latched[1]_i_15_n_0 ;
  wire \symbols_latched[1]_i_8_n_0 ;
  wire \symbols_latched[1]_i_9_n_0 ;
  wire \symbols_latched[2]_i_10_n_0 ;
  wire \symbols_latched[2]_i_11_n_0 ;
  wire \symbols_latched[2]_i_12_n_0 ;
  wire \symbols_latched[2]_i_13_n_0 ;
  wire \symbols_latched[2]_i_14_n_0 ;
  wire \symbols_latched[2]_i_15_n_0 ;
  wire \symbols_latched[2]_i_8_n_0 ;
  wire \symbols_latched[2]_i_9_n_0 ;
  wire \symbols_latched[3]_i_10_n_0 ;
  wire \symbols_latched[3]_i_11_n_0 ;
  wire \symbols_latched[3]_i_12_n_0 ;
  wire \symbols_latched[3]_i_13_n_0 ;
  wire \symbols_latched[3]_i_14_n_0 ;
  wire \symbols_latched[3]_i_15_n_0 ;
  wire \symbols_latched[3]_i_8_n_0 ;
  wire \symbols_latched[3]_i_9_n_0 ;
  wire \symbols_latched[4]_i_10_n_0 ;
  wire \symbols_latched[4]_i_11_n_0 ;
  wire \symbols_latched[4]_i_12_n_0 ;
  wire \symbols_latched[4]_i_13_n_0 ;
  wire \symbols_latched[4]_i_14_n_0 ;
  wire \symbols_latched[4]_i_15_n_0 ;
  wire \symbols_latched[4]_i_8_n_0 ;
  wire \symbols_latched[4]_i_9_n_0 ;
  wire \symbols_latched[5]_i_10_n_0 ;
  wire \symbols_latched[5]_i_11_n_0 ;
  wire \symbols_latched[5]_i_12_n_0 ;
  wire \symbols_latched[5]_i_13_n_0 ;
  wire \symbols_latched[5]_i_14_n_0 ;
  wire \symbols_latched[5]_i_15_n_0 ;
  wire \symbols_latched[5]_i_16_n_0 ;
  wire \symbols_latched[5]_i_9_n_0 ;
  wire \symbols_latched_reg[0]_i_2_n_0 ;
  wire \symbols_latched_reg[0]_i_3_n_0 ;
  wire \symbols_latched_reg[0]_i_4_n_0 ;
  wire \symbols_latched_reg[0]_i_5_n_0 ;
  wire \symbols_latched_reg[0]_i_6_n_0 ;
  wire \symbols_latched_reg[0]_i_7_n_0 ;
  wire \symbols_latched_reg[1]_i_2_n_0 ;
  wire \symbols_latched_reg[1]_i_3_n_0 ;
  wire \symbols_latched_reg[1]_i_4_n_0 ;
  wire \symbols_latched_reg[1]_i_5_n_0 ;
  wire \symbols_latched_reg[1]_i_6_n_0 ;
  wire \symbols_latched_reg[1]_i_7_n_0 ;
  wire \symbols_latched_reg[2]_i_2_n_0 ;
  wire \symbols_latched_reg[2]_i_3_n_0 ;
  wire \symbols_latched_reg[2]_i_4_n_0 ;
  wire \symbols_latched_reg[2]_i_5_n_0 ;
  wire \symbols_latched_reg[2]_i_6_n_0 ;
  wire \symbols_latched_reg[2]_i_7_n_0 ;
  wire \symbols_latched_reg[3]_i_2_n_0 ;
  wire \symbols_latched_reg[3]_i_3_n_0 ;
  wire \symbols_latched_reg[3]_i_4_n_0 ;
  wire \symbols_latched_reg[3]_i_5_n_0 ;
  wire \symbols_latched_reg[3]_i_6_n_0 ;
  wire \symbols_latched_reg[3]_i_7_n_0 ;
  wire \symbols_latched_reg[4]_i_2_n_0 ;
  wire \symbols_latched_reg[4]_i_3_n_0 ;
  wire \symbols_latched_reg[4]_i_4_n_0 ;
  wire \symbols_latched_reg[4]_i_5_n_0 ;
  wire \symbols_latched_reg[4]_i_6_n_0 ;
  wire \symbols_latched_reg[4]_i_7_n_0 ;
  wire \symbols_latched_reg[5]_i_3_n_0 ;
  wire \symbols_latched_reg[5]_i_4_n_0 ;
  wire \symbols_latched_reg[5]_i_5_n_0 ;
  wire \symbols_latched_reg[5]_i_6_n_0 ;
  wire \symbols_latched_reg[5]_i_7_n_0 ;
  wire \symbols_latched_reg[5]_i_8_n_0 ;
  wire \write_ptr[0]_i_1_n_0 ;
  wire [4:0]write_ptr_reg;

  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_state[1]_i_2__0 
       (.I0(\FSM_sequential_state[1]_i_5_n_0 ),
        .I1(long_enter_pulse),
        .I2(state),
        .O(long_pulse_reg));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[5]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAAAAAA8AA8888)) 
    \ascii_data[0]_i_1 
       (.I0(\read_idx_reg[4]_1 ),
        .I1(echo_count_mux[3]),
        .I2(\ascii_data_reg[0] ),
        .I3(echo_count_mux[0]),
        .I4(echo_symbols_mux[4]),
        .I5(\ascii_data_reg[0]_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hA8AAAAAAA8AA8888)) 
    \ascii_data[1]_i_1 
       (.I0(\read_idx_reg[4]_1 ),
        .I1(echo_count_mux[3]),
        .I2(\ascii_data_reg[1] ),
        .I3(echo_count_mux[0]),
        .I4(echo_symbols_mux[4]),
        .I5(\ascii_data_reg[1]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA8AAA888)) 
    \ascii_data[2]_i_1 
       (.I0(\read_idx_reg[4]_1 ),
        .I1(echo_count_mux[3]),
        .I2(\ascii_data_reg[2] ),
        .I3(echo_symbols_mux[4]),
        .I4(\ascii_data_reg[2]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hA8AAAAAAA8AA8888)) 
    \ascii_data[3]_i_1 
       (.I0(\read_idx_reg[4]_1 ),
        .I1(echo_count_mux[3]),
        .I2(\ascii_data_reg[3] ),
        .I3(echo_count_mux[0]),
        .I4(echo_symbols_mux[4]),
        .I5(\ascii_data_reg[3]_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ascii_data[3]_i_4 
       (.I0(echo_symbols_mux[5]),
        .I1(\read_idx_reg[4]_0 ),
        .O(\read_idx_reg[4] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA888A8)) 
    \ascii_data[4]_i_1 
       (.I0(\read_idx_reg[4]_1 ),
        .I1(echo_count_mux[3]),
        .I2(\ascii_data_reg[4] ),
        .I3(echo_count_mux[0]),
        .I4(\ascii_data_reg[4]_0 ),
        .I5(echo_symbols_mux[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \ascii_data[4]_i_2 
       (.I0(echo_count_mux[0]),
        .I1(echo_count_mux[3]),
        .I2(\read_idx_reg[4]_0 ),
        .I3(echo_count_mux[2]),
        .O(\read_idx_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFEAA)) 
    \ascii_data[5]_i_1 
       (.I0(echo_symbols_mux[4]),
        .I1(\ascii_data_reg[5] ),
        .I2(echo_count_mux[2]),
        .I3(echo_count_mux[0]),
        .I4(\ascii_data_reg[5]_0 ),
        .I5(\ascii_data[6]_i_5_n_0 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h00004540)) 
    \ascii_data[6]_i_2 
       (.I0(echo_symbols_mux[4]),
        .I1(\ascii_data[6]_i_3_n_0 ),
        .I2(echo_count_mux[0]),
        .I3(\ascii_data[6]_i_4_n_0 ),
        .I4(\ascii_data[6]_i_5_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0000000001010105)) 
    \ascii_data[6]_i_3 
       (.I0(echo_symbols_mux[5]),
        .I1(\read_idx_reg[4]_0 ),
        .I2(echo_symbols_mux[3]),
        .I3(echo_symbols_mux[1]),
        .I4(echo_symbols_mux[2]),
        .I5(echo_count_mux[2]),
        .O(\ascii_data[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF000000FF000101)) 
    \ascii_data[6]_i_4 
       (.I0(echo_symbols_mux[5]),
        .I1(\read_idx_reg[4]_0 ),
        .I2(echo_symbols_mux[3]),
        .I3(\ascii_data_reg[6] ),
        .I4(echo_count_mux[2]),
        .I5(echo_symbols_mux[2]),
        .O(\ascii_data[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \ascii_data[6]_i_5 
       (.I0(echo_count_mux[3]),
        .I1(\read_idx_reg[4]_1 ),
        .O(\ascii_data[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count_latched[0]_i_1 
       (.I0(\count_latched_reg[0]_i_2_n_0 ),
        .I1(error_latched_reg[4]),
        .I2(\count_latched_reg[0]_i_3_n_0 ),
        .I3(replay_active),
        .I4(\mem_count_reg[0][3]_0 [0]),
        .O(echo_count_mux[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[0]_i_10 
       (.I0(\mem_count_reg[27]_59 [0]),
        .I1(\mem_count_reg[26]_58 [0]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[25]_57 [0]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[24]_56 [0]),
        .O(\count_latched[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[0]_i_11 
       (.I0(\mem_count_reg[31]_63 [0]),
        .I1(\mem_count_reg[30]_62 [0]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[29]_61 [0]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[28]_60 [0]),
        .O(\count_latched[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[0]_i_12 
       (.I0(\mem_count_reg[3]_35 [0]),
        .I1(\mem_count_reg[2]_34 [0]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[1]_33 [0]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[0]_32 [0]),
        .O(\count_latched[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[0]_i_13 
       (.I0(\mem_count_reg[7]_39 [0]),
        .I1(\mem_count_reg[6]_38 [0]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[5]_37 [0]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[4]_36 [0]),
        .O(\count_latched[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[0]_i_14 
       (.I0(\mem_count_reg[11]_43 [0]),
        .I1(\mem_count_reg[10]_42 [0]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[9]_41 [0]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[8]_40 [0]),
        .O(\count_latched[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[0]_i_15 
       (.I0(\mem_count_reg[15]_47 [0]),
        .I1(\mem_count_reg[14]_46 [0]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[13]_45 [0]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[12]_44 [0]),
        .O(\count_latched[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[0]_i_8 
       (.I0(\mem_count_reg[19]_51 [0]),
        .I1(\mem_count_reg[18]_50 [0]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[17]_49 [0]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[16]_48 [0]),
        .O(\count_latched[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[0]_i_9 
       (.I0(\mem_count_reg[23]_55 [0]),
        .I1(\mem_count_reg[22]_54 [0]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[21]_53 [0]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[20]_52 [0]),
        .O(\count_latched[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_latched[1]_i_1 
       (.I0(\read_idx_reg[4]_0 ),
        .O(echo_count_mux[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[1]_i_10 
       (.I0(\mem_count_reg[11]_43 [1]),
        .I1(\mem_count_reg[10]_42 [1]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[9]_41 [1]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[8]_40 [1]),
        .O(\count_latched[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[1]_i_11 
       (.I0(\mem_count_reg[7]_39 [1]),
        .I1(\mem_count_reg[6]_38 [1]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[5]_37 [1]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[4]_36 [1]),
        .O(\count_latched[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[1]_i_12 
       (.I0(\mem_count_reg[3]_35 [1]),
        .I1(\mem_count_reg[2]_34 [1]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[1]_33 [1]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[0]_32 [1]),
        .O(\count_latched[1]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    \count_latched[1]_i_2 
       (.I0(\count_latched[1]_i_3_n_0 ),
        .I1(error_latched_reg[4]),
        .I2(\count_latched[1]_i_4_n_0 ),
        .I3(replay_active),
        .I4(\mem_count_reg[0][3]_0 [1]),
        .O(\read_idx_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \count_latched[1]_i_3 
       (.I0(\count_latched[1]_i_5_n_0 ),
        .I1(\count_latched[1]_i_6_n_0 ),
        .I2(error_latched_reg[3]),
        .I3(\count_latched[1]_i_7_n_0 ),
        .I4(error_latched_reg[2]),
        .I5(\count_latched[1]_i_8_n_0 ),
        .O(\count_latched[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \count_latched[1]_i_4 
       (.I0(\count_latched[1]_i_9_n_0 ),
        .I1(\count_latched[1]_i_10_n_0 ),
        .I2(error_latched_reg[3]),
        .I3(\count_latched[1]_i_11_n_0 ),
        .I4(error_latched_reg[2]),
        .I5(\count_latched[1]_i_12_n_0 ),
        .O(\count_latched[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[1]_i_5 
       (.I0(\mem_count_reg[31]_63 [1]),
        .I1(\mem_count_reg[30]_62 [1]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[29]_61 [1]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[28]_60 [1]),
        .O(\count_latched[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[1]_i_6 
       (.I0(\mem_count_reg[27]_59 [1]),
        .I1(\mem_count_reg[26]_58 [1]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[25]_57 [1]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[24]_56 [1]),
        .O(\count_latched[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[1]_i_7 
       (.I0(\mem_count_reg[23]_55 [1]),
        .I1(\mem_count_reg[22]_54 [1]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[21]_53 [1]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[20]_52 [1]),
        .O(\count_latched[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[1]_i_8 
       (.I0(\mem_count_reg[19]_51 [1]),
        .I1(\mem_count_reg[18]_50 [1]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[17]_49 [1]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[16]_48 [1]),
        .O(\count_latched[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[1]_i_9 
       (.I0(\mem_count_reg[15]_47 [1]),
        .I1(\mem_count_reg[14]_46 [1]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[13]_45 [1]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[12]_44 [1]),
        .O(\count_latched[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count_latched[2]_i_1 
       (.I0(\count_latched_reg[2]_i_2_n_0 ),
        .I1(error_latched_reg[4]),
        .I2(\count_latched_reg[2]_i_3_n_0 ),
        .I3(replay_active),
        .I4(\mem_count_reg[0][3]_0 [2]),
        .O(echo_count_mux[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[2]_i_10 
       (.I0(\mem_count_reg[27]_59 [2]),
        .I1(\mem_count_reg[26]_58 [2]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[25]_57 [2]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[24]_56 [2]),
        .O(\count_latched[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[2]_i_11 
       (.I0(\mem_count_reg[31]_63 [2]),
        .I1(\mem_count_reg[30]_62 [2]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[29]_61 [2]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[28]_60 [2]),
        .O(\count_latched[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[2]_i_12 
       (.I0(\mem_count_reg[3]_35 [2]),
        .I1(\mem_count_reg[2]_34 [2]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[1]_33 [2]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[0]_32 [2]),
        .O(\count_latched[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[2]_i_13 
       (.I0(\mem_count_reg[7]_39 [2]),
        .I1(\mem_count_reg[6]_38 [2]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[5]_37 [2]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[4]_36 [2]),
        .O(\count_latched[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[2]_i_14 
       (.I0(\mem_count_reg[11]_43 [2]),
        .I1(\mem_count_reg[10]_42 [2]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[9]_41 [2]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[8]_40 [2]),
        .O(\count_latched[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[2]_i_15 
       (.I0(\mem_count_reg[15]_47 [2]),
        .I1(\mem_count_reg[14]_46 [2]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[13]_45 [2]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[12]_44 [2]),
        .O(\count_latched[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[2]_i_8 
       (.I0(\mem_count_reg[19]_51 [2]),
        .I1(\mem_count_reg[18]_50 [2]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[17]_49 [2]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[16]_48 [2]),
        .O(\count_latched[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[2]_i_9 
       (.I0(\mem_count_reg[23]_55 [2]),
        .I1(\mem_count_reg[22]_54 [2]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[21]_53 [2]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[20]_52 [2]),
        .O(\count_latched[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \count_latched[3]_i_1 
       (.I0(\count_latched_reg[3]_i_2_n_0 ),
        .I1(error_latched_reg[4]),
        .I2(\count_latched_reg[3]_i_3_n_0 ),
        .I3(replay_active),
        .I4(\mem_count_reg[0][3]_0 [3]),
        .O(echo_count_mux[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[3]_i_10 
       (.I0(\mem_count_reg[27]_59 [3]),
        .I1(\mem_count_reg[26]_58 [3]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[25]_57 [3]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[24]_56 [3]),
        .O(\count_latched[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[3]_i_11 
       (.I0(\mem_count_reg[31]_63 [3]),
        .I1(\mem_count_reg[30]_62 [3]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[29]_61 [3]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[28]_60 [3]),
        .O(\count_latched[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[3]_i_12 
       (.I0(\mem_count_reg[3]_35 [3]),
        .I1(\mem_count_reg[2]_34 [3]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[1]_33 [3]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[0]_32 [3]),
        .O(\count_latched[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[3]_i_13 
       (.I0(\mem_count_reg[7]_39 [3]),
        .I1(\mem_count_reg[6]_38 [3]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[5]_37 [3]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[4]_36 [3]),
        .O(\count_latched[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[3]_i_14 
       (.I0(\mem_count_reg[11]_43 [3]),
        .I1(\mem_count_reg[10]_42 [3]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[9]_41 [3]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[8]_40 [3]),
        .O(\count_latched[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[3]_i_15 
       (.I0(\mem_count_reg[15]_47 [3]),
        .I1(\mem_count_reg[14]_46 [3]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[13]_45 [3]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[12]_44 [3]),
        .O(\count_latched[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[3]_i_8 
       (.I0(\mem_count_reg[19]_51 [3]),
        .I1(\mem_count_reg[18]_50 [3]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[17]_49 [3]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[16]_48 [3]),
        .O(\count_latched[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_latched[3]_i_9 
       (.I0(\mem_count_reg[23]_55 [3]),
        .I1(\mem_count_reg[22]_54 [3]),
        .I2(error_latched_reg[1]),
        .I3(\mem_count_reg[21]_53 [3]),
        .I4(error_latched_reg[0]),
        .I5(\mem_count_reg[20]_52 [3]),
        .O(\count_latched[3]_i_9_n_0 ));
  MUXF8 \count_latched_reg[0]_i_2 
       (.I0(\count_latched_reg[0]_i_4_n_0 ),
        .I1(\count_latched_reg[0]_i_5_n_0 ),
        .O(\count_latched_reg[0]_i_2_n_0 ),
        .S(error_latched_reg[3]));
  MUXF8 \count_latched_reg[0]_i_3 
       (.I0(\count_latched_reg[0]_i_6_n_0 ),
        .I1(\count_latched_reg[0]_i_7_n_0 ),
        .O(\count_latched_reg[0]_i_3_n_0 ),
        .S(error_latched_reg[3]));
  MUXF7 \count_latched_reg[0]_i_4 
       (.I0(\count_latched[0]_i_8_n_0 ),
        .I1(\count_latched[0]_i_9_n_0 ),
        .O(\count_latched_reg[0]_i_4_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \count_latched_reg[0]_i_5 
       (.I0(\count_latched[0]_i_10_n_0 ),
        .I1(\count_latched[0]_i_11_n_0 ),
        .O(\count_latched_reg[0]_i_5_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \count_latched_reg[0]_i_6 
       (.I0(\count_latched[0]_i_12_n_0 ),
        .I1(\count_latched[0]_i_13_n_0 ),
        .O(\count_latched_reg[0]_i_6_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \count_latched_reg[0]_i_7 
       (.I0(\count_latched[0]_i_14_n_0 ),
        .I1(\count_latched[0]_i_15_n_0 ),
        .O(\count_latched_reg[0]_i_7_n_0 ),
        .S(error_latched_reg[2]));
  MUXF8 \count_latched_reg[2]_i_2 
       (.I0(\count_latched_reg[2]_i_4_n_0 ),
        .I1(\count_latched_reg[2]_i_5_n_0 ),
        .O(\count_latched_reg[2]_i_2_n_0 ),
        .S(error_latched_reg[3]));
  MUXF8 \count_latched_reg[2]_i_3 
       (.I0(\count_latched_reg[2]_i_6_n_0 ),
        .I1(\count_latched_reg[2]_i_7_n_0 ),
        .O(\count_latched_reg[2]_i_3_n_0 ),
        .S(error_latched_reg[3]));
  MUXF7 \count_latched_reg[2]_i_4 
       (.I0(\count_latched[2]_i_8_n_0 ),
        .I1(\count_latched[2]_i_9_n_0 ),
        .O(\count_latched_reg[2]_i_4_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \count_latched_reg[2]_i_5 
       (.I0(\count_latched[2]_i_10_n_0 ),
        .I1(\count_latched[2]_i_11_n_0 ),
        .O(\count_latched_reg[2]_i_5_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \count_latched_reg[2]_i_6 
       (.I0(\count_latched[2]_i_12_n_0 ),
        .I1(\count_latched[2]_i_13_n_0 ),
        .O(\count_latched_reg[2]_i_6_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \count_latched_reg[2]_i_7 
       (.I0(\count_latched[2]_i_14_n_0 ),
        .I1(\count_latched[2]_i_15_n_0 ),
        .O(\count_latched_reg[2]_i_7_n_0 ),
        .S(error_latched_reg[2]));
  MUXF8 \count_latched_reg[3]_i_2 
       (.I0(\count_latched_reg[3]_i_4_n_0 ),
        .I1(\count_latched_reg[3]_i_5_n_0 ),
        .O(\count_latched_reg[3]_i_2_n_0 ),
        .S(error_latched_reg[3]));
  MUXF8 \count_latched_reg[3]_i_3 
       (.I0(\count_latched_reg[3]_i_6_n_0 ),
        .I1(\count_latched_reg[3]_i_7_n_0 ),
        .O(\count_latched_reg[3]_i_3_n_0 ),
        .S(error_latched_reg[3]));
  MUXF7 \count_latched_reg[3]_i_4 
       (.I0(\count_latched[3]_i_8_n_0 ),
        .I1(\count_latched[3]_i_9_n_0 ),
        .O(\count_latched_reg[3]_i_4_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \count_latched_reg[3]_i_5 
       (.I0(\count_latched[3]_i_10_n_0 ),
        .I1(\count_latched[3]_i_11_n_0 ),
        .O(\count_latched_reg[3]_i_5_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \count_latched_reg[3]_i_6 
       (.I0(\count_latched[3]_i_12_n_0 ),
        .I1(\count_latched[3]_i_13_n_0 ),
        .O(\count_latched_reg[3]_i_6_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \count_latched_reg[3]_i_7 
       (.I0(\count_latched[3]_i_14_n_0 ),
        .I1(\count_latched[3]_i_15_n_0 ),
        .O(\count_latched_reg[3]_i_7_n_0 ),
        .S(error_latched_reg[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    error_latched_i_1
       (.I0(error_latched_reg_i_2_n_0),
        .I1(error_latched_reg[4]),
        .I2(error_latched_reg_i_3_n_0),
        .I3(replay_active),
        .I4(fsm_decode_error),
        .O(echo_error_mux));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    error_latched_i_10
       (.I0(\mem_error_reg[27]__1 ),
        .I1(\mem_error_reg[26]__1 ),
        .I2(error_latched_reg[1]),
        .I3(\mem_error_reg[25]__1 ),
        .I4(error_latched_reg[0]),
        .I5(\mem_error_reg[24]__1 ),
        .O(error_latched_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    error_latched_i_11
       (.I0(\mem_error_reg[31]__1 ),
        .I1(\mem_error_reg[30]__1 ),
        .I2(error_latched_reg[1]),
        .I3(\mem_error_reg[29]__1 ),
        .I4(error_latched_reg[0]),
        .I5(\mem_error_reg[28]__1 ),
        .O(error_latched_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    error_latched_i_12
       (.I0(\mem_error_reg[3]__1 ),
        .I1(\mem_error_reg[2]__1 ),
        .I2(error_latched_reg[1]),
        .I3(\mem_error_reg[1]__1 ),
        .I4(error_latched_reg[0]),
        .I5(\mem_error_reg[0]__1 ),
        .O(error_latched_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    error_latched_i_13
       (.I0(\mem_error_reg[7]__1 ),
        .I1(\mem_error_reg[6]__1 ),
        .I2(error_latched_reg[1]),
        .I3(\mem_error_reg[5]__1 ),
        .I4(error_latched_reg[0]),
        .I5(\mem_error_reg[4]__1 ),
        .O(error_latched_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    error_latched_i_14
       (.I0(\mem_error_reg[11]__1 ),
        .I1(\mem_error_reg[10]__1 ),
        .I2(error_latched_reg[1]),
        .I3(\mem_error_reg[9]__1 ),
        .I4(error_latched_reg[0]),
        .I5(\mem_error_reg[8]__1 ),
        .O(error_latched_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    error_latched_i_15
       (.I0(\mem_error_reg[15]__1 ),
        .I1(\mem_error_reg[14]__1 ),
        .I2(error_latched_reg[1]),
        .I3(\mem_error_reg[13]__1 ),
        .I4(error_latched_reg[0]),
        .I5(\mem_error_reg[12]__1 ),
        .O(error_latched_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    error_latched_i_8
       (.I0(\mem_error_reg[19]__1 ),
        .I1(\mem_error_reg[18]__1 ),
        .I2(error_latched_reg[1]),
        .I3(\mem_error_reg[17]__1 ),
        .I4(error_latched_reg[0]),
        .I5(\mem_error_reg[16]__1 ),
        .O(error_latched_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    error_latched_i_9
       (.I0(\mem_error_reg[23]__1 ),
        .I1(\mem_error_reg[22]__1 ),
        .I2(error_latched_reg[1]),
        .I3(\mem_error_reg[21]__1 ),
        .I4(error_latched_reg[0]),
        .I5(\mem_error_reg[20]__1 ),
        .O(error_latched_i_9_n_0));
  MUXF8 error_latched_reg_i_2
       (.I0(error_latched_reg_i_4_n_0),
        .I1(error_latched_reg_i_5_n_0),
        .O(error_latched_reg_i_2_n_0),
        .S(error_latched_reg[3]));
  MUXF8 error_latched_reg_i_3
       (.I0(error_latched_reg_i_6_n_0),
        .I1(error_latched_reg_i_7_n_0),
        .O(error_latched_reg_i_3_n_0),
        .S(error_latched_reg[3]));
  MUXF7 error_latched_reg_i_4
       (.I0(error_latched_i_8_n_0),
        .I1(error_latched_i_9_n_0),
        .O(error_latched_reg_i_4_n_0),
        .S(error_latched_reg[2]));
  MUXF7 error_latched_reg_i_5
       (.I0(error_latched_i_10_n_0),
        .I1(error_latched_i_11_n_0),
        .O(error_latched_reg_i_5_n_0),
        .S(error_latched_reg[2]));
  MUXF7 error_latched_reg_i_6
       (.I0(error_latched_i_12_n_0),
        .I1(error_latched_i_13_n_0),
        .O(error_latched_reg_i_6_n_0),
        .S(error_latched_reg[2]));
  MUXF7 error_latched_reg_i_7
       (.I0(error_latched_i_14_n_0),
        .I1(error_latched_i_15_n_0),
        .O(error_latched_reg_i_7_n_0),
        .S(error_latched_reg[2]));
  FDRE \mem_count_reg[0][0] 
       (.C(clk),
        .CE(mem_symbols),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[0]_32 [0]),
        .R(rst));
  FDRE \mem_count_reg[0][1] 
       (.C(clk),
        .CE(mem_symbols),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[0]_32 [1]),
        .R(rst));
  FDRE \mem_count_reg[0][2] 
       (.C(clk),
        .CE(mem_symbols),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[0]_32 [2]),
        .R(rst));
  FDRE \mem_count_reg[0][3] 
       (.C(clk),
        .CE(mem_symbols),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[0]_32 [3]),
        .R(rst));
  FDRE \mem_count_reg[10][0] 
       (.C(clk),
        .CE(\mem_symbols[10][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[10]_42 [0]),
        .R(rst));
  FDRE \mem_count_reg[10][1] 
       (.C(clk),
        .CE(\mem_symbols[10][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[10]_42 [1]),
        .R(rst));
  FDRE \mem_count_reg[10][2] 
       (.C(clk),
        .CE(\mem_symbols[10][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[10]_42 [2]),
        .R(rst));
  FDRE \mem_count_reg[10][3] 
       (.C(clk),
        .CE(\mem_symbols[10][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[10]_42 [3]),
        .R(rst));
  FDRE \mem_count_reg[11][0] 
       (.C(clk),
        .CE(\mem_symbols[11][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[11]_43 [0]),
        .R(rst));
  FDRE \mem_count_reg[11][1] 
       (.C(clk),
        .CE(\mem_symbols[11][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[11]_43 [1]),
        .R(rst));
  FDRE \mem_count_reg[11][2] 
       (.C(clk),
        .CE(\mem_symbols[11][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[11]_43 [2]),
        .R(rst));
  FDRE \mem_count_reg[11][3] 
       (.C(clk),
        .CE(\mem_symbols[11][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[11]_43 [3]),
        .R(rst));
  FDRE \mem_count_reg[12][0] 
       (.C(clk),
        .CE(\mem_symbols[12][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[12]_44 [0]),
        .R(rst));
  FDRE \mem_count_reg[12][1] 
       (.C(clk),
        .CE(\mem_symbols[12][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[12]_44 [1]),
        .R(rst));
  FDRE \mem_count_reg[12][2] 
       (.C(clk),
        .CE(\mem_symbols[12][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[12]_44 [2]),
        .R(rst));
  FDRE \mem_count_reg[12][3] 
       (.C(clk),
        .CE(\mem_symbols[12][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[12]_44 [3]),
        .R(rst));
  FDRE \mem_count_reg[13][0] 
       (.C(clk),
        .CE(\mem_symbols[13][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[13]_45 [0]),
        .R(rst));
  FDRE \mem_count_reg[13][1] 
       (.C(clk),
        .CE(\mem_symbols[13][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[13]_45 [1]),
        .R(rst));
  FDRE \mem_count_reg[13][2] 
       (.C(clk),
        .CE(\mem_symbols[13][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[13]_45 [2]),
        .R(rst));
  FDRE \mem_count_reg[13][3] 
       (.C(clk),
        .CE(\mem_symbols[13][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[13]_45 [3]),
        .R(rst));
  FDRE \mem_count_reg[14][0] 
       (.C(clk),
        .CE(\mem_symbols[14][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[14]_46 [0]),
        .R(rst));
  FDRE \mem_count_reg[14][1] 
       (.C(clk),
        .CE(\mem_symbols[14][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[14]_46 [1]),
        .R(rst));
  FDRE \mem_count_reg[14][2] 
       (.C(clk),
        .CE(\mem_symbols[14][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[14]_46 [2]),
        .R(rst));
  FDRE \mem_count_reg[14][3] 
       (.C(clk),
        .CE(\mem_symbols[14][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[14]_46 [3]),
        .R(rst));
  FDRE \mem_count_reg[15][0] 
       (.C(clk),
        .CE(\mem_symbols[15][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[15]_47 [0]),
        .R(rst));
  FDRE \mem_count_reg[15][1] 
       (.C(clk),
        .CE(\mem_symbols[15][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[15]_47 [1]),
        .R(rst));
  FDRE \mem_count_reg[15][2] 
       (.C(clk),
        .CE(\mem_symbols[15][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[15]_47 [2]),
        .R(rst));
  FDRE \mem_count_reg[15][3] 
       (.C(clk),
        .CE(\mem_symbols[15][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[15]_47 [3]),
        .R(rst));
  FDRE \mem_count_reg[16][0] 
       (.C(clk),
        .CE(\mem_symbols[16][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[16]_48 [0]),
        .R(rst));
  FDRE \mem_count_reg[16][1] 
       (.C(clk),
        .CE(\mem_symbols[16][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[16]_48 [1]),
        .R(rst));
  FDRE \mem_count_reg[16][2] 
       (.C(clk),
        .CE(\mem_symbols[16][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[16]_48 [2]),
        .R(rst));
  FDRE \mem_count_reg[16][3] 
       (.C(clk),
        .CE(\mem_symbols[16][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[16]_48 [3]),
        .R(rst));
  FDRE \mem_count_reg[17][0] 
       (.C(clk),
        .CE(\mem_symbols[17][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[17]_49 [0]),
        .R(rst));
  FDRE \mem_count_reg[17][1] 
       (.C(clk),
        .CE(\mem_symbols[17][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[17]_49 [1]),
        .R(rst));
  FDRE \mem_count_reg[17][2] 
       (.C(clk),
        .CE(\mem_symbols[17][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[17]_49 [2]),
        .R(rst));
  FDRE \mem_count_reg[17][3] 
       (.C(clk),
        .CE(\mem_symbols[17][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[17]_49 [3]),
        .R(rst));
  FDRE \mem_count_reg[18][0] 
       (.C(clk),
        .CE(\mem_symbols[18][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[18]_50 [0]),
        .R(rst));
  FDRE \mem_count_reg[18][1] 
       (.C(clk),
        .CE(\mem_symbols[18][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[18]_50 [1]),
        .R(rst));
  FDRE \mem_count_reg[18][2] 
       (.C(clk),
        .CE(\mem_symbols[18][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[18]_50 [2]),
        .R(rst));
  FDRE \mem_count_reg[18][3] 
       (.C(clk),
        .CE(\mem_symbols[18][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[18]_50 [3]),
        .R(rst));
  FDRE \mem_count_reg[19][0] 
       (.C(clk),
        .CE(\mem_symbols[19][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[19]_51 [0]),
        .R(rst));
  FDRE \mem_count_reg[19][1] 
       (.C(clk),
        .CE(\mem_symbols[19][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[19]_51 [1]),
        .R(rst));
  FDRE \mem_count_reg[19][2] 
       (.C(clk),
        .CE(\mem_symbols[19][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[19]_51 [2]),
        .R(rst));
  FDRE \mem_count_reg[19][3] 
       (.C(clk),
        .CE(\mem_symbols[19][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[19]_51 [3]),
        .R(rst));
  FDRE \mem_count_reg[1][0] 
       (.C(clk),
        .CE(\mem_symbols[1][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[1]_33 [0]),
        .R(rst));
  FDRE \mem_count_reg[1][1] 
       (.C(clk),
        .CE(\mem_symbols[1][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[1]_33 [1]),
        .R(rst));
  FDRE \mem_count_reg[1][2] 
       (.C(clk),
        .CE(\mem_symbols[1][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[1]_33 [2]),
        .R(rst));
  FDRE \mem_count_reg[1][3] 
       (.C(clk),
        .CE(\mem_symbols[1][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[1]_33 [3]),
        .R(rst));
  FDRE \mem_count_reg[20][0] 
       (.C(clk),
        .CE(\mem_symbols[20][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[20]_52 [0]),
        .R(rst));
  FDRE \mem_count_reg[20][1] 
       (.C(clk),
        .CE(\mem_symbols[20][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[20]_52 [1]),
        .R(rst));
  FDRE \mem_count_reg[20][2] 
       (.C(clk),
        .CE(\mem_symbols[20][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[20]_52 [2]),
        .R(rst));
  FDRE \mem_count_reg[20][3] 
       (.C(clk),
        .CE(\mem_symbols[20][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[20]_52 [3]),
        .R(rst));
  FDRE \mem_count_reg[21][0] 
       (.C(clk),
        .CE(\mem_symbols[21][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[21]_53 [0]),
        .R(rst));
  FDRE \mem_count_reg[21][1] 
       (.C(clk),
        .CE(\mem_symbols[21][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[21]_53 [1]),
        .R(rst));
  FDRE \mem_count_reg[21][2] 
       (.C(clk),
        .CE(\mem_symbols[21][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[21]_53 [2]),
        .R(rst));
  FDRE \mem_count_reg[21][3] 
       (.C(clk),
        .CE(\mem_symbols[21][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[21]_53 [3]),
        .R(rst));
  FDRE \mem_count_reg[22][0] 
       (.C(clk),
        .CE(\mem_symbols[22][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[22]_54 [0]),
        .R(rst));
  FDRE \mem_count_reg[22][1] 
       (.C(clk),
        .CE(\mem_symbols[22][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[22]_54 [1]),
        .R(rst));
  FDRE \mem_count_reg[22][2] 
       (.C(clk),
        .CE(\mem_symbols[22][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[22]_54 [2]),
        .R(rst));
  FDRE \mem_count_reg[22][3] 
       (.C(clk),
        .CE(\mem_symbols[22][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[22]_54 [3]),
        .R(rst));
  FDRE \mem_count_reg[23][0] 
       (.C(clk),
        .CE(\mem_symbols[23][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[23]_55 [0]),
        .R(rst));
  FDRE \mem_count_reg[23][1] 
       (.C(clk),
        .CE(\mem_symbols[23][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[23]_55 [1]),
        .R(rst));
  FDRE \mem_count_reg[23][2] 
       (.C(clk),
        .CE(\mem_symbols[23][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[23]_55 [2]),
        .R(rst));
  FDRE \mem_count_reg[23][3] 
       (.C(clk),
        .CE(\mem_symbols[23][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[23]_55 [3]),
        .R(rst));
  FDRE \mem_count_reg[24][0] 
       (.C(clk),
        .CE(\mem_symbols[24][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[24]_56 [0]),
        .R(rst));
  FDRE \mem_count_reg[24][1] 
       (.C(clk),
        .CE(\mem_symbols[24][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[24]_56 [1]),
        .R(rst));
  FDRE \mem_count_reg[24][2] 
       (.C(clk),
        .CE(\mem_symbols[24][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[24]_56 [2]),
        .R(rst));
  FDRE \mem_count_reg[24][3] 
       (.C(clk),
        .CE(\mem_symbols[24][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[24]_56 [3]),
        .R(rst));
  FDRE \mem_count_reg[25][0] 
       (.C(clk),
        .CE(\mem_symbols[25][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[25]_57 [0]),
        .R(rst));
  FDRE \mem_count_reg[25][1] 
       (.C(clk),
        .CE(\mem_symbols[25][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[25]_57 [1]),
        .R(rst));
  FDRE \mem_count_reg[25][2] 
       (.C(clk),
        .CE(\mem_symbols[25][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[25]_57 [2]),
        .R(rst));
  FDRE \mem_count_reg[25][3] 
       (.C(clk),
        .CE(\mem_symbols[25][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[25]_57 [3]),
        .R(rst));
  FDRE \mem_count_reg[26][0] 
       (.C(clk),
        .CE(\mem_symbols[26][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[26]_58 [0]),
        .R(rst));
  FDRE \mem_count_reg[26][1] 
       (.C(clk),
        .CE(\mem_symbols[26][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[26]_58 [1]),
        .R(rst));
  FDRE \mem_count_reg[26][2] 
       (.C(clk),
        .CE(\mem_symbols[26][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[26]_58 [2]),
        .R(rst));
  FDRE \mem_count_reg[26][3] 
       (.C(clk),
        .CE(\mem_symbols[26][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[26]_58 [3]),
        .R(rst));
  FDRE \mem_count_reg[27][0] 
       (.C(clk),
        .CE(\mem_symbols[27][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[27]_59 [0]),
        .R(rst));
  FDRE \mem_count_reg[27][1] 
       (.C(clk),
        .CE(\mem_symbols[27][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[27]_59 [1]),
        .R(rst));
  FDRE \mem_count_reg[27][2] 
       (.C(clk),
        .CE(\mem_symbols[27][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[27]_59 [2]),
        .R(rst));
  FDRE \mem_count_reg[27][3] 
       (.C(clk),
        .CE(\mem_symbols[27][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[27]_59 [3]),
        .R(rst));
  FDRE \mem_count_reg[28][0] 
       (.C(clk),
        .CE(\mem_symbols[28][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[28]_60 [0]),
        .R(rst));
  FDRE \mem_count_reg[28][1] 
       (.C(clk),
        .CE(\mem_symbols[28][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[28]_60 [1]),
        .R(rst));
  FDRE \mem_count_reg[28][2] 
       (.C(clk),
        .CE(\mem_symbols[28][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[28]_60 [2]),
        .R(rst));
  FDRE \mem_count_reg[28][3] 
       (.C(clk),
        .CE(\mem_symbols[28][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[28]_60 [3]),
        .R(rst));
  FDRE \mem_count_reg[29][0] 
       (.C(clk),
        .CE(\mem_symbols[29][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[29]_61 [0]),
        .R(rst));
  FDRE \mem_count_reg[29][1] 
       (.C(clk),
        .CE(\mem_symbols[29][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[29]_61 [1]),
        .R(rst));
  FDRE \mem_count_reg[29][2] 
       (.C(clk),
        .CE(\mem_symbols[29][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[29]_61 [2]),
        .R(rst));
  FDRE \mem_count_reg[29][3] 
       (.C(clk),
        .CE(\mem_symbols[29][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[29]_61 [3]),
        .R(rst));
  FDRE \mem_count_reg[2][0] 
       (.C(clk),
        .CE(\mem_symbols[2][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[2]_34 [0]),
        .R(rst));
  FDRE \mem_count_reg[2][1] 
       (.C(clk),
        .CE(\mem_symbols[2][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[2]_34 [1]),
        .R(rst));
  FDRE \mem_count_reg[2][2] 
       (.C(clk),
        .CE(\mem_symbols[2][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[2]_34 [2]),
        .R(rst));
  FDRE \mem_count_reg[2][3] 
       (.C(clk),
        .CE(\mem_symbols[2][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[2]_34 [3]),
        .R(rst));
  FDRE \mem_count_reg[30][0] 
       (.C(clk),
        .CE(\mem_symbols[30][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[30]_62 [0]),
        .R(rst));
  FDRE \mem_count_reg[30][1] 
       (.C(clk),
        .CE(\mem_symbols[30][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[30]_62 [1]),
        .R(rst));
  FDRE \mem_count_reg[30][2] 
       (.C(clk),
        .CE(\mem_symbols[30][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[30]_62 [2]),
        .R(rst));
  FDRE \mem_count_reg[30][3] 
       (.C(clk),
        .CE(\mem_symbols[30][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[30]_62 [3]),
        .R(rst));
  FDRE \mem_count_reg[31][0] 
       (.C(clk),
        .CE(\mem_symbols[31][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[31]_63 [0]),
        .R(rst));
  FDRE \mem_count_reg[31][1] 
       (.C(clk),
        .CE(\mem_symbols[31][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[31]_63 [1]),
        .R(rst));
  FDRE \mem_count_reg[31][2] 
       (.C(clk),
        .CE(\mem_symbols[31][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[31]_63 [2]),
        .R(rst));
  FDRE \mem_count_reg[31][3] 
       (.C(clk),
        .CE(\mem_symbols[31][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[31]_63 [3]),
        .R(rst));
  FDRE \mem_count_reg[3][0] 
       (.C(clk),
        .CE(\mem_symbols[3][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[3]_35 [0]),
        .R(rst));
  FDRE \mem_count_reg[3][1] 
       (.C(clk),
        .CE(\mem_symbols[3][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[3]_35 [1]),
        .R(rst));
  FDRE \mem_count_reg[3][2] 
       (.C(clk),
        .CE(\mem_symbols[3][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[3]_35 [2]),
        .R(rst));
  FDRE \mem_count_reg[3][3] 
       (.C(clk),
        .CE(\mem_symbols[3][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[3]_35 [3]),
        .R(rst));
  FDRE \mem_count_reg[4][0] 
       (.C(clk),
        .CE(\mem_symbols[4][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[4]_36 [0]),
        .R(rst));
  FDRE \mem_count_reg[4][1] 
       (.C(clk),
        .CE(\mem_symbols[4][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[4]_36 [1]),
        .R(rst));
  FDRE \mem_count_reg[4][2] 
       (.C(clk),
        .CE(\mem_symbols[4][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[4]_36 [2]),
        .R(rst));
  FDRE \mem_count_reg[4][3] 
       (.C(clk),
        .CE(\mem_symbols[4][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[4]_36 [3]),
        .R(rst));
  FDRE \mem_count_reg[5][0] 
       (.C(clk),
        .CE(\mem_symbols[5][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[5]_37 [0]),
        .R(rst));
  FDRE \mem_count_reg[5][1] 
       (.C(clk),
        .CE(\mem_symbols[5][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[5]_37 [1]),
        .R(rst));
  FDRE \mem_count_reg[5][2] 
       (.C(clk),
        .CE(\mem_symbols[5][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[5]_37 [2]),
        .R(rst));
  FDRE \mem_count_reg[5][3] 
       (.C(clk),
        .CE(\mem_symbols[5][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[5]_37 [3]),
        .R(rst));
  FDRE \mem_count_reg[6][0] 
       (.C(clk),
        .CE(\mem_symbols[6][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[6]_38 [0]),
        .R(rst));
  FDRE \mem_count_reg[6][1] 
       (.C(clk),
        .CE(\mem_symbols[6][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[6]_38 [1]),
        .R(rst));
  FDRE \mem_count_reg[6][2] 
       (.C(clk),
        .CE(\mem_symbols[6][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[6]_38 [2]),
        .R(rst));
  FDRE \mem_count_reg[6][3] 
       (.C(clk),
        .CE(\mem_symbols[6][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[6]_38 [3]),
        .R(rst));
  FDRE \mem_count_reg[7][0] 
       (.C(clk),
        .CE(\mem_symbols[7][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[7]_39 [0]),
        .R(rst));
  FDRE \mem_count_reg[7][1] 
       (.C(clk),
        .CE(\mem_symbols[7][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[7]_39 [1]),
        .R(rst));
  FDRE \mem_count_reg[7][2] 
       (.C(clk),
        .CE(\mem_symbols[7][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[7]_39 [2]),
        .R(rst));
  FDRE \mem_count_reg[7][3] 
       (.C(clk),
        .CE(\mem_symbols[7][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[7]_39 [3]),
        .R(rst));
  FDRE \mem_count_reg[8][0] 
       (.C(clk),
        .CE(\mem_symbols[8][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[8]_40 [0]),
        .R(rst));
  FDRE \mem_count_reg[8][1] 
       (.C(clk),
        .CE(\mem_symbols[8][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[8]_40 [1]),
        .R(rst));
  FDRE \mem_count_reg[8][2] 
       (.C(clk),
        .CE(\mem_symbols[8][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[8]_40 [2]),
        .R(rst));
  FDRE \mem_count_reg[8][3] 
       (.C(clk),
        .CE(\mem_symbols[8][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[8]_40 [3]),
        .R(rst));
  FDRE \mem_count_reg[9][0] 
       (.C(clk),
        .CE(\mem_symbols[9][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [0]),
        .Q(\mem_count_reg[9]_41 [0]),
        .R(rst));
  FDRE \mem_count_reg[9][1] 
       (.C(clk),
        .CE(\mem_symbols[9][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [1]),
        .Q(\mem_count_reg[9]_41 [1]),
        .R(rst));
  FDRE \mem_count_reg[9][2] 
       (.C(clk),
        .CE(\mem_symbols[9][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [2]),
        .Q(\mem_count_reg[9]_41 [2]),
        .R(rst));
  FDRE \mem_count_reg[9][3] 
       (.C(clk),
        .CE(\mem_symbols[9][5]_i_1_n_0 ),
        .D(\mem_count_reg[0][3]_0 [3]),
        .Q(\mem_count_reg[9]_41 [3]),
        .R(rst));
  FDRE \mem_error_reg[0] 
       (.C(clk),
        .CE(mem_symbols),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[0]__1 ),
        .R(rst));
  FDRE \mem_error_reg[10] 
       (.C(clk),
        .CE(\mem_symbols[10][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[10]__1 ),
        .R(rst));
  FDRE \mem_error_reg[11] 
       (.C(clk),
        .CE(\mem_symbols[11][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[11]__1 ),
        .R(rst));
  FDRE \mem_error_reg[12] 
       (.C(clk),
        .CE(\mem_symbols[12][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[12]__1 ),
        .R(rst));
  FDRE \mem_error_reg[13] 
       (.C(clk),
        .CE(\mem_symbols[13][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[13]__1 ),
        .R(rst));
  FDRE \mem_error_reg[14] 
       (.C(clk),
        .CE(\mem_symbols[14][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[14]__1 ),
        .R(rst));
  FDRE \mem_error_reg[15] 
       (.C(clk),
        .CE(\mem_symbols[15][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[15]__1 ),
        .R(rst));
  FDRE \mem_error_reg[16] 
       (.C(clk),
        .CE(\mem_symbols[16][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[16]__1 ),
        .R(rst));
  FDRE \mem_error_reg[17] 
       (.C(clk),
        .CE(\mem_symbols[17][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[17]__1 ),
        .R(rst));
  FDRE \mem_error_reg[18] 
       (.C(clk),
        .CE(\mem_symbols[18][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[18]__1 ),
        .R(rst));
  FDRE \mem_error_reg[19] 
       (.C(clk),
        .CE(\mem_symbols[19][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[19]__1 ),
        .R(rst));
  FDRE \mem_error_reg[1] 
       (.C(clk),
        .CE(\mem_symbols[1][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[1]__1 ),
        .R(rst));
  FDRE \mem_error_reg[20] 
       (.C(clk),
        .CE(\mem_symbols[20][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[20]__1 ),
        .R(rst));
  FDRE \mem_error_reg[21] 
       (.C(clk),
        .CE(\mem_symbols[21][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[21]__1 ),
        .R(rst));
  FDRE \mem_error_reg[22] 
       (.C(clk),
        .CE(\mem_symbols[22][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[22]__1 ),
        .R(rst));
  FDRE \mem_error_reg[23] 
       (.C(clk),
        .CE(\mem_symbols[23][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[23]__1 ),
        .R(rst));
  FDRE \mem_error_reg[24] 
       (.C(clk),
        .CE(\mem_symbols[24][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[24]__1 ),
        .R(rst));
  FDRE \mem_error_reg[25] 
       (.C(clk),
        .CE(\mem_symbols[25][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[25]__1 ),
        .R(rst));
  FDRE \mem_error_reg[26] 
       (.C(clk),
        .CE(\mem_symbols[26][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[26]__1 ),
        .R(rst));
  FDRE \mem_error_reg[27] 
       (.C(clk),
        .CE(\mem_symbols[27][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[27]__1 ),
        .R(rst));
  FDRE \mem_error_reg[28] 
       (.C(clk),
        .CE(\mem_symbols[28][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[28]__1 ),
        .R(rst));
  FDRE \mem_error_reg[29] 
       (.C(clk),
        .CE(\mem_symbols[29][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[29]__1 ),
        .R(rst));
  FDRE \mem_error_reg[2] 
       (.C(clk),
        .CE(\mem_symbols[2][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[2]__1 ),
        .R(rst));
  FDRE \mem_error_reg[30] 
       (.C(clk),
        .CE(\mem_symbols[30][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[30]__1 ),
        .R(rst));
  FDRE \mem_error_reg[31] 
       (.C(clk),
        .CE(\mem_symbols[31][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[31]__1 ),
        .R(rst));
  FDRE \mem_error_reg[3] 
       (.C(clk),
        .CE(\mem_symbols[3][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[3]__1 ),
        .R(rst));
  FDRE \mem_error_reg[4] 
       (.C(clk),
        .CE(\mem_symbols[4][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[4]__1 ),
        .R(rst));
  FDRE \mem_error_reg[5] 
       (.C(clk),
        .CE(\mem_symbols[5][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[5]__1 ),
        .R(rst));
  FDRE \mem_error_reg[6] 
       (.C(clk),
        .CE(\mem_symbols[6][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[6]__1 ),
        .R(rst));
  FDRE \mem_error_reg[7] 
       (.C(clk),
        .CE(\mem_symbols[7][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[7]__1 ),
        .R(rst));
  FDRE \mem_error_reg[8] 
       (.C(clk),
        .CE(\mem_symbols[8][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[8]__1 ),
        .R(rst));
  FDRE \mem_error_reg[9] 
       (.C(clk),
        .CE(\mem_symbols[9][5]_i_1_n_0 ),
        .D(fsm_buf_write_error),
        .Q(\mem_error_reg[9]__1 ),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \mem_symbols[0][5]_i_1 
       (.I0(\mem_error_reg[9]_0 ),
        .I1(write_ptr_reg[3]),
        .I2(write_ptr_reg[0]),
        .I3(write_ptr_reg[4]),
        .I4(write_ptr_reg[1]),
        .I5(write_ptr_reg[2]),
        .O(mem_symbols));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \mem_symbols[10][5]_i_1 
       (.I0(write_ptr_reg[0]),
        .I1(\mem_error_reg[9]_0 ),
        .I2(write_ptr_reg[3]),
        .I3(write_ptr_reg[2]),
        .I4(write_ptr_reg[1]),
        .I5(write_ptr_reg[4]),
        .O(\mem_symbols[10][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \mem_symbols[11][5]_i_1 
       (.I0(write_ptr_reg[2]),
        .I1(write_ptr_reg[1]),
        .I2(write_ptr_reg[0]),
        .I3(\mem_error_reg[9]_0 ),
        .I4(write_ptr_reg[3]),
        .I5(write_ptr_reg[4]),
        .O(\mem_symbols[11][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \mem_symbols[12][5]_i_1 
       (.I0(write_ptr_reg[1]),
        .I1(write_ptr_reg[2]),
        .I2(write_ptr_reg[4]),
        .I3(write_ptr_reg[0]),
        .I4(\mem_error_reg[9]_0 ),
        .I5(write_ptr_reg[3]),
        .O(\mem_symbols[12][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \mem_symbols[13][5]_i_1 
       (.I0(write_ptr_reg[3]),
        .I1(\mem_error_reg[9]_0 ),
        .I2(write_ptr_reg[4]),
        .I3(write_ptr_reg[2]),
        .I4(write_ptr_reg[1]),
        .I5(write_ptr_reg[0]),
        .O(\mem_symbols[13][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \mem_symbols[14][5]_i_1 
       (.I0(write_ptr_reg[0]),
        .I1(\mem_error_reg[9]_0 ),
        .I2(write_ptr_reg[3]),
        .I3(write_ptr_reg[2]),
        .I4(write_ptr_reg[4]),
        .I5(write_ptr_reg[1]),
        .O(\mem_symbols[14][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \mem_symbols[15][5]_i_1 
       (.I0(write_ptr_reg[2]),
        .I1(write_ptr_reg[1]),
        .I2(write_ptr_reg[0]),
        .I3(\mem_error_reg[9]_0 ),
        .I4(write_ptr_reg[3]),
        .I5(write_ptr_reg[4]),
        .O(\mem_symbols[15][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \mem_symbols[16][5]_i_1 
       (.I0(\mem_error_reg[9]_0 ),
        .I1(write_ptr_reg[2]),
        .I2(write_ptr_reg[0]),
        .I3(write_ptr_reg[4]),
        .I4(write_ptr_reg[3]),
        .I5(write_ptr_reg[1]),
        .O(\mem_symbols[16][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \mem_symbols[17][5]_i_1 
       (.I0(\mem_error_reg[9]_0 ),
        .I1(write_ptr_reg[3]),
        .I2(write_ptr_reg[0]),
        .I3(write_ptr_reg[1]),
        .I4(write_ptr_reg[2]),
        .I5(write_ptr_reg[4]),
        .O(\mem_symbols[17][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \mem_symbols[18][5]_i_1 
       (.I0(\mem_error_reg[9]_0 ),
        .I1(write_ptr_reg[1]),
        .I2(write_ptr_reg[2]),
        .I3(write_ptr_reg[0]),
        .I4(write_ptr_reg[4]),
        .I5(write_ptr_reg[3]),
        .O(\mem_symbols[18][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \mem_symbols[19][5]_i_1 
       (.I0(\mem_error_reg[9]_0 ),
        .I1(write_ptr_reg[3]),
        .I2(write_ptr_reg[0]),
        .I3(write_ptr_reg[1]),
        .I4(write_ptr_reg[2]),
        .I5(write_ptr_reg[4]),
        .O(\mem_symbols[19][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \mem_symbols[1][5]_i_1 
       (.I0(\mem_error_reg[9]_0 ),
        .I1(write_ptr_reg[3]),
        .I2(write_ptr_reg[0]),
        .I3(write_ptr_reg[1]),
        .I4(write_ptr_reg[2]),
        .I5(write_ptr_reg[4]),
        .O(\mem_symbols[1][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \mem_symbols[20][5]_i_1 
       (.I0(\mem_error_reg[9]_0 ),
        .I1(write_ptr_reg[3]),
        .I2(write_ptr_reg[4]),
        .I3(write_ptr_reg[0]),
        .I4(write_ptr_reg[1]),
        .I5(write_ptr_reg[2]),
        .O(\mem_symbols[20][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \mem_symbols[21][5]_i_1 
       (.I0(\mem_error_reg[9]_0 ),
        .I1(write_ptr_reg[3]),
        .I2(write_ptr_reg[2]),
        .I3(write_ptr_reg[4]),
        .I4(write_ptr_reg[1]),
        .I5(write_ptr_reg[0]),
        .O(\mem_symbols[21][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \mem_symbols[22][5]_i_1 
       (.I0(\mem_error_reg[9]_0 ),
        .I1(write_ptr_reg[3]),
        .I2(write_ptr_reg[1]),
        .I3(write_ptr_reg[0]),
        .I4(write_ptr_reg[4]),
        .I5(write_ptr_reg[2]),
        .O(\mem_symbols[22][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \mem_symbols[23][5]_i_1 
       (.I0(\mem_error_reg[9]_0 ),
        .I1(write_ptr_reg[3]),
        .I2(write_ptr_reg[1]),
        .I3(write_ptr_reg[0]),
        .I4(write_ptr_reg[2]),
        .I5(write_ptr_reg[4]),
        .O(\mem_symbols[23][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \mem_symbols[24][5]_i_1 
       (.I0(write_ptr_reg[0]),
        .I1(\mem_error_reg[9]_0 ),
        .I2(write_ptr_reg[3]),
        .I3(write_ptr_reg[1]),
        .I4(write_ptr_reg[2]),
        .I5(write_ptr_reg[4]),
        .O(\mem_symbols[24][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \mem_symbols[25][5]_i_1 
       (.I0(write_ptr_reg[2]),
        .I1(fsm_buf_write_en),
        .I2(Q[5]),
        .I3(\mem_symbols[25][5]_i_2_n_0 ),
        .O(\mem_symbols[25][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \mem_symbols[25][5]_i_2 
       (.I0(\mem_error_reg[28]_0 ),
        .I1(write_ptr_reg[3]),
        .I2(write_ptr_reg[4]),
        .I3(write_ptr_reg[1]),
        .I4(write_ptr_reg[0]),
        .O(\mem_symbols[25][5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \mem_symbols[26][5]_i_1 
       (.I0(write_ptr_reg[2]),
        .I1(fsm_buf_write_en),
        .I2(Q[5]),
        .I3(\mem_symbols[26][5]_i_2_n_0 ),
        .O(\mem_symbols[26][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \mem_symbols[26][5]_i_2 
       (.I0(\mem_error_reg[28]_0 ),
        .I1(write_ptr_reg[1]),
        .I2(write_ptr_reg[0]),
        .I3(write_ptr_reg[3]),
        .I4(write_ptr_reg[4]),
        .O(\mem_symbols[26][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \mem_symbols[27][5]_i_1 
       (.I0(write_ptr_reg[3]),
        .I1(\mem_error_reg[9]_0 ),
        .I2(write_ptr_reg[0]),
        .I3(write_ptr_reg[1]),
        .I4(write_ptr_reg[2]),
        .I5(write_ptr_reg[4]),
        .O(\mem_symbols[27][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \mem_symbols[28][5]_i_1 
       (.I0(write_ptr_reg[4]),
        .I1(write_ptr_reg[0]),
        .I2(write_ptr_reg[3]),
        .I3(write_ptr_reg[1]),
        .I4(\mem_symbols[28][5]_i_2_n_0 ),
        .I5(\mem_error_reg[28]_0 ),
        .O(\mem_symbols[28][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \mem_symbols[28][5]_i_2 
       (.I0(write_ptr_reg[2]),
        .I1(Q[5]),
        .I2(fsm_buf_write_en),
        .O(\mem_symbols[28][5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \mem_symbols[29][5]_i_1 
       (.I0(write_ptr_reg[0]),
        .I1(write_ptr_reg[1]),
        .I2(write_ptr_reg[4]),
        .I3(write_ptr_reg[3]),
        .I4(\mem_error_reg[28]_0 ),
        .I5(\mem_symbols[28][5]_i_2_n_0 ),
        .O(\mem_symbols[29][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \mem_symbols[2][5]_i_1 
       (.I0(write_ptr_reg[0]),
        .I1(\mem_error_reg[9]_0 ),
        .I2(write_ptr_reg[3]),
        .I3(write_ptr_reg[4]),
        .I4(write_ptr_reg[2]),
        .I5(write_ptr_reg[1]),
        .O(\mem_symbols[2][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \mem_symbols[30][5]_i_1 
       (.I0(write_ptr_reg[4]),
        .I1(write_ptr_reg[3]),
        .I2(write_ptr_reg[0]),
        .I3(write_ptr_reg[1]),
        .I4(\mem_error_reg[28]_0 ),
        .I5(\mem_symbols[28][5]_i_2_n_0 ),
        .O(\mem_symbols[30][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \mem_symbols[31][5]_i_1 
       (.I0(write_ptr_reg[3]),
        .I1(\mem_error_reg[9]_0 ),
        .I2(write_ptr_reg[1]),
        .I3(write_ptr_reg[0]),
        .I4(write_ptr_reg[2]),
        .I5(write_ptr_reg[4]),
        .O(\mem_symbols[31][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \mem_symbols[3][5]_i_1 
       (.I0(\mem_error_reg[9]_0 ),
        .I1(write_ptr_reg[0]),
        .I2(write_ptr_reg[1]),
        .I3(write_ptr_reg[2]),
        .I4(write_ptr_reg[4]),
        .I5(write_ptr_reg[3]),
        .O(\mem_symbols[3][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \mem_symbols[4][5]_i_1 
       (.I0(write_ptr_reg[0]),
        .I1(\mem_error_reg[9]_0 ),
        .I2(write_ptr_reg[1]),
        .I3(write_ptr_reg[2]),
        .I4(write_ptr_reg[3]),
        .I5(write_ptr_reg[4]),
        .O(\mem_symbols[4][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \mem_symbols[5][5]_i_1 
       (.I0(\mem_error_reg[9]_0 ),
        .I1(write_ptr_reg[3]),
        .I2(write_ptr_reg[1]),
        .I3(write_ptr_reg[2]),
        .I4(write_ptr_reg[4]),
        .I5(write_ptr_reg[0]),
        .O(\mem_symbols[5][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \mem_symbols[6][5]_i_1 
       (.I0(\mem_error_reg[9]_0 ),
        .I1(write_ptr_reg[3]),
        .I2(write_ptr_reg[1]),
        .I3(write_ptr_reg[0]),
        .I4(write_ptr_reg[2]),
        .I5(write_ptr_reg[4]),
        .O(\mem_symbols[6][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \mem_symbols[7][5]_i_1 
       (.I0(\mem_error_reg[9]_0 ),
        .I1(write_ptr_reg[3]),
        .I2(write_ptr_reg[2]),
        .I3(write_ptr_reg[1]),
        .I4(write_ptr_reg[0]),
        .I5(write_ptr_reg[4]),
        .O(\mem_symbols[7][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \mem_symbols[8][5]_i_1 
       (.I0(write_ptr_reg[0]),
        .I1(write_ptr_reg[4]),
        .I2(write_ptr_reg[1]),
        .I3(write_ptr_reg[2]),
        .I4(write_ptr_reg[3]),
        .I5(\mem_error_reg[9]_0 ),
        .O(\mem_symbols[8][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \mem_symbols[9][5]_i_1 
       (.I0(write_ptr_reg[0]),
        .I1(write_ptr_reg[1]),
        .I2(write_ptr_reg[2]),
        .I3(\mem_error_reg[9]_0 ),
        .I4(write_ptr_reg[3]),
        .I5(write_ptr_reg[4]),
        .O(\mem_symbols[9][5]_i_1_n_0 ));
  FDRE \mem_symbols_reg[0][0] 
       (.C(clk),
        .CE(mem_symbols),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[0]_0 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[0][1] 
       (.C(clk),
        .CE(mem_symbols),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[0]_0 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[0][2] 
       (.C(clk),
        .CE(mem_symbols),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[0]_0 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[0][3] 
       (.C(clk),
        .CE(mem_symbols),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[0]_0 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[0][4] 
       (.C(clk),
        .CE(mem_symbols),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[0]_0 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[0][5] 
       (.C(clk),
        .CE(mem_symbols),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[0]_0 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[10][0] 
       (.C(clk),
        .CE(\mem_symbols[10][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[10]_10 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[10][1] 
       (.C(clk),
        .CE(\mem_symbols[10][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[10]_10 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[10][2] 
       (.C(clk),
        .CE(\mem_symbols[10][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[10]_10 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[10][3] 
       (.C(clk),
        .CE(\mem_symbols[10][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[10]_10 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[10][4] 
       (.C(clk),
        .CE(\mem_symbols[10][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[10]_10 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[10][5] 
       (.C(clk),
        .CE(\mem_symbols[10][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[10]_10 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[11][0] 
       (.C(clk),
        .CE(\mem_symbols[11][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[11]_11 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[11][1] 
       (.C(clk),
        .CE(\mem_symbols[11][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[11]_11 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[11][2] 
       (.C(clk),
        .CE(\mem_symbols[11][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[11]_11 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[11][3] 
       (.C(clk),
        .CE(\mem_symbols[11][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[11]_11 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[11][4] 
       (.C(clk),
        .CE(\mem_symbols[11][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[11]_11 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[11][5] 
       (.C(clk),
        .CE(\mem_symbols[11][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[11]_11 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[12][0] 
       (.C(clk),
        .CE(\mem_symbols[12][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[12]_12 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[12][1] 
       (.C(clk),
        .CE(\mem_symbols[12][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[12]_12 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[12][2] 
       (.C(clk),
        .CE(\mem_symbols[12][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[12]_12 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[12][3] 
       (.C(clk),
        .CE(\mem_symbols[12][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[12]_12 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[12][4] 
       (.C(clk),
        .CE(\mem_symbols[12][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[12]_12 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[12][5] 
       (.C(clk),
        .CE(\mem_symbols[12][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[12]_12 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[13][0] 
       (.C(clk),
        .CE(\mem_symbols[13][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[13]_13 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[13][1] 
       (.C(clk),
        .CE(\mem_symbols[13][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[13]_13 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[13][2] 
       (.C(clk),
        .CE(\mem_symbols[13][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[13]_13 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[13][3] 
       (.C(clk),
        .CE(\mem_symbols[13][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[13]_13 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[13][4] 
       (.C(clk),
        .CE(\mem_symbols[13][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[13]_13 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[13][5] 
       (.C(clk),
        .CE(\mem_symbols[13][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[13]_13 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[14][0] 
       (.C(clk),
        .CE(\mem_symbols[14][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[14]_14 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[14][1] 
       (.C(clk),
        .CE(\mem_symbols[14][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[14]_14 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[14][2] 
       (.C(clk),
        .CE(\mem_symbols[14][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[14]_14 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[14][3] 
       (.C(clk),
        .CE(\mem_symbols[14][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[14]_14 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[14][4] 
       (.C(clk),
        .CE(\mem_symbols[14][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[14]_14 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[14][5] 
       (.C(clk),
        .CE(\mem_symbols[14][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[14]_14 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[15][0] 
       (.C(clk),
        .CE(\mem_symbols[15][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[15]_15 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[15][1] 
       (.C(clk),
        .CE(\mem_symbols[15][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[15]_15 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[15][2] 
       (.C(clk),
        .CE(\mem_symbols[15][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[15]_15 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[15][3] 
       (.C(clk),
        .CE(\mem_symbols[15][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[15]_15 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[15][4] 
       (.C(clk),
        .CE(\mem_symbols[15][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[15]_15 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[15][5] 
       (.C(clk),
        .CE(\mem_symbols[15][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[15]_15 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[16][0] 
       (.C(clk),
        .CE(\mem_symbols[16][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[16]_16 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[16][1] 
       (.C(clk),
        .CE(\mem_symbols[16][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[16]_16 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[16][2] 
       (.C(clk),
        .CE(\mem_symbols[16][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[16]_16 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[16][3] 
       (.C(clk),
        .CE(\mem_symbols[16][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[16]_16 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[16][4] 
       (.C(clk),
        .CE(\mem_symbols[16][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[16]_16 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[16][5] 
       (.C(clk),
        .CE(\mem_symbols[16][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[16]_16 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[17][0] 
       (.C(clk),
        .CE(\mem_symbols[17][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[17]_17 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[17][1] 
       (.C(clk),
        .CE(\mem_symbols[17][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[17]_17 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[17][2] 
       (.C(clk),
        .CE(\mem_symbols[17][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[17]_17 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[17][3] 
       (.C(clk),
        .CE(\mem_symbols[17][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[17]_17 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[17][4] 
       (.C(clk),
        .CE(\mem_symbols[17][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[17]_17 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[17][5] 
       (.C(clk),
        .CE(\mem_symbols[17][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[17]_17 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[18][0] 
       (.C(clk),
        .CE(\mem_symbols[18][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[18]_18 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[18][1] 
       (.C(clk),
        .CE(\mem_symbols[18][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[18]_18 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[18][2] 
       (.C(clk),
        .CE(\mem_symbols[18][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[18]_18 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[18][3] 
       (.C(clk),
        .CE(\mem_symbols[18][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[18]_18 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[18][4] 
       (.C(clk),
        .CE(\mem_symbols[18][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[18]_18 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[18][5] 
       (.C(clk),
        .CE(\mem_symbols[18][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[18]_18 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[19][0] 
       (.C(clk),
        .CE(\mem_symbols[19][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[19]_19 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[19][1] 
       (.C(clk),
        .CE(\mem_symbols[19][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[19]_19 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[19][2] 
       (.C(clk),
        .CE(\mem_symbols[19][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[19]_19 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[19][3] 
       (.C(clk),
        .CE(\mem_symbols[19][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[19]_19 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[19][4] 
       (.C(clk),
        .CE(\mem_symbols[19][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[19]_19 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[19][5] 
       (.C(clk),
        .CE(\mem_symbols[19][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[19]_19 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[1][0] 
       (.C(clk),
        .CE(\mem_symbols[1][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[1]_1 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[1][1] 
       (.C(clk),
        .CE(\mem_symbols[1][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[1]_1 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[1][2] 
       (.C(clk),
        .CE(\mem_symbols[1][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[1]_1 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[1][3] 
       (.C(clk),
        .CE(\mem_symbols[1][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[1]_1 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[1][4] 
       (.C(clk),
        .CE(\mem_symbols[1][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[1]_1 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[1][5] 
       (.C(clk),
        .CE(\mem_symbols[1][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[1]_1 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[20][0] 
       (.C(clk),
        .CE(\mem_symbols[20][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[20]_20 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[20][1] 
       (.C(clk),
        .CE(\mem_symbols[20][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[20]_20 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[20][2] 
       (.C(clk),
        .CE(\mem_symbols[20][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[20]_20 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[20][3] 
       (.C(clk),
        .CE(\mem_symbols[20][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[20]_20 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[20][4] 
       (.C(clk),
        .CE(\mem_symbols[20][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[20]_20 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[20][5] 
       (.C(clk),
        .CE(\mem_symbols[20][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[20]_20 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[21][0] 
       (.C(clk),
        .CE(\mem_symbols[21][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[21]_21 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[21][1] 
       (.C(clk),
        .CE(\mem_symbols[21][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[21]_21 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[21][2] 
       (.C(clk),
        .CE(\mem_symbols[21][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[21]_21 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[21][3] 
       (.C(clk),
        .CE(\mem_symbols[21][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[21]_21 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[21][4] 
       (.C(clk),
        .CE(\mem_symbols[21][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[21]_21 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[21][5] 
       (.C(clk),
        .CE(\mem_symbols[21][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[21]_21 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[22][0] 
       (.C(clk),
        .CE(\mem_symbols[22][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[22]_22 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[22][1] 
       (.C(clk),
        .CE(\mem_symbols[22][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[22]_22 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[22][2] 
       (.C(clk),
        .CE(\mem_symbols[22][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[22]_22 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[22][3] 
       (.C(clk),
        .CE(\mem_symbols[22][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[22]_22 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[22][4] 
       (.C(clk),
        .CE(\mem_symbols[22][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[22]_22 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[22][5] 
       (.C(clk),
        .CE(\mem_symbols[22][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[22]_22 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[23][0] 
       (.C(clk),
        .CE(\mem_symbols[23][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[23]_23 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[23][1] 
       (.C(clk),
        .CE(\mem_symbols[23][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[23]_23 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[23][2] 
       (.C(clk),
        .CE(\mem_symbols[23][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[23]_23 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[23][3] 
       (.C(clk),
        .CE(\mem_symbols[23][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[23]_23 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[23][4] 
       (.C(clk),
        .CE(\mem_symbols[23][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[23]_23 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[23][5] 
       (.C(clk),
        .CE(\mem_symbols[23][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[23]_23 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[24][0] 
       (.C(clk),
        .CE(\mem_symbols[24][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[24]_24 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[24][1] 
       (.C(clk),
        .CE(\mem_symbols[24][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[24]_24 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[24][2] 
       (.C(clk),
        .CE(\mem_symbols[24][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[24]_24 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[24][3] 
       (.C(clk),
        .CE(\mem_symbols[24][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[24]_24 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[24][4] 
       (.C(clk),
        .CE(\mem_symbols[24][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[24]_24 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[24][5] 
       (.C(clk),
        .CE(\mem_symbols[24][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[24]_24 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[25][0] 
       (.C(clk),
        .CE(\mem_symbols[25][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[25]_25 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[25][1] 
       (.C(clk),
        .CE(\mem_symbols[25][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[25]_25 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[25][2] 
       (.C(clk),
        .CE(\mem_symbols[25][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[25]_25 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[25][3] 
       (.C(clk),
        .CE(\mem_symbols[25][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[25]_25 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[25][4] 
       (.C(clk),
        .CE(\mem_symbols[25][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[25]_25 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[25][5] 
       (.C(clk),
        .CE(\mem_symbols[25][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[25]_25 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[26][0] 
       (.C(clk),
        .CE(\mem_symbols[26][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[26]_26 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[26][1] 
       (.C(clk),
        .CE(\mem_symbols[26][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[26]_26 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[26][2] 
       (.C(clk),
        .CE(\mem_symbols[26][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[26]_26 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[26][3] 
       (.C(clk),
        .CE(\mem_symbols[26][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[26]_26 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[26][4] 
       (.C(clk),
        .CE(\mem_symbols[26][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[26]_26 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[26][5] 
       (.C(clk),
        .CE(\mem_symbols[26][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[26]_26 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[27][0] 
       (.C(clk),
        .CE(\mem_symbols[27][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[27]_27 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[27][1] 
       (.C(clk),
        .CE(\mem_symbols[27][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[27]_27 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[27][2] 
       (.C(clk),
        .CE(\mem_symbols[27][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[27]_27 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[27][3] 
       (.C(clk),
        .CE(\mem_symbols[27][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[27]_27 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[27][4] 
       (.C(clk),
        .CE(\mem_symbols[27][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[27]_27 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[27][5] 
       (.C(clk),
        .CE(\mem_symbols[27][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[27]_27 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[28][0] 
       (.C(clk),
        .CE(\mem_symbols[28][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[28]_28 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[28][1] 
       (.C(clk),
        .CE(\mem_symbols[28][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[28]_28 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[28][2] 
       (.C(clk),
        .CE(\mem_symbols[28][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[28]_28 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[28][3] 
       (.C(clk),
        .CE(\mem_symbols[28][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[28]_28 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[28][4] 
       (.C(clk),
        .CE(\mem_symbols[28][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[28]_28 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[28][5] 
       (.C(clk),
        .CE(\mem_symbols[28][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[28]_28 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[29][0] 
       (.C(clk),
        .CE(\mem_symbols[29][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[29]_29 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[29][1] 
       (.C(clk),
        .CE(\mem_symbols[29][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[29]_29 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[29][2] 
       (.C(clk),
        .CE(\mem_symbols[29][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[29]_29 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[29][3] 
       (.C(clk),
        .CE(\mem_symbols[29][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[29]_29 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[29][4] 
       (.C(clk),
        .CE(\mem_symbols[29][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[29]_29 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[29][5] 
       (.C(clk),
        .CE(\mem_symbols[29][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[29]_29 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[2][0] 
       (.C(clk),
        .CE(\mem_symbols[2][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[2]_2 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[2][1] 
       (.C(clk),
        .CE(\mem_symbols[2][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[2]_2 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[2][2] 
       (.C(clk),
        .CE(\mem_symbols[2][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[2]_2 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[2][3] 
       (.C(clk),
        .CE(\mem_symbols[2][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[2]_2 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[2][4] 
       (.C(clk),
        .CE(\mem_symbols[2][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[2]_2 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[2][5] 
       (.C(clk),
        .CE(\mem_symbols[2][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[2]_2 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[30][0] 
       (.C(clk),
        .CE(\mem_symbols[30][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[30]_30 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[30][1] 
       (.C(clk),
        .CE(\mem_symbols[30][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[30]_30 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[30][2] 
       (.C(clk),
        .CE(\mem_symbols[30][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[30]_30 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[30][3] 
       (.C(clk),
        .CE(\mem_symbols[30][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[30]_30 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[30][4] 
       (.C(clk),
        .CE(\mem_symbols[30][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[30]_30 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[30][5] 
       (.C(clk),
        .CE(\mem_symbols[30][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[30]_30 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[31][0] 
       (.C(clk),
        .CE(\mem_symbols[31][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[31]_31 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[31][1] 
       (.C(clk),
        .CE(\mem_symbols[31][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[31]_31 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[31][2] 
       (.C(clk),
        .CE(\mem_symbols[31][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[31]_31 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[31][3] 
       (.C(clk),
        .CE(\mem_symbols[31][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[31]_31 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[31][4] 
       (.C(clk),
        .CE(\mem_symbols[31][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[31]_31 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[31][5] 
       (.C(clk),
        .CE(\mem_symbols[31][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[31]_31 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[3][0] 
       (.C(clk),
        .CE(\mem_symbols[3][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[3]_3 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[3][1] 
       (.C(clk),
        .CE(\mem_symbols[3][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[3]_3 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[3][2] 
       (.C(clk),
        .CE(\mem_symbols[3][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[3]_3 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[3][3] 
       (.C(clk),
        .CE(\mem_symbols[3][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[3]_3 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[3][4] 
       (.C(clk),
        .CE(\mem_symbols[3][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[3]_3 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[3][5] 
       (.C(clk),
        .CE(\mem_symbols[3][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[3]_3 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[4][0] 
       (.C(clk),
        .CE(\mem_symbols[4][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[4]_4 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[4][1] 
       (.C(clk),
        .CE(\mem_symbols[4][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[4]_4 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[4][2] 
       (.C(clk),
        .CE(\mem_symbols[4][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[4]_4 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[4][3] 
       (.C(clk),
        .CE(\mem_symbols[4][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[4]_4 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[4][4] 
       (.C(clk),
        .CE(\mem_symbols[4][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[4]_4 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[4][5] 
       (.C(clk),
        .CE(\mem_symbols[4][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[4]_4 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[5][0] 
       (.C(clk),
        .CE(\mem_symbols[5][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[5]_5 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[5][1] 
       (.C(clk),
        .CE(\mem_symbols[5][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[5]_5 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[5][2] 
       (.C(clk),
        .CE(\mem_symbols[5][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[5]_5 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[5][3] 
       (.C(clk),
        .CE(\mem_symbols[5][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[5]_5 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[5][4] 
       (.C(clk),
        .CE(\mem_symbols[5][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[5]_5 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[5][5] 
       (.C(clk),
        .CE(\mem_symbols[5][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[5]_5 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[6][0] 
       (.C(clk),
        .CE(\mem_symbols[6][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[6]_6 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[6][1] 
       (.C(clk),
        .CE(\mem_symbols[6][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[6]_6 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[6][2] 
       (.C(clk),
        .CE(\mem_symbols[6][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[6]_6 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[6][3] 
       (.C(clk),
        .CE(\mem_symbols[6][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[6]_6 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[6][4] 
       (.C(clk),
        .CE(\mem_symbols[6][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[6]_6 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[6][5] 
       (.C(clk),
        .CE(\mem_symbols[6][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[6]_6 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[7][0] 
       (.C(clk),
        .CE(\mem_symbols[7][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[7]_7 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[7][1] 
       (.C(clk),
        .CE(\mem_symbols[7][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[7]_7 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[7][2] 
       (.C(clk),
        .CE(\mem_symbols[7][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[7]_7 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[7][3] 
       (.C(clk),
        .CE(\mem_symbols[7][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[7]_7 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[7][4] 
       (.C(clk),
        .CE(\mem_symbols[7][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[7]_7 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[7][5] 
       (.C(clk),
        .CE(\mem_symbols[7][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[7]_7 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[8][0] 
       (.C(clk),
        .CE(\mem_symbols[8][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[8]_8 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[8][1] 
       (.C(clk),
        .CE(\mem_symbols[8][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[8]_8 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[8][2] 
       (.C(clk),
        .CE(\mem_symbols[8][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[8]_8 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[8][3] 
       (.C(clk),
        .CE(\mem_symbols[8][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[8]_8 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[8][4] 
       (.C(clk),
        .CE(\mem_symbols[8][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[8]_8 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[8][5] 
       (.C(clk),
        .CE(\mem_symbols[8][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[8]_8 [5]),
        .R(rst));
  FDRE \mem_symbols_reg[9][0] 
       (.C(clk),
        .CE(\mem_symbols[9][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [0]),
        .Q(\mem_symbols_reg[9]_9 [0]),
        .R(rst));
  FDRE \mem_symbols_reg[9][1] 
       (.C(clk),
        .CE(\mem_symbols[9][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [1]),
        .Q(\mem_symbols_reg[9]_9 [1]),
        .R(rst));
  FDRE \mem_symbols_reg[9][2] 
       (.C(clk),
        .CE(\mem_symbols[9][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [2]),
        .Q(\mem_symbols_reg[9]_9 [2]),
        .R(rst));
  FDRE \mem_symbols_reg[9][3] 
       (.C(clk),
        .CE(\mem_symbols[9][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [3]),
        .Q(\mem_symbols_reg[9]_9 [3]),
        .R(rst));
  FDRE \mem_symbols_reg[9][4] 
       (.C(clk),
        .CE(\mem_symbols[9][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [4]),
        .Q(\mem_symbols_reg[9]_9 [4]),
        .R(rst));
  FDRE \mem_symbols_reg[9][5] 
       (.C(clk),
        .CE(\mem_symbols[9][5]_i_1_n_0 ),
        .D(\mem_symbols_reg[0][5]_0 [5]),
        .Q(\mem_symbols_reg[9]_9 [5]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \msg_length[0]_i_1 
       (.I0(Q[0]),
        .O(\msg_length[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \msg_length[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \msg_length[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \msg_length[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \msg_length[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \msg_length[5]_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[4]),
        .O(p_0_in__0[5]));
  FDRE \msg_length_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\msg_length[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \msg_length_reg[1] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \msg_length_reg[2] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \msg_length_reg[3] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \msg_length_reg[4] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \msg_length_reg[5] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__0[5]),
        .Q(Q[5]),
        .R(SR));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \symbols_latched[0]_i_1 
       (.I0(\symbols_latched_reg[0]_i_2_n_0 ),
        .I1(error_latched_reg[4]),
        .I2(\symbols_latched_reg[0]_i_3_n_0 ),
        .I3(replay_active),
        .I4(\mem_symbols_reg[0][5]_0 [0]),
        .O(echo_symbols_mux[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[0]_i_10 
       (.I0(\mem_symbols_reg[27]_27 [0]),
        .I1(\mem_symbols_reg[26]_26 [0]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[25]_25 [0]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[24]_24 [0]),
        .O(\symbols_latched[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[0]_i_11 
       (.I0(\mem_symbols_reg[31]_31 [0]),
        .I1(\mem_symbols_reg[30]_30 [0]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[29]_29 [0]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[28]_28 [0]),
        .O(\symbols_latched[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[0]_i_12 
       (.I0(\mem_symbols_reg[3]_3 [0]),
        .I1(\mem_symbols_reg[2]_2 [0]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[1]_1 [0]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[0]_0 [0]),
        .O(\symbols_latched[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[0]_i_13 
       (.I0(\mem_symbols_reg[7]_7 [0]),
        .I1(\mem_symbols_reg[6]_6 [0]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[5]_5 [0]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[4]_4 [0]),
        .O(\symbols_latched[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[0]_i_14 
       (.I0(\mem_symbols_reg[11]_11 [0]),
        .I1(\mem_symbols_reg[10]_10 [0]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[9]_9 [0]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[8]_8 [0]),
        .O(\symbols_latched[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[0]_i_15 
       (.I0(\mem_symbols_reg[15]_15 [0]),
        .I1(\mem_symbols_reg[14]_14 [0]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[13]_13 [0]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[12]_12 [0]),
        .O(\symbols_latched[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[0]_i_8 
       (.I0(\mem_symbols_reg[19]_19 [0]),
        .I1(\mem_symbols_reg[18]_18 [0]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[17]_17 [0]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[16]_16 [0]),
        .O(\symbols_latched[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[0]_i_9 
       (.I0(\mem_symbols_reg[23]_23 [0]),
        .I1(\mem_symbols_reg[22]_22 [0]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[21]_21 [0]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[20]_20 [0]),
        .O(\symbols_latched[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \symbols_latched[1]_i_1 
       (.I0(\symbols_latched_reg[1]_i_2_n_0 ),
        .I1(error_latched_reg[4]),
        .I2(\symbols_latched_reg[1]_i_3_n_0 ),
        .I3(replay_active),
        .I4(\mem_symbols_reg[0][5]_0 [1]),
        .O(echo_symbols_mux[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[1]_i_10 
       (.I0(\mem_symbols_reg[27]_27 [1]),
        .I1(\mem_symbols_reg[26]_26 [1]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[25]_25 [1]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[24]_24 [1]),
        .O(\symbols_latched[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[1]_i_11 
       (.I0(\mem_symbols_reg[31]_31 [1]),
        .I1(\mem_symbols_reg[30]_30 [1]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[29]_29 [1]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[28]_28 [1]),
        .O(\symbols_latched[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[1]_i_12 
       (.I0(\mem_symbols_reg[3]_3 [1]),
        .I1(\mem_symbols_reg[2]_2 [1]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[1]_1 [1]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[0]_0 [1]),
        .O(\symbols_latched[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[1]_i_13 
       (.I0(\mem_symbols_reg[7]_7 [1]),
        .I1(\mem_symbols_reg[6]_6 [1]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[5]_5 [1]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[4]_4 [1]),
        .O(\symbols_latched[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[1]_i_14 
       (.I0(\mem_symbols_reg[11]_11 [1]),
        .I1(\mem_symbols_reg[10]_10 [1]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[9]_9 [1]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[8]_8 [1]),
        .O(\symbols_latched[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[1]_i_15 
       (.I0(\mem_symbols_reg[15]_15 [1]),
        .I1(\mem_symbols_reg[14]_14 [1]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[13]_13 [1]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[12]_12 [1]),
        .O(\symbols_latched[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[1]_i_8 
       (.I0(\mem_symbols_reg[19]_19 [1]),
        .I1(\mem_symbols_reg[18]_18 [1]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[17]_17 [1]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[16]_16 [1]),
        .O(\symbols_latched[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[1]_i_9 
       (.I0(\mem_symbols_reg[23]_23 [1]),
        .I1(\mem_symbols_reg[22]_22 [1]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[21]_21 [1]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[20]_20 [1]),
        .O(\symbols_latched[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \symbols_latched[2]_i_1 
       (.I0(\symbols_latched_reg[2]_i_2_n_0 ),
        .I1(error_latched_reg[4]),
        .I2(\symbols_latched_reg[2]_i_3_n_0 ),
        .I3(replay_active),
        .I4(\mem_symbols_reg[0][5]_0 [2]),
        .O(echo_symbols_mux[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[2]_i_10 
       (.I0(\mem_symbols_reg[27]_27 [2]),
        .I1(\mem_symbols_reg[26]_26 [2]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[25]_25 [2]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[24]_24 [2]),
        .O(\symbols_latched[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[2]_i_11 
       (.I0(\mem_symbols_reg[31]_31 [2]),
        .I1(\mem_symbols_reg[30]_30 [2]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[29]_29 [2]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[28]_28 [2]),
        .O(\symbols_latched[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[2]_i_12 
       (.I0(\mem_symbols_reg[3]_3 [2]),
        .I1(\mem_symbols_reg[2]_2 [2]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[1]_1 [2]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[0]_0 [2]),
        .O(\symbols_latched[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[2]_i_13 
       (.I0(\mem_symbols_reg[7]_7 [2]),
        .I1(\mem_symbols_reg[6]_6 [2]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[5]_5 [2]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[4]_4 [2]),
        .O(\symbols_latched[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[2]_i_14 
       (.I0(\mem_symbols_reg[11]_11 [2]),
        .I1(\mem_symbols_reg[10]_10 [2]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[9]_9 [2]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[8]_8 [2]),
        .O(\symbols_latched[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[2]_i_15 
       (.I0(\mem_symbols_reg[15]_15 [2]),
        .I1(\mem_symbols_reg[14]_14 [2]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[13]_13 [2]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[12]_12 [2]),
        .O(\symbols_latched[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[2]_i_8 
       (.I0(\mem_symbols_reg[19]_19 [2]),
        .I1(\mem_symbols_reg[18]_18 [2]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[17]_17 [2]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[16]_16 [2]),
        .O(\symbols_latched[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[2]_i_9 
       (.I0(\mem_symbols_reg[23]_23 [2]),
        .I1(\mem_symbols_reg[22]_22 [2]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[21]_21 [2]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[20]_20 [2]),
        .O(\symbols_latched[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \symbols_latched[3]_i_1 
       (.I0(\symbols_latched_reg[3]_i_2_n_0 ),
        .I1(error_latched_reg[4]),
        .I2(\symbols_latched_reg[3]_i_3_n_0 ),
        .I3(replay_active),
        .I4(\mem_symbols_reg[0][5]_0 [3]),
        .O(echo_symbols_mux[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[3]_i_10 
       (.I0(\mem_symbols_reg[27]_27 [3]),
        .I1(\mem_symbols_reg[26]_26 [3]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[25]_25 [3]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[24]_24 [3]),
        .O(\symbols_latched[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[3]_i_11 
       (.I0(\mem_symbols_reg[31]_31 [3]),
        .I1(\mem_symbols_reg[30]_30 [3]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[29]_29 [3]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[28]_28 [3]),
        .O(\symbols_latched[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[3]_i_12 
       (.I0(\mem_symbols_reg[3]_3 [3]),
        .I1(\mem_symbols_reg[2]_2 [3]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[1]_1 [3]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[0]_0 [3]),
        .O(\symbols_latched[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[3]_i_13 
       (.I0(\mem_symbols_reg[7]_7 [3]),
        .I1(\mem_symbols_reg[6]_6 [3]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[5]_5 [3]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[4]_4 [3]),
        .O(\symbols_latched[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[3]_i_14 
       (.I0(\mem_symbols_reg[11]_11 [3]),
        .I1(\mem_symbols_reg[10]_10 [3]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[9]_9 [3]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[8]_8 [3]),
        .O(\symbols_latched[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[3]_i_15 
       (.I0(\mem_symbols_reg[15]_15 [3]),
        .I1(\mem_symbols_reg[14]_14 [3]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[13]_13 [3]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[12]_12 [3]),
        .O(\symbols_latched[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[3]_i_8 
       (.I0(\mem_symbols_reg[19]_19 [3]),
        .I1(\mem_symbols_reg[18]_18 [3]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[17]_17 [3]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[16]_16 [3]),
        .O(\symbols_latched[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[3]_i_9 
       (.I0(\mem_symbols_reg[23]_23 [3]),
        .I1(\mem_symbols_reg[22]_22 [3]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[21]_21 [3]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[20]_20 [3]),
        .O(\symbols_latched[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \symbols_latched[4]_i_1 
       (.I0(\symbols_latched_reg[4]_i_2_n_0 ),
        .I1(error_latched_reg[4]),
        .I2(\symbols_latched_reg[4]_i_3_n_0 ),
        .I3(replay_active),
        .I4(\mem_symbols_reg[0][5]_0 [4]),
        .O(echo_symbols_mux[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[4]_i_10 
       (.I0(\mem_symbols_reg[27]_27 [4]),
        .I1(\mem_symbols_reg[26]_26 [4]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[25]_25 [4]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[24]_24 [4]),
        .O(\symbols_latched[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[4]_i_11 
       (.I0(\mem_symbols_reg[31]_31 [4]),
        .I1(\mem_symbols_reg[30]_30 [4]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[29]_29 [4]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[28]_28 [4]),
        .O(\symbols_latched[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[4]_i_12 
       (.I0(\mem_symbols_reg[3]_3 [4]),
        .I1(\mem_symbols_reg[2]_2 [4]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[1]_1 [4]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[0]_0 [4]),
        .O(\symbols_latched[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[4]_i_13 
       (.I0(\mem_symbols_reg[7]_7 [4]),
        .I1(\mem_symbols_reg[6]_6 [4]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[5]_5 [4]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[4]_4 [4]),
        .O(\symbols_latched[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[4]_i_14 
       (.I0(\mem_symbols_reg[11]_11 [4]),
        .I1(\mem_symbols_reg[10]_10 [4]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[9]_9 [4]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[8]_8 [4]),
        .O(\symbols_latched[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[4]_i_15 
       (.I0(\mem_symbols_reg[15]_15 [4]),
        .I1(\mem_symbols_reg[14]_14 [4]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[13]_13 [4]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[12]_12 [4]),
        .O(\symbols_latched[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[4]_i_8 
       (.I0(\mem_symbols_reg[19]_19 [4]),
        .I1(\mem_symbols_reg[18]_18 [4]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[17]_17 [4]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[16]_16 [4]),
        .O(\symbols_latched[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[4]_i_9 
       (.I0(\mem_symbols_reg[23]_23 [4]),
        .I1(\mem_symbols_reg[22]_22 [4]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[21]_21 [4]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[20]_20 [4]),
        .O(\symbols_latched[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[5]_i_10 
       (.I0(\mem_symbols_reg[23]_23 [5]),
        .I1(\mem_symbols_reg[22]_22 [5]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[21]_21 [5]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[20]_20 [5]),
        .O(\symbols_latched[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[5]_i_11 
       (.I0(\mem_symbols_reg[27]_27 [5]),
        .I1(\mem_symbols_reg[26]_26 [5]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[25]_25 [5]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[24]_24 [5]),
        .O(\symbols_latched[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[5]_i_12 
       (.I0(\mem_symbols_reg[31]_31 [5]),
        .I1(\mem_symbols_reg[30]_30 [5]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[29]_29 [5]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[28]_28 [5]),
        .O(\symbols_latched[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[5]_i_13 
       (.I0(\mem_symbols_reg[3]_3 [5]),
        .I1(\mem_symbols_reg[2]_2 [5]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[1]_1 [5]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[0]_0 [5]),
        .O(\symbols_latched[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[5]_i_14 
       (.I0(\mem_symbols_reg[7]_7 [5]),
        .I1(\mem_symbols_reg[6]_6 [5]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[5]_5 [5]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[4]_4 [5]),
        .O(\symbols_latched[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[5]_i_15 
       (.I0(\mem_symbols_reg[11]_11 [5]),
        .I1(\mem_symbols_reg[10]_10 [5]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[9]_9 [5]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[8]_8 [5]),
        .O(\symbols_latched[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[5]_i_16 
       (.I0(\mem_symbols_reg[15]_15 [5]),
        .I1(\mem_symbols_reg[14]_14 [5]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[13]_13 [5]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[12]_12 [5]),
        .O(\symbols_latched[5]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \symbols_latched[5]_i_2 
       (.I0(\symbols_latched_reg[5]_i_3_n_0 ),
        .I1(error_latched_reg[4]),
        .I2(\symbols_latched_reg[5]_i_4_n_0 ),
        .I3(replay_active),
        .I4(\mem_symbols_reg[0][5]_0 [5]),
        .O(echo_symbols_mux[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \symbols_latched[5]_i_9 
       (.I0(\mem_symbols_reg[19]_19 [5]),
        .I1(\mem_symbols_reg[18]_18 [5]),
        .I2(error_latched_reg[1]),
        .I3(\mem_symbols_reg[17]_17 [5]),
        .I4(error_latched_reg[0]),
        .I5(\mem_symbols_reg[16]_16 [5]),
        .O(\symbols_latched[5]_i_9_n_0 ));
  MUXF8 \symbols_latched_reg[0]_i_2 
       (.I0(\symbols_latched_reg[0]_i_4_n_0 ),
        .I1(\symbols_latched_reg[0]_i_5_n_0 ),
        .O(\symbols_latched_reg[0]_i_2_n_0 ),
        .S(error_latched_reg[3]));
  MUXF8 \symbols_latched_reg[0]_i_3 
       (.I0(\symbols_latched_reg[0]_i_6_n_0 ),
        .I1(\symbols_latched_reg[0]_i_7_n_0 ),
        .O(\symbols_latched_reg[0]_i_3_n_0 ),
        .S(error_latched_reg[3]));
  MUXF7 \symbols_latched_reg[0]_i_4 
       (.I0(\symbols_latched[0]_i_8_n_0 ),
        .I1(\symbols_latched[0]_i_9_n_0 ),
        .O(\symbols_latched_reg[0]_i_4_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \symbols_latched_reg[0]_i_5 
       (.I0(\symbols_latched[0]_i_10_n_0 ),
        .I1(\symbols_latched[0]_i_11_n_0 ),
        .O(\symbols_latched_reg[0]_i_5_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \symbols_latched_reg[0]_i_6 
       (.I0(\symbols_latched[0]_i_12_n_0 ),
        .I1(\symbols_latched[0]_i_13_n_0 ),
        .O(\symbols_latched_reg[0]_i_6_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \symbols_latched_reg[0]_i_7 
       (.I0(\symbols_latched[0]_i_14_n_0 ),
        .I1(\symbols_latched[0]_i_15_n_0 ),
        .O(\symbols_latched_reg[0]_i_7_n_0 ),
        .S(error_latched_reg[2]));
  MUXF8 \symbols_latched_reg[1]_i_2 
       (.I0(\symbols_latched_reg[1]_i_4_n_0 ),
        .I1(\symbols_latched_reg[1]_i_5_n_0 ),
        .O(\symbols_latched_reg[1]_i_2_n_0 ),
        .S(error_latched_reg[3]));
  MUXF8 \symbols_latched_reg[1]_i_3 
       (.I0(\symbols_latched_reg[1]_i_6_n_0 ),
        .I1(\symbols_latched_reg[1]_i_7_n_0 ),
        .O(\symbols_latched_reg[1]_i_3_n_0 ),
        .S(error_latched_reg[3]));
  MUXF7 \symbols_latched_reg[1]_i_4 
       (.I0(\symbols_latched[1]_i_8_n_0 ),
        .I1(\symbols_latched[1]_i_9_n_0 ),
        .O(\symbols_latched_reg[1]_i_4_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \symbols_latched_reg[1]_i_5 
       (.I0(\symbols_latched[1]_i_10_n_0 ),
        .I1(\symbols_latched[1]_i_11_n_0 ),
        .O(\symbols_latched_reg[1]_i_5_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \symbols_latched_reg[1]_i_6 
       (.I0(\symbols_latched[1]_i_12_n_0 ),
        .I1(\symbols_latched[1]_i_13_n_0 ),
        .O(\symbols_latched_reg[1]_i_6_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \symbols_latched_reg[1]_i_7 
       (.I0(\symbols_latched[1]_i_14_n_0 ),
        .I1(\symbols_latched[1]_i_15_n_0 ),
        .O(\symbols_latched_reg[1]_i_7_n_0 ),
        .S(error_latched_reg[2]));
  MUXF8 \symbols_latched_reg[2]_i_2 
       (.I0(\symbols_latched_reg[2]_i_4_n_0 ),
        .I1(\symbols_latched_reg[2]_i_5_n_0 ),
        .O(\symbols_latched_reg[2]_i_2_n_0 ),
        .S(error_latched_reg[3]));
  MUXF8 \symbols_latched_reg[2]_i_3 
       (.I0(\symbols_latched_reg[2]_i_6_n_0 ),
        .I1(\symbols_latched_reg[2]_i_7_n_0 ),
        .O(\symbols_latched_reg[2]_i_3_n_0 ),
        .S(error_latched_reg[3]));
  MUXF7 \symbols_latched_reg[2]_i_4 
       (.I0(\symbols_latched[2]_i_8_n_0 ),
        .I1(\symbols_latched[2]_i_9_n_0 ),
        .O(\symbols_latched_reg[2]_i_4_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \symbols_latched_reg[2]_i_5 
       (.I0(\symbols_latched[2]_i_10_n_0 ),
        .I1(\symbols_latched[2]_i_11_n_0 ),
        .O(\symbols_latched_reg[2]_i_5_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \symbols_latched_reg[2]_i_6 
       (.I0(\symbols_latched[2]_i_12_n_0 ),
        .I1(\symbols_latched[2]_i_13_n_0 ),
        .O(\symbols_latched_reg[2]_i_6_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \symbols_latched_reg[2]_i_7 
       (.I0(\symbols_latched[2]_i_14_n_0 ),
        .I1(\symbols_latched[2]_i_15_n_0 ),
        .O(\symbols_latched_reg[2]_i_7_n_0 ),
        .S(error_latched_reg[2]));
  MUXF8 \symbols_latched_reg[3]_i_2 
       (.I0(\symbols_latched_reg[3]_i_4_n_0 ),
        .I1(\symbols_latched_reg[3]_i_5_n_0 ),
        .O(\symbols_latched_reg[3]_i_2_n_0 ),
        .S(error_latched_reg[3]));
  MUXF8 \symbols_latched_reg[3]_i_3 
       (.I0(\symbols_latched_reg[3]_i_6_n_0 ),
        .I1(\symbols_latched_reg[3]_i_7_n_0 ),
        .O(\symbols_latched_reg[3]_i_3_n_0 ),
        .S(error_latched_reg[3]));
  MUXF7 \symbols_latched_reg[3]_i_4 
       (.I0(\symbols_latched[3]_i_8_n_0 ),
        .I1(\symbols_latched[3]_i_9_n_0 ),
        .O(\symbols_latched_reg[3]_i_4_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \symbols_latched_reg[3]_i_5 
       (.I0(\symbols_latched[3]_i_10_n_0 ),
        .I1(\symbols_latched[3]_i_11_n_0 ),
        .O(\symbols_latched_reg[3]_i_5_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \symbols_latched_reg[3]_i_6 
       (.I0(\symbols_latched[3]_i_12_n_0 ),
        .I1(\symbols_latched[3]_i_13_n_0 ),
        .O(\symbols_latched_reg[3]_i_6_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \symbols_latched_reg[3]_i_7 
       (.I0(\symbols_latched[3]_i_14_n_0 ),
        .I1(\symbols_latched[3]_i_15_n_0 ),
        .O(\symbols_latched_reg[3]_i_7_n_0 ),
        .S(error_latched_reg[2]));
  MUXF8 \symbols_latched_reg[4]_i_2 
       (.I0(\symbols_latched_reg[4]_i_4_n_0 ),
        .I1(\symbols_latched_reg[4]_i_5_n_0 ),
        .O(\symbols_latched_reg[4]_i_2_n_0 ),
        .S(error_latched_reg[3]));
  MUXF8 \symbols_latched_reg[4]_i_3 
       (.I0(\symbols_latched_reg[4]_i_6_n_0 ),
        .I1(\symbols_latched_reg[4]_i_7_n_0 ),
        .O(\symbols_latched_reg[4]_i_3_n_0 ),
        .S(error_latched_reg[3]));
  MUXF7 \symbols_latched_reg[4]_i_4 
       (.I0(\symbols_latched[4]_i_8_n_0 ),
        .I1(\symbols_latched[4]_i_9_n_0 ),
        .O(\symbols_latched_reg[4]_i_4_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \symbols_latched_reg[4]_i_5 
       (.I0(\symbols_latched[4]_i_10_n_0 ),
        .I1(\symbols_latched[4]_i_11_n_0 ),
        .O(\symbols_latched_reg[4]_i_5_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \symbols_latched_reg[4]_i_6 
       (.I0(\symbols_latched[4]_i_12_n_0 ),
        .I1(\symbols_latched[4]_i_13_n_0 ),
        .O(\symbols_latched_reg[4]_i_6_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \symbols_latched_reg[4]_i_7 
       (.I0(\symbols_latched[4]_i_14_n_0 ),
        .I1(\symbols_latched[4]_i_15_n_0 ),
        .O(\symbols_latched_reg[4]_i_7_n_0 ),
        .S(error_latched_reg[2]));
  MUXF8 \symbols_latched_reg[5]_i_3 
       (.I0(\symbols_latched_reg[5]_i_5_n_0 ),
        .I1(\symbols_latched_reg[5]_i_6_n_0 ),
        .O(\symbols_latched_reg[5]_i_3_n_0 ),
        .S(error_latched_reg[3]));
  MUXF8 \symbols_latched_reg[5]_i_4 
       (.I0(\symbols_latched_reg[5]_i_7_n_0 ),
        .I1(\symbols_latched_reg[5]_i_8_n_0 ),
        .O(\symbols_latched_reg[5]_i_4_n_0 ),
        .S(error_latched_reg[3]));
  MUXF7 \symbols_latched_reg[5]_i_5 
       (.I0(\symbols_latched[5]_i_9_n_0 ),
        .I1(\symbols_latched[5]_i_10_n_0 ),
        .O(\symbols_latched_reg[5]_i_5_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \symbols_latched_reg[5]_i_6 
       (.I0(\symbols_latched[5]_i_11_n_0 ),
        .I1(\symbols_latched[5]_i_12_n_0 ),
        .O(\symbols_latched_reg[5]_i_6_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \symbols_latched_reg[5]_i_7 
       (.I0(\symbols_latched[5]_i_13_n_0 ),
        .I1(\symbols_latched[5]_i_14_n_0 ),
        .O(\symbols_latched_reg[5]_i_7_n_0 ),
        .S(error_latched_reg[2]));
  MUXF7 \symbols_latched_reg[5]_i_8 
       (.I0(\symbols_latched[5]_i_15_n_0 ),
        .I1(\symbols_latched[5]_i_16_n_0 ),
        .O(\symbols_latched_reg[5]_i_8_n_0 ),
        .S(error_latched_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \write_ptr[0]_i_1 
       (.I0(write_ptr_reg[0]),
        .O(\write_ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_ptr[1]_i_1 
       (.I0(write_ptr_reg[1]),
        .I1(write_ptr_reg[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \write_ptr[2]_i_1 
       (.I0(write_ptr_reg[2]),
        .I1(write_ptr_reg[0]),
        .I2(write_ptr_reg[1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \write_ptr[3]_i_1 
       (.I0(write_ptr_reg[3]),
        .I1(write_ptr_reg[2]),
        .I2(write_ptr_reg[1]),
        .I3(write_ptr_reg[0]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \write_ptr[4]_i_1 
       (.I0(write_ptr_reg[4]),
        .I1(write_ptr_reg[3]),
        .I2(write_ptr_reg[0]),
        .I3(write_ptr_reg[1]),
        .I4(write_ptr_reg[2]),
        .O(p_0_in__1[4]));
  FDRE \write_ptr_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\write_ptr[0]_i_1_n_0 ),
        .Q(write_ptr_reg[0]),
        .R(SR));
  FDRE \write_ptr_reg[1] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__1[1]),
        .Q(write_ptr_reg[1]),
        .R(SR));
  FDRE \write_ptr_reg[2] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__1[2]),
        .Q(write_ptr_reg[2]),
        .R(SR));
  FDRE \write_ptr_reg[3] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__1[3]),
        .Q(write_ptr_reg[3]),
        .R(SR));
  FDRE \write_ptr_reg[4] 
       (.C(clk),
        .CE(E),
        .D(p_0_in__1[4]),
        .Q(write_ptr_reg[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "morse_decoder_table" *) 
module system_morse_top_0_0_morse_decoder_table
   (\read_idx_reg[4] ,
    \read_idx_reg[4]_0 ,
    \read_idx_reg[4]_1 ,
    \read_idx_reg[4]_2 ,
    \read_idx_reg[4]_3 ,
    \read_idx_reg[4]_4 ,
    \read_idx_reg[4]_5 ,
    \read_idx_reg[4]_6 ,
    \read_idx_reg[4]_7 ,
    \read_idx_reg[4]_8 ,
    \read_idx_reg[4]_9 ,
    \read_idx_reg[4]_10 ,
    \read_idx_reg[4]_11 ,
    echo_symbols_mux,
    \ascii_data_reg[5] ,
    echo_count_mux,
    \ascii_data_reg[3] );
  output \read_idx_reg[4] ;
  output \read_idx_reg[4]_0 ;
  output \read_idx_reg[4]_1 ;
  output \read_idx_reg[4]_2 ;
  output \read_idx_reg[4]_3 ;
  output \read_idx_reg[4]_4 ;
  output \read_idx_reg[4]_5 ;
  output \read_idx_reg[4]_6 ;
  output \read_idx_reg[4]_7 ;
  output \read_idx_reg[4]_8 ;
  output \read_idx_reg[4]_9 ;
  output \read_idx_reg[4]_10 ;
  output \read_idx_reg[4]_11 ;
  input [4:0]echo_symbols_mux;
  input \ascii_data_reg[5] ;
  input [1:0]echo_count_mux;
  input \ascii_data_reg[3] ;

  wire \ascii_data[0]_i_6_n_0 ;
  wire \ascii_data[0]_i_7_n_0 ;
  wire \ascii_data[0]_i_8_n_0 ;
  wire \ascii_data[0]_i_9_n_0 ;
  wire \ascii_data[1]_i_10_n_0 ;
  wire \ascii_data[1]_i_4_n_0 ;
  wire \ascii_data[1]_i_7_n_0 ;
  wire \ascii_data[1]_i_8_n_0 ;
  wire \ascii_data[1]_i_9_n_0 ;
  wire \ascii_data[2]_i_6_n_0 ;
  wire \ascii_data[2]_i_7_n_0 ;
  wire \ascii_data[2]_i_8_n_0 ;
  wire \ascii_data[2]_i_9_n_0 ;
  wire \ascii_data[3]_i_10_n_0 ;
  wire \ascii_data[3]_i_11_n_0 ;
  wire \ascii_data[3]_i_5_n_0 ;
  wire \ascii_data[3]_i_8_n_0 ;
  wire \ascii_data[3]_i_9_n_0 ;
  wire \ascii_data[4]_i_5_n_0 ;
  wire \ascii_data[4]_i_6_n_0 ;
  wire \ascii_data[5]_i_4_n_0 ;
  wire \ascii_data[5]_i_5_n_0 ;
  wire \ascii_data[5]_i_6_n_0 ;
  wire \ascii_data_reg[0]_i_4_n_0 ;
  wire \ascii_data_reg[0]_i_5_n_0 ;
  wire \ascii_data_reg[1]_i_5_n_0 ;
  wire \ascii_data_reg[1]_i_6_n_0 ;
  wire \ascii_data_reg[2]_i_4_n_0 ;
  wire \ascii_data_reg[2]_i_5_n_0 ;
  wire \ascii_data_reg[3] ;
  wire \ascii_data_reg[3]_i_6_n_0 ;
  wire \ascii_data_reg[3]_i_7_n_0 ;
  wire \ascii_data_reg[5] ;
  wire [1:0]echo_count_mux;
  wire [4:0]echo_symbols_mux;
  wire \read_idx_reg[4] ;
  wire \read_idx_reg[4]_0 ;
  wire \read_idx_reg[4]_1 ;
  wire \read_idx_reg[4]_10 ;
  wire \read_idx_reg[4]_11 ;
  wire \read_idx_reg[4]_2 ;
  wire \read_idx_reg[4]_3 ;
  wire \read_idx_reg[4]_4 ;
  wire \read_idx_reg[4]_5 ;
  wire \read_idx_reg[4]_6 ;
  wire \read_idx_reg[4]_7 ;
  wire \read_idx_reg[4]_8 ;
  wire \read_idx_reg[4]_9 ;

  LUT6 #(
    .INIT(64'hFF5FFEAEFFFFFFFF)) 
    \ascii_data[0]_i_2 
       (.I0(echo_symbols_mux[1]),
        .I1(\ascii_data[1]_i_4_n_0 ),
        .I2(echo_symbols_mux[2]),
        .I3(\ascii_data[3]_i_5_n_0 ),
        .I4(echo_symbols_mux[0]),
        .I5(echo_count_mux[1]),
        .O(\read_idx_reg[4]_9 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \ascii_data[0]_i_6 
       (.I0(echo_symbols_mux[2]),
        .I1(echo_symbols_mux[3]),
        .I2(echo_symbols_mux[4]),
        .I3(\ascii_data_reg[5] ),
        .I4(echo_symbols_mux[1]),
        .I5(echo_symbols_mux[0]),
        .O(\ascii_data[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8C8FFFFFFFF)) 
    \ascii_data[0]_i_7 
       (.I0(echo_symbols_mux[0]),
        .I1(echo_symbols_mux[2]),
        .I2(echo_symbols_mux[3]),
        .I3(echo_symbols_mux[1]),
        .I4(echo_symbols_mux[4]),
        .I5(\ascii_data_reg[5] ),
        .O(\ascii_data[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFD9)) 
    \ascii_data[0]_i_8 
       (.I0(echo_symbols_mux[0]),
        .I1(echo_symbols_mux[1]),
        .I2(\ascii_data_reg[5] ),
        .I3(echo_symbols_mux[4]),
        .I4(echo_symbols_mux[3]),
        .I5(echo_symbols_mux[2]),
        .O(\ascii_data[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFBFFFFFFFF)) 
    \ascii_data[0]_i_9 
       (.I0(echo_symbols_mux[1]),
        .I1(\ascii_data_reg[5] ),
        .I2(echo_symbols_mux[4]),
        .I3(echo_symbols_mux[3]),
        .I4(echo_symbols_mux[2]),
        .I5(echo_symbols_mux[0]),
        .O(\ascii_data[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFF7FFFFFFFEF)) 
    \ascii_data[1]_i_10 
       (.I0(echo_symbols_mux[0]),
        .I1(echo_symbols_mux[1]),
        .I2(\ascii_data_reg[5] ),
        .I3(echo_symbols_mux[4]),
        .I4(echo_symbols_mux[3]),
        .I5(echo_symbols_mux[2]),
        .O(\ascii_data[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF5FFE5EFFFFFFFF)) 
    \ascii_data[1]_i_2 
       (.I0(echo_symbols_mux[1]),
        .I1(\ascii_data[1]_i_4_n_0 ),
        .I2(echo_symbols_mux[2]),
        .I3(\ascii_data[3]_i_5_n_0 ),
        .I4(echo_symbols_mux[0]),
        .I5(echo_count_mux[1]),
        .O(\read_idx_reg[4]_10 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \ascii_data[1]_i_4 
       (.I0(\ascii_data_reg[5] ),
        .I1(echo_symbols_mux[4]),
        .I2(echo_symbols_mux[3]),
        .O(\ascii_data[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    \ascii_data[1]_i_7 
       (.I0(echo_symbols_mux[1]),
        .I1(echo_symbols_mux[0]),
        .I2(echo_symbols_mux[3]),
        .I3(echo_symbols_mux[4]),
        .I4(\ascii_data_reg[5] ),
        .I5(echo_symbols_mux[2]),
        .O(\ascii_data[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFD5FFFFFFBAFF)) 
    \ascii_data[1]_i_8 
       (.I0(echo_symbols_mux[0]),
        .I1(echo_symbols_mux[1]),
        .I2(echo_symbols_mux[2]),
        .I3(\ascii_data_reg[5] ),
        .I4(echo_symbols_mux[4]),
        .I5(echo_symbols_mux[3]),
        .O(\ascii_data[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFCFFF9)) 
    \ascii_data[1]_i_9 
       (.I0(echo_symbols_mux[0]),
        .I1(echo_symbols_mux[2]),
        .I2(echo_symbols_mux[3]),
        .I3(echo_symbols_mux[4]),
        .I4(\ascii_data_reg[5] ),
        .I5(echo_symbols_mux[1]),
        .O(\ascii_data[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF5FFFDDFFFFFFFF)) 
    \ascii_data[2]_i_2 
       (.I0(echo_count_mux[1]),
        .I1(echo_symbols_mux[0]),
        .I2(echo_symbols_mux[2]),
        .I3(\ascii_data[3]_i_5_n_0 ),
        .I4(echo_symbols_mux[1]),
        .I5(echo_count_mux[0]),
        .O(\read_idx_reg[4]_11 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ascii_data[2]_i_6 
       (.I0(echo_symbols_mux[2]),
        .I1(\ascii_data_reg[5] ),
        .I2(echo_symbols_mux[4]),
        .I3(echo_symbols_mux[3]),
        .I4(echo_symbols_mux[0]),
        .O(\ascii_data[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF99FFFFFF54FFFF)) 
    \ascii_data[2]_i_7 
       (.I0(echo_symbols_mux[0]),
        .I1(echo_symbols_mux[2]),
        .I2(echo_symbols_mux[3]),
        .I3(echo_symbols_mux[4]),
        .I4(\ascii_data_reg[5] ),
        .I5(echo_symbols_mux[1]),
        .O(\ascii_data[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFC)) 
    \ascii_data[2]_i_8 
       (.I0(echo_symbols_mux[1]),
        .I1(echo_symbols_mux[0]),
        .I2(echo_symbols_mux[3]),
        .I3(echo_symbols_mux[4]),
        .I4(\ascii_data_reg[5] ),
        .I5(echo_symbols_mux[2]),
        .O(\ascii_data[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \ascii_data[2]_i_9 
       (.I0(echo_symbols_mux[2]),
        .I1(\ascii_data_reg[5] ),
        .I2(echo_symbols_mux[4]),
        .I3(echo_symbols_mux[1]),
        .I4(echo_symbols_mux[0]),
        .O(\ascii_data[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF8C8)) 
    \ascii_data[3]_i_10 
       (.I0(echo_symbols_mux[0]),
        .I1(echo_symbols_mux[2]),
        .I2(\ascii_data_reg[5] ),
        .I3(echo_symbols_mux[1]),
        .I4(echo_symbols_mux[3]),
        .I5(echo_symbols_mux[4]),
        .O(\ascii_data[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF4F)) 
    \ascii_data[3]_i_11 
       (.I0(echo_symbols_mux[0]),
        .I1(echo_symbols_mux[1]),
        .I2(\ascii_data_reg[5] ),
        .I3(echo_symbols_mux[4]),
        .I4(echo_symbols_mux[3]),
        .I5(echo_symbols_mux[2]),
        .O(\ascii_data[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF5FFE0EFFFFFFFF)) 
    \ascii_data[3]_i_2 
       (.I0(echo_symbols_mux[1]),
        .I1(\ascii_data_reg[3] ),
        .I2(echo_symbols_mux[2]),
        .I3(\ascii_data[3]_i_5_n_0 ),
        .I4(echo_symbols_mux[0]),
        .I5(echo_count_mux[1]),
        .O(\read_idx_reg[4]_8 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \ascii_data[3]_i_5 
       (.I0(\ascii_data_reg[5] ),
        .I1(echo_symbols_mux[4]),
        .I2(echo_symbols_mux[3]),
        .O(\ascii_data[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \ascii_data[3]_i_8 
       (.I0(echo_symbols_mux[2]),
        .I1(echo_symbols_mux[3]),
        .I2(echo_symbols_mux[4]),
        .I3(\ascii_data_reg[5] ),
        .I4(echo_symbols_mux[1]),
        .I5(echo_symbols_mux[0]),
        .O(\ascii_data[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFDBFFFFFFE1FFFF)) 
    \ascii_data[3]_i_9 
       (.I0(echo_symbols_mux[0]),
        .I1(echo_symbols_mux[2]),
        .I2(echo_symbols_mux[3]),
        .I3(echo_symbols_mux[4]),
        .I4(\ascii_data_reg[5] ),
        .I5(echo_symbols_mux[1]),
        .O(\ascii_data[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \ascii_data[4]_i_3 
       (.I0(\ascii_data[4]_i_5_n_0 ),
        .I1(echo_count_mux[1]),
        .I2(\ascii_data[5]_i_6_n_0 ),
        .I3(echo_symbols_mux[2]),
        .O(\read_idx_reg[4]_5 ));
  LUT5 #(
    .INIT(32'hFFFFFE0E)) 
    \ascii_data[4]_i_4 
       (.I0(echo_symbols_mux[2]),
        .I1(\ascii_data[4]_i_6_n_0 ),
        .I2(echo_symbols_mux[0]),
        .I3(\ascii_data[5]_i_6_n_0 ),
        .I4(echo_count_mux[1]),
        .O(\read_idx_reg[4]_4 ));
  LUT6 #(
    .INIT(64'hFFFFBFFFFFFFC8FF)) 
    \ascii_data[4]_i_5 
       (.I0(echo_symbols_mux[0]),
        .I1(echo_symbols_mux[1]),
        .I2(echo_symbols_mux[2]),
        .I3(\ascii_data_reg[5] ),
        .I4(echo_symbols_mux[4]),
        .I5(echo_symbols_mux[3]),
        .O(\ascii_data[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \ascii_data[4]_i_6 
       (.I0(echo_symbols_mux[3]),
        .I1(echo_symbols_mux[4]),
        .I2(\ascii_data_reg[5] ),
        .I3(echo_symbols_mux[1]),
        .O(\ascii_data[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFFFFC8)) 
    \ascii_data[5]_i_2 
       (.I0(echo_symbols_mux[2]),
        .I1(\ascii_data_reg[5] ),
        .I2(echo_symbols_mux[1]),
        .I3(echo_symbols_mux[3]),
        .I4(echo_symbols_mux[4]),
        .O(\read_idx_reg[4]_7 ));
  LUT6 #(
    .INIT(64'hB8FFB8FFB8FFB800)) 
    \ascii_data[5]_i_3 
       (.I0(\ascii_data[5]_i_4_n_0 ),
        .I1(echo_symbols_mux[0]),
        .I2(\ascii_data[5]_i_5_n_0 ),
        .I3(echo_count_mux[1]),
        .I4(\ascii_data[5]_i_6_n_0 ),
        .I5(echo_symbols_mux[2]),
        .O(\read_idx_reg[4]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF8FF)) 
    \ascii_data[5]_i_4 
       (.I0(echo_symbols_mux[1]),
        .I1(echo_symbols_mux[2]),
        .I2(echo_symbols_mux[4]),
        .I3(\ascii_data_reg[5] ),
        .O(\ascii_data[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFF48FFFF)) 
    \ascii_data[5]_i_5 
       (.I0(echo_symbols_mux[2]),
        .I1(echo_symbols_mux[3]),
        .I2(echo_symbols_mux[1]),
        .I3(echo_symbols_mux[4]),
        .I4(\ascii_data_reg[5] ),
        .O(\ascii_data[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \ascii_data[5]_i_6 
       (.I0(\ascii_data_reg[5] ),
        .I1(echo_symbols_mux[4]),
        .I2(echo_symbols_mux[3]),
        .O(\ascii_data[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000067BF0000)) 
    \ascii_data[6]_i_6 
       (.I0(echo_symbols_mux[0]),
        .I1(echo_symbols_mux[2]),
        .I2(echo_symbols_mux[3]),
        .I3(echo_symbols_mux[1]),
        .I4(\ascii_data_reg[5] ),
        .I5(echo_symbols_mux[4]),
        .O(\read_idx_reg[4] ));
  MUXF8 \ascii_data_reg[0]_i_3 
       (.I0(\ascii_data_reg[0]_i_4_n_0 ),
        .I1(\ascii_data_reg[0]_i_5_n_0 ),
        .O(\read_idx_reg[4]_0 ),
        .S(echo_count_mux[0]));
  MUXF7 \ascii_data_reg[0]_i_4 
       (.I0(\ascii_data[0]_i_6_n_0 ),
        .I1(\ascii_data[0]_i_7_n_0 ),
        .O(\ascii_data_reg[0]_i_4_n_0 ),
        .S(echo_count_mux[1]));
  MUXF7 \ascii_data_reg[0]_i_5 
       (.I0(\ascii_data[0]_i_8_n_0 ),
        .I1(\ascii_data[0]_i_9_n_0 ),
        .O(\ascii_data_reg[0]_i_5_n_0 ),
        .S(echo_count_mux[1]));
  MUXF8 \ascii_data_reg[1]_i_3 
       (.I0(\ascii_data_reg[1]_i_5_n_0 ),
        .I1(\ascii_data_reg[1]_i_6_n_0 ),
        .O(\read_idx_reg[4]_1 ),
        .S(echo_count_mux[0]));
  MUXF7 \ascii_data_reg[1]_i_5 
       (.I0(\ascii_data[1]_i_7_n_0 ),
        .I1(\ascii_data[1]_i_8_n_0 ),
        .O(\ascii_data_reg[1]_i_5_n_0 ),
        .S(echo_count_mux[1]));
  MUXF7 \ascii_data_reg[1]_i_6 
       (.I0(\ascii_data[1]_i_9_n_0 ),
        .I1(\ascii_data[1]_i_10_n_0 ),
        .O(\ascii_data_reg[1]_i_6_n_0 ),
        .S(echo_count_mux[1]));
  MUXF8 \ascii_data_reg[2]_i_3 
       (.I0(\ascii_data_reg[2]_i_4_n_0 ),
        .I1(\ascii_data_reg[2]_i_5_n_0 ),
        .O(\read_idx_reg[4]_2 ),
        .S(echo_count_mux[0]));
  MUXF7 \ascii_data_reg[2]_i_4 
       (.I0(\ascii_data[2]_i_6_n_0 ),
        .I1(\ascii_data[2]_i_7_n_0 ),
        .O(\ascii_data_reg[2]_i_4_n_0 ),
        .S(echo_count_mux[1]));
  MUXF7 \ascii_data_reg[2]_i_5 
       (.I0(\ascii_data[2]_i_8_n_0 ),
        .I1(\ascii_data[2]_i_9_n_0 ),
        .O(\ascii_data_reg[2]_i_5_n_0 ),
        .S(echo_count_mux[1]));
  MUXF8 \ascii_data_reg[3]_i_3 
       (.I0(\ascii_data_reg[3]_i_6_n_0 ),
        .I1(\ascii_data_reg[3]_i_7_n_0 ),
        .O(\read_idx_reg[4]_3 ),
        .S(echo_count_mux[0]));
  MUXF7 \ascii_data_reg[3]_i_6 
       (.I0(\ascii_data[3]_i_8_n_0 ),
        .I1(\ascii_data[3]_i_9_n_0 ),
        .O(\ascii_data_reg[3]_i_6_n_0 ),
        .S(echo_count_mux[1]));
  MUXF7 \ascii_data_reg[3]_i_7 
       (.I0(\ascii_data[3]_i_10_n_0 ),
        .I1(\ascii_data[3]_i_11_n_0 ),
        .O(\ascii_data_reg[3]_i_7_n_0 ),
        .S(echo_count_mux[1]));
endmodule

(* ORIG_REF_NAME = "morse_echo" *) 
module system_morse_top_0_0_morse_echo
   (echo_done,
    \FSM_sequential_state_reg[0]_0 ,
    rgb_r_n,
    rgb_g_n,
    rgb_b_n,
    rst,
    clk,
    echo_error_mux,
    replay_echo_char_ready,
    replay_active,
    fsm_buf_write_en,
    rgb_b_reg_0,
    rgb_b_reg_1,
    \FSM_sequential_state_reg[2]_0 ,
    D,
    \count_latched_reg[3]_0 );
  output echo_done;
  output [0:0]\FSM_sequential_state_reg[0]_0 ;
  output rgb_r_n;
  output rgb_g_n;
  output rgb_b_n;
  input rst;
  input clk;
  input echo_error_mux;
  input replay_echo_char_ready;
  input replay_active;
  input fsm_buf_write_en;
  input rgb_b_reg_0;
  input rgb_b_reg_1;
  input \FSM_sequential_state_reg[2]_0 ;
  input [5:0]D;
  input [3:0]\count_latched_reg[3]_0 ;

  wire [5:0]D;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_3__0_n_0 ;
  wire \FSM_sequential_state[1]_i_4__0_n_0 ;
  wire \FSM_sequential_state[2]_i_10_n_0 ;
  wire \FSM_sequential_state[2]_i_11_n_0 ;
  wire \FSM_sequential_state[2]_i_12_n_0 ;
  wire \FSM_sequential_state[2]_i_13_n_0 ;
  wire \FSM_sequential_state[2]_i_14_n_0 ;
  wire \FSM_sequential_state[2]_i_15_n_0 ;
  wire \FSM_sequential_state[2]_i_16_n_0 ;
  wire \FSM_sequential_state[2]_i_17_n_0 ;
  wire \FSM_sequential_state[2]_i_18_n_0 ;
  wire \FSM_sequential_state[2]_i_19_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_20_n_0 ;
  wire \FSM_sequential_state[2]_i_21_n_0 ;
  wire \FSM_sequential_state[2]_i_22_n_0 ;
  wire \FSM_sequential_state[2]_i_23_n_0 ;
  wire \FSM_sequential_state[2]_i_24_n_0 ;
  wire \FSM_sequential_state[2]_i_25_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_8_n_0 ;
  wire \FSM_sequential_state[2]_i_9_n_0 ;
  wire [0:0]\FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire clk;
  wire [3:0]count_latched;
  wire [3:0]\count_latched_reg[3]_0 ;
  wire done_i_1_n_0;
  wire done_i_2_n_0;
  wire done_i_3_n_0;
  wire done_i_4_n_0;
  wire done_i_5_n_0;
  wire done_i_6_n_0;
  wire echo_b;
  wire echo_done;
  wire echo_error_mux;
  wire echo_g;
  wire echo_r;
  wire error_latched_reg_n_0;
  wire fsm_buf_write_en;
  wire replay_active;
  wire replay_echo_char_ready;
  wire rgb_b_i_1_n_0;
  wire rgb_b_n;
  wire rgb_b_reg_0;
  wire rgb_b_reg_1;
  wire rgb_g_i_10_n_0;
  wire rgb_g_i_11_n_0;
  wire rgb_g_i_12_n_0;
  wire rgb_g_i_1_n_0;
  wire rgb_g_i_2_n_0;
  wire rgb_g_i_3_n_0;
  wire rgb_g_i_4_n_0;
  wire rgb_g_i_5_n_0;
  wire rgb_g_i_6_n_0;
  wire rgb_g_i_7_n_0;
  wire rgb_g_i_8_n_0;
  wire rgb_g_i_9_n_0;
  wire rgb_g_n;
  wire rgb_r_i_1_n_0;
  wire rgb_r_i_2_n_0;
  wire rgb_r_i_3_n_0;
  wire rgb_r_i_4_n_0;
  wire rgb_r_i_5_n_0;
  wire rgb_r_i_6_n_0;
  wire rgb_r_i_7_n_0;
  wire rgb_r_n;
  wire rst;
  wire [2:1]state;
  wire [2:0]state__0;
  wire [1:0]symbol_idx;
  wire \symbol_idx[2]_i_1_n_0 ;
  wire \symbol_idx[3]_i_1_n_0 ;
  wire \symbol_idx[3]_i_2_n_0 ;
  wire \symbol_idx[3]_i_3_n_0 ;
  wire \symbol_idx_reg_n_0_[0] ;
  wire \symbol_idx_reg_n_0_[1] ;
  wire \symbol_idx_reg_n_0_[2] ;
  wire \symbol_idx_reg_n_0_[3] ;
  wire \symbols_latched[5]_i_1_n_0 ;
  wire \symbols_latched_reg_n_0_[0] ;
  wire \symbols_latched_reg_n_0_[1] ;
  wire \symbols_latched_reg_n_0_[2] ;
  wire \symbols_latched_reg_n_0_[3] ;
  wire \symbols_latched_reg_n_0_[4] ;
  wire \symbols_latched_reg_n_0_[5] ;
  wire timer_cnt0_carry__0_n_0;
  wire timer_cnt0_carry__0_n_1;
  wire timer_cnt0_carry__0_n_2;
  wire timer_cnt0_carry__0_n_3;
  wire timer_cnt0_carry__0_n_4;
  wire timer_cnt0_carry__0_n_5;
  wire timer_cnt0_carry__0_n_6;
  wire timer_cnt0_carry__0_n_7;
  wire timer_cnt0_carry__1_n_0;
  wire timer_cnt0_carry__1_n_1;
  wire timer_cnt0_carry__1_n_2;
  wire timer_cnt0_carry__1_n_3;
  wire timer_cnt0_carry__1_n_4;
  wire timer_cnt0_carry__1_n_5;
  wire timer_cnt0_carry__1_n_6;
  wire timer_cnt0_carry__1_n_7;
  wire timer_cnt0_carry__2_n_0;
  wire timer_cnt0_carry__2_n_1;
  wire timer_cnt0_carry__2_n_2;
  wire timer_cnt0_carry__2_n_3;
  wire timer_cnt0_carry__2_n_4;
  wire timer_cnt0_carry__2_n_5;
  wire timer_cnt0_carry__2_n_6;
  wire timer_cnt0_carry__2_n_7;
  wire timer_cnt0_carry__3_n_0;
  wire timer_cnt0_carry__3_n_1;
  wire timer_cnt0_carry__3_n_2;
  wire timer_cnt0_carry__3_n_3;
  wire timer_cnt0_carry__3_n_4;
  wire timer_cnt0_carry__3_n_5;
  wire timer_cnt0_carry__3_n_6;
  wire timer_cnt0_carry__3_n_7;
  wire timer_cnt0_carry__4_n_0;
  wire timer_cnt0_carry__4_n_1;
  wire timer_cnt0_carry__4_n_2;
  wire timer_cnt0_carry__4_n_3;
  wire timer_cnt0_carry__4_n_4;
  wire timer_cnt0_carry__4_n_5;
  wire timer_cnt0_carry__4_n_6;
  wire timer_cnt0_carry__4_n_7;
  wire timer_cnt0_carry__5_n_3;
  wire timer_cnt0_carry__5_n_6;
  wire timer_cnt0_carry__5_n_7;
  wire timer_cnt0_carry_n_0;
  wire timer_cnt0_carry_n_1;
  wire timer_cnt0_carry_n_2;
  wire timer_cnt0_carry_n_3;
  wire timer_cnt0_carry_n_4;
  wire timer_cnt0_carry_n_5;
  wire timer_cnt0_carry_n_6;
  wire timer_cnt0_carry_n_7;
  wire \timer_cnt[0]_i_1_n_0 ;
  wire \timer_cnt[10]_i_1_n_0 ;
  wire \timer_cnt[11]_i_1_n_0 ;
  wire \timer_cnt[12]_i_1_n_0 ;
  wire \timer_cnt[13]_i_1_n_0 ;
  wire \timer_cnt[14]_i_1_n_0 ;
  wire \timer_cnt[15]_i_1_n_0 ;
  wire \timer_cnt[16]_i_1_n_0 ;
  wire \timer_cnt[17]_i_1_n_0 ;
  wire \timer_cnt[18]_i_1_n_0 ;
  wire \timer_cnt[19]_i_1_n_0 ;
  wire \timer_cnt[1]_i_1_n_0 ;
  wire \timer_cnt[20]_i_1_n_0 ;
  wire \timer_cnt[21]_i_1_n_0 ;
  wire \timer_cnt[22]_i_1_n_0 ;
  wire \timer_cnt[23]_i_1_n_0 ;
  wire \timer_cnt[24]_i_1_n_0 ;
  wire \timer_cnt[25]_i_1_n_0 ;
  wire \timer_cnt[26]_i_1_n_0 ;
  wire \timer_cnt[26]_i_2_n_0 ;
  wire \timer_cnt[2]_i_1_n_0 ;
  wire \timer_cnt[3]_i_1_n_0 ;
  wire \timer_cnt[4]_i_1_n_0 ;
  wire \timer_cnt[5]_i_1_n_0 ;
  wire \timer_cnt[6]_i_1_n_0 ;
  wire \timer_cnt[7]_i_1_n_0 ;
  wire \timer_cnt[8]_i_1_n_0 ;
  wire \timer_cnt[9]_i_1_n_0 ;
  wire \timer_cnt_reg_n_0_[0] ;
  wire \timer_cnt_reg_n_0_[10] ;
  wire \timer_cnt_reg_n_0_[11] ;
  wire \timer_cnt_reg_n_0_[12] ;
  wire \timer_cnt_reg_n_0_[13] ;
  wire \timer_cnt_reg_n_0_[14] ;
  wire \timer_cnt_reg_n_0_[15] ;
  wire \timer_cnt_reg_n_0_[16] ;
  wire \timer_cnt_reg_n_0_[17] ;
  wire \timer_cnt_reg_n_0_[18] ;
  wire \timer_cnt_reg_n_0_[19] ;
  wire \timer_cnt_reg_n_0_[1] ;
  wire \timer_cnt_reg_n_0_[20] ;
  wire \timer_cnt_reg_n_0_[21] ;
  wire \timer_cnt_reg_n_0_[22] ;
  wire \timer_cnt_reg_n_0_[23] ;
  wire \timer_cnt_reg_n_0_[24] ;
  wire \timer_cnt_reg_n_0_[25] ;
  wire \timer_cnt_reg_n_0_[26] ;
  wire \timer_cnt_reg_n_0_[2] ;
  wire \timer_cnt_reg_n_0_[3] ;
  wire \timer_cnt_reg_n_0_[4] ;
  wire \timer_cnt_reg_n_0_[5] ;
  wire \timer_cnt_reg_n_0_[6] ;
  wire \timer_cnt_reg_n_0_[7] ;
  wire \timer_cnt_reg_n_0_[8] ;
  wire \timer_cnt_reg_n_0_[9] ;
  wire [3:1]NLW_timer_cnt0_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_timer_cnt0_carry__5_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hBBFFBABA88008A8A)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I2(state[2]),
        .I3(\FSM_sequential_state[1]_i_4__0_n_0 ),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .I5(\FSM_sequential_state_reg[0]_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000FF03FFFF55)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(rgb_b_reg_0),
        .I1(error_latched_reg_n_0),
        .I2(\FSM_sequential_state[2]_i_7_n_0 ),
        .I3(state[1]),
        .I4(\FSM_sequential_state_reg[0]_0 ),
        .I5(state[2]),
        .O(state__0[0]));
  LUT6 #(
    .INIT(64'hBBFFBABA88008A8A)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[1]),
        .I1(\FSM_sequential_state[1]_i_3__0_n_0 ),
        .I2(state[2]),
        .I3(\FSM_sequential_state[1]_i_4__0_n_0 ),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h0C000F0A)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(rgb_b_reg_0),
        .I1(\FSM_sequential_state[2]_i_7_n_0 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(\FSM_sequential_state_reg[0]_0 ),
        .O(state__0[1]));
  LUT6 #(
    .INIT(64'h5C5C5C5C0000FF0F)) 
    \FSM_sequential_state[1]_i_3__0 
       (.I0(done_i_2_n_0),
        .I1(rgb_r_i_2_n_0),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(\FSM_sequential_state[2]_i_8_n_0 ),
        .I4(state[1]),
        .I5(state[2]),
        .O(\FSM_sequential_state[1]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFF8)) 
    \FSM_sequential_state[1]_i_4__0 
       (.I0(state[2]),
        .I1(rgb_r_i_2_n_0),
        .I2(rgb_b_reg_1),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .O(\FSM_sequential_state[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAB8AAF0AABAAABA)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state__0[2]),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(state[2]),
        .I3(\FSM_sequential_state[2]_i_4_n_0 ),
        .I4(\FSM_sequential_state_reg[2]_0 ),
        .I5(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5151510101015101)) 
    \FSM_sequential_state[2]_i_10 
       (.I0(\timer_cnt_reg_n_0_[26] ),
        .I1(\FSM_sequential_state[2]_i_19_n_0 ),
        .I2(\symbol_idx_reg_n_0_[2] ),
        .I3(\symbols_latched_reg_n_0_[4] ),
        .I4(\symbol_idx_reg_n_0_[0] ),
        .I5(\symbols_latched_reg_n_0_[5] ),
        .O(\FSM_sequential_state[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0888080808080808)) 
    \FSM_sequential_state[2]_i_11 
       (.I0(rgb_g_i_8_n_0),
        .I1(\FSM_sequential_state[2]_i_14_n_0 ),
        .I2(\timer_cnt_reg_n_0_[24] ),
        .I3(\timer_cnt_reg_n_0_[21] ),
        .I4(\FSM_sequential_state[2]_i_20_n_0 ),
        .I5(\FSM_sequential_state[2]_i_13_n_0 ),
        .O(\FSM_sequential_state[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h1B5B5F7F0020BBFB)) 
    \FSM_sequential_state[2]_i_12 
       (.I0(\symbol_idx_reg_n_0_[1] ),
        .I1(count_latched[1]),
        .I2(\symbol_idx_reg_n_0_[0] ),
        .I3(count_latched[0]),
        .I4(count_latched[2]),
        .I5(\symbol_idx_reg_n_0_[2] ),
        .O(\FSM_sequential_state[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02020200)) 
    \FSM_sequential_state[2]_i_13 
       (.I0(\FSM_sequential_state[2]_i_17_n_0 ),
        .I1(\timer_cnt_reg_n_0_[14] ),
        .I2(\timer_cnt_reg_n_0_[13] ),
        .I3(\FSM_sequential_state[2]_i_21_n_0 ),
        .I4(\FSM_sequential_state[2]_i_22_n_0 ),
        .I5(\FSM_sequential_state[2]_i_23_n_0 ),
        .O(\FSM_sequential_state[2]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[2]_i_14 
       (.I0(\timer_cnt_reg_n_0_[25] ),
        .I1(\timer_cnt_reg_n_0_[26] ),
        .O(\FSM_sequential_state[2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state[2]_i_15 
       (.I0(\timer_cnt_reg_n_0_[19] ),
        .I1(\timer_cnt_reg_n_0_[20] ),
        .I2(\timer_cnt_reg_n_0_[17] ),
        .O(\FSM_sequential_state[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FF7F)) 
    \FSM_sequential_state[2]_i_16 
       (.I0(\timer_cnt_reg_n_0_[9] ),
        .I1(\timer_cnt_reg_n_0_[10] ),
        .I2(\timer_cnt_reg_n_0_[11] ),
        .I3(\FSM_sequential_state[2]_i_24_n_0 ),
        .I4(\timer_cnt_reg_n_0_[12] ),
        .I5(\timer_cnt_reg_n_0_[13] ),
        .O(\FSM_sequential_state[2]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[2]_i_17 
       (.I0(\timer_cnt_reg_n_0_[16] ),
        .I1(\timer_cnt_reg_n_0_[15] ),
        .O(\FSM_sequential_state[2]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \FSM_sequential_state[2]_i_18 
       (.I0(\timer_cnt_reg_n_0_[23] ),
        .I1(\timer_cnt_reg_n_0_[21] ),
        .I2(\timer_cnt_reg_n_0_[20] ),
        .I3(\timer_cnt_reg_n_0_[19] ),
        .I4(\timer_cnt_reg_n_0_[18] ),
        .O(\FSM_sequential_state[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \FSM_sequential_state[2]_i_19 
       (.I0(\symbols_latched_reg_n_0_[3] ),
        .I1(\symbols_latched_reg_n_0_[2] ),
        .I2(\symbol_idx_reg_n_0_[1] ),
        .I3(\symbols_latched_reg_n_0_[1] ),
        .I4(\symbol_idx_reg_n_0_[0] ),
        .I5(\symbols_latched_reg_n_0_[0] ),
        .O(\FSM_sequential_state[2]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0646)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state[2]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(state[1]),
        .I3(\FSM_sequential_state[2]_i_7_n_0 ),
        .O(state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[2]_i_20 
       (.I0(\timer_cnt_reg_n_0_[22] ),
        .I1(\timer_cnt_reg_n_0_[23] ),
        .O(\FSM_sequential_state[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000000D)) 
    \FSM_sequential_state[2]_i_21 
       (.I0(\timer_cnt_reg_n_0_[5] ),
        .I1(\FSM_sequential_state[2]_i_25_n_0 ),
        .I2(\timer_cnt_reg_n_0_[8] ),
        .I3(\timer_cnt_reg_n_0_[10] ),
        .I4(\timer_cnt_reg_n_0_[7] ),
        .I5(\timer_cnt_reg_n_0_[6] ),
        .O(\FSM_sequential_state[2]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h777F)) 
    \FSM_sequential_state[2]_i_22 
       (.I0(\timer_cnt_reg_n_0_[12] ),
        .I1(\timer_cnt_reg_n_0_[11] ),
        .I2(\timer_cnt_reg_n_0_[10] ),
        .I3(\timer_cnt_reg_n_0_[9] ),
        .O(\FSM_sequential_state[2]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state[2]_i_23 
       (.I0(\timer_cnt_reg_n_0_[17] ),
        .I1(\timer_cnt_reg_n_0_[20] ),
        .I2(\timer_cnt_reg_n_0_[19] ),
        .I3(\timer_cnt_reg_n_0_[18] ),
        .O(\FSM_sequential_state[2]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h0000555D)) 
    \FSM_sequential_state[2]_i_24 
       (.I0(\timer_cnt_reg_n_0_[7] ),
        .I1(\FSM_sequential_state[2]_i_25_n_0 ),
        .I2(\timer_cnt_reg_n_0_[6] ),
        .I3(\timer_cnt_reg_n_0_[5] ),
        .I4(\timer_cnt_reg_n_0_[8] ),
        .O(\FSM_sequential_state[2]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h15555555)) 
    \FSM_sequential_state[2]_i_25 
       (.I0(\timer_cnt_reg_n_0_[4] ),
        .I1(\timer_cnt_reg_n_0_[2] ),
        .I2(\timer_cnt_reg_n_0_[1] ),
        .I3(\timer_cnt_reg_n_0_[0] ),
        .I4(\timer_cnt_reg_n_0_[3] ),
        .O(\FSM_sequential_state[2]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1011)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(\FSM_sequential_state[2]_i_8_n_0 ),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h2E00)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(rgb_r_i_2_n_0),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(done_i_2_n_0),
        .I3(state[2]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF4FF00FFF4FF)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(\FSM_sequential_state[2]_i_9_n_0 ),
        .I1(\FSM_sequential_state[2]_i_10_n_0 ),
        .I2(\FSM_sequential_state[2]_i_11_n_0 ),
        .I3(state[1]),
        .I4(\FSM_sequential_state_reg[0]_0 ),
        .I5(done_i_2_n_0),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1777777701111111)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(\FSM_sequential_state[2]_i_12_n_0 ),
        .I1(\symbol_idx_reg_n_0_[3] ),
        .I2(\symbol_idx_reg_n_0_[2] ),
        .I3(\symbol_idx_reg_n_0_[0] ),
        .I4(\symbol_idx_reg_n_0_[1] ),
        .I5(count_latched[3]),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFD0000FFFFFFFF)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(\FSM_sequential_state[2]_i_13_n_0 ),
        .I1(\timer_cnt_reg_n_0_[22] ),
        .I2(\timer_cnt_reg_n_0_[23] ),
        .I3(\timer_cnt_reg_n_0_[21] ),
        .I4(\timer_cnt_reg_n_0_[24] ),
        .I5(\FSM_sequential_state[2]_i_14_n_0 ),
        .O(\FSM_sequential_state[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF1055)) 
    \FSM_sequential_state[2]_i_9 
       (.I0(\FSM_sequential_state[2]_i_15_n_0 ),
        .I1(\FSM_sequential_state[2]_i_16_n_0 ),
        .I2(\timer_cnt_reg_n_0_[14] ),
        .I3(\FSM_sequential_state[2]_i_17_n_0 ),
        .I4(\FSM_sequential_state[2]_i_18_n_0 ),
        .I5(rgb_g_i_7_n_0),
        .O(\FSM_sequential_state[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "ST_IDLE:000,ST_SYMBOL_GAP:011,ST_SPACE_ON:001,ST_SYMBOL_ON:010,ST_DONE_GAP:101,ST_ERROR_ON:100" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg[0]_0 ),
        .R(rst));
  (* FSM_ENCODED_STATES = "ST_IDLE:000,ST_SYMBOL_GAP:011,ST_SPACE_ON:001,ST_SYMBOL_ON:010,ST_DONE_GAP:101,ST_ERROR_ON:100" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "ST_IDLE:000,ST_SYMBOL_GAP:011,ST_SPACE_ON:001,ST_SYMBOL_ON:010,ST_DONE_GAP:101,ST_ERROR_ON:100" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(rst));
  FDRE \count_latched_reg[0] 
       (.C(clk),
        .CE(\symbols_latched[5]_i_1_n_0 ),
        .D(\count_latched_reg[3]_0 [0]),
        .Q(count_latched[0]),
        .R(rst));
  FDRE \count_latched_reg[1] 
       (.C(clk),
        .CE(\symbols_latched[5]_i_1_n_0 ),
        .D(\count_latched_reg[3]_0 [1]),
        .Q(count_latched[1]),
        .R(rst));
  FDRE \count_latched_reg[2] 
       (.C(clk),
        .CE(\symbols_latched[5]_i_1_n_0 ),
        .D(\count_latched_reg[3]_0 [2]),
        .Q(count_latched[2]),
        .R(rst));
  FDRE \count_latched_reg[3] 
       (.C(clk),
        .CE(\symbols_latched[5]_i_1_n_0 ),
        .D(\count_latched_reg[3]_0 [3]),
        .Q(count_latched[3]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    done_i_1
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(done_i_2_n_0),
        .I2(state[2]),
        .I3(state[1]),
        .O(done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00101111)) 
    done_i_2
       (.I0(\timer_cnt_reg_n_0_[26] ),
        .I1(\timer_cnt_reg_n_0_[25] ),
        .I2(done_i_3_n_0),
        .I3(\timer_cnt_reg_n_0_[23] ),
        .I4(\timer_cnt_reg_n_0_[24] ),
        .O(done_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFF0075FFFFFFFF)) 
    done_i_3
       (.I0(\timer_cnt_reg_n_0_[16] ),
        .I1(\timer_cnt_reg_n_0_[15] ),
        .I2(done_i_4_n_0),
        .I3(\timer_cnt_reg_n_0_[17] ),
        .I4(rgb_r_i_4_n_0),
        .I5(\timer_cnt_reg_n_0_[18] ),
        .O(done_i_3_n_0));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    done_i_4
       (.I0(\timer_cnt_reg_n_0_[13] ),
        .I1(\timer_cnt_reg_n_0_[14] ),
        .I2(\timer_cnt_reg_n_0_[11] ),
        .I3(\timer_cnt_reg_n_0_[12] ),
        .I4(done_i_5_n_0),
        .I5(done_i_6_n_0),
        .O(done_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    done_i_5
       (.I0(\timer_cnt_reg_n_0_[6] ),
        .I1(\timer_cnt_reg_n_0_[7] ),
        .I2(\timer_cnt_reg_n_0_[9] ),
        .I3(\timer_cnt_reg_n_0_[10] ),
        .I4(\timer_cnt_reg_n_0_[8] ),
        .O(done_i_5_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    done_i_6
       (.I0(\timer_cnt_reg_n_0_[2] ),
        .I1(\timer_cnt_reg_n_0_[1] ),
        .I2(\timer_cnt_reg_n_0_[0] ),
        .I3(\timer_cnt_reg_n_0_[3] ),
        .I4(\timer_cnt_reg_n_0_[4] ),
        .I5(\timer_cnt_reg_n_0_[5] ),
        .O(done_i_6_n_0));
  FDRE done_reg
       (.C(clk),
        .CE(1'b1),
        .D(done_i_1_n_0),
        .Q(echo_done),
        .R(rst));
  FDRE error_latched_reg
       (.C(clk),
        .CE(\symbols_latched[5]_i_1_n_0 ),
        .D(echo_error_mux),
        .Q(error_latched_reg_n_0),
        .R(rst));
  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    rgb_b_i_1
       (.I0(rgb_b_reg_0),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(state[2]),
        .I3(rgb_b_reg_1),
        .I4(\FSM_sequential_state[2]_i_3_n_0 ),
        .I5(echo_b),
        .O(rgb_b_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_b_n_INST_0
       (.I0(echo_b),
        .O(rgb_b_n));
  FDRE rgb_b_reg
       (.C(clk),
        .CE(1'b1),
        .D(rgb_b_i_1_n_0),
        .Q(echo_b),
        .R(rst));
  LUT6 #(
    .INIT(64'hABABABFFA8A8A800)) 
    rgb_g_i_1
       (.I0(rgb_g_i_2_n_0),
        .I1(rgb_g_i_3_n_0),
        .I2(rgb_g_i_4_n_0),
        .I3(\symbol_idx[3]_i_3_n_0 ),
        .I4(rgb_g_i_5_n_0),
        .I5(echo_g),
        .O(rgb_g_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h7)) 
    rgb_g_i_10
       (.I0(\timer_cnt_reg_n_0_[20] ),
        .I1(\timer_cnt_reg_n_0_[19] ),
        .O(rgb_g_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF01005555)) 
    rgb_g_i_11
       (.I0(\timer_cnt_reg_n_0_[8] ),
        .I1(\timer_cnt_reg_n_0_[5] ),
        .I2(\timer_cnt_reg_n_0_[6] ),
        .I3(\FSM_sequential_state[2]_i_25_n_0 ),
        .I4(\timer_cnt_reg_n_0_[7] ),
        .I5(rgb_g_i_12_n_0),
        .O(rgb_g_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    rgb_g_i_12
       (.I0(\timer_cnt_reg_n_0_[9] ),
        .I1(\timer_cnt_reg_n_0_[10] ),
        .I2(\timer_cnt_reg_n_0_[11] ),
        .O(rgb_g_i_12_n_0));
  LUT6 #(
    .INIT(64'h04040404FF040404)) 
    rgb_g_i_2
       (.I0(state[2]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(done_i_2_n_0),
        .I3(rgb_b_reg_0),
        .I4(rgb_b_reg_1),
        .I5(state[1]),
        .O(rgb_g_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hB)) 
    rgb_g_i_3
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(state[1]),
        .O(rgb_g_i_3_n_0));
  LUT5 #(
    .INIT(32'hFF00F2F2)) 
    rgb_g_i_4
       (.I0(rgb_g_i_6_n_0),
        .I1(rgb_g_i_7_n_0),
        .I2(\timer_cnt_reg_n_0_[26] ),
        .I3(\FSM_sequential_state[2]_i_8_n_0 ),
        .I4(rgb_g_i_8_n_0),
        .O(rgb_g_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h1)) 
    rgb_g_i_5
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(state[2]),
        .O(rgb_g_i_5_n_0));
  LUT6 #(
    .INIT(64'hFCFCFFFEFCFCFEFE)) 
    rgb_g_i_6
       (.I0(\timer_cnt_reg_n_0_[18] ),
        .I1(\timer_cnt_reg_n_0_[21] ),
        .I2(\timer_cnt_reg_n_0_[23] ),
        .I3(rgb_g_i_9_n_0),
        .I4(rgb_g_i_10_n_0),
        .I5(\timer_cnt_reg_n_0_[17] ),
        .O(rgb_g_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h1FFF)) 
    rgb_g_i_7
       (.I0(\timer_cnt_reg_n_0_[23] ),
        .I1(\timer_cnt_reg_n_0_[22] ),
        .I2(\timer_cnt_reg_n_0_[24] ),
        .I3(\timer_cnt_reg_n_0_[25] ),
        .O(rgb_g_i_7_n_0));
  LUT5 #(
    .INIT(32'h47FF4700)) 
    rgb_g_i_8
       (.I0(\symbols_latched_reg_n_0_[5] ),
        .I1(\symbol_idx_reg_n_0_[0] ),
        .I2(\symbols_latched_reg_n_0_[4] ),
        .I3(\symbol_idx_reg_n_0_[2] ),
        .I4(\FSM_sequential_state[2]_i_19_n_0 ),
        .O(rgb_g_i_8_n_0));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEEEFE)) 
    rgb_g_i_9
       (.I0(\timer_cnt_reg_n_0_[15] ),
        .I1(\timer_cnt_reg_n_0_[16] ),
        .I2(\timer_cnt_reg_n_0_[14] ),
        .I3(rgb_g_i_11_n_0),
        .I4(\timer_cnt_reg_n_0_[12] ),
        .I5(\timer_cnt_reg_n_0_[13] ),
        .O(rgb_g_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_g_n_INST_0
       (.I0(echo_g),
        .O(rgb_g_n));
  FDRE rgb_g_reg
       (.C(clk),
        .CE(1'b1),
        .D(rgb_g_i_1_n_0),
        .Q(echo_g),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFF08F800000808)) 
    rgb_r_i_1
       (.I0(state[1]),
        .I1(error_latched_reg_n_0),
        .I2(state[2]),
        .I3(rgb_r_i_2_n_0),
        .I4(rgb_r_i_3_n_0),
        .I5(echo_r),
        .O(rgb_r_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAA8AAA8AAA8AAAA)) 
    rgb_r_i_2
       (.I0(\timer_cnt_reg_n_0_[26] ),
        .I1(\timer_cnt_reg_n_0_[23] ),
        .I2(\timer_cnt_reg_n_0_[24] ),
        .I3(\timer_cnt_reg_n_0_[25] ),
        .I4(rgb_r_i_4_n_0),
        .I5(rgb_r_i_5_n_0),
        .O(rgb_r_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFFFFFF0000)) 
    rgb_r_i_3
       (.I0(done_i_2_n_0),
        .I1(\FSM_sequential_state[2]_i_7_n_0 ),
        .I2(error_latched_reg_n_0),
        .I3(state[2]),
        .I4(\FSM_sequential_state_reg[0]_0 ),
        .I5(state[1]),
        .O(rgb_r_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    rgb_r_i_4
       (.I0(\timer_cnt_reg_n_0_[19] ),
        .I1(\timer_cnt_reg_n_0_[20] ),
        .I2(\timer_cnt_reg_n_0_[22] ),
        .I3(\timer_cnt_reg_n_0_[21] ),
        .O(rgb_r_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000BF00000000)) 
    rgb_r_i_5
       (.I0(rgb_r_i_6_n_0),
        .I1(\timer_cnt_reg_n_0_[13] ),
        .I2(\timer_cnt_reg_n_0_[14] ),
        .I3(\timer_cnt_reg_n_0_[18] ),
        .I4(\timer_cnt_reg_n_0_[17] ),
        .I5(\FSM_sequential_state[2]_i_17_n_0 ),
        .O(rgb_r_i_5_n_0));
  LUT6 #(
    .INIT(64'h000000005555777F)) 
    rgb_r_i_6
       (.I0(\timer_cnt_reg_n_0_[11] ),
        .I1(\timer_cnt_reg_n_0_[7] ),
        .I2(\timer_cnt_reg_n_0_[6] ),
        .I3(done_i_6_n_0),
        .I4(rgb_r_i_7_n_0),
        .I5(\timer_cnt_reg_n_0_[12] ),
        .O(rgb_r_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    rgb_r_i_7
       (.I0(\timer_cnt_reg_n_0_[8] ),
        .I1(\timer_cnt_reg_n_0_[10] ),
        .I2(\timer_cnt_reg_n_0_[9] ),
        .O(rgb_r_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    rgb_r_n_INST_0
       (.I0(echo_r),
        .O(rgb_r_n));
  FDRE rgb_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(rgb_r_i_1_n_0),
        .Q(echo_r),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \symbol_idx[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(\symbol_idx_reg_n_0_[0] ),
        .O(symbol_idx[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \symbol_idx[1]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(\symbol_idx_reg_n_0_[1] ),
        .I3(\symbol_idx_reg_n_0_[0] ),
        .O(symbol_idx[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00780000)) 
    \symbol_idx[2]_i_1 
       (.I0(\symbol_idx_reg_n_0_[0] ),
        .I1(\symbol_idx_reg_n_0_[1] ),
        .I2(\symbol_idx_reg_n_0_[2] ),
        .I3(state[2]),
        .I4(state[1]),
        .O(\symbol_idx[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \symbol_idx[3]_i_1 
       (.I0(\symbols_latched[5]_i_1_n_0 ),
        .I1(\symbol_idx[3]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .O(\symbol_idx[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00007F8000000000)) 
    \symbol_idx[3]_i_2 
       (.I0(\symbol_idx_reg_n_0_[1] ),
        .I1(\symbol_idx_reg_n_0_[0] ),
        .I2(\symbol_idx_reg_n_0_[2] ),
        .I3(\symbol_idx_reg_n_0_[3] ),
        .I4(state[2]),
        .I5(state[1]),
        .O(\symbol_idx[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \symbol_idx[3]_i_3 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\FSM_sequential_state[2]_i_7_n_0 ),
        .I3(done_i_2_n_0),
        .O(\symbol_idx[3]_i_3_n_0 ));
  FDRE \symbol_idx_reg[0] 
       (.C(clk),
        .CE(\symbol_idx[3]_i_1_n_0 ),
        .D(symbol_idx[0]),
        .Q(\symbol_idx_reg_n_0_[0] ),
        .R(rst));
  FDRE \symbol_idx_reg[1] 
       (.C(clk),
        .CE(\symbol_idx[3]_i_1_n_0 ),
        .D(symbol_idx[1]),
        .Q(\symbol_idx_reg_n_0_[1] ),
        .R(rst));
  FDRE \symbol_idx_reg[2] 
       (.C(clk),
        .CE(\symbol_idx[3]_i_1_n_0 ),
        .D(\symbol_idx[2]_i_1_n_0 ),
        .Q(\symbol_idx_reg_n_0_[2] ),
        .R(rst));
  FDRE \symbol_idx_reg[3] 
       (.C(clk),
        .CE(\symbol_idx[3]_i_1_n_0 ),
        .D(\symbol_idx[3]_i_2_n_0 ),
        .Q(\symbol_idx_reg_n_0_[3] ),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000000000004540)) 
    \symbols_latched[5]_i_1 
       (.I0(state[1]),
        .I1(replay_echo_char_ready),
        .I2(replay_active),
        .I3(fsm_buf_write_en),
        .I4(state[2]),
        .I5(\FSM_sequential_state_reg[0]_0 ),
        .O(\symbols_latched[5]_i_1_n_0 ));
  FDRE \symbols_latched_reg[0] 
       (.C(clk),
        .CE(\symbols_latched[5]_i_1_n_0 ),
        .D(D[0]),
        .Q(\symbols_latched_reg_n_0_[0] ),
        .R(rst));
  FDRE \symbols_latched_reg[1] 
       (.C(clk),
        .CE(\symbols_latched[5]_i_1_n_0 ),
        .D(D[1]),
        .Q(\symbols_latched_reg_n_0_[1] ),
        .R(rst));
  FDRE \symbols_latched_reg[2] 
       (.C(clk),
        .CE(\symbols_latched[5]_i_1_n_0 ),
        .D(D[2]),
        .Q(\symbols_latched_reg_n_0_[2] ),
        .R(rst));
  FDRE \symbols_latched_reg[3] 
       (.C(clk),
        .CE(\symbols_latched[5]_i_1_n_0 ),
        .D(D[3]),
        .Q(\symbols_latched_reg_n_0_[3] ),
        .R(rst));
  FDRE \symbols_latched_reg[4] 
       (.C(clk),
        .CE(\symbols_latched[5]_i_1_n_0 ),
        .D(D[4]),
        .Q(\symbols_latched_reg_n_0_[4] ),
        .R(rst));
  FDRE \symbols_latched_reg[5] 
       (.C(clk),
        .CE(\symbols_latched[5]_i_1_n_0 ),
        .D(D[5]),
        .Q(\symbols_latched_reg_n_0_[5] ),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer_cnt0_carry
       (.CI(1'b0),
        .CO({timer_cnt0_carry_n_0,timer_cnt0_carry_n_1,timer_cnt0_carry_n_2,timer_cnt0_carry_n_3}),
        .CYINIT(\timer_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({timer_cnt0_carry_n_4,timer_cnt0_carry_n_5,timer_cnt0_carry_n_6,timer_cnt0_carry_n_7}),
        .S({\timer_cnt_reg_n_0_[4] ,\timer_cnt_reg_n_0_[3] ,\timer_cnt_reg_n_0_[2] ,\timer_cnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer_cnt0_carry__0
       (.CI(timer_cnt0_carry_n_0),
        .CO({timer_cnt0_carry__0_n_0,timer_cnt0_carry__0_n_1,timer_cnt0_carry__0_n_2,timer_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({timer_cnt0_carry__0_n_4,timer_cnt0_carry__0_n_5,timer_cnt0_carry__0_n_6,timer_cnt0_carry__0_n_7}),
        .S({\timer_cnt_reg_n_0_[8] ,\timer_cnt_reg_n_0_[7] ,\timer_cnt_reg_n_0_[6] ,\timer_cnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer_cnt0_carry__1
       (.CI(timer_cnt0_carry__0_n_0),
        .CO({timer_cnt0_carry__1_n_0,timer_cnt0_carry__1_n_1,timer_cnt0_carry__1_n_2,timer_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({timer_cnt0_carry__1_n_4,timer_cnt0_carry__1_n_5,timer_cnt0_carry__1_n_6,timer_cnt0_carry__1_n_7}),
        .S({\timer_cnt_reg_n_0_[12] ,\timer_cnt_reg_n_0_[11] ,\timer_cnt_reg_n_0_[10] ,\timer_cnt_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer_cnt0_carry__2
       (.CI(timer_cnt0_carry__1_n_0),
        .CO({timer_cnt0_carry__2_n_0,timer_cnt0_carry__2_n_1,timer_cnt0_carry__2_n_2,timer_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({timer_cnt0_carry__2_n_4,timer_cnt0_carry__2_n_5,timer_cnt0_carry__2_n_6,timer_cnt0_carry__2_n_7}),
        .S({\timer_cnt_reg_n_0_[16] ,\timer_cnt_reg_n_0_[15] ,\timer_cnt_reg_n_0_[14] ,\timer_cnt_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer_cnt0_carry__3
       (.CI(timer_cnt0_carry__2_n_0),
        .CO({timer_cnt0_carry__3_n_0,timer_cnt0_carry__3_n_1,timer_cnt0_carry__3_n_2,timer_cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({timer_cnt0_carry__3_n_4,timer_cnt0_carry__3_n_5,timer_cnt0_carry__3_n_6,timer_cnt0_carry__3_n_7}),
        .S({\timer_cnt_reg_n_0_[20] ,\timer_cnt_reg_n_0_[19] ,\timer_cnt_reg_n_0_[18] ,\timer_cnt_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer_cnt0_carry__4
       (.CI(timer_cnt0_carry__3_n_0),
        .CO({timer_cnt0_carry__4_n_0,timer_cnt0_carry__4_n_1,timer_cnt0_carry__4_n_2,timer_cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({timer_cnt0_carry__4_n_4,timer_cnt0_carry__4_n_5,timer_cnt0_carry__4_n_6,timer_cnt0_carry__4_n_7}),
        .S({\timer_cnt_reg_n_0_[24] ,\timer_cnt_reg_n_0_[23] ,\timer_cnt_reg_n_0_[22] ,\timer_cnt_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer_cnt0_carry__5
       (.CI(timer_cnt0_carry__4_n_0),
        .CO({NLW_timer_cnt0_carry__5_CO_UNCONNECTED[3:1],timer_cnt0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_timer_cnt0_carry__5_O_UNCONNECTED[3:2],timer_cnt0_carry__5_n_6,timer_cnt0_carry__5_n_7}),
        .S({1'b0,1'b0,\timer_cnt_reg_n_0_[26] ,\timer_cnt_reg_n_0_[25] }));
  LUT5 #(
    .INIT(32'h01010100)) 
    \timer_cnt[0]_i_1 
       (.I0(\timer_cnt_reg_n_0_[0] ),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[10]_i_1 
       (.I0(timer_cnt0_carry__1_n_6),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[11]_i_1 
       (.I0(timer_cnt0_carry__1_n_5),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[12]_i_1 
       (.I0(timer_cnt0_carry__1_n_4),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[13]_i_1 
       (.I0(timer_cnt0_carry__2_n_7),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[14]_i_1 
       (.I0(timer_cnt0_carry__2_n_6),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[15]_i_1 
       (.I0(timer_cnt0_carry__2_n_5),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[16]_i_1 
       (.I0(timer_cnt0_carry__2_n_4),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[17]_i_1 
       (.I0(timer_cnt0_carry__3_n_7),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[18]_i_1 
       (.I0(timer_cnt0_carry__3_n_6),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[19]_i_1 
       (.I0(timer_cnt0_carry__3_n_5),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[1]_i_1 
       (.I0(timer_cnt0_carry_n_7),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[20]_i_1 
       (.I0(timer_cnt0_carry__3_n_4),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[21]_i_1 
       (.I0(timer_cnt0_carry__4_n_7),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[22]_i_1 
       (.I0(timer_cnt0_carry__4_n_6),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[23]_i_1 
       (.I0(timer_cnt0_carry__4_n_5),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[24]_i_1 
       (.I0(timer_cnt0_carry__4_n_4),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[25]_i_1 
       (.I0(timer_cnt0_carry__5_n_7),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00FFFFB8)) 
    \timer_cnt[26]_i_1 
       (.I0(replay_echo_char_ready),
        .I1(replay_active),
        .I2(fsm_buf_write_en),
        .I3(state[1]),
        .I4(state[2]),
        .I5(\FSM_sequential_state_reg[0]_0 ),
        .O(\timer_cnt[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[26]_i_2 
       (.I0(timer_cnt0_carry__5_n_6),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[2]_i_1 
       (.I0(timer_cnt0_carry_n_6),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[3]_i_1 
       (.I0(timer_cnt0_carry_n_5),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[4]_i_1 
       (.I0(timer_cnt0_carry_n_4),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[5]_i_1 
       (.I0(timer_cnt0_carry__0_n_7),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[6]_i_1 
       (.I0(timer_cnt0_carry__0_n_6),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[7]_i_1 
       (.I0(timer_cnt0_carry__0_n_5),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[8]_i_1 
       (.I0(timer_cnt0_carry__0_n_4),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \timer_cnt[9]_i_1 
       (.I0(timer_cnt0_carry__1_n_7),
        .I1(\FSM_sequential_state[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\timer_cnt[9]_i_1_n_0 ));
  FDRE \timer_cnt_reg[0] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[0]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[0] ),
        .R(rst));
  FDRE \timer_cnt_reg[10] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[10]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[10] ),
        .R(rst));
  FDRE \timer_cnt_reg[11] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[11]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[11] ),
        .R(rst));
  FDRE \timer_cnt_reg[12] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[12]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[12] ),
        .R(rst));
  FDRE \timer_cnt_reg[13] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[13]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[13] ),
        .R(rst));
  FDRE \timer_cnt_reg[14] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[14]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[14] ),
        .R(rst));
  FDRE \timer_cnt_reg[15] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[15]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[15] ),
        .R(rst));
  FDRE \timer_cnt_reg[16] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[16]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[16] ),
        .R(rst));
  FDRE \timer_cnt_reg[17] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[17]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[17] ),
        .R(rst));
  FDRE \timer_cnt_reg[18] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[18]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[18] ),
        .R(rst));
  FDRE \timer_cnt_reg[19] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[19]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[19] ),
        .R(rst));
  FDRE \timer_cnt_reg[1] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[1]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[1] ),
        .R(rst));
  FDRE \timer_cnt_reg[20] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[20]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[20] ),
        .R(rst));
  FDRE \timer_cnt_reg[21] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[21]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[21] ),
        .R(rst));
  FDRE \timer_cnt_reg[22] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[22]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[22] ),
        .R(rst));
  FDRE \timer_cnt_reg[23] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[23]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[23] ),
        .R(rst));
  FDRE \timer_cnt_reg[24] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[24]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[24] ),
        .R(rst));
  FDRE \timer_cnt_reg[25] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[25]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[25] ),
        .R(rst));
  FDRE \timer_cnt_reg[26] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[26]_i_2_n_0 ),
        .Q(\timer_cnt_reg_n_0_[26] ),
        .R(rst));
  FDRE \timer_cnt_reg[2] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[2]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[2] ),
        .R(rst));
  FDRE \timer_cnt_reg[3] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[3]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[3] ),
        .R(rst));
  FDRE \timer_cnt_reg[4] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[4]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[4] ),
        .R(rst));
  FDRE \timer_cnt_reg[5] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[5]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[5] ),
        .R(rst));
  FDRE \timer_cnt_reg[6] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[6]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[6] ),
        .R(rst));
  FDRE \timer_cnt_reg[7] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[7]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[7] ),
        .R(rst));
  FDRE \timer_cnt_reg[8] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[8]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[8] ),
        .R(rst));
  FDRE \timer_cnt_reg[9] 
       (.C(clk),
        .CE(\timer_cnt[26]_i_1_n_0 ),
        .D(\timer_cnt[9]_i_1_n_0 ),
        .Q(\timer_cnt_reg_n_0_[9] ),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "morse_fsm" *) 
module system_morse_top_0_0_morse_fsm
   (fsm_decode_error,
    fsm_buf_write_en,
    fsm_buf_write_error,
    Q,
    \count_reg_reg[0]_0 ,
    \count_reg_reg[2]_0 ,
    \msg_length_reg[5] ,
    \count_reg_reg[2]_1 ,
    SR,
    E,
    \echo_symbols_reg[5]_0 ,
    \echo_count_reg[3]_0 ,
    clk,
    rst,
    short_enter_pulse,
    btn_reset_clean,
    sig_previous,
    sig_previous_0,
    btn_dash_clean,
    sig_previous_1,
    btn_dot_clean,
    \msg_length_reg[5]_0 ,
    symbols_reg);
  output fsm_decode_error;
  output fsm_buf_write_en;
  output fsm_buf_write_error;
  output [3:0]Q;
  output \count_reg_reg[0]_0 ;
  output \count_reg_reg[2]_0 ;
  output \msg_length_reg[5] ;
  output \count_reg_reg[2]_1 ;
  output [0:0]SR;
  output [0:0]E;
  output [5:0]\echo_symbols_reg[5]_0 ;
  output [3:0]\echo_count_reg[3]_0 ;
  input clk;
  input rst;
  input short_enter_pulse;
  input btn_reset_clean;
  input sig_previous;
  input sig_previous_0;
  input btn_dash_clean;
  input sig_previous_1;
  input btn_dot_clean;
  input [0:0]\msg_length_reg[5]_0 ;
  input [0:0]symbols_reg;

  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]SR;
  wire btn_dash_clean;
  wire btn_dot_clean;
  wire btn_reset_clean;
  wire buf_write_error_i_1_n_0;
  wire char_ready_i_1_n_0;
  wire clk;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_4_n_0 ;
  wire \count_reg[0]_i_6_n_0 ;
  wire \count_reg_reg[0]_0 ;
  wire \count_reg_reg[2]_0 ;
  wire \count_reg_reg[2]_1 ;
  wire decode_error4_out;
  wire decode_error_i_2_n_0;
  wire decode_error_i_3_n_0;
  wire decode_error_i_4_n_0;
  wire decode_error_i_5_n_0;
  wire decode_error_i_6_n_0;
  wire decode_error_i_7_n_0;
  wire decode_error_i_8_n_0;
  wire [3:0]\echo_count_reg[3]_0 ;
  wire \echo_symbols[5]_i_1_n_0 ;
  wire [5:0]\echo_symbols_reg[5]_0 ;
  wire fsm_buf_write_en;
  wire fsm_buf_write_error;
  wire fsm_decode_error;
  wire \msg_length_reg[5] ;
  wire [0:0]\msg_length_reg[5]_0 ;
  wire [3:0]p_0_in;
  wire rst;
  wire short_enter_pulse;
  wire sig_previous;
  wire sig_previous_0;
  wire sig_previous_1;
  wire [0:0]symbols_reg;
  wire \symbols_reg[0]_i_1_n_0 ;
  wire \symbols_reg[1]_i_1_n_0 ;
  wire \symbols_reg[1]_i_2_n_0 ;
  wire \symbols_reg[2]_i_1_n_0 ;
  wire \symbols_reg[2]_i_2_n_0 ;
  wire \symbols_reg[3]_i_1_n_0 ;
  wire \symbols_reg[3]_i_2_n_0 ;
  wire \symbols_reg[3]_i_3_n_0 ;
  wire \symbols_reg[4]_i_1_n_0 ;
  wire \symbols_reg[5]_i_1_n_0 ;
  wire \symbols_reg[5]_i_3_n_0 ;
  wire \symbols_reg_reg_n_0_[0] ;
  wire \symbols_reg_reg_n_0_[1] ;
  wire \symbols_reg_reg_n_0_[2] ;
  wire \symbols_reg_reg_n_0_[3] ;
  wire \symbols_reg_reg_n_0_[4] ;
  wire \symbols_reg_reg_n_0_[5] ;

  LUT3 #(
    .INIT(8'hB8)) 
    buf_write_error_i_1
       (.I0(decode_error_i_2_n_0),
        .I1(\echo_symbols[5]_i_1_n_0 ),
        .I2(fsm_buf_write_error),
        .O(buf_write_error_i_1_n_0));
  FDRE buf_write_error_reg
       (.C(clk),
        .CE(1'b1),
        .D(buf_write_error_i_1_n_0),
        .Q(fsm_buf_write_error),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    char_ready_i_1
       (.I0(\echo_symbols[5]_i_1_n_0 ),
        .I1(rst),
        .O(char_ready_i_1_n_0));
  FDRE char_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(char_ready_i_1_n_0),
        .Q(fsm_buf_write_en),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF88888F88)) 
    \count_reg[0]_i_1 
       (.I0(\count_reg[0]_i_4_n_0 ),
        .I1(short_enter_pulse),
        .I2(\count_reg_reg[0]_0 ),
        .I3(btn_reset_clean),
        .I4(sig_previous),
        .I5(rst),
        .O(\count_reg[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_reg[0]_i_2 
       (.I0(\count_reg[0]_i_4_n_0 ),
        .O(\count_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_reg[0]_i_3 
       (.I0(Q[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0BBFFFF)) 
    \count_reg[0]_i_4 
       (.I0(sig_previous_0),
        .I1(btn_dash_clean),
        .I2(sig_previous_1),
        .I3(btn_dot_clean),
        .I4(\count_reg[0]_i_6_n_0 ),
        .I5(Q[3]),
        .O(\count_reg[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \count_reg[0]_i_5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\count_reg_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count_reg[0]_i_6 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\count_reg[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_reg[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_reg[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count_reg[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(p_0_in[3]));
  FDRE \count_reg_reg[0] 
       (.C(clk),
        .CE(\count_reg[0]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(Q[0]),
        .R(\count_reg[0]_i_1_n_0 ));
  FDRE \count_reg_reg[1] 
       (.C(clk),
        .CE(\count_reg[0]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(\count_reg[0]_i_1_n_0 ));
  FDRE \count_reg_reg[2] 
       (.C(clk),
        .CE(\count_reg[0]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(Q[2]),
        .R(\count_reg[0]_i_1_n_0 ));
  FDRE \count_reg_reg[3] 
       (.C(clk),
        .CE(\count_reg[0]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(Q[3]),
        .R(\count_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h40)) 
    decode_error_i_1
       (.I0(rst),
        .I1(\echo_symbols[5]_i_1_n_0 ),
        .I2(decode_error_i_2_n_0),
        .O(decode_error4_out));
  LUT6 #(
    .INIT(64'h5455545455555555)) 
    decode_error_i_2
       (.I0(\count_reg_reg[0]_0 ),
        .I1(\symbols_reg_reg_n_0_[5] ),
        .I2(Q[3]),
        .I3(decode_error_i_3_n_0),
        .I4(\symbols_reg_reg_n_0_[4] ),
        .I5(decode_error_i_4_n_0),
        .O(decode_error_i_2_n_0));
  LUT6 #(
    .INIT(64'h0800080000000D00)) 
    decode_error_i_3
       (.I0(\symbols_reg_reg_n_0_[2] ),
        .I1(\symbols_reg_reg_n_0_[3] ),
        .I2(decode_error_i_5_n_0),
        .I3(Q[0]),
        .I4(\symbols_reg_reg_n_0_[0] ),
        .I5(\symbols_reg_reg_n_0_[1] ),
        .O(decode_error_i_3_n_0));
  LUT6 #(
    .INIT(64'h44444F4444444444)) 
    decode_error_i_4
       (.I0(\symbols_reg_reg_n_0_[3] ),
        .I1(decode_error_i_6_n_0),
        .I2(decode_error_i_7_n_0),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(decode_error_i_8_n_0),
        .O(decode_error_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hB)) 
    decode_error_i_5
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(decode_error_i_5_n_0));
  LUT6 #(
    .INIT(64'h55550055008F0088)) 
    decode_error_i_6
       (.I0(Q[2]),
        .I1(\symbols_reg_reg_n_0_[0] ),
        .I2(\symbols_reg_reg_n_0_[1] ),
        .I3(\symbols_reg_reg_n_0_[2] ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(decode_error_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00007F00)) 
    decode_error_i_7
       (.I0(\symbols_reg_reg_n_0_[1] ),
        .I1(\symbols_reg_reg_n_0_[2] ),
        .I2(\symbols_reg_reg_n_0_[0] ),
        .I3(Q[0]),
        .I4(\symbols_reg_reg_n_0_[4] ),
        .O(decode_error_i_7_n_0));
  LUT5 #(
    .INIT(32'hBFBFEBFF)) 
    decode_error_i_8
       (.I0(Q[0]),
        .I1(\symbols_reg_reg_n_0_[2] ),
        .I2(\symbols_reg_reg_n_0_[1] ),
        .I3(\symbols_reg_reg_n_0_[3] ),
        .I4(\symbols_reg_reg_n_0_[0] ),
        .O(decode_error_i_8_n_0));
  FDRE decode_error_reg
       (.C(clk),
        .CE(1'b1),
        .D(decode_error4_out),
        .Q(fsm_decode_error),
        .R(1'b0));
  FDRE \echo_count_reg[0] 
       (.C(clk),
        .CE(\echo_symbols[5]_i_1_n_0 ),
        .D(Q[0]),
        .Q(\echo_count_reg[3]_0 [0]),
        .R(rst));
  FDRE \echo_count_reg[1] 
       (.C(clk),
        .CE(\echo_symbols[5]_i_1_n_0 ),
        .D(Q[1]),
        .Q(\echo_count_reg[3]_0 [1]),
        .R(rst));
  FDRE \echo_count_reg[2] 
       (.C(clk),
        .CE(\echo_symbols[5]_i_1_n_0 ),
        .D(Q[2]),
        .Q(\echo_count_reg[3]_0 [2]),
        .R(rst));
  FDRE \echo_count_reg[3] 
       (.C(clk),
        .CE(\echo_symbols[5]_i_1_n_0 ),
        .D(Q[3]),
        .Q(\echo_count_reg[3]_0 [3]),
        .R(rst));
  LUT5 #(
    .INIT(32'h88888088)) 
    \echo_symbols[5]_i_1 
       (.I0(\count_reg[0]_i_4_n_0 ),
        .I1(short_enter_pulse),
        .I2(sig_previous),
        .I3(btn_reset_clean),
        .I4(\count_reg_reg[0]_0 ),
        .O(\echo_symbols[5]_i_1_n_0 ));
  FDRE \echo_symbols_reg[0] 
       (.C(clk),
        .CE(\echo_symbols[5]_i_1_n_0 ),
        .D(\symbols_reg_reg_n_0_[0] ),
        .Q(\echo_symbols_reg[5]_0 [0]),
        .R(rst));
  FDRE \echo_symbols_reg[1] 
       (.C(clk),
        .CE(\echo_symbols[5]_i_1_n_0 ),
        .D(\symbols_reg_reg_n_0_[1] ),
        .Q(\echo_symbols_reg[5]_0 [1]),
        .R(rst));
  FDRE \echo_symbols_reg[2] 
       (.C(clk),
        .CE(\echo_symbols[5]_i_1_n_0 ),
        .D(\symbols_reg_reg_n_0_[2] ),
        .Q(\echo_symbols_reg[5]_0 [2]),
        .R(rst));
  FDRE \echo_symbols_reg[3] 
       (.C(clk),
        .CE(\echo_symbols[5]_i_1_n_0 ),
        .D(\symbols_reg_reg_n_0_[3] ),
        .Q(\echo_symbols_reg[5]_0 [3]),
        .R(rst));
  FDRE \echo_symbols_reg[4] 
       (.C(clk),
        .CE(\echo_symbols[5]_i_1_n_0 ),
        .D(\symbols_reg_reg_n_0_[4] ),
        .Q(\echo_symbols_reg[5]_0 [4]),
        .R(rst));
  FDRE \echo_symbols_reg[5] 
       (.C(clk),
        .CE(\echo_symbols[5]_i_1_n_0 ),
        .D(\symbols_reg_reg_n_0_[5] ),
        .Q(\echo_symbols_reg[5]_0 [5]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \mem_symbols[0][5]_i_2 
       (.I0(\msg_length_reg[5]_0 ),
        .I1(fsm_buf_write_en),
        .I2(\count_reg_reg[2]_1 ),
        .O(\msg_length_reg[5] ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \mem_symbols[28][5]_i_3 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(btn_reset_clean),
        .I5(sig_previous),
        .O(\count_reg_reg[2]_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \msg_length[5]_i_1 
       (.I0(rst),
        .I1(\count_reg_reg[2]_1 ),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \msg_length[5]_i_2 
       (.I0(fsm_buf_write_en),
        .I1(\msg_length_reg[5]_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'hBABB8A88)) 
    \symbols_reg[0]_i_1 
       (.I0(symbols_reg),
        .I1(\count_reg[0]_i_1_n_0 ),
        .I2(\count_reg[0]_i_4_n_0 ),
        .I3(\count_reg_reg[0]_0 ),
        .I4(\symbols_reg_reg_n_0_[0] ),
        .O(\symbols_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \symbols_reg[1]_i_1 
       (.I0(symbols_reg),
        .I1(\count_reg[0]_i_1_n_0 ),
        .I2(\count_reg[0]_i_4_n_0 ),
        .I3(\symbols_reg[1]_i_2_n_0 ),
        .I4(\symbols_reg[3]_i_3_n_0 ),
        .I5(\symbols_reg_reg_n_0_[1] ),
        .O(\symbols_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \symbols_reg[1]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\symbols_reg[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \symbols_reg[2]_i_1 
       (.I0(symbols_reg),
        .I1(\count_reg[0]_i_1_n_0 ),
        .I2(\symbols_reg[2]_i_2_n_0 ),
        .I3(\symbols_reg_reg_n_0_[2] ),
        .O(\symbols_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \symbols_reg[2]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\count_reg[0]_i_4_n_0 ),
        .O(\symbols_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \symbols_reg[3]_i_1 
       (.I0(symbols_reg),
        .I1(\count_reg[0]_i_1_n_0 ),
        .I2(\count_reg[0]_i_4_n_0 ),
        .I3(\symbols_reg[3]_i_2_n_0 ),
        .I4(\symbols_reg[3]_i_3_n_0 ),
        .I5(\symbols_reg_reg_n_0_[3] ),
        .O(\symbols_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \symbols_reg[3]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\symbols_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \symbols_reg[3]_i_3 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\symbols_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBA8888888A)) 
    \symbols_reg[4]_i_1 
       (.I0(symbols_reg),
        .I1(\count_reg[0]_i_1_n_0 ),
        .I2(\symbols_reg[5]_i_3_n_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\symbols_reg_reg_n_0_[4] ),
        .O(\symbols_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88)) 
    \symbols_reg[5]_i_1 
       (.I0(symbols_reg),
        .I1(\count_reg[0]_i_1_n_0 ),
        .I2(\symbols_reg[5]_i_3_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\symbols_reg_reg_n_0_[5] ),
        .O(\symbols_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \symbols_reg[5]_i_3 
       (.I0(\count_reg[0]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(\symbols_reg[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \symbols_reg[5]_i_5 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .O(\count_reg_reg[2]_0 ));
  FDRE \symbols_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\symbols_reg[0]_i_1_n_0 ),
        .Q(\symbols_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \symbols_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\symbols_reg[1]_i_1_n_0 ),
        .Q(\symbols_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \symbols_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\symbols_reg[2]_i_1_n_0 ),
        .Q(\symbols_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \symbols_reg_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\symbols_reg[3]_i_1_n_0 ),
        .Q(\symbols_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \symbols_reg_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\symbols_reg[4]_i_1_n_0 ),
        .Q(\symbols_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \symbols_reg_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\symbols_reg[5]_i_1_n_0 ),
        .Q(\symbols_reg_reg_n_0_[5] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "morse_replay" *) 
module system_morse_top_0_0_morse_replay
   (replay_echo_char_ready,
    replay_active,
    Q,
    \FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[0]_0 ,
    E,
    echo_char_ready_reg_0,
    rst,
    clk,
    \read_idx_reg[0]_0 ,
    echo_done,
    \FSM_sequential_state_reg[2] ,
    fsm_buf_write_en,
    uart_data_valid,
    replay_active_reg_0);
  output replay_echo_char_ready;
  output replay_active;
  output [4:0]Q;
  output [0:0]\FSM_sequential_state_reg[1]_0 ;
  output \FSM_sequential_state_reg[0]_0 ;
  output [0:0]E;
  output echo_char_ready_reg_0;
  input rst;
  input clk;
  input \read_idx_reg[0]_0 ;
  input echo_done;
  input [0:0]\FSM_sequential_state_reg[2] ;
  input fsm_buf_write_en;
  input uart_data_valid;
  input [5:0]replay_active_reg_0;

  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_10_n_0 ;
  wire \FSM_sequential_state[1]_i_11_n_0 ;
  wire \FSM_sequential_state[1]_i_12_n_0 ;
  wire \FSM_sequential_state[1]_i_13_n_0 ;
  wire \FSM_sequential_state[1]_i_14_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_7_n_0 ;
  wire \FSM_sequential_state[1]_i_8_n_0 ;
  wire \FSM_sequential_state[1]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [0:0]\FSM_sequential_state_reg[1]_0 ;
  wire [0:0]\FSM_sequential_state_reg[2] ;
  wire [4:0]Q;
  wire clk;
  wire echo_char_ready_i_1_n_0;
  wire echo_char_ready_reg_0;
  wire echo_done;
  wire fsm_buf_write_en;
  wire [0:0]gap_cnt;
  wire [25:1]gap_cnt0;
  wire gap_cnt0_carry__0_n_0;
  wire gap_cnt0_carry__0_n_1;
  wire gap_cnt0_carry__0_n_2;
  wire gap_cnt0_carry__0_n_3;
  wire gap_cnt0_carry__1_n_0;
  wire gap_cnt0_carry__1_n_1;
  wire gap_cnt0_carry__1_n_2;
  wire gap_cnt0_carry__1_n_3;
  wire gap_cnt0_carry__2_n_0;
  wire gap_cnt0_carry__2_n_1;
  wire gap_cnt0_carry__2_n_2;
  wire gap_cnt0_carry__2_n_3;
  wire gap_cnt0_carry__3_n_0;
  wire gap_cnt0_carry__3_n_1;
  wire gap_cnt0_carry__3_n_2;
  wire gap_cnt0_carry__3_n_3;
  wire gap_cnt0_carry__4_n_0;
  wire gap_cnt0_carry__4_n_1;
  wire gap_cnt0_carry__4_n_2;
  wire gap_cnt0_carry__4_n_3;
  wire gap_cnt0_carry_n_0;
  wire gap_cnt0_carry_n_1;
  wire gap_cnt0_carry_n_2;
  wire gap_cnt0_carry_n_3;
  wire \gap_cnt[0]_i_1_n_0 ;
  wire \gap_cnt[10]_i_1_n_0 ;
  wire \gap_cnt[11]_i_1_n_0 ;
  wire \gap_cnt[12]_i_1_n_0 ;
  wire \gap_cnt[13]_i_1_n_0 ;
  wire \gap_cnt[14]_i_1_n_0 ;
  wire \gap_cnt[15]_i_1_n_0 ;
  wire \gap_cnt[16]_i_1_n_0 ;
  wire \gap_cnt[17]_i_1_n_0 ;
  wire \gap_cnt[18]_i_1_n_0 ;
  wire \gap_cnt[19]_i_1_n_0 ;
  wire \gap_cnt[1]_i_1_n_0 ;
  wire \gap_cnt[20]_i_1_n_0 ;
  wire \gap_cnt[21]_i_1_n_0 ;
  wire \gap_cnt[22]_i_1_n_0 ;
  wire \gap_cnt[23]_i_1_n_0 ;
  wire \gap_cnt[24]_i_1_n_0 ;
  wire \gap_cnt[25]_i_2_n_0 ;
  wire \gap_cnt[2]_i_1_n_0 ;
  wire \gap_cnt[3]_i_1_n_0 ;
  wire \gap_cnt[4]_i_1_n_0 ;
  wire \gap_cnt[5]_i_1_n_0 ;
  wire \gap_cnt[6]_i_1_n_0 ;
  wire \gap_cnt[7]_i_1_n_0 ;
  wire \gap_cnt[8]_i_1_n_0 ;
  wire \gap_cnt[9]_i_1_n_0 ;
  wire \gap_cnt_reg_n_0_[0] ;
  wire \gap_cnt_reg_n_0_[10] ;
  wire \gap_cnt_reg_n_0_[11] ;
  wire \gap_cnt_reg_n_0_[12] ;
  wire \gap_cnt_reg_n_0_[13] ;
  wire \gap_cnt_reg_n_0_[14] ;
  wire \gap_cnt_reg_n_0_[15] ;
  wire \gap_cnt_reg_n_0_[16] ;
  wire \gap_cnt_reg_n_0_[17] ;
  wire \gap_cnt_reg_n_0_[18] ;
  wire \gap_cnt_reg_n_0_[19] ;
  wire \gap_cnt_reg_n_0_[1] ;
  wire \gap_cnt_reg_n_0_[20] ;
  wire \gap_cnt_reg_n_0_[21] ;
  wire \gap_cnt_reg_n_0_[22] ;
  wire \gap_cnt_reg_n_0_[23] ;
  wire \gap_cnt_reg_n_0_[24] ;
  wire \gap_cnt_reg_n_0_[25] ;
  wire \gap_cnt_reg_n_0_[2] ;
  wire \gap_cnt_reg_n_0_[3] ;
  wire \gap_cnt_reg_n_0_[4] ;
  wire \gap_cnt_reg_n_0_[5] ;
  wire \gap_cnt_reg_n_0_[6] ;
  wire \gap_cnt_reg_n_0_[7] ;
  wire \gap_cnt_reg_n_0_[8] ;
  wire \gap_cnt_reg_n_0_[9] ;
  wire \read_idx[0]_i_1_n_0 ;
  wire \read_idx[1]_i_1_n_0 ;
  wire \read_idx[2]_i_1_n_0 ;
  wire \read_idx[3]_i_1_n_0 ;
  wire \read_idx[4]_i_1_n_0 ;
  wire \read_idx[4]_i_2_n_0 ;
  wire \read_idx_reg[0]_0 ;
  wire replay_active;
  wire replay_active_i_1_n_0;
  wire [5:0]replay_active_reg_0;
  wire replay_echo_char_ready;
  wire rst;
  wire [0:0]state;
  wire uart_data_valid;
  wire [3:0]NLW_gap_cnt0_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_gap_cnt0_carry__5_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hAA72AA70)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(\FSM_sequential_state[1]_i_4_n_0 ),
        .I2(\read_idx_reg[0]_0 ),
        .I3(state),
        .I4(echo_done),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00010101FFFFFFFF)) 
    \FSM_sequential_state[1]_i_10 
       (.I0(\gap_cnt_reg_n_0_[9] ),
        .I1(\gap_cnt_reg_n_0_[7] ),
        .I2(\gap_cnt_reg_n_0_[8] ),
        .I3(\gap_cnt_reg_n_0_[6] ),
        .I4(\FSM_sequential_state[1]_i_14_n_0 ),
        .I5(\gap_cnt_reg_n_0_[10] ),
        .O(\FSM_sequential_state[1]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state[1]_i_11 
       (.I0(\gap_cnt_reg_n_0_[20] ),
        .I1(\gap_cnt_reg_n_0_[21] ),
        .I2(\gap_cnt_reg_n_0_[18] ),
        .I3(\gap_cnt_reg_n_0_[19] ),
        .O(\FSM_sequential_state[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4767777F0008CFEF)) 
    \FSM_sequential_state[1]_i_12 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(replay_active_reg_0[1]),
        .I3(replay_active_reg_0[0]),
        .I4(replay_active_reg_0[2]),
        .I5(Q[2]),
        .O(\FSM_sequential_state[1]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state[1]_i_13 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\FSM_sequential_state[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \FSM_sequential_state[1]_i_14 
       (.I0(\gap_cnt_reg_n_0_[5] ),
        .I1(\gap_cnt_reg_n_0_[2] ),
        .I2(\gap_cnt_reg_n_0_[3] ),
        .I3(\gap_cnt_reg_n_0_[0] ),
        .I4(\gap_cnt_reg_n_0_[4] ),
        .I5(\gap_cnt_reg_n_0_[1] ),
        .O(\FSM_sequential_state[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h404FF0F0454FF0F0)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(\read_idx_reg[0]_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(state),
        .I3(\FSM_sequential_state[1]_i_4_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_0 ),
        .I5(echo_done),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0100FFFF)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\gap_cnt_reg_n_0_[23] ),
        .I1(\gap_cnt_reg_n_0_[22] ),
        .I2(\gap_cnt_reg_n_0_[24] ),
        .I3(\FSM_sequential_state[1]_i_6_n_0 ),
        .I4(\gap_cnt_reg_n_0_[25] ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h40FD00C0)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(replay_active_reg_0[4]),
        .I1(\FSM_sequential_state[1]_i_7_n_0 ),
        .I2(Q[4]),
        .I3(replay_active_reg_0[5]),
        .I4(\FSM_sequential_state[1]_i_8_n_0 ),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10555555)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(\FSM_sequential_state[1]_i_9_n_0 ),
        .I1(\gap_cnt_reg_n_0_[11] ),
        .I2(\FSM_sequential_state[1]_i_10_n_0 ),
        .I3(\gap_cnt_reg_n_0_[12] ),
        .I4(\gap_cnt_reg_n_0_[13] ),
        .I5(\FSM_sequential_state[1]_i_11_n_0 ),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_state[1]_i_7 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\FSM_sequential_state[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h28BE28BE3FBFE8FE)) 
    \FSM_sequential_state[1]_i_8 
       (.I0(\FSM_sequential_state[1]_i_12_n_0 ),
        .I1(\FSM_sequential_state[1]_i_13_n_0 ),
        .I2(Q[3]),
        .I3(replay_active_reg_0[3]),
        .I4(Q[4]),
        .I5(replay_active_reg_0[4]),
        .O(\FSM_sequential_state[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[1]_i_9 
       (.I0(\gap_cnt_reg_n_0_[16] ),
        .I1(\gap_cnt_reg_n_0_[17] ),
        .I2(\gap_cnt_reg_n_0_[14] ),
        .I3(\gap_cnt_reg_n_0_[15] ),
        .O(\FSM_sequential_state[1]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\FSM_sequential_state_reg[2] ),
        .I1(fsm_buf_write_en),
        .I2(replay_active),
        .I3(replay_echo_char_ready),
        .O(\FSM_sequential_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "ST_TRIGGER:01,ST_WAIT_DONE:10,ST_INTER_GAP:11,ST_IDLE:00" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state),
        .R(rst));
  (* FSM_ENCODED_STATES = "ST_TRIGGER:01,ST_WAIT_DONE:10,ST_INTER_GAP:11,ST_IDLE:00" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(\FSM_sequential_state_reg[1]_0 ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \ascii_data[6]_i_1 
       (.I0(fsm_buf_write_en),
        .I1(replay_active),
        .I2(replay_echo_char_ready),
        .I3(uart_data_valid),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    echo_char_ready_i_1
       (.I0(state),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .O(echo_char_ready_i_1_n_0));
  FDRE echo_char_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(echo_char_ready_i_1_n_0),
        .Q(replay_echo_char_ready),
        .R(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gap_cnt0_carry
       (.CI(1'b0),
        .CO({gap_cnt0_carry_n_0,gap_cnt0_carry_n_1,gap_cnt0_carry_n_2,gap_cnt0_carry_n_3}),
        .CYINIT(\gap_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(gap_cnt0[4:1]),
        .S({\gap_cnt_reg_n_0_[4] ,\gap_cnt_reg_n_0_[3] ,\gap_cnt_reg_n_0_[2] ,\gap_cnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gap_cnt0_carry__0
       (.CI(gap_cnt0_carry_n_0),
        .CO({gap_cnt0_carry__0_n_0,gap_cnt0_carry__0_n_1,gap_cnt0_carry__0_n_2,gap_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(gap_cnt0[8:5]),
        .S({\gap_cnt_reg_n_0_[8] ,\gap_cnt_reg_n_0_[7] ,\gap_cnt_reg_n_0_[6] ,\gap_cnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gap_cnt0_carry__1
       (.CI(gap_cnt0_carry__0_n_0),
        .CO({gap_cnt0_carry__1_n_0,gap_cnt0_carry__1_n_1,gap_cnt0_carry__1_n_2,gap_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(gap_cnt0[12:9]),
        .S({\gap_cnt_reg_n_0_[12] ,\gap_cnt_reg_n_0_[11] ,\gap_cnt_reg_n_0_[10] ,\gap_cnt_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gap_cnt0_carry__2
       (.CI(gap_cnt0_carry__1_n_0),
        .CO({gap_cnt0_carry__2_n_0,gap_cnt0_carry__2_n_1,gap_cnt0_carry__2_n_2,gap_cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(gap_cnt0[16:13]),
        .S({\gap_cnt_reg_n_0_[16] ,\gap_cnt_reg_n_0_[15] ,\gap_cnt_reg_n_0_[14] ,\gap_cnt_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gap_cnt0_carry__3
       (.CI(gap_cnt0_carry__2_n_0),
        .CO({gap_cnt0_carry__3_n_0,gap_cnt0_carry__3_n_1,gap_cnt0_carry__3_n_2,gap_cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(gap_cnt0[20:17]),
        .S({\gap_cnt_reg_n_0_[20] ,\gap_cnt_reg_n_0_[19] ,\gap_cnt_reg_n_0_[18] ,\gap_cnt_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gap_cnt0_carry__4
       (.CI(gap_cnt0_carry__3_n_0),
        .CO({gap_cnt0_carry__4_n_0,gap_cnt0_carry__4_n_1,gap_cnt0_carry__4_n_2,gap_cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(gap_cnt0[24:21]),
        .S({\gap_cnt_reg_n_0_[24] ,\gap_cnt_reg_n_0_[23] ,\gap_cnt_reg_n_0_[22] ,\gap_cnt_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 gap_cnt0_carry__5
       (.CI(gap_cnt0_carry__4_n_0),
        .CO(NLW_gap_cnt0_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_gap_cnt0_carry__5_O_UNCONNECTED[3:1],gap_cnt0[25]}),
        .S({1'b0,1'b0,1'b0,\gap_cnt_reg_n_0_[25] }));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \gap_cnt[0]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(\gap_cnt_reg_n_0_[0] ),
        .O(\gap_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[10]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[10]),
        .O(\gap_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[11]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[11]),
        .O(\gap_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[12]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[12]),
        .O(\gap_cnt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[13]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[13]),
        .O(\gap_cnt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[14]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[14]),
        .O(\gap_cnt[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[15]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[15]),
        .O(\gap_cnt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[16]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[16]),
        .O(\gap_cnt[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[17]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[17]),
        .O(\gap_cnt[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[18]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[18]),
        .O(\gap_cnt[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[19]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[19]),
        .O(\gap_cnt[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[1]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[1]),
        .O(\gap_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[20]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[20]),
        .O(\gap_cnt[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[21]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[21]),
        .O(\gap_cnt[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[22]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[22]),
        .O(\gap_cnt[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[23]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[23]),
        .O(\gap_cnt[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[24]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[24]),
        .O(\gap_cnt[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA2A0)) 
    \gap_cnt[25]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(\FSM_sequential_state[1]_i_4_n_0 ),
        .I2(state),
        .I3(echo_done),
        .O(gap_cnt));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[25]_i_2 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[25]),
        .O(\gap_cnt[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[2]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[2]),
        .O(\gap_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[3]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[3]),
        .O(\gap_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[4]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[4]),
        .O(\gap_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[5]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[5]),
        .O(\gap_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[6]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[6]),
        .O(\gap_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[7]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[7]),
        .O(\gap_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[8]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[8]),
        .O(\gap_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gap_cnt[9]_i_1 
       (.I0(state),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(gap_cnt0[9]),
        .O(\gap_cnt[9]_i_1_n_0 ));
  FDRE \gap_cnt_reg[0] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[0]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[0] ),
        .R(rst));
  FDRE \gap_cnt_reg[10] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[10]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[10] ),
        .R(rst));
  FDRE \gap_cnt_reg[11] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[11]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[11] ),
        .R(rst));
  FDRE \gap_cnt_reg[12] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[12]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[12] ),
        .R(rst));
  FDRE \gap_cnt_reg[13] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[13]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[13] ),
        .R(rst));
  FDRE \gap_cnt_reg[14] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[14]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[14] ),
        .R(rst));
  FDRE \gap_cnt_reg[15] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[15]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[15] ),
        .R(rst));
  FDRE \gap_cnt_reg[16] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[16]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[16] ),
        .R(rst));
  FDRE \gap_cnt_reg[17] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[17]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[17] ),
        .R(rst));
  FDRE \gap_cnt_reg[18] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[18]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[18] ),
        .R(rst));
  FDRE \gap_cnt_reg[19] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[19]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[19] ),
        .R(rst));
  FDRE \gap_cnt_reg[1] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[1]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[1] ),
        .R(rst));
  FDRE \gap_cnt_reg[20] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[20]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[20] ),
        .R(rst));
  FDRE \gap_cnt_reg[21] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[21]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[21] ),
        .R(rst));
  FDRE \gap_cnt_reg[22] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[22]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[22] ),
        .R(rst));
  FDRE \gap_cnt_reg[23] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[23]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[23] ),
        .R(rst));
  FDRE \gap_cnt_reg[24] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[24]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[24] ),
        .R(rst));
  FDRE \gap_cnt_reg[25] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[25]_i_2_n_0 ),
        .Q(\gap_cnt_reg_n_0_[25] ),
        .R(rst));
  FDRE \gap_cnt_reg[2] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[2]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[2] ),
        .R(rst));
  FDRE \gap_cnt_reg[3] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[3]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[3] ),
        .R(rst));
  FDRE \gap_cnt_reg[4] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[4]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[4] ),
        .R(rst));
  FDRE \gap_cnt_reg[5] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[5]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[5] ),
        .R(rst));
  FDRE \gap_cnt_reg[6] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[6]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[6] ),
        .R(rst));
  FDRE \gap_cnt_reg[7] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[7]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[7] ),
        .R(rst));
  FDRE \gap_cnt_reg[8] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[8]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[8] ),
        .R(rst));
  FDRE \gap_cnt_reg[9] 
       (.C(clk),
        .CE(gap_cnt),
        .D(\gap_cnt[9]_i_1_n_0 ),
        .Q(\gap_cnt_reg_n_0_[9] ),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \read_idx[0]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(Q[0]),
        .O(\read_idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \read_idx[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\FSM_sequential_state_reg[1]_0 ),
        .O(\read_idx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \read_idx[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .O(\read_idx[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h7F800000)) 
    \read_idx[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\FSM_sequential_state_reg[1]_0 ),
        .O(\read_idx[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA0A)) 
    \read_idx[4]_i_1 
       (.I0(\read_idx_reg[0]_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .I2(state),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .O(\read_idx[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \read_idx[4]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\FSM_sequential_state_reg[1]_0 ),
        .O(\read_idx[4]_i_2_n_0 ));
  FDRE \read_idx_reg[0] 
       (.C(clk),
        .CE(\read_idx[4]_i_1_n_0 ),
        .D(\read_idx[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(rst));
  FDRE \read_idx_reg[1] 
       (.C(clk),
        .CE(\read_idx[4]_i_1_n_0 ),
        .D(\read_idx[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(rst));
  FDRE \read_idx_reg[2] 
       (.C(clk),
        .CE(\read_idx[4]_i_1_n_0 ),
        .D(\read_idx[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(rst));
  FDRE \read_idx_reg[3] 
       (.C(clk),
        .CE(\read_idx[4]_i_1_n_0 ),
        .D(\read_idx[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(rst));
  FDRE \read_idx_reg[4] 
       (.C(clk),
        .CE(\read_idx[4]_i_1_n_0 ),
        .D(\read_idx[4]_i_2_n_0 ),
        .Q(Q[4]),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFF2FFFA00D00050)) 
    replay_active_i_1
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(\FSM_sequential_state[1]_i_4_n_0 ),
        .I2(\read_idx_reg[0]_0 ),
        .I3(state),
        .I4(echo_done),
        .I5(replay_active),
        .O(replay_active_i_1_n_0));
  FDRE replay_active_reg
       (.C(clk),
        .CE(1'b1),
        .D(replay_active_i_1_n_0),
        .Q(replay_active),
        .R(rst));
  LUT3 #(
    .INIT(8'hB8)) 
    rgb_b_i_2
       (.I0(replay_echo_char_ready),
        .I1(replay_active),
        .I2(fsm_buf_write_en),
        .O(echo_char_ready_reg_0));
endmodule

(* ORIG_REF_NAME = "morse_top" *) 
module system_morse_top_0_0_morse_top
   (out,
    uart_ascii_data,
    uart_data_valid,
    rgb_r_n,
    rgb_g_n,
    rgb_b_n,
    clk,
    button0,
    button1,
    button2,
    button3,
    ps_ack);
  output [3:0]out;
  output [6:0]uart_ascii_data;
  output uart_data_valid;
  output rgb_r_n;
  output rgb_g_n;
  output rgb_b_n;
  input clk;
  input button0;
  input button1;
  input button2;
  input button3;
  input ps_ack;

  wire ascii_data0;
  wire btn_dash_clean;
  wire btn_dot_clean;
  wire btn_enter_clean;
  wire btn_reset_clean;
  wire button0;
  wire button1;
  wire button2;
  wire button3;
  wire clk;
  wire [3:0]echo_count_mux;
  wire echo_done;
  wire echo_error_mux;
  wire [5:0]echo_symbols_mux;
  wire [3:0]fsm_buf_write_count;
  wire fsm_buf_write_en;
  wire fsm_buf_write_error;
  wire [5:0]fsm_buf_write_symbols;
  wire fsm_decode_error;
  wire long_enter_pulse;
  wire long_fired;
  wire [5:0]msg_length;
  wire [3:0]out;
  wire [2:0]p_0_in__2;
  wire \por_cnt[3]_i_1_n_0 ;
  wire [3:0]por_cnt_reg;
  wire ps_ack;
  wire replay_active;
  wire replay_echo_char_ready;
  wire [4:0]replay_read_idx;
  wire rgb_b_n;
  wire rgb_g_n;
  wire rgb_r_n;
  wire rst;
  wire sel;
  wire short_enter_pulse;
  wire sig_previous;
  wire sig_previous_0;
  wire sig_previous_1;
  wire [0:0]state;
  wire [1:1]state_2;
  wire [4:4]symbols_reg;
  wire u_buffer_n_0;
  wire u_buffer_n_19;
  wire u_buffer_n_27;
  wire u_buffer_n_7;
  wire u_db_enter_n_2;
  wire u_decoder_uart_n_0;
  wire u_decoder_uart_n_1;
  wire u_decoder_uart_n_10;
  wire u_decoder_uart_n_11;
  wire u_decoder_uart_n_12;
  wire u_decoder_uart_n_2;
  wire u_decoder_uart_n_3;
  wire u_decoder_uart_n_4;
  wire u_decoder_uart_n_5;
  wire u_decoder_uart_n_6;
  wire u_decoder_uart_n_7;
  wire u_decoder_uart_n_8;
  wire u_decoder_uart_n_9;
  wire u_fsm_n_10;
  wire u_fsm_n_11;
  wire u_fsm_n_7;
  wire u_fsm_n_8;
  wire u_fsm_n_9;
  wire u_long_press_n_2;
  wire u_replay_n_10;
  wire u_replay_n_8;
  wire [6:0]uart_ascii_char;
  wire [6:0]uart_ascii_data;
  wire uart_data_valid;
  wire write_ptr0;

  LUT1 #(
    .INIT(2'h1)) 
    \por_cnt[0]_i_1 
       (.I0(por_cnt_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \por_cnt[1]_i_1 
       (.I0(por_cnt_reg[0]),
        .I1(por_cnt_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \por_cnt[2]_i_1 
       (.I0(por_cnt_reg[2]),
        .I1(por_cnt_reg[1]),
        .I2(por_cnt_reg[0]),
        .O(p_0_in__2[2]));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \por_cnt[3]_i_1 
       (.I0(por_cnt_reg[3]),
        .I1(por_cnt_reg[0]),
        .I2(por_cnt_reg[1]),
        .I3(por_cnt_reg[2]),
        .O(\por_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(p_0_in__2[0]),
        .Q(por_cnt_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(p_0_in__2[1]),
        .Q(por_cnt_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(p_0_in__2[2]),
        .Q(por_cnt_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\por_cnt[3]_i_1_n_0 ),
        .Q(por_cnt_reg[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    rst_i_1
       (.I0(por_cnt_reg[3]),
        .I1(por_cnt_reg[0]),
        .I2(por_cnt_reg[1]),
        .I3(por_cnt_reg[2]),
        .O(sel));
  FDRE #(
    .INIT(1'b1)) 
    rst_reg
       (.C(clk),
        .CE(1'b1),
        .D(sel),
        .Q(rst),
        .R(1'b0));
  system_morse_top_0_0_axi_pl_bridge u_axi_bridge
       (.D(uart_ascii_char),
        .E(ascii_data0),
        .clk(clk),
        .fsm_buf_write_en(fsm_buf_write_en),
        .ps_ack(ps_ack),
        .replay_active(replay_active),
        .replay_echo_char_ready(replay_echo_char_ready),
        .rst(rst),
        .uart_ascii_data(uart_ascii_data),
        .uart_data_valid(uart_data_valid));
  system_morse_top_0_0_message_buffer u_buffer
       (.D(uart_ascii_char),
        .E(write_ptr0),
        .Q(msg_length),
        .SR(u_fsm_n_11),
        .\ascii_data_reg[0] (u_decoder_uart_n_10),
        .\ascii_data_reg[0]_0 (u_decoder_uart_n_1),
        .\ascii_data_reg[1] (u_decoder_uart_n_11),
        .\ascii_data_reg[1]_0 (u_decoder_uart_n_2),
        .\ascii_data_reg[2] (u_decoder_uart_n_12),
        .\ascii_data_reg[2]_0 (u_decoder_uart_n_3),
        .\ascii_data_reg[3] (u_decoder_uart_n_9),
        .\ascii_data_reg[3]_0 (u_decoder_uart_n_4),
        .\ascii_data_reg[4] (u_decoder_uart_n_6),
        .\ascii_data_reg[4]_0 (u_decoder_uart_n_5),
        .\ascii_data_reg[5] (u_decoder_uart_n_8),
        .\ascii_data_reg[5]_0 (u_decoder_uart_n_7),
        .\ascii_data_reg[6] (u_decoder_uart_n_0),
        .clk(clk),
        .echo_count_mux(echo_count_mux),
        .echo_error_mux(echo_error_mux),
        .echo_symbols_mux(echo_symbols_mux),
        .error_latched_reg(replay_read_idx),
        .fsm_buf_write_en(fsm_buf_write_en),
        .fsm_buf_write_error(fsm_buf_write_error),
        .fsm_decode_error(fsm_decode_error),
        .long_enter_pulse(long_enter_pulse),
        .long_pulse_reg(u_buffer_n_27),
        .\mem_count_reg[0][3]_0 (fsm_buf_write_count),
        .\mem_error_reg[28]_0 (u_fsm_n_10),
        .\mem_error_reg[9]_0 (u_fsm_n_9),
        .\mem_symbols_reg[0][5]_0 (fsm_buf_write_symbols),
        .\read_idx_reg[4] (u_buffer_n_0),
        .\read_idx_reg[4]_0 (u_buffer_n_7),
        .\read_idx_reg[4]_1 (u_buffer_n_19),
        .replay_active(replay_active),
        .rst(rst),
        .state(state_2));
  system_morse_top_0_0_debounce u_db_dash
       (.btn_dash_clean(btn_dash_clean),
        .button1(button1),
        .clk(clk),
        .rst(rst));
  system_morse_top_0_0_debounce_0 u_db_dot
       (.btn_dot_clean(btn_dot_clean),
        .button0(button0),
        .clk(clk),
        .rst(rst));
  system_morse_top_0_0_debounce_1 u_db_enter
       (.btn_enter_clean(btn_enter_clean),
        .button3(button3),
        .clk(clk),
        .long_fired(long_fired),
        .long_pulse_reg(u_long_press_n_2),
        .rst(rst),
        .rst_reg(u_db_enter_n_2));
  system_morse_top_0_0_debounce_2 u_db_reset
       (.btn_reset_clean(btn_reset_clean),
        .button2(button2),
        .clk(clk),
        .rst(rst));
  system_morse_top_0_0_morse_decoder_table u_decoder_uart
       (.\ascii_data_reg[3] (u_buffer_n_0),
        .\ascii_data_reg[5] (u_buffer_n_7),
        .echo_count_mux({echo_count_mux[2],echo_count_mux[0]}),
        .echo_symbols_mux({echo_symbols_mux[5],echo_symbols_mux[3:0]}),
        .\read_idx_reg[4] (u_decoder_uart_n_0),
        .\read_idx_reg[4]_0 (u_decoder_uart_n_1),
        .\read_idx_reg[4]_1 (u_decoder_uart_n_2),
        .\read_idx_reg[4]_10 (u_decoder_uart_n_11),
        .\read_idx_reg[4]_11 (u_decoder_uart_n_12),
        .\read_idx_reg[4]_2 (u_decoder_uart_n_3),
        .\read_idx_reg[4]_3 (u_decoder_uart_n_4),
        .\read_idx_reg[4]_4 (u_decoder_uart_n_5),
        .\read_idx_reg[4]_5 (u_decoder_uart_n_6),
        .\read_idx_reg[4]_6 (u_decoder_uart_n_7),
        .\read_idx_reg[4]_7 (u_decoder_uart_n_8),
        .\read_idx_reg[4]_8 (u_decoder_uart_n_9),
        .\read_idx_reg[4]_9 (u_decoder_uart_n_10));
  system_morse_top_0_0_morse_echo u_echo
       (.D(echo_symbols_mux),
        .\FSM_sequential_state_reg[0]_0 (state),
        .\FSM_sequential_state_reg[2]_0 (u_replay_n_8),
        .clk(clk),
        .\count_latched_reg[3]_0 (echo_count_mux),
        .echo_done(echo_done),
        .echo_error_mux(echo_error_mux),
        .fsm_buf_write_en(fsm_buf_write_en),
        .replay_active(replay_active),
        .replay_echo_char_ready(replay_echo_char_ready),
        .rgb_b_n(rgb_b_n),
        .rgb_b_reg_0(u_buffer_n_19),
        .rgb_b_reg_1(u_replay_n_10),
        .rgb_g_n(rgb_g_n),
        .rgb_r_n(rgb_r_n),
        .rst(rst));
  system_morse_top_0_0_edge_detect u_edge_dash
       (.btn_dash_clean(btn_dash_clean),
        .clk(clk),
        .rst(rst),
        .sig_previous(sig_previous));
  system_morse_top_0_0_edge_detect_3 u_edge_dot
       (.btn_dot_clean(btn_dot_clean),
        .clk(clk),
        .rst(rst),
        .sig_previous(sig_previous_0));
  system_morse_top_0_0_edge_detect_4 u_edge_reset
       (.btn_dash_clean(btn_dash_clean),
        .btn_dot_clean(btn_dot_clean),
        .btn_reset_clean(btn_reset_clean),
        .clk(clk),
        .rst(rst),
        .sig_previous(sig_previous_1),
        .sig_previous_0(sig_previous),
        .sig_previous_1(sig_previous_0),
        .symbols_reg(symbols_reg),
        .\symbols_reg[5]_i_2_0 (u_fsm_n_7),
        .\symbols_reg_reg[5] (u_fsm_n_8));
  system_morse_top_0_0_morse_fsm u_fsm
       (.E(write_ptr0),
        .Q(out),
        .SR(u_fsm_n_11),
        .btn_dash_clean(btn_dash_clean),
        .btn_dot_clean(btn_dot_clean),
        .btn_reset_clean(btn_reset_clean),
        .clk(clk),
        .\count_reg_reg[0]_0 (u_fsm_n_7),
        .\count_reg_reg[2]_0 (u_fsm_n_8),
        .\count_reg_reg[2]_1 (u_fsm_n_10),
        .\echo_count_reg[3]_0 (fsm_buf_write_count),
        .\echo_symbols_reg[5]_0 (fsm_buf_write_symbols),
        .fsm_buf_write_en(fsm_buf_write_en),
        .fsm_buf_write_error(fsm_buf_write_error),
        .fsm_decode_error(fsm_decode_error),
        .\msg_length_reg[5] (u_fsm_n_9),
        .\msg_length_reg[5]_0 (msg_length[5]),
        .rst(rst),
        .short_enter_pulse(short_enter_pulse),
        .sig_previous(sig_previous_1),
        .sig_previous_0(sig_previous),
        .sig_previous_1(sig_previous_0),
        .symbols_reg(symbols_reg));
  system_morse_top_0_0_long_press_detect u_long_press
       (.btn_enter_clean(btn_enter_clean),
        .clk(clk),
        .\hold_cnt_reg[0]_0 (u_db_enter_n_2),
        .\hold_cnt_reg[22]_0 (u_long_press_n_2),
        .long_enter_pulse(long_enter_pulse),
        .long_fired(long_fired),
        .rst(rst),
        .short_enter_pulse(short_enter_pulse));
  system_morse_top_0_0_morse_replay u_replay
       (.E(ascii_data0),
        .\FSM_sequential_state_reg[0]_0 (u_replay_n_8),
        .\FSM_sequential_state_reg[1]_0 (state_2),
        .\FSM_sequential_state_reg[2] (state),
        .Q(replay_read_idx),
        .clk(clk),
        .echo_char_ready_reg_0(u_replay_n_10),
        .echo_done(echo_done),
        .fsm_buf_write_en(fsm_buf_write_en),
        .\read_idx_reg[0]_0 (u_buffer_n_27),
        .replay_active(replay_active),
        .replay_active_reg_0(msg_length),
        .replay_echo_char_ready(replay_echo_char_ready),
        .rst(rst),
        .uart_data_valid(uart_data_valid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
