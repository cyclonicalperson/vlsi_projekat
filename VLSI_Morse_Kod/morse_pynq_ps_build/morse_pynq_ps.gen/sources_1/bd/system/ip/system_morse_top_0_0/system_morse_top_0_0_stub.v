// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat Jun 27 15:15:54 2026
// Host        : Pavle-Laptop-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Pavle/Downloads/vlsi_projekat/VLSI_Morse_Kod/morse_pynq_ps_build/morse_pynq_ps.gen/sources_1/bd/system/ip/system_morse_top_0_0/system_morse_top_0_0_stub.v
// Design      : system_morse_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "system_morse_top_0_0,morse_top,{}" *) (* CORE_GENERATION_INFO = "system_morse_top_0_0,morse_top,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=morse_top,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,CLK_FREQ_HZ=125000000,MAX_SYMBOLS=6,MAX_CHARS=32}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "morse_top,Vivado 2025.2" *) 
module system_morse_top_0_0(clk, button0, button1, button2, button3, led0, led1, 
  led2, led3, rgb_r_n, rgb_g_n, rgb_b_n, uart_ascii_data, uart_data_valid, ps_ack)
/* synthesis syn_black_box black_box_pad_pin="button0,button1,button2,button3,led0,led1,led2,led3,rgb_r_n,rgb_g_n,rgb_b_n,uart_ascii_data[7:0],uart_data_valid,ps_ack" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
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
endmodule
