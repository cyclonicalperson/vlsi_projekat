-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Sat Jun 27 15:15:54 2026
-- Host        : Pavle-Laptop-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Pavle/Downloads/vlsi_projekat/VLSI_Morse_Kod/morse_pynq_ps_build/morse_pynq_ps.gen/sources_1/bd/system/ip/system_morse_top_0_0/system_morse_top_0_0_sim_netlist.vhdl
-- Design      : system_morse_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_morse_top_0_0_axi_pl_bridge is
  port (
    uart_data_valid : out STD_LOGIC;
    uart_ascii_data : out STD_LOGIC_VECTOR ( 6 downto 0 );
    rst : in STD_LOGIC;
    ps_ack : in STD_LOGIC;
    clk : in STD_LOGIC;
    replay_echo_char_ready : in STD_LOGIC;
    replay_active : in STD_LOGIC;
    fsm_buf_write_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_morse_top_0_0_axi_pl_bridge : entity is "axi_pl_bridge";
end system_morse_top_0_0_axi_pl_bridge;

architecture STRUCTURE of system_morse_top_0_0_axi_pl_bridge is
  signal ack_prev : STD_LOGIC;
  signal ack_sync0 : STD_LOGIC;
  signal ack_sync1 : STD_LOGIC;
  signal data_valid_i_1_n_0 : STD_LOGIC;
  signal \^uart_data_valid\ : STD_LOGIC;
begin
  uart_data_valid <= \^uart_data_valid\;
ack_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ack_sync1,
      Q => ack_prev,
      R => rst
    );
ack_sync0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ps_ack,
      Q => ack_sync0,
      R => rst
    );
ack_sync1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ack_sync0,
      Q => ack_sync1,
      R => rst
    );
\ascii_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => uart_ascii_data(0),
      R => rst
    );
\ascii_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(1),
      Q => uart_ascii_data(1),
      R => rst
    );
\ascii_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(2),
      Q => uart_ascii_data(2),
      R => rst
    );
\ascii_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(3),
      Q => uart_ascii_data(3),
      R => rst
    );
\ascii_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(4),
      Q => uart_ascii_data(4),
      R => rst
    );
\ascii_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(5),
      Q => uart_ascii_data(5),
      R => rst
    );
\ascii_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(6),
      Q => uart_ascii_data(6),
      R => rst
    );
data_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBFBFB0B0B0"
    )
        port map (
      I0 => ack_prev,
      I1 => ack_sync1,
      I2 => \^uart_data_valid\,
      I3 => replay_echo_char_ready,
      I4 => replay_active,
      I5 => fsm_buf_write_en,
      O => data_valid_i_1_n_0
    );
data_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data_valid_i_1_n_0,
      Q => \^uart_data_valid\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_morse_top_0_0_debounce is
  port (
    btn_dash_clean : out STD_LOGIC;
    rst : in STD_LOGIC;
    button1 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_morse_top_0_0_debounce : entity is "debounce";
end system_morse_top_0_0_debounce;

architecture STRUCTURE of system_morse_top_0_0_debounce is
  signal \btn_clean_i_1__0_n_0\ : STD_LOGIC;
  signal \^btn_dash_clean\ : STD_LOGIC;
  signal btn_sync_0_reg_n_0 : STD_LOGIC;
  signal btn_sync_1_reg_n_0 : STD_LOGIC;
  signal \counter[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \counter[0]_i_7__0_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 19 downto 3 );
  signal \counter_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \NLW_counter_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_2__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[12]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[16]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1__0\ : label is 35;
begin
  btn_dash_clean <= \^btn_dash_clean\;
\btn_clean_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => \counter[0]_i_3__0_n_0\,
      I1 => btn_sync_1_reg_n_0,
      I2 => \^btn_dash_clean\,
      O => \btn_clean_i_1__0_n_0\
    );
btn_clean_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \btn_clean_i_1__0_n_0\,
      Q => \^btn_dash_clean\,
      R => rst
    );
btn_sync_0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => button1,
      Q => btn_sync_0_reg_n_0,
      R => rst
    );
btn_sync_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => btn_sync_0_reg_n_0,
      Q => btn_sync_1_reg_n_0,
      R => rst
    );
\counter[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEB"
    )
        port map (
      I0 => \counter[0]_i_3__0_n_0\,
      I1 => \^btn_dash_clean\,
      I2 => btn_sync_1_reg_n_0,
      I3 => rst,
      O => \counter[0]_i_1__0_n_0\
    );
\counter[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAA8A8A8A8A8A8"
    )
        port map (
      I0 => counter_reg(19),
      I1 => counter_reg(18),
      I2 => counter_reg(17),
      I3 => \counter[0]_i_5__0_n_0\,
      I4 => counter_reg(15),
      I5 => counter_reg(16),
      O => \counter[0]_i_3__0_n_0\
    );
\counter[0]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => \counter[0]_i_4__0_n_0\
    );
\counter[0]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000010FF"
    )
        port map (
      I0 => counter_reg(9),
      I1 => counter_reg(10),
      I2 => \counter[0]_i_6__0_n_0\,
      I3 => counter_reg(11),
      I4 => \counter[0]_i_7__0_n_0\,
      O => \counter[0]_i_5__0_n_0\
    );
\counter[0]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555557FFFFFF"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(4),
      I2 => counter_reg(3),
      I3 => counter_reg(5),
      I4 => counter_reg(6),
      I5 => counter_reg(7),
      O => \counter[0]_i_6__0_n_0\
    );
\counter[0]_i_7__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => counter_reg(14),
      I1 => counter_reg(12),
      I2 => counter_reg(13),
      O => \counter[0]_i_7__0_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2__0_n_7\,
      Q => \counter_reg_n_0_[0]\,
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_2__0_n_0\,
      CO(2) => \counter_reg[0]_i_2__0_n_1\,
      CO(1) => \counter_reg[0]_i_2__0_n_2\,
      CO(0) => \counter_reg[0]_i_2__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_2__0_n_4\,
      O(2) => \counter_reg[0]_i_2__0_n_5\,
      O(1) => \counter_reg[0]_i_2__0_n_6\,
      O(0) => \counter_reg[0]_i_2__0_n_7\,
      S(3) => counter_reg(3),
      S(2) => \counter_reg_n_0_[2]\,
      S(1) => \counter_reg_n_0_[1]\,
      S(0) => \counter[0]_i_4__0_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_5\,
      Q => counter_reg(10),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_4\,
      Q => counter_reg(11),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1__0_n_7\,
      Q => counter_reg(12),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1__0_n_0\,
      CO(3) => \counter_reg[12]_i_1__0_n_0\,
      CO(2) => \counter_reg[12]_i_1__0_n_1\,
      CO(1) => \counter_reg[12]_i_1__0_n_2\,
      CO(0) => \counter_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1__0_n_4\,
      O(2) => \counter_reg[12]_i_1__0_n_5\,
      O(1) => \counter_reg[12]_i_1__0_n_6\,
      O(0) => \counter_reg[12]_i_1__0_n_7\,
      S(3 downto 0) => counter_reg(15 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1__0_n_6\,
      Q => counter_reg(13),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1__0_n_5\,
      Q => counter_reg(14),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1__0_n_4\,
      Q => counter_reg(15),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_7\,
      Q => counter_reg(16),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1__0_n_0\,
      CO(3) => \NLW_counter_reg[16]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[16]_i_1__0_n_1\,
      CO(1) => \counter_reg[16]_i_1__0_n_2\,
      CO(0) => \counter_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1__0_n_4\,
      O(2) => \counter_reg[16]_i_1__0_n_5\,
      O(1) => \counter_reg[16]_i_1__0_n_6\,
      O(0) => \counter_reg[16]_i_1__0_n_7\,
      S(3 downto 0) => counter_reg(19 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_6\,
      Q => counter_reg(17),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_5\,
      Q => counter_reg(18),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1__0_n_4\,
      Q => counter_reg(19),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2__0_n_6\,
      Q => \counter_reg_n_0_[1]\,
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2__0_n_5\,
      Q => \counter_reg_n_0_[2]\,
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2__0_n_4\,
      Q => counter_reg(3),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1__0_n_7\,
      Q => counter_reg(4),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_2__0_n_0\,
      CO(3) => \counter_reg[4]_i_1__0_n_0\,
      CO(2) => \counter_reg[4]_i_1__0_n_1\,
      CO(1) => \counter_reg[4]_i_1__0_n_2\,
      CO(0) => \counter_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1__0_n_4\,
      O(2) => \counter_reg[4]_i_1__0_n_5\,
      O(1) => \counter_reg[4]_i_1__0_n_6\,
      O(0) => \counter_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => counter_reg(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1__0_n_6\,
      Q => counter_reg(5),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1__0_n_5\,
      Q => counter_reg(6),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1__0_n_4\,
      Q => counter_reg(7),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_7\,
      Q => counter_reg(8),
      R => \counter[0]_i_1__0_n_0\
    );
\counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1__0_n_0\,
      CO(3) => \counter_reg[8]_i_1__0_n_0\,
      CO(2) => \counter_reg[8]_i_1__0_n_1\,
      CO(1) => \counter_reg[8]_i_1__0_n_2\,
      CO(0) => \counter_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1__0_n_4\,
      O(2) => \counter_reg[8]_i_1__0_n_5\,
      O(1) => \counter_reg[8]_i_1__0_n_6\,
      O(0) => \counter_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => counter_reg(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1__0_n_6\,
      Q => counter_reg(9),
      R => \counter[0]_i_1__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_morse_top_0_0_debounce_0 is
  port (
    btn_dot_clean : out STD_LOGIC;
    rst : in STD_LOGIC;
    button0 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_morse_top_0_0_debounce_0 : entity is "debounce";
end system_morse_top_0_0_debounce_0;

architecture STRUCTURE of system_morse_top_0_0_debounce_0 is
  signal btn_clean_i_1_n_0 : STD_LOGIC;
  signal \^btn_dot_clean\ : STD_LOGIC;
  signal btn_sync_0 : STD_LOGIC;
  signal btn_sync_1 : STD_LOGIC;
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6_n_0\ : STD_LOGIC;
  signal \counter[0]_i_7_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 19 downto 3 );
  signal \counter_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \NLW_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1\ : label is 35;
begin
  btn_dot_clean <= \^btn_dot_clean\;
btn_clean_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => \counter[0]_i_3_n_0\,
      I1 => btn_sync_1,
      I2 => \^btn_dot_clean\,
      O => btn_clean_i_1_n_0
    );
btn_clean_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => btn_clean_i_1_n_0,
      Q => \^btn_dot_clean\,
      R => rst
    );
btn_sync_0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => button0,
      Q => btn_sync_0,
      R => rst
    );
btn_sync_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => btn_sync_0,
      Q => btn_sync_1,
      R => rst
    );
\counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEB"
    )
        port map (
      I0 => \counter[0]_i_3_n_0\,
      I1 => \^btn_dot_clean\,
      I2 => btn_sync_1,
      I3 => rst,
      O => \counter[0]_i_1_n_0\
    );
\counter[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAA8A8A8A8A8A8"
    )
        port map (
      I0 => counter_reg(19),
      I1 => counter_reg(18),
      I2 => counter_reg(17),
      I3 => \counter[0]_i_5_n_0\,
      I4 => counter_reg(15),
      I5 => counter_reg(16),
      O => \counter[0]_i_3_n_0\
    );
\counter[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => \counter[0]_i_4_n_0\
    );
\counter[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000010FF"
    )
        port map (
      I0 => counter_reg(9),
      I1 => counter_reg(10),
      I2 => \counter[0]_i_6_n_0\,
      I3 => counter_reg(11),
      I4 => \counter[0]_i_7_n_0\,
      O => \counter[0]_i_5_n_0\
    );
\counter[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555557FFFFFF"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(4),
      I2 => counter_reg(3),
      I3 => counter_reg(5),
      I4 => counter_reg(6),
      I5 => counter_reg(7),
      O => \counter[0]_i_6_n_0\
    );
\counter[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => counter_reg(14),
      I1 => counter_reg(12),
      I2 => counter_reg(13),
      O => \counter[0]_i_7_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_7\,
      Q => \counter_reg_n_0_[0]\,
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_2_n_0\,
      CO(2) => \counter_reg[0]_i_2_n_1\,
      CO(1) => \counter_reg[0]_i_2_n_2\,
      CO(0) => \counter_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_2_n_4\,
      O(2) => \counter_reg[0]_i_2_n_5\,
      O(1) => \counter_reg[0]_i_2_n_6\,
      O(0) => \counter_reg[0]_i_2_n_7\,
      S(3) => counter_reg(3),
      S(2) => \counter_reg_n_0_[2]\,
      S(1) => \counter_reg_n_0_[1]\,
      S(0) => \counter[0]_i_4_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_5\,
      Q => counter_reg(10),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_4\,
      Q => counter_reg(11),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_7\,
      Q => counter_reg(12),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1_n_0\,
      CO(3) => \counter_reg[12]_i_1_n_0\,
      CO(2) => \counter_reg[12]_i_1_n_1\,
      CO(1) => \counter_reg[12]_i_1_n_2\,
      CO(0) => \counter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1_n_4\,
      O(2) => \counter_reg[12]_i_1_n_5\,
      O(1) => \counter_reg[12]_i_1_n_6\,
      O(0) => \counter_reg[12]_i_1_n_7\,
      S(3 downto 0) => counter_reg(15 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_6\,
      Q => counter_reg(13),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_5\,
      Q => counter_reg(14),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1_n_4\,
      Q => counter_reg(15),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_7\,
      Q => counter_reg(16),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1_n_0\,
      CO(3) => \NLW_counter_reg[16]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[16]_i_1_n_1\,
      CO(1) => \counter_reg[16]_i_1_n_2\,
      CO(0) => \counter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1_n_4\,
      O(2) => \counter_reg[16]_i_1_n_5\,
      O(1) => \counter_reg[16]_i_1_n_6\,
      O(0) => \counter_reg[16]_i_1_n_7\,
      S(3 downto 0) => counter_reg(19 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_6\,
      Q => counter_reg(17),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_5\,
      Q => counter_reg(18),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1_n_4\,
      Q => counter_reg(19),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_6\,
      Q => \counter_reg_n_0_[1]\,
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_5\,
      Q => \counter_reg_n_0_[2]\,
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2_n_4\,
      Q => counter_reg(3),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_7\,
      Q => counter_reg(4),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_2_n_0\,
      CO(3) => \counter_reg[4]_i_1_n_0\,
      CO(2) => \counter_reg[4]_i_1_n_1\,
      CO(1) => \counter_reg[4]_i_1_n_2\,
      CO(0) => \counter_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1_n_4\,
      O(2) => \counter_reg[4]_i_1_n_5\,
      O(1) => \counter_reg[4]_i_1_n_6\,
      O(0) => \counter_reg[4]_i_1_n_7\,
      S(3 downto 0) => counter_reg(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_6\,
      Q => counter_reg(5),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_5\,
      Q => counter_reg(6),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1_n_4\,
      Q => counter_reg(7),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_7\,
      Q => counter_reg(8),
      R => \counter[0]_i_1_n_0\
    );
\counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1_n_0\,
      CO(3) => \counter_reg[8]_i_1_n_0\,
      CO(2) => \counter_reg[8]_i_1_n_1\,
      CO(1) => \counter_reg[8]_i_1_n_2\,
      CO(0) => \counter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1_n_4\,
      O(2) => \counter_reg[8]_i_1_n_5\,
      O(1) => \counter_reg[8]_i_1_n_6\,
      O(0) => \counter_reg[8]_i_1_n_7\,
      S(3 downto 0) => counter_reg(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1_n_6\,
      Q => counter_reg(9),
      R => \counter[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_morse_top_0_0_debounce_1 is
  port (
    btn_enter_clean : out STD_LOGIC;
    long_fired : out STD_LOGIC;
    rst_reg : out STD_LOGIC;
    rst : in STD_LOGIC;
    button3 : in STD_LOGIC;
    clk : in STD_LOGIC;
    long_pulse_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_morse_top_0_0_debounce_1 : entity is "debounce";
end system_morse_top_0_0_debounce_1;

architecture STRUCTURE of system_morse_top_0_0_debounce_1 is
  signal \btn_clean_i_1__2_n_0\ : STD_LOGIC;
  signal \^btn_enter_clean\ : STD_LOGIC;
  signal btn_sync_0_reg_n_0 : STD_LOGIC;
  signal btn_sync_1_reg_n_0 : STD_LOGIC;
  signal \counter[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3__2_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4__2_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5__2_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6__2_n_0\ : STD_LOGIC;
  signal \counter[0]_i_7__2_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 19 downto 3 );
  signal \counter_reg[0]_i_2__2_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__2_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__2_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__2_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__2_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__2_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__2_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__2_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__2_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__2_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__2_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__2_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__2_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__2_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__2_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__2_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__2_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__2_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__2_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__2_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__2_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__2_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__2_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__2_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__2_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__2_n_7\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \NLW_counter_reg[16]_i_1__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \btn_clean_i_1__2\ : label is "soft_lutpair9";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_2__2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[12]_i_1__2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[16]_i_1__2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_1__2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1__2\ : label is 35;
  attribute SOFT_HLUTNM of long_pulse_i_1 : label is "soft_lutpair9";
begin
  btn_enter_clean <= \^btn_enter_clean\;
\btn_clean_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => \counter[0]_i_3__2_n_0\,
      I1 => btn_sync_1_reg_n_0,
      I2 => \^btn_enter_clean\,
      O => \btn_clean_i_1__2_n_0\
    );
btn_clean_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \btn_clean_i_1__2_n_0\,
      Q => \^btn_enter_clean\,
      R => rst
    );
btn_sync_0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => button3,
      Q => btn_sync_0_reg_n_0,
      R => rst
    );
btn_sync_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => btn_sync_0_reg_n_0,
      Q => btn_sync_1_reg_n_0,
      R => rst
    );
\counter[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEB"
    )
        port map (
      I0 => \counter[0]_i_3__2_n_0\,
      I1 => \^btn_enter_clean\,
      I2 => btn_sync_1_reg_n_0,
      I3 => rst,
      O => \counter[0]_i_1__2_n_0\
    );
\counter[0]_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAA8A8A8A8A8A8"
    )
        port map (
      I0 => counter_reg(19),
      I1 => counter_reg(18),
      I2 => counter_reg(17),
      I3 => \counter[0]_i_5__2_n_0\,
      I4 => counter_reg(15),
      I5 => counter_reg(16),
      O => \counter[0]_i_3__2_n_0\
    );
\counter[0]_i_4__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => \counter[0]_i_4__2_n_0\
    );
\counter[0]_i_5__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000010FF"
    )
        port map (
      I0 => counter_reg(9),
      I1 => counter_reg(10),
      I2 => \counter[0]_i_6__2_n_0\,
      I3 => counter_reg(11),
      I4 => \counter[0]_i_7__2_n_0\,
      O => \counter[0]_i_5__2_n_0\
    );
\counter[0]_i_6__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555557FFFFFF"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(4),
      I2 => counter_reg(3),
      I3 => counter_reg(5),
      I4 => counter_reg(6),
      I5 => counter_reg(7),
      O => \counter[0]_i_6__2_n_0\
    );
\counter[0]_i_7__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => counter_reg(14),
      I1 => counter_reg(12),
      I2 => counter_reg(13),
      O => \counter[0]_i_7__2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2__2_n_7\,
      Q => \counter_reg_n_0_[0]\,
      R => \counter[0]_i_1__2_n_0\
    );
\counter_reg[0]_i_2__2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_2__2_n_0\,
      CO(2) => \counter_reg[0]_i_2__2_n_1\,
      CO(1) => \counter_reg[0]_i_2__2_n_2\,
      CO(0) => \counter_reg[0]_i_2__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_2__2_n_4\,
      O(2) => \counter_reg[0]_i_2__2_n_5\,
      O(1) => \counter_reg[0]_i_2__2_n_6\,
      O(0) => \counter_reg[0]_i_2__2_n_7\,
      S(3) => counter_reg(3),
      S(2) => \counter_reg_n_0_[2]\,
      S(1) => \counter_reg_n_0_[1]\,
      S(0) => \counter[0]_i_4__2_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1__2_n_5\,
      Q => counter_reg(10),
      R => \counter[0]_i_1__2_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1__2_n_4\,
      Q => counter_reg(11),
      R => \counter[0]_i_1__2_n_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1__2_n_7\,
      Q => counter_reg(12),
      R => \counter[0]_i_1__2_n_0\
    );
\counter_reg[12]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1__2_n_0\,
      CO(3) => \counter_reg[12]_i_1__2_n_0\,
      CO(2) => \counter_reg[12]_i_1__2_n_1\,
      CO(1) => \counter_reg[12]_i_1__2_n_2\,
      CO(0) => \counter_reg[12]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1__2_n_4\,
      O(2) => \counter_reg[12]_i_1__2_n_5\,
      O(1) => \counter_reg[12]_i_1__2_n_6\,
      O(0) => \counter_reg[12]_i_1__2_n_7\,
      S(3 downto 0) => counter_reg(15 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1__2_n_6\,
      Q => counter_reg(13),
      R => \counter[0]_i_1__2_n_0\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1__2_n_5\,
      Q => counter_reg(14),
      R => \counter[0]_i_1__2_n_0\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1__2_n_4\,
      Q => counter_reg(15),
      R => \counter[0]_i_1__2_n_0\
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1__2_n_7\,
      Q => counter_reg(16),
      R => \counter[0]_i_1__2_n_0\
    );
\counter_reg[16]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1__2_n_0\,
      CO(3) => \NLW_counter_reg[16]_i_1__2_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[16]_i_1__2_n_1\,
      CO(1) => \counter_reg[16]_i_1__2_n_2\,
      CO(0) => \counter_reg[16]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1__2_n_4\,
      O(2) => \counter_reg[16]_i_1__2_n_5\,
      O(1) => \counter_reg[16]_i_1__2_n_6\,
      O(0) => \counter_reg[16]_i_1__2_n_7\,
      S(3 downto 0) => counter_reg(19 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1__2_n_6\,
      Q => counter_reg(17),
      R => \counter[0]_i_1__2_n_0\
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1__2_n_5\,
      Q => counter_reg(18),
      R => \counter[0]_i_1__2_n_0\
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1__2_n_4\,
      Q => counter_reg(19),
      R => \counter[0]_i_1__2_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2__2_n_6\,
      Q => \counter_reg_n_0_[1]\,
      R => \counter[0]_i_1__2_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2__2_n_5\,
      Q => \counter_reg_n_0_[2]\,
      R => \counter[0]_i_1__2_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2__2_n_4\,
      Q => counter_reg(3),
      R => \counter[0]_i_1__2_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1__2_n_7\,
      Q => counter_reg(4),
      R => \counter[0]_i_1__2_n_0\
    );
\counter_reg[4]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_2__2_n_0\,
      CO(3) => \counter_reg[4]_i_1__2_n_0\,
      CO(2) => \counter_reg[4]_i_1__2_n_1\,
      CO(1) => \counter_reg[4]_i_1__2_n_2\,
      CO(0) => \counter_reg[4]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1__2_n_4\,
      O(2) => \counter_reg[4]_i_1__2_n_5\,
      O(1) => \counter_reg[4]_i_1__2_n_6\,
      O(0) => \counter_reg[4]_i_1__2_n_7\,
      S(3 downto 0) => counter_reg(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1__2_n_6\,
      Q => counter_reg(5),
      R => \counter[0]_i_1__2_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1__2_n_5\,
      Q => counter_reg(6),
      R => \counter[0]_i_1__2_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1__2_n_4\,
      Q => counter_reg(7),
      R => \counter[0]_i_1__2_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1__2_n_7\,
      Q => counter_reg(8),
      R => \counter[0]_i_1__2_n_0\
    );
\counter_reg[8]_i_1__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1__2_n_0\,
      CO(3) => \counter_reg[8]_i_1__2_n_0\,
      CO(2) => \counter_reg[8]_i_1__2_n_1\,
      CO(1) => \counter_reg[8]_i_1__2_n_2\,
      CO(0) => \counter_reg[8]_i_1__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1__2_n_4\,
      O(2) => \counter_reg[8]_i_1__2_n_5\,
      O(1) => \counter_reg[8]_i_1__2_n_6\,
      O(0) => \counter_reg[8]_i_1__2_n_7\,
      S(3 downto 0) => counter_reg(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1__2_n_6\,
      Q => counter_reg(9),
      R => \counter[0]_i_1__2_n_0\
    );
\hold_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rst,
      I1 => \^btn_enter_clean\,
      O => rst_reg
    );
long_pulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^btn_enter_clean\,
      I1 => long_pulse_reg,
      O => long_fired
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_morse_top_0_0_debounce_2 is
  port (
    btn_reset_clean : out STD_LOGIC;
    rst : in STD_LOGIC;
    button2 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_morse_top_0_0_debounce_2 : entity is "debounce";
end system_morse_top_0_0_debounce_2;

architecture STRUCTURE of system_morse_top_0_0_debounce_2 is
  signal \btn_clean_i_1__1_n_0\ : STD_LOGIC;
  signal \^btn_reset_clean\ : STD_LOGIC;
  signal btn_sync_0_reg_n_0 : STD_LOGIC;
  signal btn_sync_1_reg_n_0 : STD_LOGIC;
  signal \counter[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \counter[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \counter[0]_i_4__1_n_0\ : STD_LOGIC;
  signal \counter[0]_i_5__1_n_0\ : STD_LOGIC;
  signal \counter[0]_i_6__1_n_0\ : STD_LOGIC;
  signal \counter[0]_i_7__1_n_0\ : STD_LOGIC;
  signal counter_reg : STD_LOGIC_VECTOR ( 19 downto 3 );
  signal \counter_reg[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__1_n_1\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__1_n_2\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__1_n_3\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__1_n_4\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__1_n_5\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__1_n_6\ : STD_LOGIC;
  signal \counter_reg[0]_i_2__1_n_7\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__1_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__1_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__1_n_3\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__1_n_4\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__1_n_5\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__1_n_6\ : STD_LOGIC;
  signal \counter_reg[12]_i_1__1_n_7\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_4\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_5\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_6\ : STD_LOGIC;
  signal \counter_reg[16]_i_1__1_n_7\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__1_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__1_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__1_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__1_n_4\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__1_n_5\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__1_n_6\ : STD_LOGIC;
  signal \counter_reg[4]_i_1__1_n_7\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \counter_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \NLW_counter_reg[16]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg[0]_i_2__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[12]_i_1__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[16]_i_1__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[4]_i_1__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_reg[8]_i_1__1\ : label is 35;
begin
  btn_reset_clean <= \^btn_reset_clean\;
\btn_clean_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D8"
    )
        port map (
      I0 => \counter[0]_i_3__1_n_0\,
      I1 => btn_sync_1_reg_n_0,
      I2 => \^btn_reset_clean\,
      O => \btn_clean_i_1__1_n_0\
    );
btn_clean_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \btn_clean_i_1__1_n_0\,
      Q => \^btn_reset_clean\,
      R => rst
    );
btn_sync_0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => button2,
      Q => btn_sync_0_reg_n_0,
      R => rst
    );
btn_sync_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => btn_sync_0_reg_n_0,
      Q => btn_sync_1_reg_n_0,
      R => rst
    );
\counter[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEB"
    )
        port map (
      I0 => \counter[0]_i_3__1_n_0\,
      I1 => \^btn_reset_clean\,
      I2 => btn_sync_1_reg_n_0,
      I3 => rst,
      O => \counter[0]_i_1__1_n_0\
    );
\counter[0]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAA8A8A8A8A8A8"
    )
        port map (
      I0 => counter_reg(19),
      I1 => counter_reg(18),
      I2 => counter_reg(17),
      I3 => \counter[0]_i_5__1_n_0\,
      I4 => counter_reg(15),
      I5 => counter_reg(16),
      O => \counter[0]_i_3__1_n_0\
    );
\counter[0]_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => \counter[0]_i_4__1_n_0\
    );
\counter[0]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000010FF"
    )
        port map (
      I0 => counter_reg(9),
      I1 => counter_reg(10),
      I2 => \counter[0]_i_6__1_n_0\,
      I3 => counter_reg(11),
      I4 => \counter[0]_i_7__1_n_0\,
      O => \counter[0]_i_5__1_n_0\
    );
\counter[0]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555557FFFFFF"
    )
        port map (
      I0 => counter_reg(8),
      I1 => counter_reg(4),
      I2 => counter_reg(3),
      I3 => counter_reg(5),
      I4 => counter_reg(6),
      I5 => counter_reg(7),
      O => \counter[0]_i_6__1_n_0\
    );
\counter[0]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => counter_reg(14),
      I1 => counter_reg(12),
      I2 => counter_reg(13),
      O => \counter[0]_i_7__1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2__1_n_7\,
      Q => \counter_reg_n_0_[0]\,
      R => \counter[0]_i_1__1_n_0\
    );
\counter_reg[0]_i_2__1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[0]_i_2__1_n_0\,
      CO(2) => \counter_reg[0]_i_2__1_n_1\,
      CO(1) => \counter_reg[0]_i_2__1_n_2\,
      CO(0) => \counter_reg[0]_i_2__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[0]_i_2__1_n_4\,
      O(2) => \counter_reg[0]_i_2__1_n_5\,
      O(1) => \counter_reg[0]_i_2__1_n_6\,
      O(0) => \counter_reg[0]_i_2__1_n_7\,
      S(3) => counter_reg(3),
      S(2) => \counter_reg_n_0_[2]\,
      S(1) => \counter_reg_n_0_[1]\,
      S(0) => \counter[0]_i_4__1_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1__1_n_5\,
      Q => counter_reg(10),
      R => \counter[0]_i_1__1_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1__1_n_4\,
      Q => counter_reg(11),
      R => \counter[0]_i_1__1_n_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1__1_n_7\,
      Q => counter_reg(12),
      R => \counter[0]_i_1__1_n_0\
    );
\counter_reg[12]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_1__1_n_0\,
      CO(3) => \counter_reg[12]_i_1__1_n_0\,
      CO(2) => \counter_reg[12]_i_1__1_n_1\,
      CO(1) => \counter_reg[12]_i_1__1_n_2\,
      CO(0) => \counter_reg[12]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[12]_i_1__1_n_4\,
      O(2) => \counter_reg[12]_i_1__1_n_5\,
      O(1) => \counter_reg[12]_i_1__1_n_6\,
      O(0) => \counter_reg[12]_i_1__1_n_7\,
      S(3 downto 0) => counter_reg(15 downto 12)
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1__1_n_6\,
      Q => counter_reg(13),
      R => \counter[0]_i_1__1_n_0\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1__1_n_5\,
      Q => counter_reg(14),
      R => \counter[0]_i_1__1_n_0\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[12]_i_1__1_n_4\,
      Q => counter_reg(15),
      R => \counter[0]_i_1__1_n_0\
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1__1_n_7\,
      Q => counter_reg(16),
      R => \counter[0]_i_1__1_n_0\
    );
\counter_reg[16]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_1__1_n_0\,
      CO(3) => \NLW_counter_reg[16]_i_1__1_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[16]_i_1__1_n_1\,
      CO(1) => \counter_reg[16]_i_1__1_n_2\,
      CO(0) => \counter_reg[16]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[16]_i_1__1_n_4\,
      O(2) => \counter_reg[16]_i_1__1_n_5\,
      O(1) => \counter_reg[16]_i_1__1_n_6\,
      O(0) => \counter_reg[16]_i_1__1_n_7\,
      S(3 downto 0) => counter_reg(19 downto 16)
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1__1_n_6\,
      Q => counter_reg(17),
      R => \counter[0]_i_1__1_n_0\
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1__1_n_5\,
      Q => counter_reg(18),
      R => \counter[0]_i_1__1_n_0\
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[16]_i_1__1_n_4\,
      Q => counter_reg(19),
      R => \counter[0]_i_1__1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2__1_n_6\,
      Q => \counter_reg_n_0_[1]\,
      R => \counter[0]_i_1__1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2__1_n_5\,
      Q => \counter_reg_n_0_[2]\,
      R => \counter[0]_i_1__1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[0]_i_2__1_n_4\,
      Q => counter_reg(3),
      R => \counter[0]_i_1__1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1__1_n_7\,
      Q => counter_reg(4),
      R => \counter[0]_i_1__1_n_0\
    );
\counter_reg[4]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[0]_i_2__1_n_0\,
      CO(3) => \counter_reg[4]_i_1__1_n_0\,
      CO(2) => \counter_reg[4]_i_1__1_n_1\,
      CO(1) => \counter_reg[4]_i_1__1_n_2\,
      CO(0) => \counter_reg[4]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[4]_i_1__1_n_4\,
      O(2) => \counter_reg[4]_i_1__1_n_5\,
      O(1) => \counter_reg[4]_i_1__1_n_6\,
      O(0) => \counter_reg[4]_i_1__1_n_7\,
      S(3 downto 0) => counter_reg(7 downto 4)
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1__1_n_6\,
      Q => counter_reg(5),
      R => \counter[0]_i_1__1_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1__1_n_5\,
      Q => counter_reg(6),
      R => \counter[0]_i_1__1_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[4]_i_1__1_n_4\,
      Q => counter_reg(7),
      R => \counter[0]_i_1__1_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1__1_n_7\,
      Q => counter_reg(8),
      R => \counter[0]_i_1__1_n_0\
    );
\counter_reg[8]_i_1__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_1__1_n_0\,
      CO(3) => \counter_reg[8]_i_1__1_n_0\,
      CO(2) => \counter_reg[8]_i_1__1_n_1\,
      CO(1) => \counter_reg[8]_i_1__1_n_2\,
      CO(0) => \counter_reg[8]_i_1__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[8]_i_1__1_n_4\,
      O(2) => \counter_reg[8]_i_1__1_n_5\,
      O(1) => \counter_reg[8]_i_1__1_n_6\,
      O(0) => \counter_reg[8]_i_1__1_n_7\,
      S(3 downto 0) => counter_reg(11 downto 8)
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[8]_i_1__1_n_6\,
      Q => counter_reg(9),
      R => \counter[0]_i_1__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_morse_top_0_0_edge_detect is
  port (
    sig_previous : out STD_LOGIC;
    rst : in STD_LOGIC;
    btn_dash_clean : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_morse_top_0_0_edge_detect : entity is "edge_detect";
end system_morse_top_0_0_edge_detect;

architecture STRUCTURE of system_morse_top_0_0_edge_detect is
begin
sig_previous_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => btn_dash_clean,
      Q => sig_previous,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_morse_top_0_0_edge_detect_3 is
  port (
    sig_previous : out STD_LOGIC;
    rst : in STD_LOGIC;
    btn_dot_clean : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_morse_top_0_0_edge_detect_3 : entity is "edge_detect";
end system_morse_top_0_0_edge_detect_3;

architecture STRUCTURE of system_morse_top_0_0_edge_detect_3 is
begin
sig_previous_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => btn_dot_clean,
      Q => sig_previous,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_morse_top_0_0_edge_detect_4 is
  port (
    sig_previous : out STD_LOGIC;
    symbols_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    btn_reset_clean : in STD_LOGIC;
    clk : in STD_LOGIC;
    \symbols_reg[5]_i_2_0\ : in STD_LOGIC;
    \symbols_reg_reg[5]\ : in STD_LOGIC;
    btn_dash_clean : in STD_LOGIC;
    sig_previous_0 : in STD_LOGIC;
    btn_dot_clean : in STD_LOGIC;
    sig_previous_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_morse_top_0_0_edge_detect_4 : entity is "edge_detect";
end system_morse_top_0_0_edge_detect_4;

architecture STRUCTURE of system_morse_top_0_0_edge_detect_4 is
  signal \^sig_previous\ : STD_LOGIC;
  signal \symbols_reg[5]_i_4_n_0\ : STD_LOGIC;
begin
  sig_previous <= \^sig_previous\;
sig_previous_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => btn_reset_clean,
      Q => \^sig_previous\,
      R => rst
    );
\symbols_reg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080008000000080"
    )
        port map (
      I0 => \symbols_reg[5]_i_4_n_0\,
      I1 => \symbols_reg_reg[5]\,
      I2 => btn_dash_clean,
      I3 => sig_previous_0,
      I4 => btn_dot_clean,
      I5 => sig_previous_1,
      O => symbols_reg(0)
    );
\symbols_reg[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5545"
    )
        port map (
      I0 => rst,
      I1 => \^sig_previous\,
      I2 => btn_reset_clean,
      I3 => \symbols_reg[5]_i_2_0\,
      O => \symbols_reg[5]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_morse_top_0_0_long_press_detect is
  port (
    long_enter_pulse : out STD_LOGIC;
    short_enter_pulse : out STD_LOGIC;
    \hold_cnt_reg[22]_0\ : out STD_LOGIC;
    rst : in STD_LOGIC;
    btn_enter_clean : in STD_LOGIC;
    clk : in STD_LOGIC;
    \hold_cnt_reg[0]_0\ : in STD_LOGIC;
    long_fired : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_morse_top_0_0_long_press_detect : entity is "long_press_detect";
end system_morse_top_0_0_long_press_detect;

architecture STRUCTURE of system_morse_top_0_0_long_press_detect is
  signal btn_prev : STD_LOGIC;
  signal \hold_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \hold_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \hold_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \hold_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \hold_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \hold_cnt[0]_i_9_n_0\ : STD_LOGIC;
  signal hold_cnt_reg : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \hold_cnt_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \hold_cnt_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \hold_cnt_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \hold_cnt_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \hold_cnt_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \hold_cnt_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \hold_cnt_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \hold_cnt_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \hold_cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \hold_cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \hold_cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \hold_cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \hold_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \hold_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \hold_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \hold_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \hold_cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \hold_cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \hold_cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \hold_cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \hold_cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \hold_cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \hold_cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \hold_cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \hold_cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \hold_cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \hold_cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \hold_cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \hold_cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \hold_cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \hold_cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \hold_cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \^hold_cnt_reg[22]_0\ : STD_LOGIC;
  signal \hold_cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \hold_cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \hold_cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \hold_cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \hold_cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \hold_cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \hold_cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \hold_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \hold_cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \hold_cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \hold_cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \hold_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \hold_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \hold_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \hold_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \hold_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \hold_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \hold_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \hold_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \hold_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \hold_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \hold_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \hold_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal long_fired_i_1_n_0 : STD_LOGIC;
  signal long_fired_reg_n_0 : STD_LOGIC;
  signal long_pulse_i_3_n_0 : STD_LOGIC;
  signal long_pulse_i_4_n_0 : STD_LOGIC;
  signal long_pulse_i_5_n_0 : STD_LOGIC;
  signal long_pulse_i_6_n_0 : STD_LOGIC;
  signal long_pulse_i_7_n_0 : STD_LOGIC;
  signal long_pulse_i_8_n_0 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal short_pulse_i_1_n_0 : STD_LOGIC;
  signal \NLW_hold_cnt_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \hold_cnt_reg[0]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \hold_cnt_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \hold_cnt_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \hold_cnt_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \hold_cnt_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \hold_cnt_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \hold_cnt_reg[8]_i_1\ : label is 35;
begin
  \hold_cnt_reg[22]_0\ <= \^hold_cnt_reg[22]_0\;
btn_prev_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => btn_enter_clean,
      Q => btn_prev,
      R => rst
    );
\hold_cnt[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555FF57"
    )
        port map (
      I0 => hold_cnt_reg(27),
      I1 => \hold_cnt[0]_i_4_n_0\,
      I2 => \hold_cnt[0]_i_5_n_0\,
      I3 => \hold_cnt[0]_i_6_n_0\,
      I4 => hold_cnt_reg(26),
      O => sel
    );
\hold_cnt[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880888880808080"
    )
        port map (
      I0 => hold_cnt_reg(18),
      I1 => hold_cnt_reg(19),
      I2 => hold_cnt_reg(17),
      I3 => \hold_cnt[0]_i_8_n_0\,
      I4 => \hold_cnt[0]_i_9_n_0\,
      I5 => hold_cnt_reg(16),
      O => \hold_cnt[0]_i_4_n_0\
    );
\hold_cnt[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => hold_cnt_reg(20),
      I1 => hold_cnt_reg(23),
      I2 => hold_cnt_reg(22),
      O => \hold_cnt[0]_i_5_n_0\
    );
\hold_cnt[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7777777F"
    )
        port map (
      I0 => hold_cnt_reg(24),
      I1 => hold_cnt_reg(25),
      I2 => hold_cnt_reg(22),
      I3 => hold_cnt_reg(23),
      I4 => hold_cnt_reg(21),
      O => \hold_cnt[0]_i_6_n_0\
    );
\hold_cnt[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hold_cnt_reg(0),
      O => \hold_cnt[0]_i_7_n_0\
    );
\hold_cnt[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => hold_cnt_reg(12),
      I1 => hold_cnt_reg(13),
      I2 => hold_cnt_reg(15),
      I3 => hold_cnt_reg(11),
      I4 => hold_cnt_reg(14),
      O => \hold_cnt[0]_i_8_n_0\
    );
\hold_cnt[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555557FFFFFFF"
    )
        port map (
      I0 => hold_cnt_reg(10),
      I1 => hold_cnt_reg(7),
      I2 => hold_cnt_reg(6),
      I3 => hold_cnt_reg(5),
      I4 => hold_cnt_reg(8),
      I5 => hold_cnt_reg(9),
      O => \hold_cnt[0]_i_9_n_0\
    );
\hold_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[0]_i_3_n_7\,
      Q => hold_cnt_reg(0),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hold_cnt_reg[0]_i_3_n_0\,
      CO(2) => \hold_cnt_reg[0]_i_3_n_1\,
      CO(1) => \hold_cnt_reg[0]_i_3_n_2\,
      CO(0) => \hold_cnt_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \hold_cnt_reg[0]_i_3_n_4\,
      O(2) => \hold_cnt_reg[0]_i_3_n_5\,
      O(1) => \hold_cnt_reg[0]_i_3_n_6\,
      O(0) => \hold_cnt_reg[0]_i_3_n_7\,
      S(3 downto 1) => hold_cnt_reg(3 downto 1),
      S(0) => \hold_cnt[0]_i_7_n_0\
    );
\hold_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[8]_i_1_n_5\,
      Q => hold_cnt_reg(10),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[8]_i_1_n_4\,
      Q => hold_cnt_reg(11),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[12]_i_1_n_7\,
      Q => hold_cnt_reg(12),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hold_cnt_reg[8]_i_1_n_0\,
      CO(3) => \hold_cnt_reg[12]_i_1_n_0\,
      CO(2) => \hold_cnt_reg[12]_i_1_n_1\,
      CO(1) => \hold_cnt_reg[12]_i_1_n_2\,
      CO(0) => \hold_cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \hold_cnt_reg[12]_i_1_n_4\,
      O(2) => \hold_cnt_reg[12]_i_1_n_5\,
      O(1) => \hold_cnt_reg[12]_i_1_n_6\,
      O(0) => \hold_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => hold_cnt_reg(15 downto 12)
    );
\hold_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[12]_i_1_n_6\,
      Q => hold_cnt_reg(13),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[12]_i_1_n_5\,
      Q => hold_cnt_reg(14),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[12]_i_1_n_4\,
      Q => hold_cnt_reg(15),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[16]_i_1_n_7\,
      Q => hold_cnt_reg(16),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hold_cnt_reg[12]_i_1_n_0\,
      CO(3) => \hold_cnt_reg[16]_i_1_n_0\,
      CO(2) => \hold_cnt_reg[16]_i_1_n_1\,
      CO(1) => \hold_cnt_reg[16]_i_1_n_2\,
      CO(0) => \hold_cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \hold_cnt_reg[16]_i_1_n_4\,
      O(2) => \hold_cnt_reg[16]_i_1_n_5\,
      O(1) => \hold_cnt_reg[16]_i_1_n_6\,
      O(0) => \hold_cnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => hold_cnt_reg(19 downto 16)
    );
\hold_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[16]_i_1_n_6\,
      Q => hold_cnt_reg(17),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[16]_i_1_n_5\,
      Q => hold_cnt_reg(18),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[16]_i_1_n_4\,
      Q => hold_cnt_reg(19),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[0]_i_3_n_6\,
      Q => hold_cnt_reg(1),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[20]_i_1_n_7\,
      Q => hold_cnt_reg(20),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hold_cnt_reg[16]_i_1_n_0\,
      CO(3) => \hold_cnt_reg[20]_i_1_n_0\,
      CO(2) => \hold_cnt_reg[20]_i_1_n_1\,
      CO(1) => \hold_cnt_reg[20]_i_1_n_2\,
      CO(0) => \hold_cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \hold_cnt_reg[20]_i_1_n_4\,
      O(2) => \hold_cnt_reg[20]_i_1_n_5\,
      O(1) => \hold_cnt_reg[20]_i_1_n_6\,
      O(0) => \hold_cnt_reg[20]_i_1_n_7\,
      S(3 downto 0) => hold_cnt_reg(23 downto 20)
    );
\hold_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[20]_i_1_n_6\,
      Q => hold_cnt_reg(21),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[20]_i_1_n_5\,
      Q => hold_cnt_reg(22),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[20]_i_1_n_4\,
      Q => hold_cnt_reg(23),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[24]_i_1_n_7\,
      Q => hold_cnt_reg(24),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hold_cnt_reg[20]_i_1_n_0\,
      CO(3) => \NLW_hold_cnt_reg[24]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \hold_cnt_reg[24]_i_1_n_1\,
      CO(1) => \hold_cnt_reg[24]_i_1_n_2\,
      CO(0) => \hold_cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \hold_cnt_reg[24]_i_1_n_4\,
      O(2) => \hold_cnt_reg[24]_i_1_n_5\,
      O(1) => \hold_cnt_reg[24]_i_1_n_6\,
      O(0) => \hold_cnt_reg[24]_i_1_n_7\,
      S(3 downto 0) => hold_cnt_reg(27 downto 24)
    );
\hold_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[24]_i_1_n_6\,
      Q => hold_cnt_reg(25),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[24]_i_1_n_5\,
      Q => hold_cnt_reg(26),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[24]_i_1_n_4\,
      Q => hold_cnt_reg(27),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[0]_i_3_n_5\,
      Q => hold_cnt_reg(2),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[0]_i_3_n_4\,
      Q => hold_cnt_reg(3),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[4]_i_1_n_7\,
      Q => hold_cnt_reg(4),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hold_cnt_reg[0]_i_3_n_0\,
      CO(3) => \hold_cnt_reg[4]_i_1_n_0\,
      CO(2) => \hold_cnt_reg[4]_i_1_n_1\,
      CO(1) => \hold_cnt_reg[4]_i_1_n_2\,
      CO(0) => \hold_cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \hold_cnt_reg[4]_i_1_n_4\,
      O(2) => \hold_cnt_reg[4]_i_1_n_5\,
      O(1) => \hold_cnt_reg[4]_i_1_n_6\,
      O(0) => \hold_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => hold_cnt_reg(7 downto 4)
    );
\hold_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[4]_i_1_n_6\,
      Q => hold_cnt_reg(5),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[4]_i_1_n_5\,
      Q => hold_cnt_reg(6),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[4]_i_1_n_4\,
      Q => hold_cnt_reg(7),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[8]_i_1_n_7\,
      Q => hold_cnt_reg(8),
      R => \hold_cnt_reg[0]_0\
    );
\hold_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hold_cnt_reg[4]_i_1_n_0\,
      CO(3) => \hold_cnt_reg[8]_i_1_n_0\,
      CO(2) => \hold_cnt_reg[8]_i_1_n_1\,
      CO(1) => \hold_cnt_reg[8]_i_1_n_2\,
      CO(0) => \hold_cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \hold_cnt_reg[8]_i_1_n_4\,
      O(2) => \hold_cnt_reg[8]_i_1_n_5\,
      O(1) => \hold_cnt_reg[8]_i_1_n_6\,
      O(0) => \hold_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => hold_cnt_reg(11 downto 8)
    );
\hold_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => sel,
      D => \hold_cnt_reg[8]_i_1_n_6\,
      Q => hold_cnt_reg(9),
      R => \hold_cnt_reg[0]_0\
    );
long_fired_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => btn_enter_clean,
      I1 => \^hold_cnt_reg[22]_0\,
      I2 => long_fired_reg_n_0,
      O => long_fired_i_1_n_0
    );
long_fired_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => long_fired_i_1_n_0,
      Q => long_fired_reg_n_0,
      R => rst
    );
long_pulse_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => hold_cnt_reg(22),
      I1 => hold_cnt_reg(23),
      I2 => hold_cnt_reg(20),
      I3 => long_pulse_i_3_n_0,
      I4 => long_pulse_i_4_n_0,
      I5 => long_pulse_i_5_n_0,
      O => \^hold_cnt_reg[22]_0\
    );
long_pulse_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => hold_cnt_reg(3),
      I1 => long_fired_reg_n_0,
      I2 => hold_cnt_reg(8),
      I3 => hold_cnt_reg(9),
      O => long_pulse_i_3_n_0
    );
long_pulse_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => hold_cnt_reg(0),
      I1 => hold_cnt_reg(1),
      I2 => hold_cnt_reg(11),
      I3 => hold_cnt_reg(17),
      I4 => long_pulse_i_6_n_0,
      O => long_pulse_i_4_n_0
    );
long_pulse_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFFF"
    )
        port map (
      I0 => long_pulse_i_7_n_0,
      I1 => long_pulse_i_8_n_0,
      I2 => hold_cnt_reg(21),
      I3 => hold_cnt_reg(4),
      I4 => hold_cnt_reg(10),
      I5 => hold_cnt_reg(5),
      O => long_pulse_i_5_n_0
    );
long_pulse_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => hold_cnt_reg(26),
      I1 => hold_cnt_reg(15),
      I2 => hold_cnt_reg(27),
      I3 => hold_cnt_reg(16),
      O => long_pulse_i_6_n_0
    );
long_pulse_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => hold_cnt_reg(12),
      I1 => hold_cnt_reg(13),
      I2 => hold_cnt_reg(19),
      I3 => hold_cnt_reg(18),
      I4 => hold_cnt_reg(6),
      I5 => hold_cnt_reg(7),
      O => long_pulse_i_7_n_0
    );
long_pulse_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => hold_cnt_reg(24),
      I1 => hold_cnt_reg(25),
      I2 => hold_cnt_reg(2),
      I3 => hold_cnt_reg(14),
      O => long_pulse_i_8_n_0
    );
long_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => long_fired,
      Q => long_enter_pulse,
      R => rst
    );
short_pulse_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => btn_enter_clean,
      I1 => btn_prev,
      I2 => long_fired_reg_n_0,
      I3 => rst,
      O => short_pulse_i_1_n_0
    );
short_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => short_pulse_i_1_n_0,
      Q => short_enter_pulse,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_morse_top_0_0_message_buffer is
  port (
    \read_idx_reg[4]\ : out STD_LOGIC;
    echo_symbols_mux : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \read_idx_reg[4]_0\ : out STD_LOGIC;
    echo_count_mux : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \read_idx_reg[4]_1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    echo_error_mux : out STD_LOGIC;
    long_pulse_reg : out STD_LOGIC;
    rst : in STD_LOGIC;
    fsm_buf_write_error : in STD_LOGIC;
    clk : in STD_LOGIC;
    \mem_error_reg[9]_0\ : in STD_LOGIC;
    \ascii_data_reg[6]\ : in STD_LOGIC;
    \ascii_data_reg[0]\ : in STD_LOGIC;
    \ascii_data_reg[0]_0\ : in STD_LOGIC;
    \ascii_data_reg[1]\ : in STD_LOGIC;
    \ascii_data_reg[1]_0\ : in STD_LOGIC;
    \ascii_data_reg[2]\ : in STD_LOGIC;
    \ascii_data_reg[2]_0\ : in STD_LOGIC;
    \ascii_data_reg[3]\ : in STD_LOGIC;
    \ascii_data_reg[3]_0\ : in STD_LOGIC;
    \ascii_data_reg[4]\ : in STD_LOGIC;
    \ascii_data_reg[4]_0\ : in STD_LOGIC;
    \ascii_data_reg[5]\ : in STD_LOGIC;
    \ascii_data_reg[5]_0\ : in STD_LOGIC;
    \mem_error_reg[28]_0\ : in STD_LOGIC;
    fsm_buf_write_en : in STD_LOGIC;
    error_latched_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    replay_active : in STD_LOGIC;
    fsm_decode_error : in STD_LOGIC;
    \mem_count_reg[0][3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    long_enter_pulse : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mem_symbols_reg[0][5]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_morse_top_0_0_message_buffer : entity is "message_buffer";
end system_morse_top_0_0_message_buffer;

architecture STRUCTURE of system_morse_top_0_0_message_buffer is
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \ascii_data[6]_i_3_n_0\ : STD_LOGIC;
  signal \ascii_data[6]_i_4_n_0\ : STD_LOGIC;
  signal \ascii_data[6]_i_5_n_0\ : STD_LOGIC;
  signal \count_latched[0]_i_10_n_0\ : STD_LOGIC;
  signal \count_latched[0]_i_11_n_0\ : STD_LOGIC;
  signal \count_latched[0]_i_12_n_0\ : STD_LOGIC;
  signal \count_latched[0]_i_13_n_0\ : STD_LOGIC;
  signal \count_latched[0]_i_14_n_0\ : STD_LOGIC;
  signal \count_latched[0]_i_15_n_0\ : STD_LOGIC;
  signal \count_latched[0]_i_8_n_0\ : STD_LOGIC;
  signal \count_latched[0]_i_9_n_0\ : STD_LOGIC;
  signal \count_latched[1]_i_10_n_0\ : STD_LOGIC;
  signal \count_latched[1]_i_11_n_0\ : STD_LOGIC;
  signal \count_latched[1]_i_12_n_0\ : STD_LOGIC;
  signal \count_latched[1]_i_3_n_0\ : STD_LOGIC;
  signal \count_latched[1]_i_4_n_0\ : STD_LOGIC;
  signal \count_latched[1]_i_5_n_0\ : STD_LOGIC;
  signal \count_latched[1]_i_6_n_0\ : STD_LOGIC;
  signal \count_latched[1]_i_7_n_0\ : STD_LOGIC;
  signal \count_latched[1]_i_8_n_0\ : STD_LOGIC;
  signal \count_latched[1]_i_9_n_0\ : STD_LOGIC;
  signal \count_latched[2]_i_10_n_0\ : STD_LOGIC;
  signal \count_latched[2]_i_11_n_0\ : STD_LOGIC;
  signal \count_latched[2]_i_12_n_0\ : STD_LOGIC;
  signal \count_latched[2]_i_13_n_0\ : STD_LOGIC;
  signal \count_latched[2]_i_14_n_0\ : STD_LOGIC;
  signal \count_latched[2]_i_15_n_0\ : STD_LOGIC;
  signal \count_latched[2]_i_8_n_0\ : STD_LOGIC;
  signal \count_latched[2]_i_9_n_0\ : STD_LOGIC;
  signal \count_latched[3]_i_10_n_0\ : STD_LOGIC;
  signal \count_latched[3]_i_11_n_0\ : STD_LOGIC;
  signal \count_latched[3]_i_12_n_0\ : STD_LOGIC;
  signal \count_latched[3]_i_13_n_0\ : STD_LOGIC;
  signal \count_latched[3]_i_14_n_0\ : STD_LOGIC;
  signal \count_latched[3]_i_15_n_0\ : STD_LOGIC;
  signal \count_latched[3]_i_8_n_0\ : STD_LOGIC;
  signal \count_latched[3]_i_9_n_0\ : STD_LOGIC;
  signal \count_latched_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_latched_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_latched_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \count_latched_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \count_latched_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \count_latched_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \count_latched_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \count_latched_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \count_latched_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \count_latched_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \count_latched_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \count_latched_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \count_latched_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \count_latched_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \count_latched_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \count_latched_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \count_latched_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \count_latched_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \^echo_count_mux\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^echo_symbols_mux\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal error_latched_i_10_n_0 : STD_LOGIC;
  signal error_latched_i_11_n_0 : STD_LOGIC;
  signal error_latched_i_12_n_0 : STD_LOGIC;
  signal error_latched_i_13_n_0 : STD_LOGIC;
  signal error_latched_i_14_n_0 : STD_LOGIC;
  signal error_latched_i_15_n_0 : STD_LOGIC;
  signal error_latched_i_8_n_0 : STD_LOGIC;
  signal error_latched_i_9_n_0 : STD_LOGIC;
  signal error_latched_reg_i_2_n_0 : STD_LOGIC;
  signal error_latched_reg_i_3_n_0 : STD_LOGIC;
  signal error_latched_reg_i_4_n_0 : STD_LOGIC;
  signal error_latched_reg_i_5_n_0 : STD_LOGIC;
  signal error_latched_reg_i_6_n_0 : STD_LOGIC;
  signal error_latched_reg_i_7_n_0 : STD_LOGIC;
  signal \mem_count_reg[0]_32\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[10]_42\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[11]_43\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[12]_44\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[13]_45\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[14]_46\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[15]_47\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[16]_48\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[17]_49\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[18]_50\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[19]_51\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[1]_33\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[20]_52\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[21]_53\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[22]_54\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[23]_55\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[24]_56\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[25]_57\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[26]_58\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[27]_59\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[28]_60\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[29]_61\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[2]_34\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[30]_62\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[31]_63\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[3]_35\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[4]_36\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[5]_37\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[6]_38\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[7]_39\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[8]_40\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_count_reg[9]_41\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_error_reg[0]__1\ : STD_LOGIC;
  signal \mem_error_reg[10]__1\ : STD_LOGIC;
  signal \mem_error_reg[11]__1\ : STD_LOGIC;
  signal \mem_error_reg[12]__1\ : STD_LOGIC;
  signal \mem_error_reg[13]__1\ : STD_LOGIC;
  signal \mem_error_reg[14]__1\ : STD_LOGIC;
  signal \mem_error_reg[15]__1\ : STD_LOGIC;
  signal \mem_error_reg[16]__1\ : STD_LOGIC;
  signal \mem_error_reg[17]__1\ : STD_LOGIC;
  signal \mem_error_reg[18]__1\ : STD_LOGIC;
  signal \mem_error_reg[19]__1\ : STD_LOGIC;
  signal \mem_error_reg[1]__1\ : STD_LOGIC;
  signal \mem_error_reg[20]__1\ : STD_LOGIC;
  signal \mem_error_reg[21]__1\ : STD_LOGIC;
  signal \mem_error_reg[22]__1\ : STD_LOGIC;
  signal \mem_error_reg[23]__1\ : STD_LOGIC;
  signal \mem_error_reg[24]__1\ : STD_LOGIC;
  signal \mem_error_reg[25]__1\ : STD_LOGIC;
  signal \mem_error_reg[26]__1\ : STD_LOGIC;
  signal \mem_error_reg[27]__1\ : STD_LOGIC;
  signal \mem_error_reg[28]__1\ : STD_LOGIC;
  signal \mem_error_reg[29]__1\ : STD_LOGIC;
  signal \mem_error_reg[2]__1\ : STD_LOGIC;
  signal \mem_error_reg[30]__1\ : STD_LOGIC;
  signal \mem_error_reg[31]__1\ : STD_LOGIC;
  signal \mem_error_reg[3]__1\ : STD_LOGIC;
  signal \mem_error_reg[4]__1\ : STD_LOGIC;
  signal \mem_error_reg[5]__1\ : STD_LOGIC;
  signal \mem_error_reg[6]__1\ : STD_LOGIC;
  signal \mem_error_reg[7]__1\ : STD_LOGIC;
  signal \mem_error_reg[8]__1\ : STD_LOGIC;
  signal \mem_error_reg[9]__1\ : STD_LOGIC;
  signal mem_symbols : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \mem_symbols[10][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[11][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[12][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[13][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[14][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[15][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[16][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[17][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[18][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[19][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[20][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[21][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[22][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[23][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[24][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[25][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[25][5]_i_2_n_0\ : STD_LOGIC;
  signal \mem_symbols[26][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[26][5]_i_2_n_0\ : STD_LOGIC;
  signal \mem_symbols[27][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[28][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[28][5]_i_2_n_0\ : STD_LOGIC;
  signal \mem_symbols[29][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[2][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[30][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[31][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[3][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[4][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[5][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[6][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[7][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[8][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols[9][5]_i_1_n_0\ : STD_LOGIC;
  signal \mem_symbols_reg[0]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[10]_10\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[11]_11\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[12]_12\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[13]_13\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[14]_14\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[15]_15\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[16]_16\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[17]_17\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[18]_18\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[19]_19\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[1]_1\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[20]_20\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[21]_21\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[22]_22\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[23]_23\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[24]_24\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[25]_25\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[26]_26\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[27]_27\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[28]_28\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[29]_29\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[2]_2\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[30]_30\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[31]_31\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[3]_3\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[4]_4\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[5]_5\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[6]_6\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[7]_7\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[8]_8\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \mem_symbols_reg[9]_9\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \msg_length[0]_i_1_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^read_idx_reg[4]_0\ : STD_LOGIC;
  signal \^read_idx_reg[4]_1\ : STD_LOGIC;
  signal \symbols_latched[0]_i_10_n_0\ : STD_LOGIC;
  signal \symbols_latched[0]_i_11_n_0\ : STD_LOGIC;
  signal \symbols_latched[0]_i_12_n_0\ : STD_LOGIC;
  signal \symbols_latched[0]_i_13_n_0\ : STD_LOGIC;
  signal \symbols_latched[0]_i_14_n_0\ : STD_LOGIC;
  signal \symbols_latched[0]_i_15_n_0\ : STD_LOGIC;
  signal \symbols_latched[0]_i_8_n_0\ : STD_LOGIC;
  signal \symbols_latched[0]_i_9_n_0\ : STD_LOGIC;
  signal \symbols_latched[1]_i_10_n_0\ : STD_LOGIC;
  signal \symbols_latched[1]_i_11_n_0\ : STD_LOGIC;
  signal \symbols_latched[1]_i_12_n_0\ : STD_LOGIC;
  signal \symbols_latched[1]_i_13_n_0\ : STD_LOGIC;
  signal \symbols_latched[1]_i_14_n_0\ : STD_LOGIC;
  signal \symbols_latched[1]_i_15_n_0\ : STD_LOGIC;
  signal \symbols_latched[1]_i_8_n_0\ : STD_LOGIC;
  signal \symbols_latched[1]_i_9_n_0\ : STD_LOGIC;
  signal \symbols_latched[2]_i_10_n_0\ : STD_LOGIC;
  signal \symbols_latched[2]_i_11_n_0\ : STD_LOGIC;
  signal \symbols_latched[2]_i_12_n_0\ : STD_LOGIC;
  signal \symbols_latched[2]_i_13_n_0\ : STD_LOGIC;
  signal \symbols_latched[2]_i_14_n_0\ : STD_LOGIC;
  signal \symbols_latched[2]_i_15_n_0\ : STD_LOGIC;
  signal \symbols_latched[2]_i_8_n_0\ : STD_LOGIC;
  signal \symbols_latched[2]_i_9_n_0\ : STD_LOGIC;
  signal \symbols_latched[3]_i_10_n_0\ : STD_LOGIC;
  signal \symbols_latched[3]_i_11_n_0\ : STD_LOGIC;
  signal \symbols_latched[3]_i_12_n_0\ : STD_LOGIC;
  signal \symbols_latched[3]_i_13_n_0\ : STD_LOGIC;
  signal \symbols_latched[3]_i_14_n_0\ : STD_LOGIC;
  signal \symbols_latched[3]_i_15_n_0\ : STD_LOGIC;
  signal \symbols_latched[3]_i_8_n_0\ : STD_LOGIC;
  signal \symbols_latched[3]_i_9_n_0\ : STD_LOGIC;
  signal \symbols_latched[4]_i_10_n_0\ : STD_LOGIC;
  signal \symbols_latched[4]_i_11_n_0\ : STD_LOGIC;
  signal \symbols_latched[4]_i_12_n_0\ : STD_LOGIC;
  signal \symbols_latched[4]_i_13_n_0\ : STD_LOGIC;
  signal \symbols_latched[4]_i_14_n_0\ : STD_LOGIC;
  signal \symbols_latched[4]_i_15_n_0\ : STD_LOGIC;
  signal \symbols_latched[4]_i_8_n_0\ : STD_LOGIC;
  signal \symbols_latched[4]_i_9_n_0\ : STD_LOGIC;
  signal \symbols_latched[5]_i_10_n_0\ : STD_LOGIC;
  signal \symbols_latched[5]_i_11_n_0\ : STD_LOGIC;
  signal \symbols_latched[5]_i_12_n_0\ : STD_LOGIC;
  signal \symbols_latched[5]_i_13_n_0\ : STD_LOGIC;
  signal \symbols_latched[5]_i_14_n_0\ : STD_LOGIC;
  signal \symbols_latched[5]_i_15_n_0\ : STD_LOGIC;
  signal \symbols_latched[5]_i_16_n_0\ : STD_LOGIC;
  signal \symbols_latched[5]_i_9_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[5]_i_7_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg[5]_i_8_n_0\ : STD_LOGIC;
  signal \write_ptr[0]_i_1_n_0\ : STD_LOGIC;
  signal write_ptr_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ascii_data[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ascii_data[3]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ascii_data[4]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ascii_data[6]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \mem_symbols[25][5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \mem_symbols[26][5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \mem_symbols[28][5]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \msg_length[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \msg_length[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \msg_length[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \msg_length[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \msg_length[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \msg_length[5]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_ptr[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_ptr[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_ptr[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \write_ptr[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_ptr[4]_i_1\ : label is "soft_lutpair3";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
  echo_count_mux(3 downto 0) <= \^echo_count_mux\(3 downto 0);
  echo_symbols_mux(5 downto 0) <= \^echo_symbols_mux\(5 downto 0);
  \read_idx_reg[4]_0\ <= \^read_idx_reg[4]_0\;
  \read_idx_reg[4]_1\ <= \^read_idx_reg[4]_1\;
\FSM_sequential_state[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_5_n_0\,
      I1 => long_enter_pulse,
      I2 => state(0),
      O => long_pulse_reg
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(5),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\ascii_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAAAA8AA8888"
    )
        port map (
      I0 => \^read_idx_reg[4]_1\,
      I1 => \^echo_count_mux\(3),
      I2 => \ascii_data_reg[0]\,
      I3 => \^echo_count_mux\(0),
      I4 => \^echo_symbols_mux\(4),
      I5 => \ascii_data_reg[0]_0\,
      O => D(0)
    );
\ascii_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAAAA8AA8888"
    )
        port map (
      I0 => \^read_idx_reg[4]_1\,
      I1 => \^echo_count_mux\(3),
      I2 => \ascii_data_reg[1]\,
      I3 => \^echo_count_mux\(0),
      I4 => \^echo_symbols_mux\(4),
      I5 => \ascii_data_reg[1]_0\,
      O => D(1)
    );
\ascii_data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AAA888"
    )
        port map (
      I0 => \^read_idx_reg[4]_1\,
      I1 => \^echo_count_mux\(3),
      I2 => \ascii_data_reg[2]\,
      I3 => \^echo_symbols_mux\(4),
      I4 => \ascii_data_reg[2]_0\,
      O => D(2)
    );
\ascii_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAAAA8AA8888"
    )
        port map (
      I0 => \^read_idx_reg[4]_1\,
      I1 => \^echo_count_mux\(3),
      I2 => \ascii_data_reg[3]\,
      I3 => \^echo_count_mux\(0),
      I4 => \^echo_symbols_mux\(4),
      I5 => \ascii_data_reg[3]_0\,
      O => D(3)
    );
\ascii_data[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^echo_symbols_mux\(5),
      I1 => \^read_idx_reg[4]_0\,
      O => \read_idx_reg[4]\
    );
\ascii_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA888A8"
    )
        port map (
      I0 => \^read_idx_reg[4]_1\,
      I1 => \^echo_count_mux\(3),
      I2 => \ascii_data_reg[4]\,
      I3 => \^echo_count_mux\(0),
      I4 => \ascii_data_reg[4]_0\,
      I5 => \^echo_symbols_mux\(4),
      O => D(4)
    );
\ascii_data[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \^echo_count_mux\(0),
      I1 => \^echo_count_mux\(3),
      I2 => \^read_idx_reg[4]_0\,
      I3 => \^echo_count_mux\(2),
      O => \^read_idx_reg[4]_1\
    );
\ascii_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFEAA"
    )
        port map (
      I0 => \^echo_symbols_mux\(4),
      I1 => \ascii_data_reg[5]\,
      I2 => \^echo_count_mux\(2),
      I3 => \^echo_count_mux\(0),
      I4 => \ascii_data_reg[5]_0\,
      I5 => \ascii_data[6]_i_5_n_0\,
      O => D(5)
    );
\ascii_data[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \^echo_symbols_mux\(4),
      I1 => \ascii_data[6]_i_3_n_0\,
      I2 => \^echo_count_mux\(0),
      I3 => \ascii_data[6]_i_4_n_0\,
      I4 => \ascii_data[6]_i_5_n_0\,
      O => D(6)
    );
\ascii_data[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001010105"
    )
        port map (
      I0 => \^echo_symbols_mux\(5),
      I1 => \^read_idx_reg[4]_0\,
      I2 => \^echo_symbols_mux\(3),
      I3 => \^echo_symbols_mux\(1),
      I4 => \^echo_symbols_mux\(2),
      I5 => \^echo_count_mux\(2),
      O => \ascii_data[6]_i_3_n_0\
    );
\ascii_data[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000000FF000101"
    )
        port map (
      I0 => \^echo_symbols_mux\(5),
      I1 => \^read_idx_reg[4]_0\,
      I2 => \^echo_symbols_mux\(3),
      I3 => \ascii_data_reg[6]\,
      I4 => \^echo_count_mux\(2),
      I5 => \^echo_symbols_mux\(2),
      O => \ascii_data[6]_i_4_n_0\
    );
\ascii_data[6]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^echo_count_mux\(3),
      I1 => \^read_idx_reg[4]_1\,
      O => \ascii_data[6]_i_5_n_0\
    );
\count_latched[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \count_latched_reg[0]_i_2_n_0\,
      I1 => error_latched_reg(4),
      I2 => \count_latched_reg[0]_i_3_n_0\,
      I3 => replay_active,
      I4 => \mem_count_reg[0][3]_0\(0),
      O => \^echo_count_mux\(0)
    );
\count_latched[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[27]_59\(0),
      I1 => \mem_count_reg[26]_58\(0),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[25]_57\(0),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[24]_56\(0),
      O => \count_latched[0]_i_10_n_0\
    );
\count_latched[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[31]_63\(0),
      I1 => \mem_count_reg[30]_62\(0),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[29]_61\(0),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[28]_60\(0),
      O => \count_latched[0]_i_11_n_0\
    );
\count_latched[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[3]_35\(0),
      I1 => \mem_count_reg[2]_34\(0),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[1]_33\(0),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[0]_32\(0),
      O => \count_latched[0]_i_12_n_0\
    );
\count_latched[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[7]_39\(0),
      I1 => \mem_count_reg[6]_38\(0),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[5]_37\(0),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[4]_36\(0),
      O => \count_latched[0]_i_13_n_0\
    );
\count_latched[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[11]_43\(0),
      I1 => \mem_count_reg[10]_42\(0),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[9]_41\(0),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[8]_40\(0),
      O => \count_latched[0]_i_14_n_0\
    );
\count_latched[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[15]_47\(0),
      I1 => \mem_count_reg[14]_46\(0),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[13]_45\(0),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[12]_44\(0),
      O => \count_latched[0]_i_15_n_0\
    );
\count_latched[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[19]_51\(0),
      I1 => \mem_count_reg[18]_50\(0),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[17]_49\(0),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[16]_48\(0),
      O => \count_latched[0]_i_8_n_0\
    );
\count_latched[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[23]_55\(0),
      I1 => \mem_count_reg[22]_54\(0),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[21]_53\(0),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[20]_52\(0),
      O => \count_latched[0]_i_9_n_0\
    );
\count_latched[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^read_idx_reg[4]_0\,
      O => \^echo_count_mux\(1)
    );
\count_latched[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[11]_43\(1),
      I1 => \mem_count_reg[10]_42\(1),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[9]_41\(1),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[8]_40\(1),
      O => \count_latched[1]_i_10_n_0\
    );
\count_latched[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[7]_39\(1),
      I1 => \mem_count_reg[6]_38\(1),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[5]_37\(1),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[4]_36\(1),
      O => \count_latched[1]_i_11_n_0\
    );
\count_latched[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[3]_35\(1),
      I1 => \mem_count_reg[2]_34\(1),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[1]_33\(1),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[0]_32\(1),
      O => \count_latched[1]_i_12_n_0\
    );
\count_latched[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B800B8FF"
    )
        port map (
      I0 => \count_latched[1]_i_3_n_0\,
      I1 => error_latched_reg(4),
      I2 => \count_latched[1]_i_4_n_0\,
      I3 => replay_active,
      I4 => \mem_count_reg[0][3]_0\(1),
      O => \^read_idx_reg[4]_0\
    );
\count_latched[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \count_latched[1]_i_5_n_0\,
      I1 => \count_latched[1]_i_6_n_0\,
      I2 => error_latched_reg(3),
      I3 => \count_latched[1]_i_7_n_0\,
      I4 => error_latched_reg(2),
      I5 => \count_latched[1]_i_8_n_0\,
      O => \count_latched[1]_i_3_n_0\
    );
\count_latched[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \count_latched[1]_i_9_n_0\,
      I1 => \count_latched[1]_i_10_n_0\,
      I2 => error_latched_reg(3),
      I3 => \count_latched[1]_i_11_n_0\,
      I4 => error_latched_reg(2),
      I5 => \count_latched[1]_i_12_n_0\,
      O => \count_latched[1]_i_4_n_0\
    );
\count_latched[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[31]_63\(1),
      I1 => \mem_count_reg[30]_62\(1),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[29]_61\(1),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[28]_60\(1),
      O => \count_latched[1]_i_5_n_0\
    );
\count_latched[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[27]_59\(1),
      I1 => \mem_count_reg[26]_58\(1),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[25]_57\(1),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[24]_56\(1),
      O => \count_latched[1]_i_6_n_0\
    );
\count_latched[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[23]_55\(1),
      I1 => \mem_count_reg[22]_54\(1),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[21]_53\(1),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[20]_52\(1),
      O => \count_latched[1]_i_7_n_0\
    );
\count_latched[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[19]_51\(1),
      I1 => \mem_count_reg[18]_50\(1),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[17]_49\(1),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[16]_48\(1),
      O => \count_latched[1]_i_8_n_0\
    );
\count_latched[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[15]_47\(1),
      I1 => \mem_count_reg[14]_46\(1),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[13]_45\(1),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[12]_44\(1),
      O => \count_latched[1]_i_9_n_0\
    );
\count_latched[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \count_latched_reg[2]_i_2_n_0\,
      I1 => error_latched_reg(4),
      I2 => \count_latched_reg[2]_i_3_n_0\,
      I3 => replay_active,
      I4 => \mem_count_reg[0][3]_0\(2),
      O => \^echo_count_mux\(2)
    );
\count_latched[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[27]_59\(2),
      I1 => \mem_count_reg[26]_58\(2),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[25]_57\(2),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[24]_56\(2),
      O => \count_latched[2]_i_10_n_0\
    );
\count_latched[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[31]_63\(2),
      I1 => \mem_count_reg[30]_62\(2),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[29]_61\(2),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[28]_60\(2),
      O => \count_latched[2]_i_11_n_0\
    );
\count_latched[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[3]_35\(2),
      I1 => \mem_count_reg[2]_34\(2),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[1]_33\(2),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[0]_32\(2),
      O => \count_latched[2]_i_12_n_0\
    );
\count_latched[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[7]_39\(2),
      I1 => \mem_count_reg[6]_38\(2),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[5]_37\(2),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[4]_36\(2),
      O => \count_latched[2]_i_13_n_0\
    );
\count_latched[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[11]_43\(2),
      I1 => \mem_count_reg[10]_42\(2),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[9]_41\(2),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[8]_40\(2),
      O => \count_latched[2]_i_14_n_0\
    );
\count_latched[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[15]_47\(2),
      I1 => \mem_count_reg[14]_46\(2),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[13]_45\(2),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[12]_44\(2),
      O => \count_latched[2]_i_15_n_0\
    );
\count_latched[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[19]_51\(2),
      I1 => \mem_count_reg[18]_50\(2),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[17]_49\(2),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[16]_48\(2),
      O => \count_latched[2]_i_8_n_0\
    );
\count_latched[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[23]_55\(2),
      I1 => \mem_count_reg[22]_54\(2),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[21]_53\(2),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[20]_52\(2),
      O => \count_latched[2]_i_9_n_0\
    );
\count_latched[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \count_latched_reg[3]_i_2_n_0\,
      I1 => error_latched_reg(4),
      I2 => \count_latched_reg[3]_i_3_n_0\,
      I3 => replay_active,
      I4 => \mem_count_reg[0][3]_0\(3),
      O => \^echo_count_mux\(3)
    );
\count_latched[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[27]_59\(3),
      I1 => \mem_count_reg[26]_58\(3),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[25]_57\(3),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[24]_56\(3),
      O => \count_latched[3]_i_10_n_0\
    );
\count_latched[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[31]_63\(3),
      I1 => \mem_count_reg[30]_62\(3),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[29]_61\(3),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[28]_60\(3),
      O => \count_latched[3]_i_11_n_0\
    );
\count_latched[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[3]_35\(3),
      I1 => \mem_count_reg[2]_34\(3),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[1]_33\(3),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[0]_32\(3),
      O => \count_latched[3]_i_12_n_0\
    );
\count_latched[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[7]_39\(3),
      I1 => \mem_count_reg[6]_38\(3),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[5]_37\(3),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[4]_36\(3),
      O => \count_latched[3]_i_13_n_0\
    );
\count_latched[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[11]_43\(3),
      I1 => \mem_count_reg[10]_42\(3),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[9]_41\(3),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[8]_40\(3),
      O => \count_latched[3]_i_14_n_0\
    );
\count_latched[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[15]_47\(3),
      I1 => \mem_count_reg[14]_46\(3),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[13]_45\(3),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[12]_44\(3),
      O => \count_latched[3]_i_15_n_0\
    );
\count_latched[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[19]_51\(3),
      I1 => \mem_count_reg[18]_50\(3),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[17]_49\(3),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[16]_48\(3),
      O => \count_latched[3]_i_8_n_0\
    );
\count_latched[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_count_reg[23]_55\(3),
      I1 => \mem_count_reg[22]_54\(3),
      I2 => error_latched_reg(1),
      I3 => \mem_count_reg[21]_53\(3),
      I4 => error_latched_reg(0),
      I5 => \mem_count_reg[20]_52\(3),
      O => \count_latched[3]_i_9_n_0\
    );
\count_latched_reg[0]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \count_latched_reg[0]_i_4_n_0\,
      I1 => \count_latched_reg[0]_i_5_n_0\,
      O => \count_latched_reg[0]_i_2_n_0\,
      S => error_latched_reg(3)
    );
\count_latched_reg[0]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \count_latched_reg[0]_i_6_n_0\,
      I1 => \count_latched_reg[0]_i_7_n_0\,
      O => \count_latched_reg[0]_i_3_n_0\,
      S => error_latched_reg(3)
    );
\count_latched_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count_latched[0]_i_8_n_0\,
      I1 => \count_latched[0]_i_9_n_0\,
      O => \count_latched_reg[0]_i_4_n_0\,
      S => error_latched_reg(2)
    );
\count_latched_reg[0]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count_latched[0]_i_10_n_0\,
      I1 => \count_latched[0]_i_11_n_0\,
      O => \count_latched_reg[0]_i_5_n_0\,
      S => error_latched_reg(2)
    );
\count_latched_reg[0]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count_latched[0]_i_12_n_0\,
      I1 => \count_latched[0]_i_13_n_0\,
      O => \count_latched_reg[0]_i_6_n_0\,
      S => error_latched_reg(2)
    );
\count_latched_reg[0]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count_latched[0]_i_14_n_0\,
      I1 => \count_latched[0]_i_15_n_0\,
      O => \count_latched_reg[0]_i_7_n_0\,
      S => error_latched_reg(2)
    );
\count_latched_reg[2]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \count_latched_reg[2]_i_4_n_0\,
      I1 => \count_latched_reg[2]_i_5_n_0\,
      O => \count_latched_reg[2]_i_2_n_0\,
      S => error_latched_reg(3)
    );
\count_latched_reg[2]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \count_latched_reg[2]_i_6_n_0\,
      I1 => \count_latched_reg[2]_i_7_n_0\,
      O => \count_latched_reg[2]_i_3_n_0\,
      S => error_latched_reg(3)
    );
\count_latched_reg[2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count_latched[2]_i_8_n_0\,
      I1 => \count_latched[2]_i_9_n_0\,
      O => \count_latched_reg[2]_i_4_n_0\,
      S => error_latched_reg(2)
    );
\count_latched_reg[2]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count_latched[2]_i_10_n_0\,
      I1 => \count_latched[2]_i_11_n_0\,
      O => \count_latched_reg[2]_i_5_n_0\,
      S => error_latched_reg(2)
    );
\count_latched_reg[2]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count_latched[2]_i_12_n_0\,
      I1 => \count_latched[2]_i_13_n_0\,
      O => \count_latched_reg[2]_i_6_n_0\,
      S => error_latched_reg(2)
    );
\count_latched_reg[2]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count_latched[2]_i_14_n_0\,
      I1 => \count_latched[2]_i_15_n_0\,
      O => \count_latched_reg[2]_i_7_n_0\,
      S => error_latched_reg(2)
    );
\count_latched_reg[3]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \count_latched_reg[3]_i_4_n_0\,
      I1 => \count_latched_reg[3]_i_5_n_0\,
      O => \count_latched_reg[3]_i_2_n_0\,
      S => error_latched_reg(3)
    );
\count_latched_reg[3]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \count_latched_reg[3]_i_6_n_0\,
      I1 => \count_latched_reg[3]_i_7_n_0\,
      O => \count_latched_reg[3]_i_3_n_0\,
      S => error_latched_reg(3)
    );
\count_latched_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count_latched[3]_i_8_n_0\,
      I1 => \count_latched[3]_i_9_n_0\,
      O => \count_latched_reg[3]_i_4_n_0\,
      S => error_latched_reg(2)
    );
\count_latched_reg[3]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count_latched[3]_i_10_n_0\,
      I1 => \count_latched[3]_i_11_n_0\,
      O => \count_latched_reg[3]_i_5_n_0\,
      S => error_latched_reg(2)
    );
\count_latched_reg[3]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count_latched[3]_i_12_n_0\,
      I1 => \count_latched[3]_i_13_n_0\,
      O => \count_latched_reg[3]_i_6_n_0\,
      S => error_latched_reg(2)
    );
\count_latched_reg[3]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \count_latched[3]_i_14_n_0\,
      I1 => \count_latched[3]_i_15_n_0\,
      O => \count_latched_reg[3]_i_7_n_0\,
      S => error_latched_reg(2)
    );
error_latched_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => error_latched_reg_i_2_n_0,
      I1 => error_latched_reg(4),
      I2 => error_latched_reg_i_3_n_0,
      I3 => replay_active,
      I4 => fsm_decode_error,
      O => echo_error_mux
    );
error_latched_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_error_reg[27]__1\,
      I1 => \mem_error_reg[26]__1\,
      I2 => error_latched_reg(1),
      I3 => \mem_error_reg[25]__1\,
      I4 => error_latched_reg(0),
      I5 => \mem_error_reg[24]__1\,
      O => error_latched_i_10_n_0
    );
error_latched_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_error_reg[31]__1\,
      I1 => \mem_error_reg[30]__1\,
      I2 => error_latched_reg(1),
      I3 => \mem_error_reg[29]__1\,
      I4 => error_latched_reg(0),
      I5 => \mem_error_reg[28]__1\,
      O => error_latched_i_11_n_0
    );
error_latched_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_error_reg[3]__1\,
      I1 => \mem_error_reg[2]__1\,
      I2 => error_latched_reg(1),
      I3 => \mem_error_reg[1]__1\,
      I4 => error_latched_reg(0),
      I5 => \mem_error_reg[0]__1\,
      O => error_latched_i_12_n_0
    );
error_latched_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_error_reg[7]__1\,
      I1 => \mem_error_reg[6]__1\,
      I2 => error_latched_reg(1),
      I3 => \mem_error_reg[5]__1\,
      I4 => error_latched_reg(0),
      I5 => \mem_error_reg[4]__1\,
      O => error_latched_i_13_n_0
    );
error_latched_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_error_reg[11]__1\,
      I1 => \mem_error_reg[10]__1\,
      I2 => error_latched_reg(1),
      I3 => \mem_error_reg[9]__1\,
      I4 => error_latched_reg(0),
      I5 => \mem_error_reg[8]__1\,
      O => error_latched_i_14_n_0
    );
error_latched_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_error_reg[15]__1\,
      I1 => \mem_error_reg[14]__1\,
      I2 => error_latched_reg(1),
      I3 => \mem_error_reg[13]__1\,
      I4 => error_latched_reg(0),
      I5 => \mem_error_reg[12]__1\,
      O => error_latched_i_15_n_0
    );
error_latched_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_error_reg[19]__1\,
      I1 => \mem_error_reg[18]__1\,
      I2 => error_latched_reg(1),
      I3 => \mem_error_reg[17]__1\,
      I4 => error_latched_reg(0),
      I5 => \mem_error_reg[16]__1\,
      O => error_latched_i_8_n_0
    );
error_latched_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_error_reg[23]__1\,
      I1 => \mem_error_reg[22]__1\,
      I2 => error_latched_reg(1),
      I3 => \mem_error_reg[21]__1\,
      I4 => error_latched_reg(0),
      I5 => \mem_error_reg[20]__1\,
      O => error_latched_i_9_n_0
    );
error_latched_reg_i_2: unisim.vcomponents.MUXF8
     port map (
      I0 => error_latched_reg_i_4_n_0,
      I1 => error_latched_reg_i_5_n_0,
      O => error_latched_reg_i_2_n_0,
      S => error_latched_reg(3)
    );
error_latched_reg_i_3: unisim.vcomponents.MUXF8
     port map (
      I0 => error_latched_reg_i_6_n_0,
      I1 => error_latched_reg_i_7_n_0,
      O => error_latched_reg_i_3_n_0,
      S => error_latched_reg(3)
    );
error_latched_reg_i_4: unisim.vcomponents.MUXF7
     port map (
      I0 => error_latched_i_8_n_0,
      I1 => error_latched_i_9_n_0,
      O => error_latched_reg_i_4_n_0,
      S => error_latched_reg(2)
    );
error_latched_reg_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => error_latched_i_10_n_0,
      I1 => error_latched_i_11_n_0,
      O => error_latched_reg_i_5_n_0,
      S => error_latched_reg(2)
    );
error_latched_reg_i_6: unisim.vcomponents.MUXF7
     port map (
      I0 => error_latched_i_12_n_0,
      I1 => error_latched_i_13_n_0,
      O => error_latched_reg_i_6_n_0,
      S => error_latched_reg(2)
    );
error_latched_reg_i_7: unisim.vcomponents.MUXF7
     port map (
      I0 => error_latched_i_14_n_0,
      I1 => error_latched_i_15_n_0,
      O => error_latched_reg_i_7_n_0,
      S => error_latched_reg(2)
    );
\mem_count_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_symbols(0),
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[0]_32\(0),
      R => rst
    );
\mem_count_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_symbols(0),
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[0]_32\(1),
      R => rst
    );
\mem_count_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_symbols(0),
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[0]_32\(2),
      R => rst
    );
\mem_count_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_symbols(0),
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[0]_32\(3),
      R => rst
    );
\mem_count_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[10][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[10]_42\(0),
      R => rst
    );
\mem_count_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[10][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[10]_42\(1),
      R => rst
    );
\mem_count_reg[10][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[10][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[10]_42\(2),
      R => rst
    );
\mem_count_reg[10][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[10][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[10]_42\(3),
      R => rst
    );
\mem_count_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[11][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[11]_43\(0),
      R => rst
    );
\mem_count_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[11][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[11]_43\(1),
      R => rst
    );
\mem_count_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[11][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[11]_43\(2),
      R => rst
    );
\mem_count_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[11][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[11]_43\(3),
      R => rst
    );
\mem_count_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[12][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[12]_44\(0),
      R => rst
    );
\mem_count_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[12][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[12]_44\(1),
      R => rst
    );
\mem_count_reg[12][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[12][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[12]_44\(2),
      R => rst
    );
\mem_count_reg[12][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[12][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[12]_44\(3),
      R => rst
    );
\mem_count_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[13][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[13]_45\(0),
      R => rst
    );
\mem_count_reg[13][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[13][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[13]_45\(1),
      R => rst
    );
\mem_count_reg[13][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[13][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[13]_45\(2),
      R => rst
    );
\mem_count_reg[13][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[13][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[13]_45\(3),
      R => rst
    );
\mem_count_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[14][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[14]_46\(0),
      R => rst
    );
\mem_count_reg[14][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[14][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[14]_46\(1),
      R => rst
    );
\mem_count_reg[14][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[14][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[14]_46\(2),
      R => rst
    );
\mem_count_reg[14][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[14][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[14]_46\(3),
      R => rst
    );
\mem_count_reg[15][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[15][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[15]_47\(0),
      R => rst
    );
\mem_count_reg[15][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[15][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[15]_47\(1),
      R => rst
    );
\mem_count_reg[15][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[15][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[15]_47\(2),
      R => rst
    );
\mem_count_reg[15][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[15][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[15]_47\(3),
      R => rst
    );
\mem_count_reg[16][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[16][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[16]_48\(0),
      R => rst
    );
\mem_count_reg[16][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[16][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[16]_48\(1),
      R => rst
    );
\mem_count_reg[16][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[16][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[16]_48\(2),
      R => rst
    );
\mem_count_reg[16][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[16][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[16]_48\(3),
      R => rst
    );
\mem_count_reg[17][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[17][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[17]_49\(0),
      R => rst
    );
\mem_count_reg[17][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[17][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[17]_49\(1),
      R => rst
    );
\mem_count_reg[17][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[17][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[17]_49\(2),
      R => rst
    );
\mem_count_reg[17][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[17][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[17]_49\(3),
      R => rst
    );
\mem_count_reg[18][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[18][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[18]_50\(0),
      R => rst
    );
\mem_count_reg[18][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[18][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[18]_50\(1),
      R => rst
    );
\mem_count_reg[18][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[18][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[18]_50\(2),
      R => rst
    );
\mem_count_reg[18][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[18][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[18]_50\(3),
      R => rst
    );
\mem_count_reg[19][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[19][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[19]_51\(0),
      R => rst
    );
\mem_count_reg[19][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[19][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[19]_51\(1),
      R => rst
    );
\mem_count_reg[19][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[19][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[19]_51\(2),
      R => rst
    );
\mem_count_reg[19][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[19][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[19]_51\(3),
      R => rst
    );
\mem_count_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[1][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[1]_33\(0),
      R => rst
    );
\mem_count_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[1][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[1]_33\(1),
      R => rst
    );
\mem_count_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[1][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[1]_33\(2),
      R => rst
    );
\mem_count_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[1][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[1]_33\(3),
      R => rst
    );
\mem_count_reg[20][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[20][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[20]_52\(0),
      R => rst
    );
\mem_count_reg[20][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[20][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[20]_52\(1),
      R => rst
    );
\mem_count_reg[20][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[20][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[20]_52\(2),
      R => rst
    );
\mem_count_reg[20][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[20][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[20]_52\(3),
      R => rst
    );
\mem_count_reg[21][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[21][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[21]_53\(0),
      R => rst
    );
\mem_count_reg[21][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[21][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[21]_53\(1),
      R => rst
    );
\mem_count_reg[21][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[21][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[21]_53\(2),
      R => rst
    );
\mem_count_reg[21][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[21][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[21]_53\(3),
      R => rst
    );
\mem_count_reg[22][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[22][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[22]_54\(0),
      R => rst
    );
\mem_count_reg[22][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[22][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[22]_54\(1),
      R => rst
    );
\mem_count_reg[22][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[22][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[22]_54\(2),
      R => rst
    );
\mem_count_reg[22][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[22][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[22]_54\(3),
      R => rst
    );
\mem_count_reg[23][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[23][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[23]_55\(0),
      R => rst
    );
\mem_count_reg[23][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[23][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[23]_55\(1),
      R => rst
    );
\mem_count_reg[23][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[23][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[23]_55\(2),
      R => rst
    );
\mem_count_reg[23][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[23][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[23]_55\(3),
      R => rst
    );
\mem_count_reg[24][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[24][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[24]_56\(0),
      R => rst
    );
\mem_count_reg[24][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[24][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[24]_56\(1),
      R => rst
    );
\mem_count_reg[24][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[24][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[24]_56\(2),
      R => rst
    );
\mem_count_reg[24][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[24][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[24]_56\(3),
      R => rst
    );
\mem_count_reg[25][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[25][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[25]_57\(0),
      R => rst
    );
\mem_count_reg[25][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[25][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[25]_57\(1),
      R => rst
    );
\mem_count_reg[25][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[25][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[25]_57\(2),
      R => rst
    );
\mem_count_reg[25][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[25][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[25]_57\(3),
      R => rst
    );
\mem_count_reg[26][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[26][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[26]_58\(0),
      R => rst
    );
\mem_count_reg[26][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[26][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[26]_58\(1),
      R => rst
    );
\mem_count_reg[26][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[26][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[26]_58\(2),
      R => rst
    );
\mem_count_reg[26][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[26][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[26]_58\(3),
      R => rst
    );
\mem_count_reg[27][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[27][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[27]_59\(0),
      R => rst
    );
\mem_count_reg[27][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[27][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[27]_59\(1),
      R => rst
    );
\mem_count_reg[27][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[27][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[27]_59\(2),
      R => rst
    );
\mem_count_reg[27][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[27][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[27]_59\(3),
      R => rst
    );
\mem_count_reg[28][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[28][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[28]_60\(0),
      R => rst
    );
\mem_count_reg[28][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[28][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[28]_60\(1),
      R => rst
    );
\mem_count_reg[28][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[28][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[28]_60\(2),
      R => rst
    );
\mem_count_reg[28][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[28][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[28]_60\(3),
      R => rst
    );
\mem_count_reg[29][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[29][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[29]_61\(0),
      R => rst
    );
\mem_count_reg[29][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[29][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[29]_61\(1),
      R => rst
    );
\mem_count_reg[29][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[29][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[29]_61\(2),
      R => rst
    );
\mem_count_reg[29][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[29][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[29]_61\(3),
      R => rst
    );
\mem_count_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[2][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[2]_34\(0),
      R => rst
    );
\mem_count_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[2][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[2]_34\(1),
      R => rst
    );
\mem_count_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[2][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[2]_34\(2),
      R => rst
    );
\mem_count_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[2][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[2]_34\(3),
      R => rst
    );
\mem_count_reg[30][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[30][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[30]_62\(0),
      R => rst
    );
\mem_count_reg[30][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[30][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[30]_62\(1),
      R => rst
    );
\mem_count_reg[30][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[30][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[30]_62\(2),
      R => rst
    );
\mem_count_reg[30][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[30][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[30]_62\(3),
      R => rst
    );
\mem_count_reg[31][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[31][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[31]_63\(0),
      R => rst
    );
\mem_count_reg[31][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[31][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[31]_63\(1),
      R => rst
    );
\mem_count_reg[31][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[31][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[31]_63\(2),
      R => rst
    );
\mem_count_reg[31][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[31][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[31]_63\(3),
      R => rst
    );
\mem_count_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[3][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[3]_35\(0),
      R => rst
    );
\mem_count_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[3][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[3]_35\(1),
      R => rst
    );
\mem_count_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[3][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[3]_35\(2),
      R => rst
    );
\mem_count_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[3][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[3]_35\(3),
      R => rst
    );
\mem_count_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[4][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[4]_36\(0),
      R => rst
    );
\mem_count_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[4][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[4]_36\(1),
      R => rst
    );
\mem_count_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[4][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[4]_36\(2),
      R => rst
    );
\mem_count_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[4][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[4]_36\(3),
      R => rst
    );
\mem_count_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[5][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[5]_37\(0),
      R => rst
    );
\mem_count_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[5][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[5]_37\(1),
      R => rst
    );
\mem_count_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[5][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[5]_37\(2),
      R => rst
    );
\mem_count_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[5][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[5]_37\(3),
      R => rst
    );
\mem_count_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[6][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[6]_38\(0),
      R => rst
    );
\mem_count_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[6][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[6]_38\(1),
      R => rst
    );
\mem_count_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[6][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[6]_38\(2),
      R => rst
    );
\mem_count_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[6][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[6]_38\(3),
      R => rst
    );
\mem_count_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[7][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[7]_39\(0),
      R => rst
    );
\mem_count_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[7][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[7]_39\(1),
      R => rst
    );
\mem_count_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[7][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[7]_39\(2),
      R => rst
    );
\mem_count_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[7][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[7]_39\(3),
      R => rst
    );
\mem_count_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[8][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[8]_40\(0),
      R => rst
    );
\mem_count_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[8][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[8]_40\(1),
      R => rst
    );
\mem_count_reg[8][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[8][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[8]_40\(2),
      R => rst
    );
\mem_count_reg[8][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[8][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[8]_40\(3),
      R => rst
    );
\mem_count_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[9][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(0),
      Q => \mem_count_reg[9]_41\(0),
      R => rst
    );
\mem_count_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[9][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(1),
      Q => \mem_count_reg[9]_41\(1),
      R => rst
    );
\mem_count_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[9][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(2),
      Q => \mem_count_reg[9]_41\(2),
      R => rst
    );
\mem_count_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[9][5]_i_1_n_0\,
      D => \mem_count_reg[0][3]_0\(3),
      Q => \mem_count_reg[9]_41\(3),
      R => rst
    );
\mem_error_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_symbols(0),
      D => fsm_buf_write_error,
      Q => \mem_error_reg[0]__1\,
      R => rst
    );
\mem_error_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[10][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[10]__1\,
      R => rst
    );
\mem_error_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[11][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[11]__1\,
      R => rst
    );
\mem_error_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[12][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[12]__1\,
      R => rst
    );
\mem_error_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[13][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[13]__1\,
      R => rst
    );
\mem_error_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[14][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[14]__1\,
      R => rst
    );
\mem_error_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[15][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[15]__1\,
      R => rst
    );
\mem_error_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[16][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[16]__1\,
      R => rst
    );
\mem_error_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[17][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[17]__1\,
      R => rst
    );
\mem_error_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[18][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[18]__1\,
      R => rst
    );
\mem_error_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[19][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[19]__1\,
      R => rst
    );
\mem_error_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[1][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[1]__1\,
      R => rst
    );
\mem_error_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[20][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[20]__1\,
      R => rst
    );
\mem_error_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[21][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[21]__1\,
      R => rst
    );
\mem_error_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[22][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[22]__1\,
      R => rst
    );
\mem_error_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[23][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[23]__1\,
      R => rst
    );
\mem_error_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[24][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[24]__1\,
      R => rst
    );
\mem_error_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[25][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[25]__1\,
      R => rst
    );
\mem_error_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[26][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[26]__1\,
      R => rst
    );
\mem_error_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[27][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[27]__1\,
      R => rst
    );
\mem_error_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[28][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[28]__1\,
      R => rst
    );
\mem_error_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[29][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[29]__1\,
      R => rst
    );
\mem_error_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[2][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[2]__1\,
      R => rst
    );
\mem_error_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[30][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[30]__1\,
      R => rst
    );
\mem_error_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[31][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[31]__1\,
      R => rst
    );
\mem_error_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[3][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[3]__1\,
      R => rst
    );
\mem_error_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[4][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[4]__1\,
      R => rst
    );
\mem_error_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[5][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[5]__1\,
      R => rst
    );
\mem_error_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[6][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[6]__1\,
      R => rst
    );
\mem_error_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[7][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[7]__1\,
      R => rst
    );
\mem_error_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[8][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[8]__1\,
      R => rst
    );
\mem_error_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[9][5]_i_1_n_0\,
      D => fsm_buf_write_error,
      Q => \mem_error_reg[9]__1\,
      R => rst
    );
\mem_symbols[0][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \mem_error_reg[9]_0\,
      I1 => write_ptr_reg(3),
      I2 => write_ptr_reg(0),
      I3 => write_ptr_reg(4),
      I4 => write_ptr_reg(1),
      I5 => write_ptr_reg(2),
      O => mem_symbols(0)
    );
\mem_symbols[10][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => write_ptr_reg(0),
      I1 => \mem_error_reg[9]_0\,
      I2 => write_ptr_reg(3),
      I3 => write_ptr_reg(2),
      I4 => write_ptr_reg(1),
      I5 => write_ptr_reg(4),
      O => \mem_symbols[10][5]_i_1_n_0\
    );
\mem_symbols[11][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => write_ptr_reg(2),
      I1 => write_ptr_reg(1),
      I2 => write_ptr_reg(0),
      I3 => \mem_error_reg[9]_0\,
      I4 => write_ptr_reg(3),
      I5 => write_ptr_reg(4),
      O => \mem_symbols[11][5]_i_1_n_0\
    );
\mem_symbols[12][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => write_ptr_reg(1),
      I1 => write_ptr_reg(2),
      I2 => write_ptr_reg(4),
      I3 => write_ptr_reg(0),
      I4 => \mem_error_reg[9]_0\,
      I5 => write_ptr_reg(3),
      O => \mem_symbols[12][5]_i_1_n_0\
    );
\mem_symbols[13][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => write_ptr_reg(3),
      I1 => \mem_error_reg[9]_0\,
      I2 => write_ptr_reg(4),
      I3 => write_ptr_reg(2),
      I4 => write_ptr_reg(1),
      I5 => write_ptr_reg(0),
      O => \mem_symbols[13][5]_i_1_n_0\
    );
\mem_symbols[14][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => write_ptr_reg(0),
      I1 => \mem_error_reg[9]_0\,
      I2 => write_ptr_reg(3),
      I3 => write_ptr_reg(2),
      I4 => write_ptr_reg(4),
      I5 => write_ptr_reg(1),
      O => \mem_symbols[14][5]_i_1_n_0\
    );
\mem_symbols[15][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => write_ptr_reg(2),
      I1 => write_ptr_reg(1),
      I2 => write_ptr_reg(0),
      I3 => \mem_error_reg[9]_0\,
      I4 => write_ptr_reg(3),
      I5 => write_ptr_reg(4),
      O => \mem_symbols[15][5]_i_1_n_0\
    );
\mem_symbols[16][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \mem_error_reg[9]_0\,
      I1 => write_ptr_reg(2),
      I2 => write_ptr_reg(0),
      I3 => write_ptr_reg(4),
      I4 => write_ptr_reg(3),
      I5 => write_ptr_reg(1),
      O => \mem_symbols[16][5]_i_1_n_0\
    );
\mem_symbols[17][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \mem_error_reg[9]_0\,
      I1 => write_ptr_reg(3),
      I2 => write_ptr_reg(0),
      I3 => write_ptr_reg(1),
      I4 => write_ptr_reg(2),
      I5 => write_ptr_reg(4),
      O => \mem_symbols[17][5]_i_1_n_0\
    );
\mem_symbols[18][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000080000"
    )
        port map (
      I0 => \mem_error_reg[9]_0\,
      I1 => write_ptr_reg(1),
      I2 => write_ptr_reg(2),
      I3 => write_ptr_reg(0),
      I4 => write_ptr_reg(4),
      I5 => write_ptr_reg(3),
      O => \mem_symbols[18][5]_i_1_n_0\
    );
\mem_symbols[19][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => \mem_error_reg[9]_0\,
      I1 => write_ptr_reg(3),
      I2 => write_ptr_reg(0),
      I3 => write_ptr_reg(1),
      I4 => write_ptr_reg(2),
      I5 => write_ptr_reg(4),
      O => \mem_symbols[19][5]_i_1_n_0\
    );
\mem_symbols[1][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \mem_error_reg[9]_0\,
      I1 => write_ptr_reg(3),
      I2 => write_ptr_reg(0),
      I3 => write_ptr_reg(1),
      I4 => write_ptr_reg(2),
      I5 => write_ptr_reg(4),
      O => \mem_symbols[1][5]_i_1_n_0\
    );
\mem_symbols[20][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \mem_error_reg[9]_0\,
      I1 => write_ptr_reg(3),
      I2 => write_ptr_reg(4),
      I3 => write_ptr_reg(0),
      I4 => write_ptr_reg(1),
      I5 => write_ptr_reg(2),
      O => \mem_symbols[20][5]_i_1_n_0\
    );
\mem_symbols[21][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => \mem_error_reg[9]_0\,
      I1 => write_ptr_reg(3),
      I2 => write_ptr_reg(2),
      I3 => write_ptr_reg(4),
      I4 => write_ptr_reg(1),
      I5 => write_ptr_reg(0),
      O => \mem_symbols[21][5]_i_1_n_0\
    );
\mem_symbols[22][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \mem_error_reg[9]_0\,
      I1 => write_ptr_reg(3),
      I2 => write_ptr_reg(1),
      I3 => write_ptr_reg(0),
      I4 => write_ptr_reg(4),
      I5 => write_ptr_reg(2),
      O => \mem_symbols[22][5]_i_1_n_0\
    );
\mem_symbols[23][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \mem_error_reg[9]_0\,
      I1 => write_ptr_reg(3),
      I2 => write_ptr_reg(1),
      I3 => write_ptr_reg(0),
      I4 => write_ptr_reg(2),
      I5 => write_ptr_reg(4),
      O => \mem_symbols[23][5]_i_1_n_0\
    );
\mem_symbols[24][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => write_ptr_reg(0),
      I1 => \mem_error_reg[9]_0\,
      I2 => write_ptr_reg(3),
      I3 => write_ptr_reg(1),
      I4 => write_ptr_reg(2),
      I5 => write_ptr_reg(4),
      O => \mem_symbols[24][5]_i_1_n_0\
    );
\mem_symbols[25][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => write_ptr_reg(2),
      I1 => fsm_buf_write_en,
      I2 => \^q\(5),
      I3 => \mem_symbols[25][5]_i_2_n_0\,
      O => \mem_symbols[25][5]_i_1_n_0\
    );
\mem_symbols[25][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \mem_error_reg[28]_0\,
      I1 => write_ptr_reg(3),
      I2 => write_ptr_reg(4),
      I3 => write_ptr_reg(1),
      I4 => write_ptr_reg(0),
      O => \mem_symbols[25][5]_i_2_n_0\
    );
\mem_symbols[26][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => write_ptr_reg(2),
      I1 => fsm_buf_write_en,
      I2 => \^q\(5),
      I3 => \mem_symbols[26][5]_i_2_n_0\,
      O => \mem_symbols[26][5]_i_1_n_0\
    );
\mem_symbols[26][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \mem_error_reg[28]_0\,
      I1 => write_ptr_reg(1),
      I2 => write_ptr_reg(0),
      I3 => write_ptr_reg(3),
      I4 => write_ptr_reg(4),
      O => \mem_symbols[26][5]_i_2_n_0\
    );
\mem_symbols[27][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => write_ptr_reg(3),
      I1 => \mem_error_reg[9]_0\,
      I2 => write_ptr_reg(0),
      I3 => write_ptr_reg(1),
      I4 => write_ptr_reg(2),
      I5 => write_ptr_reg(4),
      O => \mem_symbols[27][5]_i_1_n_0\
    );
\mem_symbols[28][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => write_ptr_reg(4),
      I1 => write_ptr_reg(0),
      I2 => write_ptr_reg(3),
      I3 => write_ptr_reg(1),
      I4 => \mem_symbols[28][5]_i_2_n_0\,
      I5 => \mem_error_reg[28]_0\,
      O => \mem_symbols[28][5]_i_1_n_0\
    );
\mem_symbols[28][5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => write_ptr_reg(2),
      I1 => \^q\(5),
      I2 => fsm_buf_write_en,
      O => \mem_symbols[28][5]_i_2_n_0\
    );
\mem_symbols[29][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => write_ptr_reg(0),
      I1 => write_ptr_reg(1),
      I2 => write_ptr_reg(4),
      I3 => write_ptr_reg(3),
      I4 => \mem_error_reg[28]_0\,
      I5 => \mem_symbols[28][5]_i_2_n_0\,
      O => \mem_symbols[29][5]_i_1_n_0\
    );
\mem_symbols[2][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => write_ptr_reg(0),
      I1 => \mem_error_reg[9]_0\,
      I2 => write_ptr_reg(3),
      I3 => write_ptr_reg(4),
      I4 => write_ptr_reg(2),
      I5 => write_ptr_reg(1),
      O => \mem_symbols[2][5]_i_1_n_0\
    );
\mem_symbols[30][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => write_ptr_reg(4),
      I1 => write_ptr_reg(3),
      I2 => write_ptr_reg(0),
      I3 => write_ptr_reg(1),
      I4 => \mem_error_reg[28]_0\,
      I5 => \mem_symbols[28][5]_i_2_n_0\,
      O => \mem_symbols[30][5]_i_1_n_0\
    );
\mem_symbols[31][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => write_ptr_reg(3),
      I1 => \mem_error_reg[9]_0\,
      I2 => write_ptr_reg(1),
      I3 => write_ptr_reg(0),
      I4 => write_ptr_reg(2),
      I5 => write_ptr_reg(4),
      O => \mem_symbols[31][5]_i_1_n_0\
    );
\mem_symbols[3][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \mem_error_reg[9]_0\,
      I1 => write_ptr_reg(0),
      I2 => write_ptr_reg(1),
      I3 => write_ptr_reg(2),
      I4 => write_ptr_reg(4),
      I5 => write_ptr_reg(3),
      O => \mem_symbols[3][5]_i_1_n_0\
    );
\mem_symbols[4][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => write_ptr_reg(0),
      I1 => \mem_error_reg[9]_0\,
      I2 => write_ptr_reg(1),
      I3 => write_ptr_reg(2),
      I4 => write_ptr_reg(3),
      I5 => write_ptr_reg(4),
      O => \mem_symbols[4][5]_i_1_n_0\
    );
\mem_symbols[5][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \mem_error_reg[9]_0\,
      I1 => write_ptr_reg(3),
      I2 => write_ptr_reg(1),
      I3 => write_ptr_reg(2),
      I4 => write_ptr_reg(4),
      I5 => write_ptr_reg(0),
      O => \mem_symbols[5][5]_i_1_n_0\
    );
\mem_symbols[6][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \mem_error_reg[9]_0\,
      I1 => write_ptr_reg(3),
      I2 => write_ptr_reg(1),
      I3 => write_ptr_reg(0),
      I4 => write_ptr_reg(2),
      I5 => write_ptr_reg(4),
      O => \mem_symbols[6][5]_i_1_n_0\
    );
\mem_symbols[7][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => \mem_error_reg[9]_0\,
      I1 => write_ptr_reg(3),
      I2 => write_ptr_reg(2),
      I3 => write_ptr_reg(1),
      I4 => write_ptr_reg(0),
      I5 => write_ptr_reg(4),
      O => \mem_symbols[7][5]_i_1_n_0\
    );
\mem_symbols[8][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => write_ptr_reg(0),
      I1 => write_ptr_reg(4),
      I2 => write_ptr_reg(1),
      I3 => write_ptr_reg(2),
      I4 => write_ptr_reg(3),
      I5 => \mem_error_reg[9]_0\,
      O => \mem_symbols[8][5]_i_1_n_0\
    );
\mem_symbols[9][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => write_ptr_reg(0),
      I1 => write_ptr_reg(1),
      I2 => write_ptr_reg(2),
      I3 => \mem_error_reg[9]_0\,
      I4 => write_ptr_reg(3),
      I5 => write_ptr_reg(4),
      O => \mem_symbols[9][5]_i_1_n_0\
    );
\mem_symbols_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_symbols(0),
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[0]_0\(0),
      R => rst
    );
\mem_symbols_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_symbols(0),
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[0]_0\(1),
      R => rst
    );
\mem_symbols_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_symbols(0),
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[0]_0\(2),
      R => rst
    );
\mem_symbols_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_symbols(0),
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[0]_0\(3),
      R => rst
    );
\mem_symbols_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_symbols(0),
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[0]_0\(4),
      R => rst
    );
\mem_symbols_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_symbols(0),
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[0]_0\(5),
      R => rst
    );
\mem_symbols_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[10][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[10]_10\(0),
      R => rst
    );
\mem_symbols_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[10][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[10]_10\(1),
      R => rst
    );
\mem_symbols_reg[10][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[10][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[10]_10\(2),
      R => rst
    );
\mem_symbols_reg[10][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[10][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[10]_10\(3),
      R => rst
    );
\mem_symbols_reg[10][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[10][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[10]_10\(4),
      R => rst
    );
\mem_symbols_reg[10][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[10][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[10]_10\(5),
      R => rst
    );
\mem_symbols_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[11][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[11]_11\(0),
      R => rst
    );
\mem_symbols_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[11][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[11]_11\(1),
      R => rst
    );
\mem_symbols_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[11][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[11]_11\(2),
      R => rst
    );
\mem_symbols_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[11][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[11]_11\(3),
      R => rst
    );
\mem_symbols_reg[11][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[11][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[11]_11\(4),
      R => rst
    );
\mem_symbols_reg[11][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[11][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[11]_11\(5),
      R => rst
    );
\mem_symbols_reg[12][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[12][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[12]_12\(0),
      R => rst
    );
\mem_symbols_reg[12][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[12][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[12]_12\(1),
      R => rst
    );
\mem_symbols_reg[12][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[12][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[12]_12\(2),
      R => rst
    );
\mem_symbols_reg[12][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[12][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[12]_12\(3),
      R => rst
    );
\mem_symbols_reg[12][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[12][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[12]_12\(4),
      R => rst
    );
\mem_symbols_reg[12][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[12][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[12]_12\(5),
      R => rst
    );
\mem_symbols_reg[13][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[13][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[13]_13\(0),
      R => rst
    );
\mem_symbols_reg[13][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[13][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[13]_13\(1),
      R => rst
    );
\mem_symbols_reg[13][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[13][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[13]_13\(2),
      R => rst
    );
\mem_symbols_reg[13][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[13][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[13]_13\(3),
      R => rst
    );
\mem_symbols_reg[13][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[13][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[13]_13\(4),
      R => rst
    );
\mem_symbols_reg[13][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[13][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[13]_13\(5),
      R => rst
    );
\mem_symbols_reg[14][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[14][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[14]_14\(0),
      R => rst
    );
\mem_symbols_reg[14][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[14][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[14]_14\(1),
      R => rst
    );
\mem_symbols_reg[14][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[14][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[14]_14\(2),
      R => rst
    );
\mem_symbols_reg[14][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[14][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[14]_14\(3),
      R => rst
    );
\mem_symbols_reg[14][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[14][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[14]_14\(4),
      R => rst
    );
\mem_symbols_reg[14][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[14][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[14]_14\(5),
      R => rst
    );
\mem_symbols_reg[15][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[15][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[15]_15\(0),
      R => rst
    );
\mem_symbols_reg[15][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[15][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[15]_15\(1),
      R => rst
    );
\mem_symbols_reg[15][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[15][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[15]_15\(2),
      R => rst
    );
\mem_symbols_reg[15][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[15][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[15]_15\(3),
      R => rst
    );
\mem_symbols_reg[15][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[15][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[15]_15\(4),
      R => rst
    );
\mem_symbols_reg[15][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[15][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[15]_15\(5),
      R => rst
    );
\mem_symbols_reg[16][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[16][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[16]_16\(0),
      R => rst
    );
\mem_symbols_reg[16][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[16][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[16]_16\(1),
      R => rst
    );
\mem_symbols_reg[16][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[16][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[16]_16\(2),
      R => rst
    );
\mem_symbols_reg[16][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[16][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[16]_16\(3),
      R => rst
    );
\mem_symbols_reg[16][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[16][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[16]_16\(4),
      R => rst
    );
\mem_symbols_reg[16][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[16][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[16]_16\(5),
      R => rst
    );
\mem_symbols_reg[17][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[17][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[17]_17\(0),
      R => rst
    );
\mem_symbols_reg[17][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[17][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[17]_17\(1),
      R => rst
    );
\mem_symbols_reg[17][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[17][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[17]_17\(2),
      R => rst
    );
\mem_symbols_reg[17][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[17][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[17]_17\(3),
      R => rst
    );
\mem_symbols_reg[17][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[17][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[17]_17\(4),
      R => rst
    );
\mem_symbols_reg[17][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[17][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[17]_17\(5),
      R => rst
    );
\mem_symbols_reg[18][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[18][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[18]_18\(0),
      R => rst
    );
\mem_symbols_reg[18][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[18][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[18]_18\(1),
      R => rst
    );
\mem_symbols_reg[18][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[18][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[18]_18\(2),
      R => rst
    );
\mem_symbols_reg[18][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[18][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[18]_18\(3),
      R => rst
    );
\mem_symbols_reg[18][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[18][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[18]_18\(4),
      R => rst
    );
\mem_symbols_reg[18][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[18][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[18]_18\(5),
      R => rst
    );
\mem_symbols_reg[19][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[19][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[19]_19\(0),
      R => rst
    );
\mem_symbols_reg[19][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[19][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[19]_19\(1),
      R => rst
    );
\mem_symbols_reg[19][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[19][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[19]_19\(2),
      R => rst
    );
\mem_symbols_reg[19][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[19][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[19]_19\(3),
      R => rst
    );
\mem_symbols_reg[19][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[19][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[19]_19\(4),
      R => rst
    );
\mem_symbols_reg[19][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[19][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[19]_19\(5),
      R => rst
    );
\mem_symbols_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[1][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[1]_1\(0),
      R => rst
    );
\mem_symbols_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[1][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[1]_1\(1),
      R => rst
    );
\mem_symbols_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[1][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[1]_1\(2),
      R => rst
    );
\mem_symbols_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[1][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[1]_1\(3),
      R => rst
    );
\mem_symbols_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[1][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[1]_1\(4),
      R => rst
    );
\mem_symbols_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[1][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[1]_1\(5),
      R => rst
    );
\mem_symbols_reg[20][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[20][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[20]_20\(0),
      R => rst
    );
\mem_symbols_reg[20][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[20][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[20]_20\(1),
      R => rst
    );
\mem_symbols_reg[20][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[20][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[20]_20\(2),
      R => rst
    );
\mem_symbols_reg[20][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[20][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[20]_20\(3),
      R => rst
    );
\mem_symbols_reg[20][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[20][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[20]_20\(4),
      R => rst
    );
\mem_symbols_reg[20][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[20][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[20]_20\(5),
      R => rst
    );
\mem_symbols_reg[21][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[21][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[21]_21\(0),
      R => rst
    );
\mem_symbols_reg[21][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[21][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[21]_21\(1),
      R => rst
    );
\mem_symbols_reg[21][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[21][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[21]_21\(2),
      R => rst
    );
\mem_symbols_reg[21][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[21][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[21]_21\(3),
      R => rst
    );
\mem_symbols_reg[21][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[21][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[21]_21\(4),
      R => rst
    );
\mem_symbols_reg[21][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[21][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[21]_21\(5),
      R => rst
    );
\mem_symbols_reg[22][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[22][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[22]_22\(0),
      R => rst
    );
\mem_symbols_reg[22][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[22][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[22]_22\(1),
      R => rst
    );
\mem_symbols_reg[22][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[22][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[22]_22\(2),
      R => rst
    );
\mem_symbols_reg[22][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[22][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[22]_22\(3),
      R => rst
    );
\mem_symbols_reg[22][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[22][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[22]_22\(4),
      R => rst
    );
\mem_symbols_reg[22][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[22][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[22]_22\(5),
      R => rst
    );
\mem_symbols_reg[23][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[23][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[23]_23\(0),
      R => rst
    );
\mem_symbols_reg[23][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[23][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[23]_23\(1),
      R => rst
    );
\mem_symbols_reg[23][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[23][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[23]_23\(2),
      R => rst
    );
\mem_symbols_reg[23][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[23][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[23]_23\(3),
      R => rst
    );
\mem_symbols_reg[23][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[23][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[23]_23\(4),
      R => rst
    );
\mem_symbols_reg[23][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[23][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[23]_23\(5),
      R => rst
    );
\mem_symbols_reg[24][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[24][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[24]_24\(0),
      R => rst
    );
\mem_symbols_reg[24][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[24][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[24]_24\(1),
      R => rst
    );
\mem_symbols_reg[24][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[24][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[24]_24\(2),
      R => rst
    );
\mem_symbols_reg[24][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[24][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[24]_24\(3),
      R => rst
    );
\mem_symbols_reg[24][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[24][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[24]_24\(4),
      R => rst
    );
\mem_symbols_reg[24][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[24][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[24]_24\(5),
      R => rst
    );
\mem_symbols_reg[25][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[25][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[25]_25\(0),
      R => rst
    );
\mem_symbols_reg[25][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[25][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[25]_25\(1),
      R => rst
    );
\mem_symbols_reg[25][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[25][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[25]_25\(2),
      R => rst
    );
\mem_symbols_reg[25][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[25][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[25]_25\(3),
      R => rst
    );
\mem_symbols_reg[25][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[25][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[25]_25\(4),
      R => rst
    );
\mem_symbols_reg[25][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[25][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[25]_25\(5),
      R => rst
    );
\mem_symbols_reg[26][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[26][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[26]_26\(0),
      R => rst
    );
\mem_symbols_reg[26][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[26][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[26]_26\(1),
      R => rst
    );
\mem_symbols_reg[26][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[26][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[26]_26\(2),
      R => rst
    );
\mem_symbols_reg[26][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[26][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[26]_26\(3),
      R => rst
    );
\mem_symbols_reg[26][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[26][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[26]_26\(4),
      R => rst
    );
\mem_symbols_reg[26][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[26][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[26]_26\(5),
      R => rst
    );
\mem_symbols_reg[27][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[27][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[27]_27\(0),
      R => rst
    );
\mem_symbols_reg[27][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[27][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[27]_27\(1),
      R => rst
    );
\mem_symbols_reg[27][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[27][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[27]_27\(2),
      R => rst
    );
\mem_symbols_reg[27][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[27][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[27]_27\(3),
      R => rst
    );
\mem_symbols_reg[27][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[27][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[27]_27\(4),
      R => rst
    );
\mem_symbols_reg[27][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[27][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[27]_27\(5),
      R => rst
    );
\mem_symbols_reg[28][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[28][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[28]_28\(0),
      R => rst
    );
\mem_symbols_reg[28][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[28][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[28]_28\(1),
      R => rst
    );
\mem_symbols_reg[28][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[28][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[28]_28\(2),
      R => rst
    );
\mem_symbols_reg[28][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[28][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[28]_28\(3),
      R => rst
    );
\mem_symbols_reg[28][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[28][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[28]_28\(4),
      R => rst
    );
\mem_symbols_reg[28][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[28][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[28]_28\(5),
      R => rst
    );
\mem_symbols_reg[29][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[29][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[29]_29\(0),
      R => rst
    );
\mem_symbols_reg[29][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[29][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[29]_29\(1),
      R => rst
    );
\mem_symbols_reg[29][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[29][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[29]_29\(2),
      R => rst
    );
\mem_symbols_reg[29][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[29][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[29]_29\(3),
      R => rst
    );
\mem_symbols_reg[29][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[29][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[29]_29\(4),
      R => rst
    );
\mem_symbols_reg[29][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[29][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[29]_29\(5),
      R => rst
    );
\mem_symbols_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[2][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[2]_2\(0),
      R => rst
    );
\mem_symbols_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[2][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[2]_2\(1),
      R => rst
    );
\mem_symbols_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[2][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[2]_2\(2),
      R => rst
    );
\mem_symbols_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[2][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[2]_2\(3),
      R => rst
    );
\mem_symbols_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[2][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[2]_2\(4),
      R => rst
    );
\mem_symbols_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[2][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[2]_2\(5),
      R => rst
    );
\mem_symbols_reg[30][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[30][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[30]_30\(0),
      R => rst
    );
\mem_symbols_reg[30][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[30][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[30]_30\(1),
      R => rst
    );
\mem_symbols_reg[30][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[30][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[30]_30\(2),
      R => rst
    );
\mem_symbols_reg[30][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[30][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[30]_30\(3),
      R => rst
    );
\mem_symbols_reg[30][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[30][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[30]_30\(4),
      R => rst
    );
\mem_symbols_reg[30][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[30][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[30]_30\(5),
      R => rst
    );
\mem_symbols_reg[31][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[31][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[31]_31\(0),
      R => rst
    );
\mem_symbols_reg[31][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[31][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[31]_31\(1),
      R => rst
    );
\mem_symbols_reg[31][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[31][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[31]_31\(2),
      R => rst
    );
\mem_symbols_reg[31][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[31][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[31]_31\(3),
      R => rst
    );
\mem_symbols_reg[31][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[31][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[31]_31\(4),
      R => rst
    );
\mem_symbols_reg[31][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[31][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[31]_31\(5),
      R => rst
    );
\mem_symbols_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[3][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[3]_3\(0),
      R => rst
    );
\mem_symbols_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[3][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[3]_3\(1),
      R => rst
    );
\mem_symbols_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[3][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[3]_3\(2),
      R => rst
    );
\mem_symbols_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[3][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[3]_3\(3),
      R => rst
    );
\mem_symbols_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[3][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[3]_3\(4),
      R => rst
    );
\mem_symbols_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[3][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[3]_3\(5),
      R => rst
    );
\mem_symbols_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[4][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[4]_4\(0),
      R => rst
    );
\mem_symbols_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[4][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[4]_4\(1),
      R => rst
    );
\mem_symbols_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[4][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[4]_4\(2),
      R => rst
    );
\mem_symbols_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[4][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[4]_4\(3),
      R => rst
    );
\mem_symbols_reg[4][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[4][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[4]_4\(4),
      R => rst
    );
\mem_symbols_reg[4][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[4][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[4]_4\(5),
      R => rst
    );
\mem_symbols_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[5][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[5]_5\(0),
      R => rst
    );
\mem_symbols_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[5][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[5]_5\(1),
      R => rst
    );
\mem_symbols_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[5][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[5]_5\(2),
      R => rst
    );
\mem_symbols_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[5][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[5]_5\(3),
      R => rst
    );
\mem_symbols_reg[5][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[5][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[5]_5\(4),
      R => rst
    );
\mem_symbols_reg[5][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[5][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[5]_5\(5),
      R => rst
    );
\mem_symbols_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[6][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[6]_6\(0),
      R => rst
    );
\mem_symbols_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[6][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[6]_6\(1),
      R => rst
    );
\mem_symbols_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[6][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[6]_6\(2),
      R => rst
    );
\mem_symbols_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[6][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[6]_6\(3),
      R => rst
    );
\mem_symbols_reg[6][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[6][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[6]_6\(4),
      R => rst
    );
\mem_symbols_reg[6][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[6][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[6]_6\(5),
      R => rst
    );
\mem_symbols_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[7][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[7]_7\(0),
      R => rst
    );
\mem_symbols_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[7][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[7]_7\(1),
      R => rst
    );
\mem_symbols_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[7][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[7]_7\(2),
      R => rst
    );
\mem_symbols_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[7][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[7]_7\(3),
      R => rst
    );
\mem_symbols_reg[7][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[7][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[7]_7\(4),
      R => rst
    );
\mem_symbols_reg[7][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[7][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[7]_7\(5),
      R => rst
    );
\mem_symbols_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[8][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[8]_8\(0),
      R => rst
    );
\mem_symbols_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[8][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[8]_8\(1),
      R => rst
    );
\mem_symbols_reg[8][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[8][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[8]_8\(2),
      R => rst
    );
\mem_symbols_reg[8][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[8][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[8]_8\(3),
      R => rst
    );
\mem_symbols_reg[8][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[8][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[8]_8\(4),
      R => rst
    );
\mem_symbols_reg[8][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[8][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[8]_8\(5),
      R => rst
    );
\mem_symbols_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[9][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(0),
      Q => \mem_symbols_reg[9]_9\(0),
      R => rst
    );
\mem_symbols_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[9][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(1),
      Q => \mem_symbols_reg[9]_9\(1),
      R => rst
    );
\mem_symbols_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[9][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(2),
      Q => \mem_symbols_reg[9]_9\(2),
      R => rst
    );
\mem_symbols_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[9][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(3),
      Q => \mem_symbols_reg[9]_9\(3),
      R => rst
    );
\mem_symbols_reg[9][4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[9][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(4),
      Q => \mem_symbols_reg[9]_9\(4),
      R => rst
    );
\mem_symbols_reg[9][5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \mem_symbols[9][5]_i_1_n_0\,
      D => \mem_symbols_reg[0][5]_0\(5),
      Q => \mem_symbols_reg[9]_9\(5),
      R => rst
    );
\msg_length[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \msg_length[0]_i_1_n_0\
    );
\msg_length[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \p_0_in__0\(1)
    );
\msg_length[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \p_0_in__0\(2)
    );
\msg_length[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \p_0_in__0\(3)
    );
\msg_length[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      O => \p_0_in__0\(4)
    );
\msg_length[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      O => \p_0_in__0\(5)
    );
\msg_length_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \msg_length[0]_i_1_n_0\,
      Q => \^q\(0),
      R => SR(0)
    );
\msg_length_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(1),
      Q => \^q\(1),
      R => SR(0)
    );
\msg_length_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(2),
      Q => \^q\(2),
      R => SR(0)
    );
\msg_length_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(3),
      Q => \^q\(3),
      R => SR(0)
    );
\msg_length_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(4),
      Q => \^q\(4),
      R => SR(0)
    );
\msg_length_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__0\(5),
      Q => \^q\(5),
      R => SR(0)
    );
\symbols_latched[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \symbols_latched_reg[0]_i_2_n_0\,
      I1 => error_latched_reg(4),
      I2 => \symbols_latched_reg[0]_i_3_n_0\,
      I3 => replay_active,
      I4 => \mem_symbols_reg[0][5]_0\(0),
      O => \^echo_symbols_mux\(0)
    );
\symbols_latched[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[27]_27\(0),
      I1 => \mem_symbols_reg[26]_26\(0),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[25]_25\(0),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[24]_24\(0),
      O => \symbols_latched[0]_i_10_n_0\
    );
\symbols_latched[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[31]_31\(0),
      I1 => \mem_symbols_reg[30]_30\(0),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[29]_29\(0),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[28]_28\(0),
      O => \symbols_latched[0]_i_11_n_0\
    );
\symbols_latched[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[3]_3\(0),
      I1 => \mem_symbols_reg[2]_2\(0),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[1]_1\(0),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[0]_0\(0),
      O => \symbols_latched[0]_i_12_n_0\
    );
\symbols_latched[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[7]_7\(0),
      I1 => \mem_symbols_reg[6]_6\(0),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[5]_5\(0),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[4]_4\(0),
      O => \symbols_latched[0]_i_13_n_0\
    );
\symbols_latched[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[11]_11\(0),
      I1 => \mem_symbols_reg[10]_10\(0),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[9]_9\(0),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[8]_8\(0),
      O => \symbols_latched[0]_i_14_n_0\
    );
\symbols_latched[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[15]_15\(0),
      I1 => \mem_symbols_reg[14]_14\(0),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[13]_13\(0),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[12]_12\(0),
      O => \symbols_latched[0]_i_15_n_0\
    );
\symbols_latched[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[19]_19\(0),
      I1 => \mem_symbols_reg[18]_18\(0),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[17]_17\(0),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[16]_16\(0),
      O => \symbols_latched[0]_i_8_n_0\
    );
\symbols_latched[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[23]_23\(0),
      I1 => \mem_symbols_reg[22]_22\(0),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[21]_21\(0),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[20]_20\(0),
      O => \symbols_latched[0]_i_9_n_0\
    );
\symbols_latched[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \symbols_latched_reg[1]_i_2_n_0\,
      I1 => error_latched_reg(4),
      I2 => \symbols_latched_reg[1]_i_3_n_0\,
      I3 => replay_active,
      I4 => \mem_symbols_reg[0][5]_0\(1),
      O => \^echo_symbols_mux\(1)
    );
\symbols_latched[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[27]_27\(1),
      I1 => \mem_symbols_reg[26]_26\(1),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[25]_25\(1),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[24]_24\(1),
      O => \symbols_latched[1]_i_10_n_0\
    );
\symbols_latched[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[31]_31\(1),
      I1 => \mem_symbols_reg[30]_30\(1),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[29]_29\(1),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[28]_28\(1),
      O => \symbols_latched[1]_i_11_n_0\
    );
\symbols_latched[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[3]_3\(1),
      I1 => \mem_symbols_reg[2]_2\(1),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[1]_1\(1),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[0]_0\(1),
      O => \symbols_latched[1]_i_12_n_0\
    );
\symbols_latched[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[7]_7\(1),
      I1 => \mem_symbols_reg[6]_6\(1),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[5]_5\(1),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[4]_4\(1),
      O => \symbols_latched[1]_i_13_n_0\
    );
\symbols_latched[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[11]_11\(1),
      I1 => \mem_symbols_reg[10]_10\(1),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[9]_9\(1),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[8]_8\(1),
      O => \symbols_latched[1]_i_14_n_0\
    );
\symbols_latched[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[15]_15\(1),
      I1 => \mem_symbols_reg[14]_14\(1),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[13]_13\(1),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[12]_12\(1),
      O => \symbols_latched[1]_i_15_n_0\
    );
\symbols_latched[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[19]_19\(1),
      I1 => \mem_symbols_reg[18]_18\(1),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[17]_17\(1),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[16]_16\(1),
      O => \symbols_latched[1]_i_8_n_0\
    );
\symbols_latched[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[23]_23\(1),
      I1 => \mem_symbols_reg[22]_22\(1),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[21]_21\(1),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[20]_20\(1),
      O => \symbols_latched[1]_i_9_n_0\
    );
\symbols_latched[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \symbols_latched_reg[2]_i_2_n_0\,
      I1 => error_latched_reg(4),
      I2 => \symbols_latched_reg[2]_i_3_n_0\,
      I3 => replay_active,
      I4 => \mem_symbols_reg[0][5]_0\(2),
      O => \^echo_symbols_mux\(2)
    );
\symbols_latched[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[27]_27\(2),
      I1 => \mem_symbols_reg[26]_26\(2),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[25]_25\(2),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[24]_24\(2),
      O => \symbols_latched[2]_i_10_n_0\
    );
\symbols_latched[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[31]_31\(2),
      I1 => \mem_symbols_reg[30]_30\(2),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[29]_29\(2),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[28]_28\(2),
      O => \symbols_latched[2]_i_11_n_0\
    );
\symbols_latched[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[3]_3\(2),
      I1 => \mem_symbols_reg[2]_2\(2),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[1]_1\(2),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[0]_0\(2),
      O => \symbols_latched[2]_i_12_n_0\
    );
\symbols_latched[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[7]_7\(2),
      I1 => \mem_symbols_reg[6]_6\(2),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[5]_5\(2),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[4]_4\(2),
      O => \symbols_latched[2]_i_13_n_0\
    );
\symbols_latched[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[11]_11\(2),
      I1 => \mem_symbols_reg[10]_10\(2),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[9]_9\(2),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[8]_8\(2),
      O => \symbols_latched[2]_i_14_n_0\
    );
\symbols_latched[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[15]_15\(2),
      I1 => \mem_symbols_reg[14]_14\(2),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[13]_13\(2),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[12]_12\(2),
      O => \symbols_latched[2]_i_15_n_0\
    );
\symbols_latched[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[19]_19\(2),
      I1 => \mem_symbols_reg[18]_18\(2),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[17]_17\(2),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[16]_16\(2),
      O => \symbols_latched[2]_i_8_n_0\
    );
\symbols_latched[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[23]_23\(2),
      I1 => \mem_symbols_reg[22]_22\(2),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[21]_21\(2),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[20]_20\(2),
      O => \symbols_latched[2]_i_9_n_0\
    );
\symbols_latched[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \symbols_latched_reg[3]_i_2_n_0\,
      I1 => error_latched_reg(4),
      I2 => \symbols_latched_reg[3]_i_3_n_0\,
      I3 => replay_active,
      I4 => \mem_symbols_reg[0][5]_0\(3),
      O => \^echo_symbols_mux\(3)
    );
\symbols_latched[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[27]_27\(3),
      I1 => \mem_symbols_reg[26]_26\(3),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[25]_25\(3),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[24]_24\(3),
      O => \symbols_latched[3]_i_10_n_0\
    );
\symbols_latched[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[31]_31\(3),
      I1 => \mem_symbols_reg[30]_30\(3),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[29]_29\(3),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[28]_28\(3),
      O => \symbols_latched[3]_i_11_n_0\
    );
\symbols_latched[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[3]_3\(3),
      I1 => \mem_symbols_reg[2]_2\(3),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[1]_1\(3),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[0]_0\(3),
      O => \symbols_latched[3]_i_12_n_0\
    );
\symbols_latched[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[7]_7\(3),
      I1 => \mem_symbols_reg[6]_6\(3),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[5]_5\(3),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[4]_4\(3),
      O => \symbols_latched[3]_i_13_n_0\
    );
\symbols_latched[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[11]_11\(3),
      I1 => \mem_symbols_reg[10]_10\(3),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[9]_9\(3),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[8]_8\(3),
      O => \symbols_latched[3]_i_14_n_0\
    );
\symbols_latched[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[15]_15\(3),
      I1 => \mem_symbols_reg[14]_14\(3),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[13]_13\(3),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[12]_12\(3),
      O => \symbols_latched[3]_i_15_n_0\
    );
\symbols_latched[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[19]_19\(3),
      I1 => \mem_symbols_reg[18]_18\(3),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[17]_17\(3),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[16]_16\(3),
      O => \symbols_latched[3]_i_8_n_0\
    );
\symbols_latched[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[23]_23\(3),
      I1 => \mem_symbols_reg[22]_22\(3),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[21]_21\(3),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[20]_20\(3),
      O => \symbols_latched[3]_i_9_n_0\
    );
\symbols_latched[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \symbols_latched_reg[4]_i_2_n_0\,
      I1 => error_latched_reg(4),
      I2 => \symbols_latched_reg[4]_i_3_n_0\,
      I3 => replay_active,
      I4 => \mem_symbols_reg[0][5]_0\(4),
      O => \^echo_symbols_mux\(4)
    );
\symbols_latched[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[27]_27\(4),
      I1 => \mem_symbols_reg[26]_26\(4),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[25]_25\(4),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[24]_24\(4),
      O => \symbols_latched[4]_i_10_n_0\
    );
\symbols_latched[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[31]_31\(4),
      I1 => \mem_symbols_reg[30]_30\(4),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[29]_29\(4),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[28]_28\(4),
      O => \symbols_latched[4]_i_11_n_0\
    );
\symbols_latched[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[3]_3\(4),
      I1 => \mem_symbols_reg[2]_2\(4),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[1]_1\(4),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[0]_0\(4),
      O => \symbols_latched[4]_i_12_n_0\
    );
\symbols_latched[4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[7]_7\(4),
      I1 => \mem_symbols_reg[6]_6\(4),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[5]_5\(4),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[4]_4\(4),
      O => \symbols_latched[4]_i_13_n_0\
    );
\symbols_latched[4]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[11]_11\(4),
      I1 => \mem_symbols_reg[10]_10\(4),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[9]_9\(4),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[8]_8\(4),
      O => \symbols_latched[4]_i_14_n_0\
    );
\symbols_latched[4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[15]_15\(4),
      I1 => \mem_symbols_reg[14]_14\(4),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[13]_13\(4),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[12]_12\(4),
      O => \symbols_latched[4]_i_15_n_0\
    );
\symbols_latched[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[19]_19\(4),
      I1 => \mem_symbols_reg[18]_18\(4),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[17]_17\(4),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[16]_16\(4),
      O => \symbols_latched[4]_i_8_n_0\
    );
\symbols_latched[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[23]_23\(4),
      I1 => \mem_symbols_reg[22]_22\(4),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[21]_21\(4),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[20]_20\(4),
      O => \symbols_latched[4]_i_9_n_0\
    );
\symbols_latched[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[23]_23\(5),
      I1 => \mem_symbols_reg[22]_22\(5),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[21]_21\(5),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[20]_20\(5),
      O => \symbols_latched[5]_i_10_n_0\
    );
\symbols_latched[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[27]_27\(5),
      I1 => \mem_symbols_reg[26]_26\(5),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[25]_25\(5),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[24]_24\(5),
      O => \symbols_latched[5]_i_11_n_0\
    );
\symbols_latched[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[31]_31\(5),
      I1 => \mem_symbols_reg[30]_30\(5),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[29]_29\(5),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[28]_28\(5),
      O => \symbols_latched[5]_i_12_n_0\
    );
\symbols_latched[5]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[3]_3\(5),
      I1 => \mem_symbols_reg[2]_2\(5),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[1]_1\(5),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[0]_0\(5),
      O => \symbols_latched[5]_i_13_n_0\
    );
\symbols_latched[5]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[7]_7\(5),
      I1 => \mem_symbols_reg[6]_6\(5),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[5]_5\(5),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[4]_4\(5),
      O => \symbols_latched[5]_i_14_n_0\
    );
\symbols_latched[5]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[11]_11\(5),
      I1 => \mem_symbols_reg[10]_10\(5),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[9]_9\(5),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[8]_8\(5),
      O => \symbols_latched[5]_i_15_n_0\
    );
\symbols_latched[5]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[15]_15\(5),
      I1 => \mem_symbols_reg[14]_14\(5),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[13]_13\(5),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[12]_12\(5),
      O => \symbols_latched[5]_i_16_n_0\
    );
\symbols_latched[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \symbols_latched_reg[5]_i_3_n_0\,
      I1 => error_latched_reg(4),
      I2 => \symbols_latched_reg[5]_i_4_n_0\,
      I3 => replay_active,
      I4 => \mem_symbols_reg[0][5]_0\(5),
      O => \^echo_symbols_mux\(5)
    );
\symbols_latched[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_symbols_reg[19]_19\(5),
      I1 => \mem_symbols_reg[18]_18\(5),
      I2 => error_latched_reg(1),
      I3 => \mem_symbols_reg[17]_17\(5),
      I4 => error_latched_reg(0),
      I5 => \mem_symbols_reg[16]_16\(5),
      O => \symbols_latched[5]_i_9_n_0\
    );
\symbols_latched_reg[0]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \symbols_latched_reg[0]_i_4_n_0\,
      I1 => \symbols_latched_reg[0]_i_5_n_0\,
      O => \symbols_latched_reg[0]_i_2_n_0\,
      S => error_latched_reg(3)
    );
\symbols_latched_reg[0]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \symbols_latched_reg[0]_i_6_n_0\,
      I1 => \symbols_latched_reg[0]_i_7_n_0\,
      O => \symbols_latched_reg[0]_i_3_n_0\,
      S => error_latched_reg(3)
    );
\symbols_latched_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[0]_i_8_n_0\,
      I1 => \symbols_latched[0]_i_9_n_0\,
      O => \symbols_latched_reg[0]_i_4_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[0]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[0]_i_10_n_0\,
      I1 => \symbols_latched[0]_i_11_n_0\,
      O => \symbols_latched_reg[0]_i_5_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[0]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[0]_i_12_n_0\,
      I1 => \symbols_latched[0]_i_13_n_0\,
      O => \symbols_latched_reg[0]_i_6_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[0]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[0]_i_14_n_0\,
      I1 => \symbols_latched[0]_i_15_n_0\,
      O => \symbols_latched_reg[0]_i_7_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[1]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \symbols_latched_reg[1]_i_4_n_0\,
      I1 => \symbols_latched_reg[1]_i_5_n_0\,
      O => \symbols_latched_reg[1]_i_2_n_0\,
      S => error_latched_reg(3)
    );
\symbols_latched_reg[1]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \symbols_latched_reg[1]_i_6_n_0\,
      I1 => \symbols_latched_reg[1]_i_7_n_0\,
      O => \symbols_latched_reg[1]_i_3_n_0\,
      S => error_latched_reg(3)
    );
\symbols_latched_reg[1]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[1]_i_8_n_0\,
      I1 => \symbols_latched[1]_i_9_n_0\,
      O => \symbols_latched_reg[1]_i_4_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[1]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[1]_i_10_n_0\,
      I1 => \symbols_latched[1]_i_11_n_0\,
      O => \symbols_latched_reg[1]_i_5_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[1]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[1]_i_12_n_0\,
      I1 => \symbols_latched[1]_i_13_n_0\,
      O => \symbols_latched_reg[1]_i_6_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[1]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[1]_i_14_n_0\,
      I1 => \symbols_latched[1]_i_15_n_0\,
      O => \symbols_latched_reg[1]_i_7_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[2]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \symbols_latched_reg[2]_i_4_n_0\,
      I1 => \symbols_latched_reg[2]_i_5_n_0\,
      O => \symbols_latched_reg[2]_i_2_n_0\,
      S => error_latched_reg(3)
    );
\symbols_latched_reg[2]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \symbols_latched_reg[2]_i_6_n_0\,
      I1 => \symbols_latched_reg[2]_i_7_n_0\,
      O => \symbols_latched_reg[2]_i_3_n_0\,
      S => error_latched_reg(3)
    );
\symbols_latched_reg[2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[2]_i_8_n_0\,
      I1 => \symbols_latched[2]_i_9_n_0\,
      O => \symbols_latched_reg[2]_i_4_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[2]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[2]_i_10_n_0\,
      I1 => \symbols_latched[2]_i_11_n_0\,
      O => \symbols_latched_reg[2]_i_5_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[2]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[2]_i_12_n_0\,
      I1 => \symbols_latched[2]_i_13_n_0\,
      O => \symbols_latched_reg[2]_i_6_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[2]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[2]_i_14_n_0\,
      I1 => \symbols_latched[2]_i_15_n_0\,
      O => \symbols_latched_reg[2]_i_7_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[3]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \symbols_latched_reg[3]_i_4_n_0\,
      I1 => \symbols_latched_reg[3]_i_5_n_0\,
      O => \symbols_latched_reg[3]_i_2_n_0\,
      S => error_latched_reg(3)
    );
\symbols_latched_reg[3]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \symbols_latched_reg[3]_i_6_n_0\,
      I1 => \symbols_latched_reg[3]_i_7_n_0\,
      O => \symbols_latched_reg[3]_i_3_n_0\,
      S => error_latched_reg(3)
    );
\symbols_latched_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[3]_i_8_n_0\,
      I1 => \symbols_latched[3]_i_9_n_0\,
      O => \symbols_latched_reg[3]_i_4_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[3]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[3]_i_10_n_0\,
      I1 => \symbols_latched[3]_i_11_n_0\,
      O => \symbols_latched_reg[3]_i_5_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[3]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[3]_i_12_n_0\,
      I1 => \symbols_latched[3]_i_13_n_0\,
      O => \symbols_latched_reg[3]_i_6_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[3]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[3]_i_14_n_0\,
      I1 => \symbols_latched[3]_i_15_n_0\,
      O => \symbols_latched_reg[3]_i_7_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[4]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \symbols_latched_reg[4]_i_4_n_0\,
      I1 => \symbols_latched_reg[4]_i_5_n_0\,
      O => \symbols_latched_reg[4]_i_2_n_0\,
      S => error_latched_reg(3)
    );
\symbols_latched_reg[4]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \symbols_latched_reg[4]_i_6_n_0\,
      I1 => \symbols_latched_reg[4]_i_7_n_0\,
      O => \symbols_latched_reg[4]_i_3_n_0\,
      S => error_latched_reg(3)
    );
\symbols_latched_reg[4]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[4]_i_8_n_0\,
      I1 => \symbols_latched[4]_i_9_n_0\,
      O => \symbols_latched_reg[4]_i_4_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[4]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[4]_i_10_n_0\,
      I1 => \symbols_latched[4]_i_11_n_0\,
      O => \symbols_latched_reg[4]_i_5_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[4]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[4]_i_12_n_0\,
      I1 => \symbols_latched[4]_i_13_n_0\,
      O => \symbols_latched_reg[4]_i_6_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[4]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[4]_i_14_n_0\,
      I1 => \symbols_latched[4]_i_15_n_0\,
      O => \symbols_latched_reg[4]_i_7_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[5]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \symbols_latched_reg[5]_i_5_n_0\,
      I1 => \symbols_latched_reg[5]_i_6_n_0\,
      O => \symbols_latched_reg[5]_i_3_n_0\,
      S => error_latched_reg(3)
    );
\symbols_latched_reg[5]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \symbols_latched_reg[5]_i_7_n_0\,
      I1 => \symbols_latched_reg[5]_i_8_n_0\,
      O => \symbols_latched_reg[5]_i_4_n_0\,
      S => error_latched_reg(3)
    );
\symbols_latched_reg[5]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[5]_i_9_n_0\,
      I1 => \symbols_latched[5]_i_10_n_0\,
      O => \symbols_latched_reg[5]_i_5_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[5]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[5]_i_11_n_0\,
      I1 => \symbols_latched[5]_i_12_n_0\,
      O => \symbols_latched_reg[5]_i_6_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[5]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[5]_i_13_n_0\,
      I1 => \symbols_latched[5]_i_14_n_0\,
      O => \symbols_latched_reg[5]_i_7_n_0\,
      S => error_latched_reg(2)
    );
\symbols_latched_reg[5]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \symbols_latched[5]_i_15_n_0\,
      I1 => \symbols_latched[5]_i_16_n_0\,
      O => \symbols_latched_reg[5]_i_8_n_0\,
      S => error_latched_reg(2)
    );
\write_ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_ptr_reg(0),
      O => \write_ptr[0]_i_1_n_0\
    );
\write_ptr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_ptr_reg(1),
      I1 => write_ptr_reg(0),
      O => \p_0_in__1\(1)
    );
\write_ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => write_ptr_reg(2),
      I1 => write_ptr_reg(0),
      I2 => write_ptr_reg(1),
      O => \p_0_in__1\(2)
    );
\write_ptr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => write_ptr_reg(3),
      I1 => write_ptr_reg(2),
      I2 => write_ptr_reg(1),
      I3 => write_ptr_reg(0),
      O => \p_0_in__1\(3)
    );
\write_ptr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => write_ptr_reg(4),
      I1 => write_ptr_reg(3),
      I2 => write_ptr_reg(0),
      I3 => write_ptr_reg(1),
      I4 => write_ptr_reg(2),
      O => \p_0_in__1\(4)
    );
\write_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \write_ptr[0]_i_1_n_0\,
      Q => write_ptr_reg(0),
      R => SR(0)
    );
\write_ptr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__1\(1),
      Q => write_ptr_reg(1),
      R => SR(0)
    );
\write_ptr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__1\(2),
      Q => write_ptr_reg(2),
      R => SR(0)
    );
\write_ptr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__1\(3),
      Q => write_ptr_reg(3),
      R => SR(0)
    );
\write_ptr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \p_0_in__1\(4),
      Q => write_ptr_reg(4),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_morse_top_0_0_morse_decoder_table is
  port (
    \read_idx_reg[4]\ : out STD_LOGIC;
    \read_idx_reg[4]_0\ : out STD_LOGIC;
    \read_idx_reg[4]_1\ : out STD_LOGIC;
    \read_idx_reg[4]_2\ : out STD_LOGIC;
    \read_idx_reg[4]_3\ : out STD_LOGIC;
    \read_idx_reg[4]_4\ : out STD_LOGIC;
    \read_idx_reg[4]_5\ : out STD_LOGIC;
    \read_idx_reg[4]_6\ : out STD_LOGIC;
    \read_idx_reg[4]_7\ : out STD_LOGIC;
    \read_idx_reg[4]_8\ : out STD_LOGIC;
    \read_idx_reg[4]_9\ : out STD_LOGIC;
    \read_idx_reg[4]_10\ : out STD_LOGIC;
    \read_idx_reg[4]_11\ : out STD_LOGIC;
    echo_symbols_mux : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \ascii_data_reg[5]\ : in STD_LOGIC;
    echo_count_mux : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ascii_data_reg[3]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_morse_top_0_0_morse_decoder_table : entity is "morse_decoder_table";
end system_morse_top_0_0_morse_decoder_table;

architecture STRUCTURE of system_morse_top_0_0_morse_decoder_table is
  signal \ascii_data[0]_i_6_n_0\ : STD_LOGIC;
  signal \ascii_data[0]_i_7_n_0\ : STD_LOGIC;
  signal \ascii_data[0]_i_8_n_0\ : STD_LOGIC;
  signal \ascii_data[0]_i_9_n_0\ : STD_LOGIC;
  signal \ascii_data[1]_i_10_n_0\ : STD_LOGIC;
  signal \ascii_data[1]_i_4_n_0\ : STD_LOGIC;
  signal \ascii_data[1]_i_7_n_0\ : STD_LOGIC;
  signal \ascii_data[1]_i_8_n_0\ : STD_LOGIC;
  signal \ascii_data[1]_i_9_n_0\ : STD_LOGIC;
  signal \ascii_data[2]_i_6_n_0\ : STD_LOGIC;
  signal \ascii_data[2]_i_7_n_0\ : STD_LOGIC;
  signal \ascii_data[2]_i_8_n_0\ : STD_LOGIC;
  signal \ascii_data[2]_i_9_n_0\ : STD_LOGIC;
  signal \ascii_data[3]_i_10_n_0\ : STD_LOGIC;
  signal \ascii_data[3]_i_11_n_0\ : STD_LOGIC;
  signal \ascii_data[3]_i_5_n_0\ : STD_LOGIC;
  signal \ascii_data[3]_i_8_n_0\ : STD_LOGIC;
  signal \ascii_data[3]_i_9_n_0\ : STD_LOGIC;
  signal \ascii_data[4]_i_5_n_0\ : STD_LOGIC;
  signal \ascii_data[4]_i_6_n_0\ : STD_LOGIC;
  signal \ascii_data[5]_i_4_n_0\ : STD_LOGIC;
  signal \ascii_data[5]_i_5_n_0\ : STD_LOGIC;
  signal \ascii_data[5]_i_6_n_0\ : STD_LOGIC;
  signal \ascii_data_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \ascii_data_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \ascii_data_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \ascii_data_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \ascii_data_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \ascii_data_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \ascii_data_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \ascii_data_reg[3]_i_7_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ascii_data[1]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ascii_data[4]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ascii_data[5]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ascii_data[5]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ascii_data[5]_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ascii_data[5]_i_6\ : label is "soft_lutpair12";
begin
\ascii_data[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5FFEAEFFFFFFFF"
    )
        port map (
      I0 => echo_symbols_mux(1),
      I1 => \ascii_data[1]_i_4_n_0\,
      I2 => echo_symbols_mux(2),
      I3 => \ascii_data[3]_i_5_n_0\,
      I4 => echo_symbols_mux(0),
      I5 => echo_count_mux(1),
      O => \read_idx_reg[4]_9\
    );
\ascii_data[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => echo_symbols_mux(2),
      I1 => echo_symbols_mux(3),
      I2 => echo_symbols_mux(4),
      I3 => \ascii_data_reg[5]\,
      I4 => echo_symbols_mux(1),
      I5 => echo_symbols_mux(0),
      O => \ascii_data[0]_i_6_n_0\
    );
\ascii_data[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8C8FFFFFFFF"
    )
        port map (
      I0 => echo_symbols_mux(0),
      I1 => echo_symbols_mux(2),
      I2 => echo_symbols_mux(3),
      I3 => echo_symbols_mux(1),
      I4 => echo_symbols_mux(4),
      I5 => \ascii_data_reg[5]\,
      O => \ascii_data[0]_i_7_n_0\
    );
\ascii_data[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFD9"
    )
        port map (
      I0 => echo_symbols_mux(0),
      I1 => echo_symbols_mux(1),
      I2 => \ascii_data_reg[5]\,
      I3 => echo_symbols_mux(4),
      I4 => echo_symbols_mux(3),
      I5 => echo_symbols_mux(2),
      O => \ascii_data[0]_i_8_n_0\
    );
\ascii_data[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFBFFFFFFFF"
    )
        port map (
      I0 => echo_symbols_mux(1),
      I1 => \ascii_data_reg[5]\,
      I2 => echo_symbols_mux(4),
      I3 => echo_symbols_mux(3),
      I4 => echo_symbols_mux(2),
      I5 => echo_symbols_mux(0),
      O => \ascii_data[0]_i_9_n_0\
    );
\ascii_data[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFF7FFFFFFFEF"
    )
        port map (
      I0 => echo_symbols_mux(0),
      I1 => echo_symbols_mux(1),
      I2 => \ascii_data_reg[5]\,
      I3 => echo_symbols_mux(4),
      I4 => echo_symbols_mux(3),
      I5 => echo_symbols_mux(2),
      O => \ascii_data[1]_i_10_n_0\
    );
\ascii_data[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5FFE5EFFFFFFFF"
    )
        port map (
      I0 => echo_symbols_mux(1),
      I1 => \ascii_data[1]_i_4_n_0\,
      I2 => echo_symbols_mux(2),
      I3 => \ascii_data[3]_i_5_n_0\,
      I4 => echo_symbols_mux(0),
      I5 => echo_count_mux(1),
      O => \read_idx_reg[4]_10\
    );
\ascii_data[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \ascii_data_reg[5]\,
      I1 => echo_symbols_mux(4),
      I2 => echo_symbols_mux(3),
      O => \ascii_data[1]_i_4_n_0\
    );
\ascii_data[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => echo_symbols_mux(1),
      I1 => echo_symbols_mux(0),
      I2 => echo_symbols_mux(3),
      I3 => echo_symbols_mux(4),
      I4 => \ascii_data_reg[5]\,
      I5 => echo_symbols_mux(2),
      O => \ascii_data[1]_i_7_n_0\
    );
\ascii_data[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFD5FFFFFFBAFF"
    )
        port map (
      I0 => echo_symbols_mux(0),
      I1 => echo_symbols_mux(1),
      I2 => echo_symbols_mux(2),
      I3 => \ascii_data_reg[5]\,
      I4 => echo_symbols_mux(4),
      I5 => echo_symbols_mux(3),
      O => \ascii_data[1]_i_8_n_0\
    );
\ascii_data[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFCFFF9"
    )
        port map (
      I0 => echo_symbols_mux(0),
      I1 => echo_symbols_mux(2),
      I2 => echo_symbols_mux(3),
      I3 => echo_symbols_mux(4),
      I4 => \ascii_data_reg[5]\,
      I5 => echo_symbols_mux(1),
      O => \ascii_data[1]_i_9_n_0\
    );
\ascii_data[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5FFFDDFFFFFFFF"
    )
        port map (
      I0 => echo_count_mux(1),
      I1 => echo_symbols_mux(0),
      I2 => echo_symbols_mux(2),
      I3 => \ascii_data[3]_i_5_n_0\,
      I4 => echo_symbols_mux(1),
      I5 => echo_count_mux(0),
      O => \read_idx_reg[4]_11\
    );
\ascii_data[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => echo_symbols_mux(2),
      I1 => \ascii_data_reg[5]\,
      I2 => echo_symbols_mux(4),
      I3 => echo_symbols_mux(3),
      I4 => echo_symbols_mux(0),
      O => \ascii_data[2]_i_6_n_0\
    );
\ascii_data[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF99FFFFFF54FFFF"
    )
        port map (
      I0 => echo_symbols_mux(0),
      I1 => echo_symbols_mux(2),
      I2 => echo_symbols_mux(3),
      I3 => echo_symbols_mux(4),
      I4 => \ascii_data_reg[5]\,
      I5 => echo_symbols_mux(1),
      O => \ascii_data[2]_i_7_n_0\
    );
\ascii_data[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFBFFFFFFFC"
    )
        port map (
      I0 => echo_symbols_mux(1),
      I1 => echo_symbols_mux(0),
      I2 => echo_symbols_mux(3),
      I3 => echo_symbols_mux(4),
      I4 => \ascii_data_reg[5]\,
      I5 => echo_symbols_mux(2),
      O => \ascii_data[2]_i_8_n_0\
    );
\ascii_data[2]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => echo_symbols_mux(2),
      I1 => \ascii_data_reg[5]\,
      I2 => echo_symbols_mux(4),
      I3 => echo_symbols_mux(1),
      I4 => echo_symbols_mux(0),
      O => \ascii_data[2]_i_9_n_0\
    );
\ascii_data[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF8C8"
    )
        port map (
      I0 => echo_symbols_mux(0),
      I1 => echo_symbols_mux(2),
      I2 => \ascii_data_reg[5]\,
      I3 => echo_symbols_mux(1),
      I4 => echo_symbols_mux(3),
      I5 => echo_symbols_mux(4),
      O => \ascii_data[3]_i_10_n_0\
    );
\ascii_data[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF4F"
    )
        port map (
      I0 => echo_symbols_mux(0),
      I1 => echo_symbols_mux(1),
      I2 => \ascii_data_reg[5]\,
      I3 => echo_symbols_mux(4),
      I4 => echo_symbols_mux(3),
      I5 => echo_symbols_mux(2),
      O => \ascii_data[3]_i_11_n_0\
    );
\ascii_data[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5FFE0EFFFFFFFF"
    )
        port map (
      I0 => echo_symbols_mux(1),
      I1 => \ascii_data_reg[3]\,
      I2 => echo_symbols_mux(2),
      I3 => \ascii_data[3]_i_5_n_0\,
      I4 => echo_symbols_mux(0),
      I5 => echo_count_mux(1),
      O => \read_idx_reg[4]_8\
    );
\ascii_data[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \ascii_data_reg[5]\,
      I1 => echo_symbols_mux(4),
      I2 => echo_symbols_mux(3),
      O => \ascii_data[3]_i_5_n_0\
    );
\ascii_data[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => echo_symbols_mux(2),
      I1 => echo_symbols_mux(3),
      I2 => echo_symbols_mux(4),
      I3 => \ascii_data_reg[5]\,
      I4 => echo_symbols_mux(1),
      I5 => echo_symbols_mux(0),
      O => \ascii_data[3]_i_8_n_0\
    );
\ascii_data[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDBFFFFFFE1FFFF"
    )
        port map (
      I0 => echo_symbols_mux(0),
      I1 => echo_symbols_mux(2),
      I2 => echo_symbols_mux(3),
      I3 => echo_symbols_mux(4),
      I4 => \ascii_data_reg[5]\,
      I5 => echo_symbols_mux(1),
      O => \ascii_data[3]_i_9_n_0\
    );
\ascii_data[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => \ascii_data[4]_i_5_n_0\,
      I1 => echo_count_mux(1),
      I2 => \ascii_data[5]_i_6_n_0\,
      I3 => echo_symbols_mux(2),
      O => \read_idx_reg[4]_5\
    );
\ascii_data[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFE0E"
    )
        port map (
      I0 => echo_symbols_mux(2),
      I1 => \ascii_data[4]_i_6_n_0\,
      I2 => echo_symbols_mux(0),
      I3 => \ascii_data[5]_i_6_n_0\,
      I4 => echo_count_mux(1),
      O => \read_idx_reg[4]_4\
    );
\ascii_data[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFFFFFFC8FF"
    )
        port map (
      I0 => echo_symbols_mux(0),
      I1 => echo_symbols_mux(1),
      I2 => echo_symbols_mux(2),
      I3 => \ascii_data_reg[5]\,
      I4 => echo_symbols_mux(4),
      I5 => echo_symbols_mux(3),
      O => \ascii_data[4]_i_5_n_0\
    );
\ascii_data[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => echo_symbols_mux(3),
      I1 => echo_symbols_mux(4),
      I2 => \ascii_data_reg[5]\,
      I3 => echo_symbols_mux(1),
      O => \ascii_data[4]_i_6_n_0\
    );
\ascii_data[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFC8"
    )
        port map (
      I0 => echo_symbols_mux(2),
      I1 => \ascii_data_reg[5]\,
      I2 => echo_symbols_mux(1),
      I3 => echo_symbols_mux(3),
      I4 => echo_symbols_mux(4),
      O => \read_idx_reg[4]_7\
    );
\ascii_data[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB8FFB8FFB800"
    )
        port map (
      I0 => \ascii_data[5]_i_4_n_0\,
      I1 => echo_symbols_mux(0),
      I2 => \ascii_data[5]_i_5_n_0\,
      I3 => echo_count_mux(1),
      I4 => \ascii_data[5]_i_6_n_0\,
      I5 => echo_symbols_mux(2),
      O => \read_idx_reg[4]_6\
    );
\ascii_data[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8FF"
    )
        port map (
      I0 => echo_symbols_mux(1),
      I1 => echo_symbols_mux(2),
      I2 => echo_symbols_mux(4),
      I3 => \ascii_data_reg[5]\,
      O => \ascii_data[5]_i_4_n_0\
    );
\ascii_data[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF48FFFF"
    )
        port map (
      I0 => echo_symbols_mux(2),
      I1 => echo_symbols_mux(3),
      I2 => echo_symbols_mux(1),
      I3 => echo_symbols_mux(4),
      I4 => \ascii_data_reg[5]\,
      O => \ascii_data[5]_i_5_n_0\
    );
\ascii_data[5]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \ascii_data_reg[5]\,
      I1 => echo_symbols_mux(4),
      I2 => echo_symbols_mux(3),
      O => \ascii_data[5]_i_6_n_0\
    );
\ascii_data[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000067BF0000"
    )
        port map (
      I0 => echo_symbols_mux(0),
      I1 => echo_symbols_mux(2),
      I2 => echo_symbols_mux(3),
      I3 => echo_symbols_mux(1),
      I4 => \ascii_data_reg[5]\,
      I5 => echo_symbols_mux(4),
      O => \read_idx_reg[4]\
    );
\ascii_data_reg[0]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \ascii_data_reg[0]_i_4_n_0\,
      I1 => \ascii_data_reg[0]_i_5_n_0\,
      O => \read_idx_reg[4]_0\,
      S => echo_count_mux(0)
    );
\ascii_data_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii_data[0]_i_6_n_0\,
      I1 => \ascii_data[0]_i_7_n_0\,
      O => \ascii_data_reg[0]_i_4_n_0\,
      S => echo_count_mux(1)
    );
\ascii_data_reg[0]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii_data[0]_i_8_n_0\,
      I1 => \ascii_data[0]_i_9_n_0\,
      O => \ascii_data_reg[0]_i_5_n_0\,
      S => echo_count_mux(1)
    );
\ascii_data_reg[1]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \ascii_data_reg[1]_i_5_n_0\,
      I1 => \ascii_data_reg[1]_i_6_n_0\,
      O => \read_idx_reg[4]_1\,
      S => echo_count_mux(0)
    );
\ascii_data_reg[1]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii_data[1]_i_7_n_0\,
      I1 => \ascii_data[1]_i_8_n_0\,
      O => \ascii_data_reg[1]_i_5_n_0\,
      S => echo_count_mux(1)
    );
\ascii_data_reg[1]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii_data[1]_i_9_n_0\,
      I1 => \ascii_data[1]_i_10_n_0\,
      O => \ascii_data_reg[1]_i_6_n_0\,
      S => echo_count_mux(1)
    );
\ascii_data_reg[2]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \ascii_data_reg[2]_i_4_n_0\,
      I1 => \ascii_data_reg[2]_i_5_n_0\,
      O => \read_idx_reg[4]_2\,
      S => echo_count_mux(0)
    );
\ascii_data_reg[2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii_data[2]_i_6_n_0\,
      I1 => \ascii_data[2]_i_7_n_0\,
      O => \ascii_data_reg[2]_i_4_n_0\,
      S => echo_count_mux(1)
    );
\ascii_data_reg[2]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii_data[2]_i_8_n_0\,
      I1 => \ascii_data[2]_i_9_n_0\,
      O => \ascii_data_reg[2]_i_5_n_0\,
      S => echo_count_mux(1)
    );
\ascii_data_reg[3]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \ascii_data_reg[3]_i_6_n_0\,
      I1 => \ascii_data_reg[3]_i_7_n_0\,
      O => \read_idx_reg[4]_3\,
      S => echo_count_mux(0)
    );
\ascii_data_reg[3]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii_data[3]_i_8_n_0\,
      I1 => \ascii_data[3]_i_9_n_0\,
      O => \ascii_data_reg[3]_i_6_n_0\,
      S => echo_count_mux(1)
    );
\ascii_data_reg[3]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii_data[3]_i_10_n_0\,
      I1 => \ascii_data[3]_i_11_n_0\,
      O => \ascii_data_reg[3]_i_7_n_0\,
      S => echo_count_mux(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_morse_top_0_0_morse_echo is
  port (
    echo_done : out STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rgb_r_n : out STD_LOGIC;
    rgb_g_n : out STD_LOGIC;
    rgb_b_n : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    echo_error_mux : in STD_LOGIC;
    replay_echo_char_ready : in STD_LOGIC;
    replay_active : in STD_LOGIC;
    fsm_buf_write_en : in STD_LOGIC;
    rgb_b_reg_0 : in STD_LOGIC;
    rgb_b_reg_1 : in STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \count_latched_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_morse_top_0_0_morse_echo : entity is "morse_echo";
end system_morse_top_0_0_morse_echo;

architecture STRUCTURE of system_morse_top_0_0_morse_echo is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_20_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_21_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_22_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_23_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_24_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_25_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_9_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal count_latched : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal done_i_1_n_0 : STD_LOGIC;
  signal done_i_2_n_0 : STD_LOGIC;
  signal done_i_3_n_0 : STD_LOGIC;
  signal done_i_4_n_0 : STD_LOGIC;
  signal done_i_5_n_0 : STD_LOGIC;
  signal done_i_6_n_0 : STD_LOGIC;
  signal echo_b : STD_LOGIC;
  signal echo_g : STD_LOGIC;
  signal echo_r : STD_LOGIC;
  signal error_latched_reg_n_0 : STD_LOGIC;
  signal rgb_b_i_1_n_0 : STD_LOGIC;
  signal rgb_g_i_10_n_0 : STD_LOGIC;
  signal rgb_g_i_11_n_0 : STD_LOGIC;
  signal rgb_g_i_12_n_0 : STD_LOGIC;
  signal rgb_g_i_1_n_0 : STD_LOGIC;
  signal rgb_g_i_2_n_0 : STD_LOGIC;
  signal rgb_g_i_3_n_0 : STD_LOGIC;
  signal rgb_g_i_4_n_0 : STD_LOGIC;
  signal rgb_g_i_5_n_0 : STD_LOGIC;
  signal rgb_g_i_6_n_0 : STD_LOGIC;
  signal rgb_g_i_7_n_0 : STD_LOGIC;
  signal rgb_g_i_8_n_0 : STD_LOGIC;
  signal rgb_g_i_9_n_0 : STD_LOGIC;
  signal rgb_r_i_1_n_0 : STD_LOGIC;
  signal rgb_r_i_2_n_0 : STD_LOGIC;
  signal rgb_r_i_3_n_0 : STD_LOGIC;
  signal rgb_r_i_4_n_0 : STD_LOGIC;
  signal rgb_r_i_5_n_0 : STD_LOGIC;
  signal rgb_r_i_6_n_0 : STD_LOGIC;
  signal rgb_r_i_7_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal symbol_idx : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \symbol_idx[2]_i_1_n_0\ : STD_LOGIC;
  signal \symbol_idx[3]_i_1_n_0\ : STD_LOGIC;
  signal \symbol_idx[3]_i_2_n_0\ : STD_LOGIC;
  signal \symbol_idx[3]_i_3_n_0\ : STD_LOGIC;
  signal \symbol_idx_reg_n_0_[0]\ : STD_LOGIC;
  signal \symbol_idx_reg_n_0_[1]\ : STD_LOGIC;
  signal \symbol_idx_reg_n_0_[2]\ : STD_LOGIC;
  signal \symbol_idx_reg_n_0_[3]\ : STD_LOGIC;
  signal \symbols_latched[5]_i_1_n_0\ : STD_LOGIC;
  signal \symbols_latched_reg_n_0_[0]\ : STD_LOGIC;
  signal \symbols_latched_reg_n_0_[1]\ : STD_LOGIC;
  signal \symbols_latched_reg_n_0_[2]\ : STD_LOGIC;
  signal \symbols_latched_reg_n_0_[3]\ : STD_LOGIC;
  signal \symbols_latched_reg_n_0_[4]\ : STD_LOGIC;
  signal \symbols_latched_reg_n_0_[5]\ : STD_LOGIC;
  signal \timer_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \timer_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \timer_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \timer_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \timer_cnt0_carry__0_n_4\ : STD_LOGIC;
  signal \timer_cnt0_carry__0_n_5\ : STD_LOGIC;
  signal \timer_cnt0_carry__0_n_6\ : STD_LOGIC;
  signal \timer_cnt0_carry__0_n_7\ : STD_LOGIC;
  signal \timer_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \timer_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \timer_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \timer_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \timer_cnt0_carry__1_n_4\ : STD_LOGIC;
  signal \timer_cnt0_carry__1_n_5\ : STD_LOGIC;
  signal \timer_cnt0_carry__1_n_6\ : STD_LOGIC;
  signal \timer_cnt0_carry__1_n_7\ : STD_LOGIC;
  signal \timer_cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \timer_cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \timer_cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \timer_cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \timer_cnt0_carry__2_n_4\ : STD_LOGIC;
  signal \timer_cnt0_carry__2_n_5\ : STD_LOGIC;
  signal \timer_cnt0_carry__2_n_6\ : STD_LOGIC;
  signal \timer_cnt0_carry__2_n_7\ : STD_LOGIC;
  signal \timer_cnt0_carry__3_n_0\ : STD_LOGIC;
  signal \timer_cnt0_carry__3_n_1\ : STD_LOGIC;
  signal \timer_cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \timer_cnt0_carry__3_n_3\ : STD_LOGIC;
  signal \timer_cnt0_carry__3_n_4\ : STD_LOGIC;
  signal \timer_cnt0_carry__3_n_5\ : STD_LOGIC;
  signal \timer_cnt0_carry__3_n_6\ : STD_LOGIC;
  signal \timer_cnt0_carry__3_n_7\ : STD_LOGIC;
  signal \timer_cnt0_carry__4_n_0\ : STD_LOGIC;
  signal \timer_cnt0_carry__4_n_1\ : STD_LOGIC;
  signal \timer_cnt0_carry__4_n_2\ : STD_LOGIC;
  signal \timer_cnt0_carry__4_n_3\ : STD_LOGIC;
  signal \timer_cnt0_carry__4_n_4\ : STD_LOGIC;
  signal \timer_cnt0_carry__4_n_5\ : STD_LOGIC;
  signal \timer_cnt0_carry__4_n_6\ : STD_LOGIC;
  signal \timer_cnt0_carry__4_n_7\ : STD_LOGIC;
  signal \timer_cnt0_carry__5_n_3\ : STD_LOGIC;
  signal \timer_cnt0_carry__5_n_6\ : STD_LOGIC;
  signal \timer_cnt0_carry__5_n_7\ : STD_LOGIC;
  signal timer_cnt0_carry_n_0 : STD_LOGIC;
  signal timer_cnt0_carry_n_1 : STD_LOGIC;
  signal timer_cnt0_carry_n_2 : STD_LOGIC;
  signal timer_cnt0_carry_n_3 : STD_LOGIC;
  signal timer_cnt0_carry_n_4 : STD_LOGIC;
  signal timer_cnt0_carry_n_5 : STD_LOGIC;
  signal timer_cnt0_carry_n_6 : STD_LOGIC;
  signal timer_cnt0_carry_n_7 : STD_LOGIC;
  signal \timer_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[14]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[16]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[17]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[18]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[19]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[20]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[21]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[22]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[23]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[24]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[25]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[26]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[26]_i_2_n_0\ : STD_LOGIC;
  signal \timer_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[26]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \timer_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_timer_cnt0_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_timer_cnt0_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_4__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_14\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_15\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_18\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_20\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_22\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_4\ : label is "soft_lutpair18";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ST_IDLE:000,ST_SYMBOL_GAP:011,ST_SPACE_ON:001,ST_SYMBOL_ON:010,ST_DONE_GAP:101,ST_ERROR_ON:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ST_IDLE:000,ST_SYMBOL_GAP:011,ST_SPACE_ON:001,ST_SYMBOL_ON:010,ST_DONE_GAP:101,ST_ERROR_ON:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "ST_IDLE:000,ST_SYMBOL_GAP:011,ST_SPACE_ON:001,ST_SYMBOL_ON:010,ST_DONE_GAP:101,ST_ERROR_ON:100";
  attribute SOFT_HLUTNM of done_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of done_i_2 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of done_i_5 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of rgb_g_i_10 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of rgb_g_i_12 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of rgb_g_i_3 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of rgb_g_i_5 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of rgb_g_i_7 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of rgb_r_i_4 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of rgb_r_i_7 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \symbol_idx[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \symbol_idx[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \symbol_idx[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \symbol_idx[3]_i_3\ : label is "soft_lutpair21";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of timer_cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \timer_cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \timer_cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \timer_cnt0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \timer_cnt0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \timer_cnt0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \timer_cnt0_carry__5\ : label is 35;
begin
  \FSM_sequential_state_reg[0]_0\(0) <= \^fsm_sequential_state_reg[0]_0\(0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFFBABA88008A8A"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \FSM_sequential_state[1]_i_3__0_n_0\,
      I2 => state(2),
      I3 => \FSM_sequential_state[1]_i_4__0_n_0\,
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      I5 => \^fsm_sequential_state_reg[0]_0\(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FF03FFFF55"
    )
        port map (
      I0 => rgb_b_reg_0,
      I1 => error_latched_reg_n_0,
      I2 => \FSM_sequential_state[2]_i_7_n_0\,
      I3 => state(1),
      I4 => \^fsm_sequential_state_reg[0]_0\(0),
      I5 => state(2),
      O => \state__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFFBABA88008A8A"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_sequential_state[1]_i_3__0_n_0\,
      I2 => state(2),
      I3 => \FSM_sequential_state[1]_i_4__0_n_0\,
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      I5 => state(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C000F0A"
    )
        port map (
      I0 => rgb_b_reg_0,
      I1 => \FSM_sequential_state[2]_i_7_n_0\,
      I2 => state(2),
      I3 => state(1),
      I4 => \^fsm_sequential_state_reg[0]_0\(0),
      O => \state__0\(1)
    );
\FSM_sequential_state[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5C5C5C5C0000FF0F"
    )
        port map (
      I0 => done_i_2_n_0,
      I1 => rgb_r_i_2_n_0,
      I2 => \^fsm_sequential_state_reg[0]_0\(0),
      I3 => \FSM_sequential_state[2]_i_8_n_0\,
      I4 => state(1),
      I5 => state(2),
      O => \FSM_sequential_state[1]_i_3__0_n_0\
    );
\FSM_sequential_state[1]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => state(2),
      I1 => rgb_r_i_2_n_0,
      I2 => rgb_b_reg_1,
      I3 => \^fsm_sequential_state_reg[0]_0\(0),
      O => \FSM_sequential_state[1]_i_4__0_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAB8AAF0AABAAABA"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \FSM_sequential_state[2]_i_3_n_0\,
      I2 => state(2),
      I3 => \FSM_sequential_state[2]_i_4_n_0\,
      I4 => \FSM_sequential_state_reg[2]_0\,
      I5 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5151510101015101"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[26]\,
      I1 => \FSM_sequential_state[2]_i_19_n_0\,
      I2 => \symbol_idx_reg_n_0_[2]\,
      I3 => \symbols_latched_reg_n_0_[4]\,
      I4 => \symbol_idx_reg_n_0_[0]\,
      I5 => \symbols_latched_reg_n_0_[5]\,
      O => \FSM_sequential_state[2]_i_10_n_0\
    );
\FSM_sequential_state[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0888080808080808"
    )
        port map (
      I0 => rgb_g_i_8_n_0,
      I1 => \FSM_sequential_state[2]_i_14_n_0\,
      I2 => \timer_cnt_reg_n_0_[24]\,
      I3 => \timer_cnt_reg_n_0_[21]\,
      I4 => \FSM_sequential_state[2]_i_20_n_0\,
      I5 => \FSM_sequential_state[2]_i_13_n_0\,
      O => \FSM_sequential_state[2]_i_11_n_0\
    );
\FSM_sequential_state[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B5B5F7F0020BBFB"
    )
        port map (
      I0 => \symbol_idx_reg_n_0_[1]\,
      I1 => count_latched(1),
      I2 => \symbol_idx_reg_n_0_[0]\,
      I3 => count_latched(0),
      I4 => count_latched(2),
      I5 => \symbol_idx_reg_n_0_[2]\,
      O => \FSM_sequential_state[2]_i_12_n_0\
    );
\FSM_sequential_state[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02020200"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_17_n_0\,
      I1 => \timer_cnt_reg_n_0_[14]\,
      I2 => \timer_cnt_reg_n_0_[13]\,
      I3 => \FSM_sequential_state[2]_i_21_n_0\,
      I4 => \FSM_sequential_state[2]_i_22_n_0\,
      I5 => \FSM_sequential_state[2]_i_23_n_0\,
      O => \FSM_sequential_state[2]_i_13_n_0\
    );
\FSM_sequential_state[2]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[25]\,
      I1 => \timer_cnt_reg_n_0_[26]\,
      O => \FSM_sequential_state[2]_i_14_n_0\
    );
\FSM_sequential_state[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[19]\,
      I1 => \timer_cnt_reg_n_0_[20]\,
      I2 => \timer_cnt_reg_n_0_[17]\,
      O => \FSM_sequential_state[2]_i_15_n_0\
    );
\FSM_sequential_state[2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF7F"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[9]\,
      I1 => \timer_cnt_reg_n_0_[10]\,
      I2 => \timer_cnt_reg_n_0_[11]\,
      I3 => \FSM_sequential_state[2]_i_24_n_0\,
      I4 => \timer_cnt_reg_n_0_[12]\,
      I5 => \timer_cnt_reg_n_0_[13]\,
      O => \FSM_sequential_state[2]_i_16_n_0\
    );
\FSM_sequential_state[2]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[16]\,
      I1 => \timer_cnt_reg_n_0_[15]\,
      O => \FSM_sequential_state[2]_i_17_n_0\
    );
\FSM_sequential_state[2]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEEEEE"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[23]\,
      I1 => \timer_cnt_reg_n_0_[21]\,
      I2 => \timer_cnt_reg_n_0_[20]\,
      I3 => \timer_cnt_reg_n_0_[19]\,
      I4 => \timer_cnt_reg_n_0_[18]\,
      O => \FSM_sequential_state[2]_i_18_n_0\
    );
\FSM_sequential_state[2]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \symbols_latched_reg_n_0_[3]\,
      I1 => \symbols_latched_reg_n_0_[2]\,
      I2 => \symbol_idx_reg_n_0_[1]\,
      I3 => \symbols_latched_reg_n_0_[1]\,
      I4 => \symbol_idx_reg_n_0_[0]\,
      I5 => \symbols_latched_reg_n_0_[0]\,
      O => \FSM_sequential_state[2]_i_19_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0646"
    )
        port map (
      I0 => state(2),
      I1 => \^fsm_sequential_state_reg[0]_0\(0),
      I2 => state(1),
      I3 => \FSM_sequential_state[2]_i_7_n_0\,
      O => \state__0\(2)
    );
\FSM_sequential_state[2]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[22]\,
      I1 => \timer_cnt_reg_n_0_[23]\,
      O => \FSM_sequential_state[2]_i_20_n_0\
    );
\FSM_sequential_state[2]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000000D"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[5]\,
      I1 => \FSM_sequential_state[2]_i_25_n_0\,
      I2 => \timer_cnt_reg_n_0_[8]\,
      I3 => \timer_cnt_reg_n_0_[10]\,
      I4 => \timer_cnt_reg_n_0_[7]\,
      I5 => \timer_cnt_reg_n_0_[6]\,
      O => \FSM_sequential_state[2]_i_21_n_0\
    );
\FSM_sequential_state[2]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"777F"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[12]\,
      I1 => \timer_cnt_reg_n_0_[11]\,
      I2 => \timer_cnt_reg_n_0_[10]\,
      I3 => \timer_cnt_reg_n_0_[9]\,
      O => \FSM_sequential_state[2]_i_22_n_0\
    );
\FSM_sequential_state[2]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[17]\,
      I1 => \timer_cnt_reg_n_0_[20]\,
      I2 => \timer_cnt_reg_n_0_[19]\,
      I3 => \timer_cnt_reg_n_0_[18]\,
      O => \FSM_sequential_state[2]_i_23_n_0\
    );
\FSM_sequential_state[2]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000555D"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[7]\,
      I1 => \FSM_sequential_state[2]_i_25_n_0\,
      I2 => \timer_cnt_reg_n_0_[6]\,
      I3 => \timer_cnt_reg_n_0_[5]\,
      I4 => \timer_cnt_reg_n_0_[8]\,
      O => \FSM_sequential_state[2]_i_24_n_0\
    );
\FSM_sequential_state[2]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15555555"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[4]\,
      I1 => \timer_cnt_reg_n_0_[2]\,
      I2 => \timer_cnt_reg_n_0_[1]\,
      I3 => \timer_cnt_reg_n_0_[0]\,
      I4 => \timer_cnt_reg_n_0_[3]\,
      O => \FSM_sequential_state[2]_i_25_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1011"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \FSM_sequential_state[2]_i_8_n_0\,
      I3 => \^fsm_sequential_state_reg[0]_0\(0),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => rgb_r_i_2_n_0,
      I1 => \^fsm_sequential_state_reg[0]_0\(0),
      I2 => done_i_2_n_0,
      I3 => state(2),
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4FF00FFF4FF"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_9_n_0\,
      I1 => \FSM_sequential_state[2]_i_10_n_0\,
      I2 => \FSM_sequential_state[2]_i_11_n_0\,
      I3 => state(1),
      I4 => \^fsm_sequential_state_reg[0]_0\(0),
      I5 => done_i_2_n_0,
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1777777701111111"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_12_n_0\,
      I1 => \symbol_idx_reg_n_0_[3]\,
      I2 => \symbol_idx_reg_n_0_[2]\,
      I3 => \symbol_idx_reg_n_0_[0]\,
      I4 => \symbol_idx_reg_n_0_[1]\,
      I5 => count_latched(3),
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
\FSM_sequential_state[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFD0000FFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_13_n_0\,
      I1 => \timer_cnt_reg_n_0_[22]\,
      I2 => \timer_cnt_reg_n_0_[23]\,
      I3 => \timer_cnt_reg_n_0_[21]\,
      I4 => \timer_cnt_reg_n_0_[24]\,
      I5 => \FSM_sequential_state[2]_i_14_n_0\,
      O => \FSM_sequential_state[2]_i_8_n_0\
    );
\FSM_sequential_state[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF1055"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_15_n_0\,
      I1 => \FSM_sequential_state[2]_i_16_n_0\,
      I2 => \timer_cnt_reg_n_0_[14]\,
      I3 => \FSM_sequential_state[2]_i_17_n_0\,
      I4 => \FSM_sequential_state[2]_i_18_n_0\,
      I5 => rgb_g_i_7_n_0,
      O => \FSM_sequential_state[2]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \^fsm_sequential_state_reg[0]_0\(0),
      R => rst
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => rst
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => rst
    );
\count_latched_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \symbols_latched[5]_i_1_n_0\,
      D => \count_latched_reg[3]_0\(0),
      Q => count_latched(0),
      R => rst
    );
\count_latched_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \symbols_latched[5]_i_1_n_0\,
      D => \count_latched_reg[3]_0\(1),
      Q => count_latched(1),
      R => rst
    );
\count_latched_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \symbols_latched[5]_i_1_n_0\,
      D => \count_latched_reg[3]_0\(2),
      Q => count_latched(2),
      R => rst
    );
\count_latched_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \symbols_latched[5]_i_1_n_0\,
      D => \count_latched_reg[3]_0\(3),
      Q => count_latched(3),
      R => rst
    );
done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[0]_0\(0),
      I1 => done_i_2_n_0,
      I2 => state(2),
      I3 => state(1),
      O => done_i_1_n_0
    );
done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00101111"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[26]\,
      I1 => \timer_cnt_reg_n_0_[25]\,
      I2 => done_i_3_n_0,
      I3 => \timer_cnt_reg_n_0_[23]\,
      I4 => \timer_cnt_reg_n_0_[24]\,
      O => done_i_2_n_0
    );
done_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0075FFFFFFFF"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[16]\,
      I1 => \timer_cnt_reg_n_0_[15]\,
      I2 => done_i_4_n_0,
      I3 => \timer_cnt_reg_n_0_[17]\,
      I4 => rgb_r_i_4_n_0,
      I5 => \timer_cnt_reg_n_0_[18]\,
      O => done_i_3_n_0
    );
done_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF7FFF7FFFFFFF"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[13]\,
      I1 => \timer_cnt_reg_n_0_[14]\,
      I2 => \timer_cnt_reg_n_0_[11]\,
      I3 => \timer_cnt_reg_n_0_[12]\,
      I4 => done_i_5_n_0,
      I5 => done_i_6_n_0,
      O => done_i_4_n_0
    );
done_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[6]\,
      I1 => \timer_cnt_reg_n_0_[7]\,
      I2 => \timer_cnt_reg_n_0_[9]\,
      I3 => \timer_cnt_reg_n_0_[10]\,
      I4 => \timer_cnt_reg_n_0_[8]\,
      O => done_i_5_n_0
    );
done_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[2]\,
      I1 => \timer_cnt_reg_n_0_[1]\,
      I2 => \timer_cnt_reg_n_0_[0]\,
      I3 => \timer_cnt_reg_n_0_[3]\,
      I4 => \timer_cnt_reg_n_0_[4]\,
      I5 => \timer_cnt_reg_n_0_[5]\,
      O => done_i_6_n_0
    );
done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => done_i_1_n_0,
      Q => echo_done,
      R => rst
    );
error_latched_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \symbols_latched[5]_i_1_n_0\,
      D => echo_error_mux,
      Q => error_latched_reg_n_0,
      R => rst
    );
rgb_b_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FFFF01000000"
    )
        port map (
      I0 => rgb_b_reg_0,
      I1 => \^fsm_sequential_state_reg[0]_0\(0),
      I2 => state(2),
      I3 => rgb_b_reg_1,
      I4 => \FSM_sequential_state[2]_i_3_n_0\,
      I5 => echo_b,
      O => rgb_b_i_1_n_0
    );
rgb_b_n_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => echo_b,
      O => rgb_b_n
    );
rgb_b_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_b_i_1_n_0,
      Q => echo_b,
      R => rst
    );
rgb_g_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABFFA8A8A800"
    )
        port map (
      I0 => rgb_g_i_2_n_0,
      I1 => rgb_g_i_3_n_0,
      I2 => rgb_g_i_4_n_0,
      I3 => \symbol_idx[3]_i_3_n_0\,
      I4 => rgb_g_i_5_n_0,
      I5 => echo_g,
      O => rgb_g_i_1_n_0
    );
rgb_g_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[20]\,
      I1 => \timer_cnt_reg_n_0_[19]\,
      O => rgb_g_i_10_n_0
    );
rgb_g_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01005555"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[8]\,
      I1 => \timer_cnt_reg_n_0_[5]\,
      I2 => \timer_cnt_reg_n_0_[6]\,
      I3 => \FSM_sequential_state[2]_i_25_n_0\,
      I4 => \timer_cnt_reg_n_0_[7]\,
      I5 => rgb_g_i_12_n_0,
      O => rgb_g_i_11_n_0
    );
rgb_g_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[9]\,
      I1 => \timer_cnt_reg_n_0_[10]\,
      I2 => \timer_cnt_reg_n_0_[11]\,
      O => rgb_g_i_12_n_0
    );
rgb_g_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04040404FF040404"
    )
        port map (
      I0 => state(2),
      I1 => \^fsm_sequential_state_reg[0]_0\(0),
      I2 => done_i_2_n_0,
      I3 => rgb_b_reg_0,
      I4 => rgb_b_reg_1,
      I5 => state(1),
      O => rgb_g_i_2_n_0
    );
rgb_g_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[0]_0\(0),
      I1 => state(1),
      O => rgb_g_i_3_n_0
    );
rgb_g_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00F2F2"
    )
        port map (
      I0 => rgb_g_i_6_n_0,
      I1 => rgb_g_i_7_n_0,
      I2 => \timer_cnt_reg_n_0_[26]\,
      I3 => \FSM_sequential_state[2]_i_8_n_0\,
      I4 => rgb_g_i_8_n_0,
      O => rgb_g_i_4_n_0
    );
rgb_g_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[0]_0\(0),
      I1 => state(2),
      O => rgb_g_i_5_n_0
    );
rgb_g_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCFFFEFCFCFEFE"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[18]\,
      I1 => \timer_cnt_reg_n_0_[21]\,
      I2 => \timer_cnt_reg_n_0_[23]\,
      I3 => rgb_g_i_9_n_0,
      I4 => rgb_g_i_10_n_0,
      I5 => \timer_cnt_reg_n_0_[17]\,
      O => rgb_g_i_6_n_0
    );
rgb_g_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FFF"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[23]\,
      I1 => \timer_cnt_reg_n_0_[22]\,
      I2 => \timer_cnt_reg_n_0_[24]\,
      I3 => \timer_cnt_reg_n_0_[25]\,
      O => rgb_g_i_7_n_0
    );
rgb_g_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47FF4700"
    )
        port map (
      I0 => \symbols_latched_reg_n_0_[5]\,
      I1 => \symbol_idx_reg_n_0_[0]\,
      I2 => \symbols_latched_reg_n_0_[4]\,
      I3 => \symbol_idx_reg_n_0_[2]\,
      I4 => \FSM_sequential_state[2]_i_19_n_0\,
      O => rgb_g_i_8_n_0
    );
rgb_g_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEFEEEFE"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[15]\,
      I1 => \timer_cnt_reg_n_0_[16]\,
      I2 => \timer_cnt_reg_n_0_[14]\,
      I3 => rgb_g_i_11_n_0,
      I4 => \timer_cnt_reg_n_0_[12]\,
      I5 => \timer_cnt_reg_n_0_[13]\,
      O => rgb_g_i_9_n_0
    );
rgb_g_n_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => echo_g,
      O => rgb_g_n
    );
rgb_g_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_g_i_1_n_0,
      Q => echo_g,
      R => rst
    );
rgb_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF08F800000808"
    )
        port map (
      I0 => state(1),
      I1 => error_latched_reg_n_0,
      I2 => state(2),
      I3 => rgb_r_i_2_n_0,
      I4 => rgb_r_i_3_n_0,
      I5 => echo_r,
      O => rgb_r_i_1_n_0
    );
rgb_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAA8AAA8AAAA"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[26]\,
      I1 => \timer_cnt_reg_n_0_[23]\,
      I2 => \timer_cnt_reg_n_0_[24]\,
      I3 => \timer_cnt_reg_n_0_[25]\,
      I4 => rgb_r_i_4_n_0,
      I5 => rgb_r_i_5_n_0,
      O => rgb_r_i_2_n_0
    );
rgb_r_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFFFFFF0000"
    )
        port map (
      I0 => done_i_2_n_0,
      I1 => \FSM_sequential_state[2]_i_7_n_0\,
      I2 => error_latched_reg_n_0,
      I3 => state(2),
      I4 => \^fsm_sequential_state_reg[0]_0\(0),
      I5 => state(1),
      O => rgb_r_i_3_n_0
    );
rgb_r_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[19]\,
      I1 => \timer_cnt_reg_n_0_[20]\,
      I2 => \timer_cnt_reg_n_0_[22]\,
      I3 => \timer_cnt_reg_n_0_[21]\,
      O => rgb_r_i_4_n_0
    );
rgb_r_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000BF00000000"
    )
        port map (
      I0 => rgb_r_i_6_n_0,
      I1 => \timer_cnt_reg_n_0_[13]\,
      I2 => \timer_cnt_reg_n_0_[14]\,
      I3 => \timer_cnt_reg_n_0_[18]\,
      I4 => \timer_cnt_reg_n_0_[17]\,
      I5 => \FSM_sequential_state[2]_i_17_n_0\,
      O => rgb_r_i_5_n_0
    );
rgb_r_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555777F"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[11]\,
      I1 => \timer_cnt_reg_n_0_[7]\,
      I2 => \timer_cnt_reg_n_0_[6]\,
      I3 => done_i_6_n_0,
      I4 => rgb_r_i_7_n_0,
      I5 => \timer_cnt_reg_n_0_[12]\,
      O => rgb_r_i_6_n_0
    );
rgb_r_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[8]\,
      I1 => \timer_cnt_reg_n_0_[10]\,
      I2 => \timer_cnt_reg_n_0_[9]\,
      O => rgb_r_i_7_n_0
    );
rgb_r_n_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => echo_r,
      O => rgb_r_n
    );
rgb_r_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rgb_r_i_1_n_0,
      Q => echo_r,
      R => rst
    );
\symbol_idx[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \symbol_idx_reg_n_0_[0]\,
      O => symbol_idx(0)
    );
\symbol_idx[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \symbol_idx_reg_n_0_[1]\,
      I3 => \symbol_idx_reg_n_0_[0]\,
      O => symbol_idx(1)
    );
\symbol_idx[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00780000"
    )
        port map (
      I0 => \symbol_idx_reg_n_0_[0]\,
      I1 => \symbol_idx_reg_n_0_[1]\,
      I2 => \symbol_idx_reg_n_0_[2]\,
      I3 => state(2),
      I4 => state(1),
      O => \symbol_idx[2]_i_1_n_0\
    );
\symbol_idx[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \symbols_latched[5]_i_1_n_0\,
      I1 => \symbol_idx[3]_i_3_n_0\,
      I2 => \^fsm_sequential_state_reg[0]_0\(0),
      O => \symbol_idx[3]_i_1_n_0\
    );
\symbol_idx[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007F8000000000"
    )
        port map (
      I0 => \symbol_idx_reg_n_0_[1]\,
      I1 => \symbol_idx_reg_n_0_[0]\,
      I2 => \symbol_idx_reg_n_0_[2]\,
      I3 => \symbol_idx_reg_n_0_[3]\,
      I4 => state(2),
      I5 => state(1),
      O => \symbol_idx[3]_i_2_n_0\
    );
\symbol_idx[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => \FSM_sequential_state[2]_i_7_n_0\,
      I3 => done_i_2_n_0,
      O => \symbol_idx[3]_i_3_n_0\
    );
\symbol_idx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \symbol_idx[3]_i_1_n_0\,
      D => symbol_idx(0),
      Q => \symbol_idx_reg_n_0_[0]\,
      R => rst
    );
\symbol_idx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \symbol_idx[3]_i_1_n_0\,
      D => symbol_idx(1),
      Q => \symbol_idx_reg_n_0_[1]\,
      R => rst
    );
\symbol_idx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \symbol_idx[3]_i_1_n_0\,
      D => \symbol_idx[2]_i_1_n_0\,
      Q => \symbol_idx_reg_n_0_[2]\,
      R => rst
    );
\symbol_idx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \symbol_idx[3]_i_1_n_0\,
      D => \symbol_idx[3]_i_2_n_0\,
      Q => \symbol_idx_reg_n_0_[3]\,
      R => rst
    );
\symbols_latched[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004540"
    )
        port map (
      I0 => state(1),
      I1 => replay_echo_char_ready,
      I2 => replay_active,
      I3 => fsm_buf_write_en,
      I4 => state(2),
      I5 => \^fsm_sequential_state_reg[0]_0\(0),
      O => \symbols_latched[5]_i_1_n_0\
    );
\symbols_latched_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \symbols_latched[5]_i_1_n_0\,
      D => D(0),
      Q => \symbols_latched_reg_n_0_[0]\,
      R => rst
    );
\symbols_latched_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \symbols_latched[5]_i_1_n_0\,
      D => D(1),
      Q => \symbols_latched_reg_n_0_[1]\,
      R => rst
    );
\symbols_latched_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \symbols_latched[5]_i_1_n_0\,
      D => D(2),
      Q => \symbols_latched_reg_n_0_[2]\,
      R => rst
    );
\symbols_latched_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \symbols_latched[5]_i_1_n_0\,
      D => D(3),
      Q => \symbols_latched_reg_n_0_[3]\,
      R => rst
    );
\symbols_latched_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \symbols_latched[5]_i_1_n_0\,
      D => D(4),
      Q => \symbols_latched_reg_n_0_[4]\,
      R => rst
    );
\symbols_latched_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \symbols_latched[5]_i_1_n_0\,
      D => D(5),
      Q => \symbols_latched_reg_n_0_[5]\,
      R => rst
    );
timer_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => timer_cnt0_carry_n_0,
      CO(2) => timer_cnt0_carry_n_1,
      CO(1) => timer_cnt0_carry_n_2,
      CO(0) => timer_cnt0_carry_n_3,
      CYINIT => \timer_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => timer_cnt0_carry_n_4,
      O(2) => timer_cnt0_carry_n_5,
      O(1) => timer_cnt0_carry_n_6,
      O(0) => timer_cnt0_carry_n_7,
      S(3) => \timer_cnt_reg_n_0_[4]\,
      S(2) => \timer_cnt_reg_n_0_[3]\,
      S(1) => \timer_cnt_reg_n_0_[2]\,
      S(0) => \timer_cnt_reg_n_0_[1]\
    );
\timer_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => timer_cnt0_carry_n_0,
      CO(3) => \timer_cnt0_carry__0_n_0\,
      CO(2) => \timer_cnt0_carry__0_n_1\,
      CO(1) => \timer_cnt0_carry__0_n_2\,
      CO(0) => \timer_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_cnt0_carry__0_n_4\,
      O(2) => \timer_cnt0_carry__0_n_5\,
      O(1) => \timer_cnt0_carry__0_n_6\,
      O(0) => \timer_cnt0_carry__0_n_7\,
      S(3) => \timer_cnt_reg_n_0_[8]\,
      S(2) => \timer_cnt_reg_n_0_[7]\,
      S(1) => \timer_cnt_reg_n_0_[6]\,
      S(0) => \timer_cnt_reg_n_0_[5]\
    );
\timer_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_cnt0_carry__0_n_0\,
      CO(3) => \timer_cnt0_carry__1_n_0\,
      CO(2) => \timer_cnt0_carry__1_n_1\,
      CO(1) => \timer_cnt0_carry__1_n_2\,
      CO(0) => \timer_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_cnt0_carry__1_n_4\,
      O(2) => \timer_cnt0_carry__1_n_5\,
      O(1) => \timer_cnt0_carry__1_n_6\,
      O(0) => \timer_cnt0_carry__1_n_7\,
      S(3) => \timer_cnt_reg_n_0_[12]\,
      S(2) => \timer_cnt_reg_n_0_[11]\,
      S(1) => \timer_cnt_reg_n_0_[10]\,
      S(0) => \timer_cnt_reg_n_0_[9]\
    );
\timer_cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_cnt0_carry__1_n_0\,
      CO(3) => \timer_cnt0_carry__2_n_0\,
      CO(2) => \timer_cnt0_carry__2_n_1\,
      CO(1) => \timer_cnt0_carry__2_n_2\,
      CO(0) => \timer_cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_cnt0_carry__2_n_4\,
      O(2) => \timer_cnt0_carry__2_n_5\,
      O(1) => \timer_cnt0_carry__2_n_6\,
      O(0) => \timer_cnt0_carry__2_n_7\,
      S(3) => \timer_cnt_reg_n_0_[16]\,
      S(2) => \timer_cnt_reg_n_0_[15]\,
      S(1) => \timer_cnt_reg_n_0_[14]\,
      S(0) => \timer_cnt_reg_n_0_[13]\
    );
\timer_cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_cnt0_carry__2_n_0\,
      CO(3) => \timer_cnt0_carry__3_n_0\,
      CO(2) => \timer_cnt0_carry__3_n_1\,
      CO(1) => \timer_cnt0_carry__3_n_2\,
      CO(0) => \timer_cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_cnt0_carry__3_n_4\,
      O(2) => \timer_cnt0_carry__3_n_5\,
      O(1) => \timer_cnt0_carry__3_n_6\,
      O(0) => \timer_cnt0_carry__3_n_7\,
      S(3) => \timer_cnt_reg_n_0_[20]\,
      S(2) => \timer_cnt_reg_n_0_[19]\,
      S(1) => \timer_cnt_reg_n_0_[18]\,
      S(0) => \timer_cnt_reg_n_0_[17]\
    );
\timer_cnt0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_cnt0_carry__3_n_0\,
      CO(3) => \timer_cnt0_carry__4_n_0\,
      CO(2) => \timer_cnt0_carry__4_n_1\,
      CO(1) => \timer_cnt0_carry__4_n_2\,
      CO(0) => \timer_cnt0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_cnt0_carry__4_n_4\,
      O(2) => \timer_cnt0_carry__4_n_5\,
      O(1) => \timer_cnt0_carry__4_n_6\,
      O(0) => \timer_cnt0_carry__4_n_7\,
      S(3) => \timer_cnt_reg_n_0_[24]\,
      S(2) => \timer_cnt_reg_n_0_[23]\,
      S(1) => \timer_cnt_reg_n_0_[22]\,
      S(0) => \timer_cnt_reg_n_0_[21]\
    );
\timer_cnt0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_cnt0_carry__4_n_0\,
      CO(3 downto 1) => \NLW_timer_cnt0_carry__5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \timer_cnt0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_timer_cnt0_carry__5_O_UNCONNECTED\(3 downto 2),
      O(1) => \timer_cnt0_carry__5_n_6\,
      O(0) => \timer_cnt0_carry__5_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \timer_cnt_reg_n_0_[26]\,
      S(0) => \timer_cnt_reg_n_0_[25]\
    );
\timer_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010100"
    )
        port map (
      I0 => \timer_cnt_reg_n_0_[0]\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[0]_i_1_n_0\
    );
\timer_cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__1_n_6\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[10]_i_1_n_0\
    );
\timer_cnt[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__1_n_5\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[11]_i_1_n_0\
    );
\timer_cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__1_n_4\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[12]_i_1_n_0\
    );
\timer_cnt[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__2_n_7\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[13]_i_1_n_0\
    );
\timer_cnt[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__2_n_6\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[14]_i_1_n_0\
    );
\timer_cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__2_n_5\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[15]_i_1_n_0\
    );
\timer_cnt[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__2_n_4\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[16]_i_1_n_0\
    );
\timer_cnt[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__3_n_7\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[17]_i_1_n_0\
    );
\timer_cnt[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__3_n_6\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[18]_i_1_n_0\
    );
\timer_cnt[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__3_n_5\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[19]_i_1_n_0\
    );
\timer_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => timer_cnt0_carry_n_7,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[1]_i_1_n_0\
    );
\timer_cnt[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__3_n_4\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[20]_i_1_n_0\
    );
\timer_cnt[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__4_n_7\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[21]_i_1_n_0\
    );
\timer_cnt[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__4_n_6\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[22]_i_1_n_0\
    );
\timer_cnt[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__4_n_5\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[23]_i_1_n_0\
    );
\timer_cnt[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__4_n_4\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[24]_i_1_n_0\
    );
\timer_cnt[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__5_n_7\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[25]_i_1_n_0\
    );
\timer_cnt[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF00FFFFB8"
    )
        port map (
      I0 => replay_echo_char_ready,
      I1 => replay_active,
      I2 => fsm_buf_write_en,
      I3 => state(1),
      I4 => state(2),
      I5 => \^fsm_sequential_state_reg[0]_0\(0),
      O => \timer_cnt[26]_i_1_n_0\
    );
\timer_cnt[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__5_n_6\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[26]_i_2_n_0\
    );
\timer_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => timer_cnt0_carry_n_6,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[2]_i_1_n_0\
    );
\timer_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => timer_cnt0_carry_n_5,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[3]_i_1_n_0\
    );
\timer_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => timer_cnt0_carry_n_4,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[4]_i_1_n_0\
    );
\timer_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__0_n_7\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[5]_i_1_n_0\
    );
\timer_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__0_n_6\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[6]_i_1_n_0\
    );
\timer_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__0_n_5\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[7]_i_1_n_0\
    );
\timer_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__0_n_4\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[8]_i_1_n_0\
    );
\timer_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020200"
    )
        port map (
      I0 => \timer_cnt0_carry__1_n_7\,
      I1 => \FSM_sequential_state[2]_i_4_n_0\,
      I2 => \FSM_sequential_state[2]_i_3_n_0\,
      I3 => state(2),
      I4 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \timer_cnt[9]_i_1_n_0\
    );
\timer_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[0]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[0]\,
      R => rst
    );
\timer_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[10]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[10]\,
      R => rst
    );
\timer_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[11]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[11]\,
      R => rst
    );
\timer_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[12]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[12]\,
      R => rst
    );
\timer_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[13]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[13]\,
      R => rst
    );
\timer_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[14]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[14]\,
      R => rst
    );
\timer_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[15]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[15]\,
      R => rst
    );
\timer_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[16]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[16]\,
      R => rst
    );
\timer_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[17]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[17]\,
      R => rst
    );
\timer_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[18]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[18]\,
      R => rst
    );
\timer_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[19]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[19]\,
      R => rst
    );
\timer_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[1]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[1]\,
      R => rst
    );
\timer_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[20]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[20]\,
      R => rst
    );
\timer_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[21]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[21]\,
      R => rst
    );
\timer_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[22]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[22]\,
      R => rst
    );
\timer_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[23]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[23]\,
      R => rst
    );
\timer_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[24]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[24]\,
      R => rst
    );
\timer_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[25]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[25]\,
      R => rst
    );
\timer_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[26]_i_2_n_0\,
      Q => \timer_cnt_reg_n_0_[26]\,
      R => rst
    );
\timer_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[2]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[2]\,
      R => rst
    );
\timer_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[3]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[3]\,
      R => rst
    );
\timer_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[4]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[4]\,
      R => rst
    );
\timer_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[5]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[5]\,
      R => rst
    );
\timer_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[6]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[6]\,
      R => rst
    );
\timer_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[7]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[7]\,
      R => rst
    );
\timer_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[8]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[8]\,
      R => rst
    );
\timer_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \timer_cnt[26]_i_1_n_0\,
      D => \timer_cnt[9]_i_1_n_0\,
      Q => \timer_cnt_reg_n_0_[9]\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_morse_top_0_0_morse_fsm is
  port (
    fsm_decode_error : out STD_LOGIC;
    fsm_buf_write_en : out STD_LOGIC;
    fsm_buf_write_error : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg_reg[0]_0\ : out STD_LOGIC;
    \count_reg_reg[2]_0\ : out STD_LOGIC;
    \msg_length_reg[5]\ : out STD_LOGIC;
    \count_reg_reg[2]_1\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \echo_symbols_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \echo_count_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    short_enter_pulse : in STD_LOGIC;
    btn_reset_clean : in STD_LOGIC;
    sig_previous : in STD_LOGIC;
    sig_previous_0 : in STD_LOGIC;
    btn_dash_clean : in STD_LOGIC;
    sig_previous_1 : in STD_LOGIC;
    btn_dot_clean : in STD_LOGIC;
    \msg_length_reg[5]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    symbols_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_morse_top_0_0_morse_fsm : entity is "morse_fsm";
end system_morse_top_0_0_morse_fsm;

architecture STRUCTURE of system_morse_top_0_0_morse_fsm is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal buf_write_error_i_1_n_0 : STD_LOGIC;
  signal char_ready_i_1_n_0 : STD_LOGIC;
  signal \count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \^count_reg_reg[0]_0\ : STD_LOGIC;
  signal \^count_reg_reg[2]_1\ : STD_LOGIC;
  signal decode_error4_out : STD_LOGIC;
  signal decode_error_i_2_n_0 : STD_LOGIC;
  signal decode_error_i_3_n_0 : STD_LOGIC;
  signal decode_error_i_4_n_0 : STD_LOGIC;
  signal decode_error_i_5_n_0 : STD_LOGIC;
  signal decode_error_i_6_n_0 : STD_LOGIC;
  signal decode_error_i_7_n_0 : STD_LOGIC;
  signal decode_error_i_8_n_0 : STD_LOGIC;
  signal \echo_symbols[5]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_buf_write_en\ : STD_LOGIC;
  signal \^fsm_buf_write_error\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \symbols_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \symbols_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \symbols_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \symbols_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \symbols_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \symbols_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \symbols_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \symbols_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \symbols_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \symbols_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \symbols_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \symbols_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \symbols_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \symbols_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \symbols_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \symbols_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \symbols_reg_reg_n_0_[5]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of char_ready_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \count_reg[0]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \count_reg[0]_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \count_reg[0]_i_6\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count_reg[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \count_reg[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count_reg[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of decode_error_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of decode_error_i_5 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of decode_error_i_7 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \mem_symbols[0][5]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \msg_length[5]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \symbols_reg[1]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \symbols_reg[2]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \symbols_reg[3]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \symbols_reg[3]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \symbols_reg[5]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \symbols_reg[5]_i_5\ : label is "soft_lutpair27";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \count_reg_reg[0]_0\ <= \^count_reg_reg[0]_0\;
  \count_reg_reg[2]_1\ <= \^count_reg_reg[2]_1\;
  fsm_buf_write_en <= \^fsm_buf_write_en\;
  fsm_buf_write_error <= \^fsm_buf_write_error\;
buf_write_error_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => decode_error_i_2_n_0,
      I1 => \echo_symbols[5]_i_1_n_0\,
      I2 => \^fsm_buf_write_error\,
      O => buf_write_error_i_1_n_0
    );
buf_write_error_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => buf_write_error_i_1_n_0,
      Q => \^fsm_buf_write_error\,
      R => rst
    );
char_ready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \echo_symbols[5]_i_1_n_0\,
      I1 => rst,
      O => char_ready_i_1_n_0
    );
char_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => char_ready_i_1_n_0,
      Q => \^fsm_buf_write_en\,
      R => '0'
    );
\count_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88888F88"
    )
        port map (
      I0 => \count_reg[0]_i_4_n_0\,
      I1 => short_enter_pulse,
      I2 => \^count_reg_reg[0]_0\,
      I3 => btn_reset_clean,
      I4 => sig_previous,
      I5 => rst,
      O => \count_reg[0]_i_1_n_0\
    );
\count_reg[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg[0]_i_4_n_0\,
      O => \count_reg[0]_i_2_n_0\
    );
\count_reg[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => p_0_in(0)
    );
\count_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB0BBFFFF"
    )
        port map (
      I0 => sig_previous_0,
      I1 => btn_dash_clean,
      I2 => sig_previous_1,
      I3 => btn_dot_clean,
      I4 => \count_reg[0]_i_6_n_0\,
      I5 => \^q\(3),
      O => \count_reg[0]_i_4_n_0\
    );
\count_reg[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => \^count_reg_reg[0]_0\
    );
\count_reg[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => \count_reg[0]_i_6_n_0\
    );
\count_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => p_0_in(1)
    );
\count_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => p_0_in(2)
    );
\count_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(0),
      O => p_0_in(3)
    );
\count_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_reg[0]_i_2_n_0\,
      D => p_0_in(0),
      Q => \^q\(0),
      R => \count_reg[0]_i_1_n_0\
    );
\count_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_reg[0]_i_2_n_0\,
      D => p_0_in(1),
      Q => \^q\(1),
      R => \count_reg[0]_i_1_n_0\
    );
\count_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_reg[0]_i_2_n_0\,
      D => p_0_in(2),
      Q => \^q\(2),
      R => \count_reg[0]_i_1_n_0\
    );
\count_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_reg[0]_i_2_n_0\,
      D => p_0_in(3),
      Q => \^q\(3),
      R => \count_reg[0]_i_1_n_0\
    );
decode_error_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rst,
      I1 => \echo_symbols[5]_i_1_n_0\,
      I2 => decode_error_i_2_n_0,
      O => decode_error4_out
    );
decode_error_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5455545455555555"
    )
        port map (
      I0 => \^count_reg_reg[0]_0\,
      I1 => \symbols_reg_reg_n_0_[5]\,
      I2 => \^q\(3),
      I3 => decode_error_i_3_n_0,
      I4 => \symbols_reg_reg_n_0_[4]\,
      I5 => decode_error_i_4_n_0,
      O => decode_error_i_2_n_0
    );
decode_error_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800080000000D00"
    )
        port map (
      I0 => \symbols_reg_reg_n_0_[2]\,
      I1 => \symbols_reg_reg_n_0_[3]\,
      I2 => decode_error_i_5_n_0,
      I3 => \^q\(0),
      I4 => \symbols_reg_reg_n_0_[0]\,
      I5 => \symbols_reg_reg_n_0_[1]\,
      O => decode_error_i_3_n_0
    );
decode_error_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444F4444444444"
    )
        port map (
      I0 => \symbols_reg_reg_n_0_[3]\,
      I1 => decode_error_i_6_n_0,
      I2 => decode_error_i_7_n_0,
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => decode_error_i_8_n_0,
      O => decode_error_i_4_n_0
    );
decode_error_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      O => decode_error_i_5_n_0
    );
decode_error_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55550055008F0088"
    )
        port map (
      I0 => \^q\(2),
      I1 => \symbols_reg_reg_n_0_[0]\,
      I2 => \symbols_reg_reg_n_0_[1]\,
      I3 => \symbols_reg_reg_n_0_[2]\,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => decode_error_i_6_n_0
    );
decode_error_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F00"
    )
        port map (
      I0 => \symbols_reg_reg_n_0_[1]\,
      I1 => \symbols_reg_reg_n_0_[2]\,
      I2 => \symbols_reg_reg_n_0_[0]\,
      I3 => \^q\(0),
      I4 => \symbols_reg_reg_n_0_[4]\,
      O => decode_error_i_7_n_0
    );
decode_error_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFEBFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \symbols_reg_reg_n_0_[2]\,
      I2 => \symbols_reg_reg_n_0_[1]\,
      I3 => \symbols_reg_reg_n_0_[3]\,
      I4 => \symbols_reg_reg_n_0_[0]\,
      O => decode_error_i_8_n_0
    );
decode_error_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => decode_error4_out,
      Q => fsm_decode_error,
      R => '0'
    );
\echo_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \echo_symbols[5]_i_1_n_0\,
      D => \^q\(0),
      Q => \echo_count_reg[3]_0\(0),
      R => rst
    );
\echo_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \echo_symbols[5]_i_1_n_0\,
      D => \^q\(1),
      Q => \echo_count_reg[3]_0\(1),
      R => rst
    );
\echo_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \echo_symbols[5]_i_1_n_0\,
      D => \^q\(2),
      Q => \echo_count_reg[3]_0\(2),
      R => rst
    );
\echo_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \echo_symbols[5]_i_1_n_0\,
      D => \^q\(3),
      Q => \echo_count_reg[3]_0\(3),
      R => rst
    );
\echo_symbols[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888088"
    )
        port map (
      I0 => \count_reg[0]_i_4_n_0\,
      I1 => short_enter_pulse,
      I2 => sig_previous,
      I3 => btn_reset_clean,
      I4 => \^count_reg_reg[0]_0\,
      O => \echo_symbols[5]_i_1_n_0\
    );
\echo_symbols_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \echo_symbols[5]_i_1_n_0\,
      D => \symbols_reg_reg_n_0_[0]\,
      Q => \echo_symbols_reg[5]_0\(0),
      R => rst
    );
\echo_symbols_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \echo_symbols[5]_i_1_n_0\,
      D => \symbols_reg_reg_n_0_[1]\,
      Q => \echo_symbols_reg[5]_0\(1),
      R => rst
    );
\echo_symbols_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \echo_symbols[5]_i_1_n_0\,
      D => \symbols_reg_reg_n_0_[2]\,
      Q => \echo_symbols_reg[5]_0\(2),
      R => rst
    );
\echo_symbols_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \echo_symbols[5]_i_1_n_0\,
      D => \symbols_reg_reg_n_0_[3]\,
      Q => \echo_symbols_reg[5]_0\(3),
      R => rst
    );
\echo_symbols_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \echo_symbols[5]_i_1_n_0\,
      D => \symbols_reg_reg_n_0_[4]\,
      Q => \echo_symbols_reg[5]_0\(4),
      R => rst
    );
\echo_symbols_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \echo_symbols[5]_i_1_n_0\,
      D => \symbols_reg_reg_n_0_[5]\,
      Q => \echo_symbols_reg[5]_0\(5),
      R => rst
    );
\mem_symbols[0][5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \msg_length_reg[5]_0\(0),
      I1 => \^fsm_buf_write_en\,
      I2 => \^count_reg_reg[2]_1\,
      O => \msg_length_reg[5]\
    );
\mem_symbols[28][5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => btn_reset_clean,
      I5 => sig_previous,
      O => \^count_reg_reg[2]_1\
    );
\msg_length[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst,
      I1 => \^count_reg_reg[2]_1\,
      O => SR(0)
    );
\msg_length[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^fsm_buf_write_en\,
      I1 => \msg_length_reg[5]_0\(0),
      O => E(0)
    );
\symbols_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BABB8A88"
    )
        port map (
      I0 => symbols_reg(0),
      I1 => \count_reg[0]_i_1_n_0\,
      I2 => \count_reg[0]_i_4_n_0\,
      I3 => \^count_reg_reg[0]_0\,
      I4 => \symbols_reg_reg_n_0_[0]\,
      O => \symbols_reg[0]_i_1_n_0\
    );
\symbols_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBABB88888A88"
    )
        port map (
      I0 => symbols_reg(0),
      I1 => \count_reg[0]_i_1_n_0\,
      I2 => \count_reg[0]_i_4_n_0\,
      I3 => \symbols_reg[1]_i_2_n_0\,
      I4 => \symbols_reg[3]_i_3_n_0\,
      I5 => \symbols_reg_reg_n_0_[1]\,
      O => \symbols_reg[1]_i_1_n_0\
    );
\symbols_reg[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \symbols_reg[1]_i_2_n_0\
    );
\symbols_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => symbols_reg(0),
      I1 => \count_reg[0]_i_1_n_0\,
      I2 => \symbols_reg[2]_i_2_n_0\,
      I3 => \symbols_reg_reg_n_0_[2]\,
      O => \symbols_reg[2]_i_1_n_0\
    );
\symbols_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \count_reg[0]_i_4_n_0\,
      O => \symbols_reg[2]_i_2_n_0\
    );
\symbols_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBABB88888A88"
    )
        port map (
      I0 => symbols_reg(0),
      I1 => \count_reg[0]_i_1_n_0\,
      I2 => \count_reg[0]_i_4_n_0\,
      I3 => \symbols_reg[3]_i_2_n_0\,
      I4 => \symbols_reg[3]_i_3_n_0\,
      I5 => \symbols_reg_reg_n_0_[3]\,
      O => \symbols_reg[3]_i_1_n_0\
    );
\symbols_reg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \symbols_reg[3]_i_2_n_0\
    );
\symbols_reg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \symbols_reg[3]_i_3_n_0\
    );
\symbols_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBA8888888A"
    )
        port map (
      I0 => symbols_reg(0),
      I1 => \count_reg[0]_i_1_n_0\,
      I2 => \symbols_reg[5]_i_3_n_0\,
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \symbols_reg_reg_n_0_[4]\,
      O => \symbols_reg[4]_i_1_n_0\
    );
\symbols_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBABB88888A88"
    )
        port map (
      I0 => symbols_reg(0),
      I1 => \count_reg[0]_i_1_n_0\,
      I2 => \symbols_reg[5]_i_3_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \symbols_reg_reg_n_0_[5]\,
      O => \symbols_reg[5]_i_1_n_0\
    );
\symbols_reg[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \count_reg[0]_i_4_n_0\,
      I1 => \^q\(2),
      I2 => \^q\(3),
      O => \symbols_reg[5]_i_3_n_0\
    );
\symbols_reg[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      O => \count_reg_reg[2]_0\
    );
\symbols_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \symbols_reg[0]_i_1_n_0\,
      Q => \symbols_reg_reg_n_0_[0]\,
      R => '0'
    );
\symbols_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \symbols_reg[1]_i_1_n_0\,
      Q => \symbols_reg_reg_n_0_[1]\,
      R => '0'
    );
\symbols_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \symbols_reg[2]_i_1_n_0\,
      Q => \symbols_reg_reg_n_0_[2]\,
      R => '0'
    );
\symbols_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \symbols_reg[3]_i_1_n_0\,
      Q => \symbols_reg_reg_n_0_[3]\,
      R => '0'
    );
\symbols_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \symbols_reg[4]_i_1_n_0\,
      Q => \symbols_reg_reg_n_0_[4]\,
      R => '0'
    );
\symbols_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \symbols_reg[5]_i_1_n_0\,
      Q => \symbols_reg_reg_n_0_[5]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_morse_top_0_0_morse_replay is
  port (
    replay_echo_char_ready : out STD_LOGIC;
    replay_active : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_sequential_state_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    echo_char_ready_reg_0 : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    \read_idx_reg[0]_0\ : in STD_LOGIC;
    echo_done : in STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    fsm_buf_write_en : in STD_LOGIC;
    uart_data_valid : in STD_LOGIC;
    replay_active_reg_0 : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_morse_top_0_0_morse_replay : entity is "morse_replay";
end system_morse_top_0_0_morse_replay;

architecture STRUCTURE of system_morse_top_0_0_morse_replay is
  signal \FSM_sequential_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \^fsm_sequential_state_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal echo_char_ready_i_1_n_0 : STD_LOGIC;
  signal gap_cnt : STD_LOGIC_VECTOR ( 0 to 0 );
  signal gap_cnt0 : STD_LOGIC_VECTOR ( 25 downto 1 );
  signal \gap_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \gap_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \gap_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \gap_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \gap_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \gap_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \gap_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \gap_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \gap_cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \gap_cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \gap_cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \gap_cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \gap_cnt0_carry__3_n_0\ : STD_LOGIC;
  signal \gap_cnt0_carry__3_n_1\ : STD_LOGIC;
  signal \gap_cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \gap_cnt0_carry__3_n_3\ : STD_LOGIC;
  signal \gap_cnt0_carry__4_n_0\ : STD_LOGIC;
  signal \gap_cnt0_carry__4_n_1\ : STD_LOGIC;
  signal \gap_cnt0_carry__4_n_2\ : STD_LOGIC;
  signal \gap_cnt0_carry__4_n_3\ : STD_LOGIC;
  signal gap_cnt0_carry_n_0 : STD_LOGIC;
  signal gap_cnt0_carry_n_1 : STD_LOGIC;
  signal gap_cnt0_carry_n_2 : STD_LOGIC;
  signal gap_cnt0_carry_n_3 : STD_LOGIC;
  signal \gap_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[14]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[16]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[17]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[18]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[19]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[20]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[21]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[22]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[23]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[24]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[25]_i_2_n_0\ : STD_LOGIC;
  signal \gap_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \gap_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \read_idx[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_idx[1]_i_1_n_0\ : STD_LOGIC;
  signal \read_idx[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_idx[3]_i_1_n_0\ : STD_LOGIC;
  signal \read_idx[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_idx[4]_i_2_n_0\ : STD_LOGIC;
  signal \^replay_active\ : STD_LOGIC;
  signal replay_active_i_1_n_0 : STD_LOGIC;
  signal \^replay_echo_char_ready\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_gap_cnt0_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gap_cnt0_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_13\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_7\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_5\ : label is "soft_lutpair37";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ST_TRIGGER:01,ST_WAIT_DONE:10,ST_INTER_GAP:11,ST_IDLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ST_TRIGGER:01,ST_WAIT_DONE:10,ST_INTER_GAP:11,ST_IDLE:00";
  attribute SOFT_HLUTNM of \ascii_data[6]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of echo_char_ready_i_1 : label is "soft_lutpair35";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of gap_cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \gap_cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \gap_cnt0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \gap_cnt0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \gap_cnt0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \gap_cnt0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \gap_cnt0_carry__5\ : label is 35;
  attribute SOFT_HLUTNM of \gap_cnt[0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \gap_cnt[10]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \gap_cnt[11]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \gap_cnt[12]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \gap_cnt[13]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \gap_cnt[14]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \gap_cnt[15]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \gap_cnt[16]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \gap_cnt[17]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \gap_cnt[18]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \gap_cnt[19]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \gap_cnt[1]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \gap_cnt[20]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \gap_cnt[21]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \gap_cnt[22]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \gap_cnt[23]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \gap_cnt[24]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \gap_cnt[25]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \gap_cnt[2]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \gap_cnt[3]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \gap_cnt[4]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \gap_cnt[5]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \gap_cnt[6]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \gap_cnt[7]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \gap_cnt[8]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \gap_cnt[9]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \read_idx[0]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \read_idx[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \read_idx[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \read_idx[3]_i_1\ : label is "soft_lutpair34";
begin
  \FSM_sequential_state_reg[1]_0\(0) <= \^fsm_sequential_state_reg[1]_0\(0);
  Q(4 downto 0) <= \^q\(4 downto 0);
  replay_active <= \^replay_active\;
  replay_echo_char_ready <= \^replay_echo_char_ready\;
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA72AA70"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\(0),
      I1 => \FSM_sequential_state[1]_i_4_n_0\,
      I2 => \read_idx_reg[0]_0\,
      I3 => state(0),
      I4 => echo_done,
      O => \FSM_sequential_state[0]_i_1__0_n_0\
    );
\FSM_sequential_state[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010101FFFFFFFF"
    )
        port map (
      I0 => \gap_cnt_reg_n_0_[9]\,
      I1 => \gap_cnt_reg_n_0_[7]\,
      I2 => \gap_cnt_reg_n_0_[8]\,
      I3 => \gap_cnt_reg_n_0_[6]\,
      I4 => \FSM_sequential_state[1]_i_14_n_0\,
      I5 => \gap_cnt_reg_n_0_[10]\,
      O => \FSM_sequential_state[1]_i_10_n_0\
    );
\FSM_sequential_state[1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \gap_cnt_reg_n_0_[20]\,
      I1 => \gap_cnt_reg_n_0_[21]\,
      I2 => \gap_cnt_reg_n_0_[18]\,
      I3 => \gap_cnt_reg_n_0_[19]\,
      O => \FSM_sequential_state[1]_i_11_n_0\
    );
\FSM_sequential_state[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4767777F0008CFEF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => replay_active_reg_0(1),
      I3 => replay_active_reg_0(0),
      I4 => replay_active_reg_0(2),
      I5 => \^q\(2),
      O => \FSM_sequential_state[1]_i_12_n_0\
    );
\FSM_sequential_state[1]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \FSM_sequential_state[1]_i_13_n_0\
    );
\FSM_sequential_state[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \gap_cnt_reg_n_0_[5]\,
      I1 => \gap_cnt_reg_n_0_[2]\,
      I2 => \gap_cnt_reg_n_0_[3]\,
      I3 => \gap_cnt_reg_n_0_[0]\,
      I4 => \gap_cnt_reg_n_0_[4]\,
      I5 => \gap_cnt_reg_n_0_[1]\,
      O => \FSM_sequential_state[1]_i_14_n_0\
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"404FF0F0454FF0F0"
    )
        port map (
      I0 => \read_idx_reg[0]_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => state(0),
      I3 => \FSM_sequential_state[1]_i_4_n_0\,
      I4 => \^fsm_sequential_state_reg[1]_0\(0),
      I5 => echo_done,
      O => \FSM_sequential_state[1]_i_1__0_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0100FFFF"
    )
        port map (
      I0 => \gap_cnt_reg_n_0_[23]\,
      I1 => \gap_cnt_reg_n_0_[22]\,
      I2 => \gap_cnt_reg_n_0_[24]\,
      I3 => \FSM_sequential_state[1]_i_6_n_0\,
      I4 => \gap_cnt_reg_n_0_[25]\,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FD00C0"
    )
        port map (
      I0 => replay_active_reg_0(4),
      I1 => \FSM_sequential_state[1]_i_7_n_0\,
      I2 => \^q\(4),
      I3 => replay_active_reg_0(5),
      I4 => \FSM_sequential_state[1]_i_8_n_0\,
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10555555"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_9_n_0\,
      I1 => \gap_cnt_reg_n_0_[11]\,
      I2 => \FSM_sequential_state[1]_i_10_n_0\,
      I3 => \gap_cnt_reg_n_0_[12]\,
      I4 => \gap_cnt_reg_n_0_[13]\,
      I5 => \FSM_sequential_state[1]_i_11_n_0\,
      O => \FSM_sequential_state[1]_i_6_n_0\
    );
\FSM_sequential_state[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \FSM_sequential_state[1]_i_7_n_0\
    );
\FSM_sequential_state[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28BE28BE3FBFE8FE"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_12_n_0\,
      I1 => \FSM_sequential_state[1]_i_13_n_0\,
      I2 => \^q\(3),
      I3 => replay_active_reg_0(3),
      I4 => \^q\(4),
      I5 => replay_active_reg_0(4),
      O => \FSM_sequential_state[1]_i_8_n_0\
    );
\FSM_sequential_state[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \gap_cnt_reg_n_0_[16]\,
      I1 => \gap_cnt_reg_n_0_[17]\,
      I2 => \gap_cnt_reg_n_0_[14]\,
      I3 => \gap_cnt_reg_n_0_[15]\,
      O => \FSM_sequential_state[1]_i_9_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \FSM_sequential_state_reg[2]\(0),
      I1 => fsm_buf_write_en,
      I2 => \^replay_active\,
      I3 => \^replay_echo_char_ready\,
      O => \FSM_sequential_state_reg[0]_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1__0_n_0\,
      Q => state(0),
      R => rst
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1__0_n_0\,
      Q => \^fsm_sequential_state_reg[1]_0\(0),
      R => rst
    );
\ascii_data[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => fsm_buf_write_en,
      I1 => \^replay_active\,
      I2 => \^replay_echo_char_ready\,
      I3 => uart_data_valid,
      O => E(0)
    );
echo_char_ready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => \^fsm_sequential_state_reg[1]_0\(0),
      O => echo_char_ready_i_1_n_0
    );
echo_char_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => echo_char_ready_i_1_n_0,
      Q => \^replay_echo_char_ready\,
      R => rst
    );
gap_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gap_cnt0_carry_n_0,
      CO(2) => gap_cnt0_carry_n_1,
      CO(1) => gap_cnt0_carry_n_2,
      CO(0) => gap_cnt0_carry_n_3,
      CYINIT => \gap_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => gap_cnt0(4 downto 1),
      S(3) => \gap_cnt_reg_n_0_[4]\,
      S(2) => \gap_cnt_reg_n_0_[3]\,
      S(1) => \gap_cnt_reg_n_0_[2]\,
      S(0) => \gap_cnt_reg_n_0_[1]\
    );
\gap_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => gap_cnt0_carry_n_0,
      CO(3) => \gap_cnt0_carry__0_n_0\,
      CO(2) => \gap_cnt0_carry__0_n_1\,
      CO(1) => \gap_cnt0_carry__0_n_2\,
      CO(0) => \gap_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => gap_cnt0(8 downto 5),
      S(3) => \gap_cnt_reg_n_0_[8]\,
      S(2) => \gap_cnt_reg_n_0_[7]\,
      S(1) => \gap_cnt_reg_n_0_[6]\,
      S(0) => \gap_cnt_reg_n_0_[5]\
    );
\gap_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \gap_cnt0_carry__0_n_0\,
      CO(3) => \gap_cnt0_carry__1_n_0\,
      CO(2) => \gap_cnt0_carry__1_n_1\,
      CO(1) => \gap_cnt0_carry__1_n_2\,
      CO(0) => \gap_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => gap_cnt0(12 downto 9),
      S(3) => \gap_cnt_reg_n_0_[12]\,
      S(2) => \gap_cnt_reg_n_0_[11]\,
      S(1) => \gap_cnt_reg_n_0_[10]\,
      S(0) => \gap_cnt_reg_n_0_[9]\
    );
\gap_cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \gap_cnt0_carry__1_n_0\,
      CO(3) => \gap_cnt0_carry__2_n_0\,
      CO(2) => \gap_cnt0_carry__2_n_1\,
      CO(1) => \gap_cnt0_carry__2_n_2\,
      CO(0) => \gap_cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => gap_cnt0(16 downto 13),
      S(3) => \gap_cnt_reg_n_0_[16]\,
      S(2) => \gap_cnt_reg_n_0_[15]\,
      S(1) => \gap_cnt_reg_n_0_[14]\,
      S(0) => \gap_cnt_reg_n_0_[13]\
    );
\gap_cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \gap_cnt0_carry__2_n_0\,
      CO(3) => \gap_cnt0_carry__3_n_0\,
      CO(2) => \gap_cnt0_carry__3_n_1\,
      CO(1) => \gap_cnt0_carry__3_n_2\,
      CO(0) => \gap_cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => gap_cnt0(20 downto 17),
      S(3) => \gap_cnt_reg_n_0_[20]\,
      S(2) => \gap_cnt_reg_n_0_[19]\,
      S(1) => \gap_cnt_reg_n_0_[18]\,
      S(0) => \gap_cnt_reg_n_0_[17]\
    );
\gap_cnt0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \gap_cnt0_carry__3_n_0\,
      CO(3) => \gap_cnt0_carry__4_n_0\,
      CO(2) => \gap_cnt0_carry__4_n_1\,
      CO(1) => \gap_cnt0_carry__4_n_2\,
      CO(0) => \gap_cnt0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => gap_cnt0(24 downto 21),
      S(3) => \gap_cnt_reg_n_0_[24]\,
      S(2) => \gap_cnt_reg_n_0_[23]\,
      S(1) => \gap_cnt_reg_n_0_[22]\,
      S(0) => \gap_cnt_reg_n_0_[21]\
    );
\gap_cnt0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \gap_cnt0_carry__4_n_0\,
      CO(3 downto 0) => \NLW_gap_cnt0_carry__5_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_gap_cnt0_carry__5_O_UNCONNECTED\(3 downto 1),
      O(0) => gap_cnt0(25),
      S(3 downto 1) => B"000",
      S(0) => \gap_cnt_reg_n_0_[25]\
    );
\gap_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \gap_cnt_reg_n_0_[0]\,
      O => \gap_cnt[0]_i_1_n_0\
    );
\gap_cnt[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(10),
      O => \gap_cnt[10]_i_1_n_0\
    );
\gap_cnt[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(11),
      O => \gap_cnt[11]_i_1_n_0\
    );
\gap_cnt[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(12),
      O => \gap_cnt[12]_i_1_n_0\
    );
\gap_cnt[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(13),
      O => \gap_cnt[13]_i_1_n_0\
    );
\gap_cnt[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(14),
      O => \gap_cnt[14]_i_1_n_0\
    );
\gap_cnt[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(15),
      O => \gap_cnt[15]_i_1_n_0\
    );
\gap_cnt[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(16),
      O => \gap_cnt[16]_i_1_n_0\
    );
\gap_cnt[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(17),
      O => \gap_cnt[17]_i_1_n_0\
    );
\gap_cnt[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(18),
      O => \gap_cnt[18]_i_1_n_0\
    );
\gap_cnt[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(19),
      O => \gap_cnt[19]_i_1_n_0\
    );
\gap_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(1),
      O => \gap_cnt[1]_i_1_n_0\
    );
\gap_cnt[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(20),
      O => \gap_cnt[20]_i_1_n_0\
    );
\gap_cnt[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(21),
      O => \gap_cnt[21]_i_1_n_0\
    );
\gap_cnt[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(22),
      O => \gap_cnt[22]_i_1_n_0\
    );
\gap_cnt[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(23),
      O => \gap_cnt[23]_i_1_n_0\
    );
\gap_cnt[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(24),
      O => \gap_cnt[24]_i_1_n_0\
    );
\gap_cnt[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2A0"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\(0),
      I1 => \FSM_sequential_state[1]_i_4_n_0\,
      I2 => state(0),
      I3 => echo_done,
      O => gap_cnt(0)
    );
\gap_cnt[25]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(25),
      O => \gap_cnt[25]_i_2_n_0\
    );
\gap_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(2),
      O => \gap_cnt[2]_i_1_n_0\
    );
\gap_cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(3),
      O => \gap_cnt[3]_i_1_n_0\
    );
\gap_cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(4),
      O => \gap_cnt[4]_i_1_n_0\
    );
\gap_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(5),
      O => \gap_cnt[5]_i_1_n_0\
    );
\gap_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(6),
      O => \gap_cnt[6]_i_1_n_0\
    );
\gap_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(7),
      O => \gap_cnt[7]_i_1_n_0\
    );
\gap_cnt[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(8),
      O => \gap_cnt[8]_i_1_n_0\
    );
\gap_cnt[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => gap_cnt0(9),
      O => \gap_cnt[9]_i_1_n_0\
    );
\gap_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[0]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[0]\,
      R => rst
    );
\gap_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[10]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[10]\,
      R => rst
    );
\gap_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[11]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[11]\,
      R => rst
    );
\gap_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[12]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[12]\,
      R => rst
    );
\gap_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[13]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[13]\,
      R => rst
    );
\gap_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[14]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[14]\,
      R => rst
    );
\gap_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[15]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[15]\,
      R => rst
    );
\gap_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[16]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[16]\,
      R => rst
    );
\gap_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[17]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[17]\,
      R => rst
    );
\gap_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[18]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[18]\,
      R => rst
    );
\gap_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[19]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[19]\,
      R => rst
    );
\gap_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[1]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[1]\,
      R => rst
    );
\gap_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[20]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[20]\,
      R => rst
    );
\gap_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[21]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[21]\,
      R => rst
    );
\gap_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[22]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[22]\,
      R => rst
    );
\gap_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[23]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[23]\,
      R => rst
    );
\gap_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[24]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[24]\,
      R => rst
    );
\gap_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[25]_i_2_n_0\,
      Q => \gap_cnt_reg_n_0_[25]\,
      R => rst
    );
\gap_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[2]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[2]\,
      R => rst
    );
\gap_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[3]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[3]\,
      R => rst
    );
\gap_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[4]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[4]\,
      R => rst
    );
\gap_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[5]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[5]\,
      R => rst
    );
\gap_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[6]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[6]\,
      R => rst
    );
\gap_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[7]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[7]\,
      R => rst
    );
\gap_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[8]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[8]\,
      R => rst
    );
\gap_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => gap_cnt(0),
      D => \gap_cnt[9]_i_1_n_0\,
      Q => \gap_cnt_reg_n_0_[9]\,
      R => rst
    );
\read_idx[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\(0),
      I1 => \^q\(0),
      O => \read_idx[0]_i_1_n_0\
    );
\read_idx[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^fsm_sequential_state_reg[1]_0\(0),
      O => \read_idx[1]_i_1_n_0\
    );
\read_idx[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      O => \read_idx[2]_i_1_n_0\
    );
\read_idx[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F800000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^fsm_sequential_state_reg[1]_0\(0),
      O => \read_idx[3]_i_1_n_0\
    );
\read_idx[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA0A"
    )
        port map (
      I0 => \read_idx_reg[0]_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => state(0),
      I3 => \^fsm_sequential_state_reg[1]_0\(0),
      O => \read_idx[4]_i_1_n_0\
    );
\read_idx[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800000000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^fsm_sequential_state_reg[1]_0\(0),
      O => \read_idx[4]_i_2_n_0\
    );
\read_idx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_idx[4]_i_1_n_0\,
      D => \read_idx[0]_i_1_n_0\,
      Q => \^q\(0),
      R => rst
    );
\read_idx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_idx[4]_i_1_n_0\,
      D => \read_idx[1]_i_1_n_0\,
      Q => \^q\(1),
      R => rst
    );
\read_idx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_idx[4]_i_1_n_0\,
      D => \read_idx[2]_i_1_n_0\,
      Q => \^q\(2),
      R => rst
    );
\read_idx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_idx[4]_i_1_n_0\,
      D => \read_idx[3]_i_1_n_0\,
      Q => \^q\(3),
      R => rst
    );
\read_idx_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \read_idx[4]_i_1_n_0\,
      D => \read_idx[4]_i_2_n_0\,
      Q => \^q\(4),
      R => rst
    );
replay_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2FFFA00D00050"
    )
        port map (
      I0 => \^fsm_sequential_state_reg[1]_0\(0),
      I1 => \FSM_sequential_state[1]_i_4_n_0\,
      I2 => \read_idx_reg[0]_0\,
      I3 => state(0),
      I4 => echo_done,
      I5 => \^replay_active\,
      O => replay_active_i_1_n_0
    );
replay_active_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => replay_active_i_1_n_0,
      Q => \^replay_active\,
      R => rst
    );
rgb_b_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^replay_echo_char_ready\,
      I1 => \^replay_active\,
      I2 => fsm_buf_write_en,
      O => echo_char_ready_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_morse_top_0_0_morse_top is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    uart_ascii_data : out STD_LOGIC_VECTOR ( 6 downto 0 );
    uart_data_valid : out STD_LOGIC;
    rgb_r_n : out STD_LOGIC;
    rgb_g_n : out STD_LOGIC;
    rgb_b_n : out STD_LOGIC;
    clk : in STD_LOGIC;
    button0 : in STD_LOGIC;
    button1 : in STD_LOGIC;
    button2 : in STD_LOGIC;
    button3 : in STD_LOGIC;
    ps_ack : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_morse_top_0_0_morse_top : entity is "morse_top";
end system_morse_top_0_0_morse_top;

architecture STRUCTURE of system_morse_top_0_0_morse_top is
  signal ascii_data0 : STD_LOGIC;
  signal btn_dash_clean : STD_LOGIC;
  signal btn_dot_clean : STD_LOGIC;
  signal btn_enter_clean : STD_LOGIC;
  signal btn_reset_clean : STD_LOGIC;
  signal echo_count_mux : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal echo_done : STD_LOGIC;
  signal echo_error_mux : STD_LOGIC;
  signal echo_symbols_mux : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal fsm_buf_write_count : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fsm_buf_write_en : STD_LOGIC;
  signal fsm_buf_write_error : STD_LOGIC;
  signal fsm_buf_write_symbols : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal fsm_decode_error : STD_LOGIC;
  signal long_enter_pulse : STD_LOGIC;
  signal long_fired : STD_LOGIC;
  signal msg_length : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \por_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal por_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal replay_active : STD_LOGIC;
  signal replay_echo_char_ready : STD_LOGIC;
  signal replay_read_idx : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rst : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal short_enter_pulse : STD_LOGIC;
  signal sig_previous : STD_LOGIC;
  signal sig_previous_0 : STD_LOGIC;
  signal sig_previous_1 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal state_2 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal symbols_reg : STD_LOGIC_VECTOR ( 4 to 4 );
  signal u_buffer_n_0 : STD_LOGIC;
  signal u_buffer_n_19 : STD_LOGIC;
  signal u_buffer_n_27 : STD_LOGIC;
  signal u_buffer_n_7 : STD_LOGIC;
  signal u_db_enter_n_2 : STD_LOGIC;
  signal u_decoder_uart_n_0 : STD_LOGIC;
  signal u_decoder_uart_n_1 : STD_LOGIC;
  signal u_decoder_uart_n_10 : STD_LOGIC;
  signal u_decoder_uart_n_11 : STD_LOGIC;
  signal u_decoder_uart_n_12 : STD_LOGIC;
  signal u_decoder_uart_n_2 : STD_LOGIC;
  signal u_decoder_uart_n_3 : STD_LOGIC;
  signal u_decoder_uart_n_4 : STD_LOGIC;
  signal u_decoder_uart_n_5 : STD_LOGIC;
  signal u_decoder_uart_n_6 : STD_LOGIC;
  signal u_decoder_uart_n_7 : STD_LOGIC;
  signal u_decoder_uart_n_8 : STD_LOGIC;
  signal u_decoder_uart_n_9 : STD_LOGIC;
  signal u_fsm_n_10 : STD_LOGIC;
  signal u_fsm_n_11 : STD_LOGIC;
  signal u_fsm_n_7 : STD_LOGIC;
  signal u_fsm_n_8 : STD_LOGIC;
  signal u_fsm_n_9 : STD_LOGIC;
  signal u_long_press_n_2 : STD_LOGIC;
  signal u_replay_n_10 : STD_LOGIC;
  signal u_replay_n_8 : STD_LOGIC;
  signal uart_ascii_char : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^uart_data_valid\ : STD_LOGIC;
  signal write_ptr0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \por_cnt[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \por_cnt[2]_i_1\ : label is "soft_lutpair52";
begin
  uart_data_valid <= \^uart_data_valid\;
\por_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => por_cnt_reg(0),
      O => \p_0_in__2\(0)
    );
\por_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => por_cnt_reg(0),
      I1 => por_cnt_reg(1),
      O => \p_0_in__2\(1)
    );
\por_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => por_cnt_reg(2),
      I1 => por_cnt_reg(1),
      I2 => por_cnt_reg(0),
      O => \p_0_in__2\(2)
    );
\por_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => por_cnt_reg(3),
      I1 => por_cnt_reg(0),
      I2 => por_cnt_reg(1),
      I3 => por_cnt_reg(2),
      O => \por_cnt[3]_i_1_n_0\
    );
\por_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \p_0_in__2\(0),
      Q => por_cnt_reg(0),
      R => '0'
    );
\por_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \p_0_in__2\(1),
      Q => por_cnt_reg(1),
      R => '0'
    );
\por_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sel,
      D => \p_0_in__2\(2),
      Q => por_cnt_reg(2),
      R => '0'
    );
\por_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \por_cnt[3]_i_1_n_0\,
      Q => por_cnt_reg(3),
      R => '0'
    );
rst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => por_cnt_reg(3),
      I1 => por_cnt_reg(0),
      I2 => por_cnt_reg(1),
      I3 => por_cnt_reg(2),
      O => sel
    );
rst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => sel,
      Q => rst,
      R => '0'
    );
u_axi_bridge: entity work.system_morse_top_0_0_axi_pl_bridge
     port map (
      D(6 downto 0) => uart_ascii_char(6 downto 0),
      E(0) => ascii_data0,
      clk => clk,
      fsm_buf_write_en => fsm_buf_write_en,
      ps_ack => ps_ack,
      replay_active => replay_active,
      replay_echo_char_ready => replay_echo_char_ready,
      rst => rst,
      uart_ascii_data(6 downto 0) => uart_ascii_data(6 downto 0),
      uart_data_valid => \^uart_data_valid\
    );
u_buffer: entity work.system_morse_top_0_0_message_buffer
     port map (
      D(6 downto 0) => uart_ascii_char(6 downto 0),
      E(0) => write_ptr0,
      Q(5 downto 0) => msg_length(5 downto 0),
      SR(0) => u_fsm_n_11,
      \ascii_data_reg[0]\ => u_decoder_uart_n_10,
      \ascii_data_reg[0]_0\ => u_decoder_uart_n_1,
      \ascii_data_reg[1]\ => u_decoder_uart_n_11,
      \ascii_data_reg[1]_0\ => u_decoder_uart_n_2,
      \ascii_data_reg[2]\ => u_decoder_uart_n_12,
      \ascii_data_reg[2]_0\ => u_decoder_uart_n_3,
      \ascii_data_reg[3]\ => u_decoder_uart_n_9,
      \ascii_data_reg[3]_0\ => u_decoder_uart_n_4,
      \ascii_data_reg[4]\ => u_decoder_uart_n_6,
      \ascii_data_reg[4]_0\ => u_decoder_uart_n_5,
      \ascii_data_reg[5]\ => u_decoder_uart_n_8,
      \ascii_data_reg[5]_0\ => u_decoder_uart_n_7,
      \ascii_data_reg[6]\ => u_decoder_uart_n_0,
      clk => clk,
      echo_count_mux(3 downto 0) => echo_count_mux(3 downto 0),
      echo_error_mux => echo_error_mux,
      echo_symbols_mux(5 downto 0) => echo_symbols_mux(5 downto 0),
      error_latched_reg(4 downto 0) => replay_read_idx(4 downto 0),
      fsm_buf_write_en => fsm_buf_write_en,
      fsm_buf_write_error => fsm_buf_write_error,
      fsm_decode_error => fsm_decode_error,
      long_enter_pulse => long_enter_pulse,
      long_pulse_reg => u_buffer_n_27,
      \mem_count_reg[0][3]_0\(3 downto 0) => fsm_buf_write_count(3 downto 0),
      \mem_error_reg[28]_0\ => u_fsm_n_10,
      \mem_error_reg[9]_0\ => u_fsm_n_9,
      \mem_symbols_reg[0][5]_0\(5 downto 0) => fsm_buf_write_symbols(5 downto 0),
      \read_idx_reg[4]\ => u_buffer_n_0,
      \read_idx_reg[4]_0\ => u_buffer_n_7,
      \read_idx_reg[4]_1\ => u_buffer_n_19,
      replay_active => replay_active,
      rst => rst,
      state(0) => state_2(1)
    );
u_db_dash: entity work.system_morse_top_0_0_debounce
     port map (
      btn_dash_clean => btn_dash_clean,
      button1 => button1,
      clk => clk,
      rst => rst
    );
u_db_dot: entity work.system_morse_top_0_0_debounce_0
     port map (
      btn_dot_clean => btn_dot_clean,
      button0 => button0,
      clk => clk,
      rst => rst
    );
u_db_enter: entity work.system_morse_top_0_0_debounce_1
     port map (
      btn_enter_clean => btn_enter_clean,
      button3 => button3,
      clk => clk,
      long_fired => long_fired,
      long_pulse_reg => u_long_press_n_2,
      rst => rst,
      rst_reg => u_db_enter_n_2
    );
u_db_reset: entity work.system_morse_top_0_0_debounce_2
     port map (
      btn_reset_clean => btn_reset_clean,
      button2 => button2,
      clk => clk,
      rst => rst
    );
u_decoder_uart: entity work.system_morse_top_0_0_morse_decoder_table
     port map (
      \ascii_data_reg[3]\ => u_buffer_n_0,
      \ascii_data_reg[5]\ => u_buffer_n_7,
      echo_count_mux(1) => echo_count_mux(2),
      echo_count_mux(0) => echo_count_mux(0),
      echo_symbols_mux(4) => echo_symbols_mux(5),
      echo_symbols_mux(3 downto 0) => echo_symbols_mux(3 downto 0),
      \read_idx_reg[4]\ => u_decoder_uart_n_0,
      \read_idx_reg[4]_0\ => u_decoder_uart_n_1,
      \read_idx_reg[4]_1\ => u_decoder_uart_n_2,
      \read_idx_reg[4]_10\ => u_decoder_uart_n_11,
      \read_idx_reg[4]_11\ => u_decoder_uart_n_12,
      \read_idx_reg[4]_2\ => u_decoder_uart_n_3,
      \read_idx_reg[4]_3\ => u_decoder_uart_n_4,
      \read_idx_reg[4]_4\ => u_decoder_uart_n_5,
      \read_idx_reg[4]_5\ => u_decoder_uart_n_6,
      \read_idx_reg[4]_6\ => u_decoder_uart_n_7,
      \read_idx_reg[4]_7\ => u_decoder_uart_n_8,
      \read_idx_reg[4]_8\ => u_decoder_uart_n_9,
      \read_idx_reg[4]_9\ => u_decoder_uart_n_10
    );
u_echo: entity work.system_morse_top_0_0_morse_echo
     port map (
      D(5 downto 0) => echo_symbols_mux(5 downto 0),
      \FSM_sequential_state_reg[0]_0\(0) => state(0),
      \FSM_sequential_state_reg[2]_0\ => u_replay_n_8,
      clk => clk,
      \count_latched_reg[3]_0\(3 downto 0) => echo_count_mux(3 downto 0),
      echo_done => echo_done,
      echo_error_mux => echo_error_mux,
      fsm_buf_write_en => fsm_buf_write_en,
      replay_active => replay_active,
      replay_echo_char_ready => replay_echo_char_ready,
      rgb_b_n => rgb_b_n,
      rgb_b_reg_0 => u_buffer_n_19,
      rgb_b_reg_1 => u_replay_n_10,
      rgb_g_n => rgb_g_n,
      rgb_r_n => rgb_r_n,
      rst => rst
    );
u_edge_dash: entity work.system_morse_top_0_0_edge_detect
     port map (
      btn_dash_clean => btn_dash_clean,
      clk => clk,
      rst => rst,
      sig_previous => sig_previous
    );
u_edge_dot: entity work.system_morse_top_0_0_edge_detect_3
     port map (
      btn_dot_clean => btn_dot_clean,
      clk => clk,
      rst => rst,
      sig_previous => sig_previous_0
    );
u_edge_reset: entity work.system_morse_top_0_0_edge_detect_4
     port map (
      btn_dash_clean => btn_dash_clean,
      btn_dot_clean => btn_dot_clean,
      btn_reset_clean => btn_reset_clean,
      clk => clk,
      rst => rst,
      sig_previous => sig_previous_1,
      sig_previous_0 => sig_previous,
      sig_previous_1 => sig_previous_0,
      symbols_reg(0) => symbols_reg(4),
      \symbols_reg[5]_i_2_0\ => u_fsm_n_7,
      \symbols_reg_reg[5]\ => u_fsm_n_8
    );
u_fsm: entity work.system_morse_top_0_0_morse_fsm
     port map (
      E(0) => write_ptr0,
      Q(3 downto 0) => \out\(3 downto 0),
      SR(0) => u_fsm_n_11,
      btn_dash_clean => btn_dash_clean,
      btn_dot_clean => btn_dot_clean,
      btn_reset_clean => btn_reset_clean,
      clk => clk,
      \count_reg_reg[0]_0\ => u_fsm_n_7,
      \count_reg_reg[2]_0\ => u_fsm_n_8,
      \count_reg_reg[2]_1\ => u_fsm_n_10,
      \echo_count_reg[3]_0\(3 downto 0) => fsm_buf_write_count(3 downto 0),
      \echo_symbols_reg[5]_0\(5 downto 0) => fsm_buf_write_symbols(5 downto 0),
      fsm_buf_write_en => fsm_buf_write_en,
      fsm_buf_write_error => fsm_buf_write_error,
      fsm_decode_error => fsm_decode_error,
      \msg_length_reg[5]\ => u_fsm_n_9,
      \msg_length_reg[5]_0\(0) => msg_length(5),
      rst => rst,
      short_enter_pulse => short_enter_pulse,
      sig_previous => sig_previous_1,
      sig_previous_0 => sig_previous,
      sig_previous_1 => sig_previous_0,
      symbols_reg(0) => symbols_reg(4)
    );
u_long_press: entity work.system_morse_top_0_0_long_press_detect
     port map (
      btn_enter_clean => btn_enter_clean,
      clk => clk,
      \hold_cnt_reg[0]_0\ => u_db_enter_n_2,
      \hold_cnt_reg[22]_0\ => u_long_press_n_2,
      long_enter_pulse => long_enter_pulse,
      long_fired => long_fired,
      rst => rst,
      short_enter_pulse => short_enter_pulse
    );
u_replay: entity work.system_morse_top_0_0_morse_replay
     port map (
      E(0) => ascii_data0,
      \FSM_sequential_state_reg[0]_0\ => u_replay_n_8,
      \FSM_sequential_state_reg[1]_0\(0) => state_2(1),
      \FSM_sequential_state_reg[2]\(0) => state(0),
      Q(4 downto 0) => replay_read_idx(4 downto 0),
      clk => clk,
      echo_char_ready_reg_0 => u_replay_n_10,
      echo_done => echo_done,
      fsm_buf_write_en => fsm_buf_write_en,
      \read_idx_reg[0]_0\ => u_buffer_n_27,
      replay_active => replay_active,
      replay_active_reg_0(5 downto 0) => msg_length(5 downto 0),
      replay_echo_char_ready => replay_echo_char_ready,
      rst => rst,
      uart_data_valid => \^uart_data_valid\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_morse_top_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_morse_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_morse_top_0_0 : entity is "system_morse_top_0_0,morse_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_morse_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_morse_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_morse_top_0_0 : entity is "morse_top,Vivado 2025.2";
end system_morse_top_0_0;

architecture STRUCTURE of system_morse_top_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^uart_ascii_data\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
  uart_ascii_data(7) <= \<const0>\;
  uart_ascii_data(6 downto 0) <= \^uart_ascii_data\(6 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_morse_top_0_0_morse_top
     port map (
      button0 => button0,
      button1 => button1,
      button2 => button2,
      button3 => button3,
      clk => clk,
      \out\(3) => led3,
      \out\(2) => led2,
      \out\(1) => led1,
      \out\(0) => led0,
      ps_ack => ps_ack,
      rgb_b_n => rgb_b_n,
      rgb_g_n => rgb_g_n,
      rgb_r_n => rgb_r_n,
      uart_ascii_data(6 downto 0) => \^uart_ascii_data\(6 downto 0),
      uart_data_valid => uart_data_valid
    );
end STRUCTURE;
