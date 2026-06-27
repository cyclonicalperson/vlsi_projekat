-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Sat Jun 27 15:15:54 2026
-- Host        : Pavle-Laptop-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Pavle/Downloads/vlsi_projekat/VLSI_Morse_Kod/morse_pynq_ps_build/morse_pynq_ps.gen/sources_1/bd/system/ip/system_morse_top_0_0/system_morse_top_0_0_stub.vhdl
-- Design      : system_morse_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_morse_top_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    button0 : in STD_LOGIC;
    button1 : in STD_LOGIC;
    button2 : in STD_LOGIC;
    button3 : in STD_LOGIC;
    led0 : out STD_LOGIC;
    led1 : out STD_LOGIC;
    led2 : out STD_LOGIC;
    led3 : out STD_LOGIC;
    rgb_r_n : out STD_LOGIC;
    rgb_g_n : out STD_LOGIC;
    rgb_b_n : out STD_LOGIC;
    uart_ascii_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    uart_data_valid : out STD_LOGIC;
    ps_ack : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_morse_top_0_0 : entity is "system_morse_top_0_0,morse_top,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of system_morse_top_0_0 : entity is "system_morse_top_0_0,morse_top,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=morse_top,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,CLK_FREQ_HZ=125000000,MAX_SYMBOLS=6,MAX_CHARS=32}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_morse_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_morse_top_0_0 : entity is "module_ref";
end system_morse_top_0_0;

architecture stub of system_morse_top_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,button0,button1,button2,button3,led0,led1,led2,led3,rgb_r_n,rgb_g_n,rgb_b_n,uart_ascii_data[7:0],uart_data_valid,ps_ack";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "morse_top,Vivado 2025.2";
begin
end;
