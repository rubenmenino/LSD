-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "05/30/2018 12:21:13"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Merge_lvl3 IS
    PORT (
	clk : IN std_logic;
	enable : IN std_logic;
	res : IN std_logic;
	inc_dec : IN std_logic;
	n1 : IN std_logic_vector(3 DOWNTO 0);
	n2 : IN std_logic_vector(3 DOWNTO 0);
	n3 : IN std_logic_vector(3 DOWNTO 0);
	n4 : IN std_logic_vector(3 DOWNTO 0);
	n5 : IN std_logic_vector(3 DOWNTO 0);
	n6 : IN std_logic_vector(3 DOWNTO 0);
	n7 : IN std_logic_vector(3 DOWNTO 0);
	n8 : IN std_logic_vector(3 DOWNTO 0);
	sortedn1 : OUT std_logic_vector(3 DOWNTO 0);
	sortedn2 : OUT std_logic_vector(3 DOWNTO 0);
	sortedn3 : OUT std_logic_vector(3 DOWNTO 0);
	sortedn4 : OUT std_logic_vector(3 DOWNTO 0);
	sortedn5 : OUT std_logic_vector(3 DOWNTO 0);
	sortedn6 : OUT std_logic_vector(3 DOWNTO 0);
	sortedn7 : OUT std_logic_vector(3 DOWNTO 0);
	sortedn8 : OUT std_logic_vector(3 DOWNTO 0);
	finish : OUT std_logic
	);
END Merge_lvl3;

-- Design Ports Information
-- sortedn1[0]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn1[1]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn1[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn1[3]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn2[0]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn2[1]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn2[2]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn2[3]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn3[0]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn3[1]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn3[2]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn3[3]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn4[0]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn4[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn4[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn4[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn5[0]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn5[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn5[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn5[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn6[0]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn6[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn6[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn6[3]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn7[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn7[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn7[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn7[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn8[0]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn8[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn8[2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sortedn8[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- finish	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n5[0]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n1[0]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n5[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n1[3]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inc_dec	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n5[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n1[2]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n5[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n1[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- res	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n6[0]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n6[1]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n6[2]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n6[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n2[0]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n2[1]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n2[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n2[3]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n7[0]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n7[3]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n7[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n7[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n3[0]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n3[1]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n3[2]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n3[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n8[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n4[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n4[3]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n4[0]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n4[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n8[3]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n8[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n8[1]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Merge_lvl3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_res : std_logic;
SIGNAL ww_inc_dec : std_logic;
SIGNAL ww_n1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_n2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_n3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_n4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_n5 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_n6 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_n7 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_n8 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sortedn1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sortedn2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sortedn3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sortedn4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sortedn5 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sortedn6 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sortedn7 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sortedn8 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_finish : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sortedn1[0]~output_o\ : std_logic;
SIGNAL \sortedn1[1]~output_o\ : std_logic;
SIGNAL \sortedn1[2]~output_o\ : std_logic;
SIGNAL \sortedn1[3]~output_o\ : std_logic;
SIGNAL \sortedn2[0]~output_o\ : std_logic;
SIGNAL \sortedn2[1]~output_o\ : std_logic;
SIGNAL \sortedn2[2]~output_o\ : std_logic;
SIGNAL \sortedn2[3]~output_o\ : std_logic;
SIGNAL \sortedn3[0]~output_o\ : std_logic;
SIGNAL \sortedn3[1]~output_o\ : std_logic;
SIGNAL \sortedn3[2]~output_o\ : std_logic;
SIGNAL \sortedn3[3]~output_o\ : std_logic;
SIGNAL \sortedn4[0]~output_o\ : std_logic;
SIGNAL \sortedn4[1]~output_o\ : std_logic;
SIGNAL \sortedn4[2]~output_o\ : std_logic;
SIGNAL \sortedn4[3]~output_o\ : std_logic;
SIGNAL \sortedn5[0]~output_o\ : std_logic;
SIGNAL \sortedn5[1]~output_o\ : std_logic;
SIGNAL \sortedn5[2]~output_o\ : std_logic;
SIGNAL \sortedn5[3]~output_o\ : std_logic;
SIGNAL \sortedn6[0]~output_o\ : std_logic;
SIGNAL \sortedn6[1]~output_o\ : std_logic;
SIGNAL \sortedn6[2]~output_o\ : std_logic;
SIGNAL \sortedn6[3]~output_o\ : std_logic;
SIGNAL \sortedn7[0]~output_o\ : std_logic;
SIGNAL \sortedn7[1]~output_o\ : std_logic;
SIGNAL \sortedn7[2]~output_o\ : std_logic;
SIGNAL \sortedn7[3]~output_o\ : std_logic;
SIGNAL \sortedn8[0]~output_o\ : std_logic;
SIGNAL \sortedn8[1]~output_o\ : std_logic;
SIGNAL \sortedn8[2]~output_o\ : std_logic;
SIGNAL \sortedn8[3]~output_o\ : std_logic;
SIGNAL \finish~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \n1[0]~input_o\ : std_logic;
SIGNAL \inc_dec~input_o\ : std_logic;
SIGNAL \n5[2]~input_o\ : std_logic;
SIGNAL \n1[2]~input_o\ : std_logic;
SIGNAL \n5[0]~input_o\ : std_logic;
SIGNAL \s_sortedn1~0_combout\ : std_logic;
SIGNAL \n1[1]~input_o\ : std_logic;
SIGNAL \n5[1]~input_o\ : std_logic;
SIGNAL \s_sortedn1~1_combout\ : std_logic;
SIGNAL \s_sortedn1~2_combout\ : std_logic;
SIGNAL \n1[3]~input_o\ : std_logic;
SIGNAL \n5[3]~input_o\ : std_logic;
SIGNAL \s_sortedn1~3_combout\ : std_logic;
SIGNAL \s_sortedn1~4_combout\ : std_logic;
SIGNAL \res~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \s_sortedn1[0]~5_combout\ : std_logic;
SIGNAL \s_sortedn1~6_combout\ : std_logic;
SIGNAL \s_sortedn1~7_combout\ : std_logic;
SIGNAL \s_sortedn1~8_combout\ : std_logic;
SIGNAL \n6[0]~input_o\ : std_logic;
SIGNAL \n2[0]~input_o\ : std_logic;
SIGNAL \s_c1~0_combout\ : std_logic;
SIGNAL \s_c1~q\ : std_logic;
SIGNAL \n6[1]~input_o\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \n6[2]~input_o\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \n6[3]~input_o\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \n2[3]~input_o\ : std_logic;
SIGNAL \n2[2]~input_o\ : std_logic;
SIGNAL \n2[1]~input_o\ : std_logic;
SIGNAL \LessThan18~0_combout\ : std_logic;
SIGNAL \LessThan18~1_combout\ : std_logic;
SIGNAL \LessThan18~2_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \s_sortedn2[0]~0_combout\ : std_logic;
SIGNAL \LessThan17~0_combout\ : std_logic;
SIGNAL \LessThan17~1_combout\ : std_logic;
SIGNAL \LessThan17~2_combout\ : std_logic;
SIGNAL \s_sortedn2[0]~1_combout\ : std_logic;
SIGNAL \s_sortedn2~2_combout\ : std_logic;
SIGNAL \s_sortedn2~3_combout\ : std_logic;
SIGNAL \s_sortedn2~4_combout\ : std_logic;
SIGNAL \s_sortedn2~5_combout\ : std_logic;
SIGNAL \s_sortedn2~6_combout\ : std_logic;
SIGNAL \s_sortedn2~7_combout\ : std_logic;
SIGNAL \s_sortedn2~8_combout\ : std_logic;
SIGNAL \s_sortedn2~9_combout\ : std_logic;
SIGNAL \s_c2[1]~2_combout\ : std_logic;
SIGNAL \s_c2~0_combout\ : std_logic;
SIGNAL \s_c2~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \n7[3]~input_o\ : std_logic;
SIGNAL \n7[2]~input_o\ : std_logic;
SIGNAL \n7[1]~input_o\ : std_logic;
SIGNAL \n7[0]~input_o\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan19~0_combout\ : std_logic;
SIGNAL \LessThan19~1_combout\ : std_logic;
SIGNAL \LessThan19~2_combout\ : std_logic;
SIGNAL \s_sortedn3[0]~8_combout\ : std_logic;
SIGNAL \s_sortedn3~9_combout\ : std_logic;
SIGNAL \n3[0]~input_o\ : std_logic;
SIGNAL \s_sortedn3[0]~10_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \LessThan20~0_combout\ : std_logic;
SIGNAL \LessThan20~1_combout\ : std_logic;
SIGNAL \LessThan20~2_combout\ : std_logic;
SIGNAL \n3[3]~input_o\ : std_logic;
SIGNAL \n3[1]~input_o\ : std_logic;
SIGNAL \LessThan21~0_combout\ : std_logic;
SIGNAL \n3[2]~input_o\ : std_logic;
SIGNAL \LessThan21~1_combout\ : std_logic;
SIGNAL \LessThan21~2_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \s_sortedn3[0]~11_combout\ : std_logic;
SIGNAL \s_sortedn3[0]~12_combout\ : std_logic;
SIGNAL \s_sortedn3~13_combout\ : std_logic;
SIGNAL \s_sortedn3~14_combout\ : std_logic;
SIGNAL \s_sortedn3~24_combout\ : std_logic;
SIGNAL \s_sortedn3~15_combout\ : std_logic;
SIGNAL \s_sortedn3~16_combout\ : std_logic;
SIGNAL \s_sortedn3~17_combout\ : std_logic;
SIGNAL \s_sortedn3~25_combout\ : std_logic;
SIGNAL \s_sortedn3~19_combout\ : std_logic;
SIGNAL \s_sortedn3~20_combout\ : std_logic;
SIGNAL \s_sortedn3~18_combout\ : std_logic;
SIGNAL \s_sortedn3~26_combout\ : std_logic;
SIGNAL \s_sortedn3~22_combout\ : std_logic;
SIGNAL \s_sortedn3~23_combout\ : std_logic;
SIGNAL \s_sortedn3~21_combout\ : std_logic;
SIGNAL \s_sortedn3~27_combout\ : std_logic;
SIGNAL \n8[1]~input_o\ : std_logic;
SIGNAL \n8[0]~input_o\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \n8[2]~input_o\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \n8[3]~input_o\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \LessThan22~0_combout\ : std_logic;
SIGNAL \LessThan22~1_combout\ : std_logic;
SIGNAL \LessThan22~2_combout\ : std_logic;
SIGNAL \s_c3~0_combout\ : std_logic;
SIGNAL \s_c3~1_combout\ : std_logic;
SIGNAL \s_c3~2_combout\ : std_logic;
SIGNAL \s_c3~4_combout\ : std_logic;
SIGNAL \s_c3~3_combout\ : std_logic;
SIGNAL \s_c3~5_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \s_sortedn4[2]~8_combout\ : std_logic;
SIGNAL \LessThan23~0_combout\ : std_logic;
SIGNAL \LessThan23~1_combout\ : std_logic;
SIGNAL \LessThan23~2_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \s_sortedn4[2]~4_combout\ : std_logic;
SIGNAL \s_sortedn4[2]~5_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \s_sortedn4~6_combout\ : std_logic;
SIGNAL \LessThan24~0_combout\ : std_logic;
SIGNAL \LessThan24~1_combout\ : std_logic;
SIGNAL \LessThan24~2_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \LessThan8~2_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \n4[3]~input_o\ : std_logic;
SIGNAL \n4[2]~input_o\ : std_logic;
SIGNAL \LessThan25~2_combout\ : std_logic;
SIGNAL \LessThan25~0_combout\ : std_logic;
SIGNAL \n4[1]~input_o\ : std_logic;
SIGNAL \n4[0]~input_o\ : std_logic;
SIGNAL \LessThan25~1_combout\ : std_logic;
SIGNAL \LessThan25~3_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \LessThan9~1_combout\ : std_logic;
SIGNAL \LessThan9~2_combout\ : std_logic;
SIGNAL \s_sortedn4[2]~0_combout\ : std_logic;
SIGNAL \s_sortedn4[2]~1_combout\ : std_logic;
SIGNAL \s_sortedn4~2_combout\ : std_logic;
SIGNAL \s_sortedn4~3_combout\ : std_logic;
SIGNAL \s_sortedn4~7_combout\ : std_logic;
SIGNAL \s_sortedn4~9_combout\ : std_logic;
SIGNAL \s_sortedn4~10_combout\ : std_logic;
SIGNAL \s_sortedn4~11_combout\ : std_logic;
SIGNAL \s_sortedn4~12_combout\ : std_logic;
SIGNAL \s_sortedn4~13_combout\ : std_logic;
SIGNAL \s_sortedn4~14_combout\ : std_logic;
SIGNAL \s_sortedn4~15_combout\ : std_logic;
SIGNAL \s_sortedn4~16_combout\ : std_logic;
SIGNAL \s_sortedn4~17_combout\ : std_logic;
SIGNAL \s_sortedn4~18_combout\ : std_logic;
SIGNAL \s_sortedn4~19_combout\ : std_logic;
SIGNAL \s_sortedn4~22_combout\ : std_logic;
SIGNAL \s_sortedn4~20_combout\ : std_logic;
SIGNAL \s_sortedn4~21_combout\ : std_logic;
SIGNAL \s_sortedn4~23_combout\ : std_logic;
SIGNAL \s_sortedn4~24_combout\ : std_logic;
SIGNAL \s_c4~4_combout\ : std_logic;
SIGNAL \s_c4~7_combout\ : std_logic;
SIGNAL \s_c4~5_combout\ : std_logic;
SIGNAL \s_c4~6_combout\ : std_logic;
SIGNAL \s_c4~8_combout\ : std_logic;
SIGNAL \s_c4~0_combout\ : std_logic;
SIGNAL \s_c4~1_combout\ : std_logic;
SIGNAL \s_c4~2_combout\ : std_logic;
SIGNAL \s_c4~3_combout\ : std_logic;
SIGNAL \s_sortedn5[2]~9_combout\ : std_logic;
SIGNAL \LessThan10~4_combout\ : std_logic;
SIGNAL \LessThan10~3_combout\ : std_logic;
SIGNAL \LessThan10~5_combout\ : std_logic;
SIGNAL \s_sortedn6[3]~36_combout\ : std_logic;
SIGNAL \LessThan26~0_combout\ : std_logic;
SIGNAL \LessThan26~1_combout\ : std_logic;
SIGNAL \s_sortedn6[3]~14_combout\ : std_logic;
SIGNAL \s_sortedn5[2]~6_combout\ : std_logic;
SIGNAL \LessThan12~0_combout\ : std_logic;
SIGNAL \LessThan12~1_combout\ : std_logic;
SIGNAL \LessThan28~2_combout\ : std_logic;
SIGNAL \LessThan12~2_combout\ : std_logic;
SIGNAL \LessThan28~1_combout\ : std_logic;
SIGNAL \LessThan28~0_combout\ : std_logic;
SIGNAL \LessThan28~3_combout\ : std_logic;
SIGNAL \s_sortedn5[2]~2_combout\ : std_logic;
SIGNAL \LessThan27~1_combout\ : std_logic;
SIGNAL \LessThan27~0_combout\ : std_logic;
SIGNAL \LessThan11~0_combout\ : std_logic;
SIGNAL \LessThan11~1_combout\ : std_logic;
SIGNAL \LessThan11~2_combout\ : std_logic;
SIGNAL \s_sortedn5[2]~0_combout\ : std_logic;
SIGNAL \s_sortedn5[2]~1_combout\ : std_logic;
SIGNAL \s_sortedn5[2]~3_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \s_sortedn5~4_combout\ : std_logic;
SIGNAL \s_sortedn5~5_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \s_sortedn5~7_combout\ : std_logic;
SIGNAL \s_sortedn5~8_combout\ : std_logic;
SIGNAL \s_sortedn5~10_combout\ : std_logic;
SIGNAL \s_sortedn5~11_combout\ : std_logic;
SIGNAL \s_sortedn5~12_combout\ : std_logic;
SIGNAL \s_sortedn5[2]~13_combout\ : std_logic;
SIGNAL \s_sortedn5[2]~14_combout\ : std_logic;
SIGNAL \s_sortedn5~17_combout\ : std_logic;
SIGNAL \s_sortedn5~15_combout\ : std_logic;
SIGNAL \s_sortedn5~16_combout\ : std_logic;
SIGNAL \s_sortedn5~18_combout\ : std_logic;
SIGNAL \s_sortedn5~19_combout\ : std_logic;
SIGNAL \s_sortedn5~22_combout\ : std_logic;
SIGNAL \s_sortedn5~20_combout\ : std_logic;
SIGNAL \s_sortedn5~21_combout\ : std_logic;
SIGNAL \s_sortedn5~23_combout\ : std_logic;
SIGNAL \s_sortedn5~24_combout\ : std_logic;
SIGNAL \s_sortedn5~25_combout\ : std_logic;
SIGNAL \s_sortedn5~26_combout\ : std_logic;
SIGNAL \s_sortedn5~27_combout\ : std_logic;
SIGNAL \s_sortedn5~28_combout\ : std_logic;
SIGNAL \s_sortedn5~29_combout\ : std_logic;
SIGNAL \LessThan26~2_combout\ : std_logic;
SIGNAL \s_sortedn6[3]~37_combout\ : std_logic;
SIGNAL \s_c5~0_combout\ : std_logic;
SIGNAL \s_c5~1_combout\ : std_logic;
SIGNAL \s_c5~2_combout\ : std_logic;
SIGNAL \s_c5~3_combout\ : std_logic;
SIGNAL \s_c5[0]~4_combout\ : std_logic;
SIGNAL \s_c5~5_combout\ : std_logic;
SIGNAL \s_c5~6_combout\ : std_logic;
SIGNAL \s_c5~7_combout\ : std_logic;
SIGNAL \s_c5~8_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \LessThan29~0_combout\ : std_logic;
SIGNAL \LessThan29~1_combout\ : std_logic;
SIGNAL \LessThan29~2_combout\ : std_logic;
SIGNAL \LessThan13~0_combout\ : std_logic;
SIGNAL \LessThan13~1_combout\ : std_logic;
SIGNAL \LessThan13~2_combout\ : std_logic;
SIGNAL \s_sortedn6[3]~15_combout\ : std_logic;
SIGNAL \s_sortedn6~16_combout\ : std_logic;
SIGNAL \LessThan14~0_combout\ : std_logic;
SIGNAL \LessThan14~1_combout\ : std_logic;
SIGNAL \LessThan14~2_combout\ : std_logic;
SIGNAL \LessThan30~0_combout\ : std_logic;
SIGNAL \LessThan30~1_combout\ : std_logic;
SIGNAL \LessThan30~2_combout\ : std_logic;
SIGNAL \s_sortedn6[3]~18_combout\ : std_logic;
SIGNAL \s_sortedn6[3]~19_combout\ : std_logic;
SIGNAL \s_sortedn6[3]~20_combout\ : std_logic;
SIGNAL \s_sortedn6[3]~21_combout\ : std_logic;
SIGNAL \s_sortedn6[3]~22_combout\ : std_logic;
SIGNAL \s_sortedn6[3]~38_combout\ : std_logic;
SIGNAL \s_sortedn6[3]~17_combout\ : std_logic;
SIGNAL \s_sortedn6~23_combout\ : std_logic;
SIGNAL \s_sortedn6~24_combout\ : std_logic;
SIGNAL \s_sortedn6~39_combout\ : std_logic;
SIGNAL \s_sortedn6[3]~25_combout\ : std_logic;
SIGNAL \s_sortedn6[3]~26_combout\ : std_logic;
SIGNAL \s_sortedn6~27_combout\ : std_logic;
SIGNAL \s_sortedn6~28_combout\ : std_logic;
SIGNAL \s_sortedn6~29_combout\ : std_logic;
SIGNAL \s_sortedn6~40_combout\ : std_logic;
SIGNAL \s_sortedn6~30_combout\ : std_logic;
SIGNAL \s_sortedn6~31_combout\ : std_logic;
SIGNAL \s_sortedn6~32_combout\ : std_logic;
SIGNAL \s_sortedn6~41_combout\ : std_logic;
SIGNAL \s_sortedn6~33_combout\ : std_logic;
SIGNAL \s_sortedn6~34_combout\ : std_logic;
SIGNAL \s_sortedn6~35_combout\ : std_logic;
SIGNAL \s_sortedn6~42_combout\ : std_logic;
SIGNAL \s_c6~0_combout\ : std_logic;
SIGNAL \s_c6~1_combout\ : std_logic;
SIGNAL \s_c6~2_combout\ : std_logic;
SIGNAL \s_c6~q\ : std_logic;
SIGNAL \LessThan15~0_combout\ : std_logic;
SIGNAL \LessThan15~1_combout\ : std_logic;
SIGNAL \s_sortedn7[3]~6_combout\ : std_logic;
SIGNAL \LessThan31~0_combout\ : std_logic;
SIGNAL \LessThan31~1_combout\ : std_logic;
SIGNAL \s_sortedn7[3]~5_combout\ : std_logic;
SIGNAL \s_sortedn7[3]~0_combout\ : std_logic;
SIGNAL \s_sortedn7[3]~1_combout\ : std_logic;
SIGNAL \s_sortedn7[3]~2_combout\ : std_logic;
SIGNAL \s_sortedn7[3]~3_combout\ : std_logic;
SIGNAL \s_sortedn7[3]~4_combout\ : std_logic;
SIGNAL \s_sortedn7[3]~7_combout\ : std_logic;
SIGNAL \s_sortedn7~8_combout\ : std_logic;
SIGNAL \s_sortedn7~9_combout\ : std_logic;
SIGNAL \s_sortedn7[3]~10_combout\ : std_logic;
SIGNAL \s_sortedn7[3]~11_combout\ : std_logic;
SIGNAL \s_sortedn7~12_combout\ : std_logic;
SIGNAL \s_sortedn7~13_combout\ : std_logic;
SIGNAL \s_sortedn7~14_combout\ : std_logic;
SIGNAL \s_sortedn7~15_combout\ : std_logic;
SIGNAL \s_sortedn7~16_combout\ : std_logic;
SIGNAL \s_sortedn7~17_combout\ : std_logic;
SIGNAL \s_sortedn8[3]~0_combout\ : std_logic;
SIGNAL \s_sortedn8[3]~1_combout\ : std_logic;
SIGNAL \s_sortedn8~2_combout\ : std_logic;
SIGNAL \s_sortedn8~3_combout\ : std_logic;
SIGNAL \s_sortedn8~4_combout\ : std_logic;
SIGNAL \s_sortedn8~5_combout\ : std_logic;
SIGNAL \s_finish~1_combout\ : std_logic;
SIGNAL \s_finish~0_combout\ : std_logic;
SIGNAL \s_finish~2_combout\ : std_logic;
SIGNAL \s_finish~3_combout\ : std_logic;
SIGNAL \LessThan10~2_combout\ : std_logic;
SIGNAL \s_finish~4_combout\ : std_logic;
SIGNAL \s_finish~5_combout\ : std_logic;
SIGNAL \s_finish~6_combout\ : std_logic;
SIGNAL \s_finish~7_combout\ : std_logic;
SIGNAL \s_finish~q\ : std_logic;
SIGNAL s_sortedn1 : std_logic_vector(3 DOWNTO 0);
SIGNAL s_sortedn2 : std_logic_vector(3 DOWNTO 0);
SIGNAL s_sortedn3 : std_logic_vector(3 DOWNTO 0);
SIGNAL s_sortedn4 : std_logic_vector(3 DOWNTO 0);
SIGNAL s_c2 : std_logic_vector(1 DOWNTO 0);
SIGNAL s_sortedn5 : std_logic_vector(3 DOWNTO 0);
SIGNAL s_sortedn6 : std_logic_vector(3 DOWNTO 0);
SIGNAL s_sortedn7 : std_logic_vector(3 DOWNTO 0);
SIGNAL s_sortedn8 : std_logic_vector(3 DOWNTO 0);
SIGNAL s_c3 : std_logic_vector(1 DOWNTO 0);
SIGNAL s_c4 : std_logic_vector(1 DOWNTO 0);
SIGNAL s_c5 : std_logic_vector(1 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_enable <= enable;
ww_res <= res;
ww_inc_dec <= inc_dec;
ww_n1 <= n1;
ww_n2 <= n2;
ww_n3 <= n3;
ww_n4 <= n4;
ww_n5 <= n5;
ww_n6 <= n6;
ww_n7 <= n7;
ww_n8 <= n8;
sortedn1 <= ww_sortedn1;
sortedn2 <= ww_sortedn2;
sortedn3 <= ww_sortedn3;
sortedn4 <= ww_sortedn4;
sortedn5 <= ww_sortedn5;
sortedn6 <= ww_sortedn6;
sortedn7 <= ww_sortedn7;
sortedn8 <= ww_sortedn8;
finish <= ww_finish;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X98_Y73_N23
\sortedn1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn1(0),
	devoe => ww_devoe,
	o => \sortedn1[0]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\sortedn1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn1(1),
	devoe => ww_devoe,
	o => \sortedn1[1]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\sortedn1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn1(2),
	devoe => ww_devoe,
	o => \sortedn1[2]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\sortedn1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn1(3),
	devoe => ww_devoe,
	o => \sortedn1[3]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\sortedn2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn2(0),
	devoe => ww_devoe,
	o => \sortedn2[0]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\sortedn2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn2(1),
	devoe => ww_devoe,
	o => \sortedn2[1]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\sortedn2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn2(2),
	devoe => ww_devoe,
	o => \sortedn2[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\sortedn2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn2(3),
	devoe => ww_devoe,
	o => \sortedn2[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\sortedn3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn3(0),
	devoe => ww_devoe,
	o => \sortedn3[0]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\sortedn3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn3(1),
	devoe => ww_devoe,
	o => \sortedn3[1]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\sortedn3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn3(2),
	devoe => ww_devoe,
	o => \sortedn3[2]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\sortedn3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn3(3),
	devoe => ww_devoe,
	o => \sortedn3[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\sortedn4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn4(0),
	devoe => ww_devoe,
	o => \sortedn4[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\sortedn4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn4(1),
	devoe => ww_devoe,
	o => \sortedn4[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\sortedn4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn4(2),
	devoe => ww_devoe,
	o => \sortedn4[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\sortedn4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn4(3),
	devoe => ww_devoe,
	o => \sortedn4[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\sortedn5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn5(0),
	devoe => ww_devoe,
	o => \sortedn5[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\sortedn5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn5(1),
	devoe => ww_devoe,
	o => \sortedn5[1]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\sortedn5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn5(2),
	devoe => ww_devoe,
	o => \sortedn5[2]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\sortedn5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn5(3),
	devoe => ww_devoe,
	o => \sortedn5[3]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\sortedn6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn6(0),
	devoe => ww_devoe,
	o => \sortedn6[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\sortedn6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn6(1),
	devoe => ww_devoe,
	o => \sortedn6[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\sortedn6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn6(2),
	devoe => ww_devoe,
	o => \sortedn6[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\sortedn6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn6(3),
	devoe => ww_devoe,
	o => \sortedn6[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\sortedn7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn7(0),
	devoe => ww_devoe,
	o => \sortedn7[0]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\sortedn7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn7(1),
	devoe => ww_devoe,
	o => \sortedn7[1]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\sortedn7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn7(2),
	devoe => ww_devoe,
	o => \sortedn7[2]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\sortedn7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn7(3),
	devoe => ww_devoe,
	o => \sortedn7[3]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\sortedn8[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn8(0),
	devoe => ww_devoe,
	o => \sortedn8[0]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\sortedn8[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn8(1),
	devoe => ww_devoe,
	o => \sortedn8[1]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\sortedn8[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn8(2),
	devoe => ww_devoe,
	o => \sortedn8[2]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\sortedn8[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => s_sortedn8(3),
	devoe => ww_devoe,
	o => \sortedn8[3]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\finish~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_finish~q\,
	devoe => ww_devoe,
	o => \finish~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y37_N1
\n1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n1(0),
	o => \n1[0]~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\inc_dec~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inc_dec,
	o => \inc_dec~input_o\);

-- Location: IOIBUF_X83_Y73_N1
\n5[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n5(2),
	o => \n5[2]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\n1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n1(2),
	o => \n1[2]~input_o\);

-- Location: IOIBUF_X115_Y37_N8
\n5[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n5(0),
	o => \n5[0]~input_o\);

-- Location: LCCOMB_X76_Y71_N12
\s_sortedn1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn1~0_combout\ = (\n1[0]~input_o\ & (!\n5[0]~input_o\ & !\inc_dec~input_o\)) # (!\n1[0]~input_o\ & (\n5[0]~input_o\ & \inc_dec~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1[0]~input_o\,
	datab => \n5[0]~input_o\,
	datac => \inc_dec~input_o\,
	combout => \s_sortedn1~0_combout\);

-- Location: IOIBUF_X94_Y73_N1
\n1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n1(1),
	o => \n1[1]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\n5[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n5(1),
	o => \n5[1]~input_o\);

-- Location: LCCOMB_X76_Y71_N18
\s_sortedn1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn1~1_combout\ = (\n1[1]~input_o\ & ((\n5[1]~input_o\ & (\s_sortedn1~0_combout\)) # (!\n5[1]~input_o\ & ((!\inc_dec~input_o\))))) # (!\n1[1]~input_o\ & ((\n5[1]~input_o\ & ((\inc_dec~input_o\))) # (!\n5[1]~input_o\ & (\s_sortedn1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_sortedn1~0_combout\,
	datab => \n1[1]~input_o\,
	datac => \inc_dec~input_o\,
	datad => \n5[1]~input_o\,
	combout => \s_sortedn1~1_combout\);

-- Location: LCCOMB_X76_Y71_N16
\s_sortedn1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn1~2_combout\ = (\n5[2]~input_o\ & ((\n1[2]~input_o\ & ((\s_sortedn1~1_combout\))) # (!\n1[2]~input_o\ & (\inc_dec~input_o\)))) # (!\n5[2]~input_o\ & ((\n1[2]~input_o\ & (!\inc_dec~input_o\)) # (!\n1[2]~input_o\ & ((\s_sortedn1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n5[2]~input_o\,
	datab => \inc_dec~input_o\,
	datac => \n1[2]~input_o\,
	datad => \s_sortedn1~1_combout\,
	combout => \s_sortedn1~2_combout\);

-- Location: IOIBUF_X83_Y73_N15
\n1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n1(3),
	o => \n1[3]~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\n5[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n5(3),
	o => \n5[3]~input_o\);

-- Location: LCCOMB_X75_Y71_N20
\s_sortedn1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn1~3_combout\ = (\n1[3]~input_o\ & ((\n5[3]~input_o\ & ((\s_sortedn1~2_combout\))) # (!\n5[3]~input_o\ & (!\inc_dec~input_o\)))) # (!\n1[3]~input_o\ & ((\n5[3]~input_o\ & (\inc_dec~input_o\)) # (!\n5[3]~input_o\ & ((\s_sortedn1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_dec~input_o\,
	datab => \s_sortedn1~2_combout\,
	datac => \n1[3]~input_o\,
	datad => \n5[3]~input_o\,
	combout => \s_sortedn1~3_combout\);

-- Location: LCCOMB_X76_Y71_N0
\s_sortedn1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn1~4_combout\ = (\s_sortedn1~3_combout\ & ((\n5[0]~input_o\))) # (!\s_sortedn1~3_combout\ & (\n1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1[0]~input_o\,
	datab => \s_sortedn1~3_combout\,
	datac => \n5[0]~input_o\,
	combout => \s_sortedn1~4_combout\);

-- Location: IOIBUF_X81_Y73_N1
\res~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_res,
	o => \res~input_o\);

-- Location: IOIBUF_X94_Y73_N8
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X77_Y70_N20
\s_sortedn1[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn1[0]~5_combout\ = (\res~input_o\) # (\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res~input_o\,
	datad => \enable~input_o\,
	combout => \s_sortedn1[0]~5_combout\);

-- Location: FF_X76_Y71_N1
\s_sortedn1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn1~4_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn1(0));

-- Location: LCCOMB_X76_Y71_N10
\s_sortedn1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn1~6_combout\ = (\s_sortedn1~3_combout\ & (\n5[1]~input_o\)) # (!\s_sortedn1~3_combout\ & ((\n1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n5[1]~input_o\,
	datac => \n1[1]~input_o\,
	datad => \s_sortedn1~3_combout\,
	combout => \s_sortedn1~6_combout\);

-- Location: FF_X76_Y71_N11
\s_sortedn1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn1~6_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn1(1));

-- Location: LCCOMB_X76_Y71_N28
\s_sortedn1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn1~7_combout\ = (\s_sortedn1~3_combout\ & (\n5[2]~input_o\)) # (!\s_sortedn1~3_combout\ & ((\n1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n5[2]~input_o\,
	datab => \s_sortedn1~3_combout\,
	datac => \n1[2]~input_o\,
	combout => \s_sortedn1~7_combout\);

-- Location: FF_X76_Y71_N29
\s_sortedn1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn1~7_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn1(2));

-- Location: LCCOMB_X80_Y70_N24
\s_sortedn1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn1~8_combout\ = (\n5[3]~input_o\ & ((\inc_dec~input_o\) # (\n1[3]~input_o\))) # (!\n5[3]~input_o\ & (\inc_dec~input_o\ & \n1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n5[3]~input_o\,
	datac => \inc_dec~input_o\,
	datad => \n1[3]~input_o\,
	combout => \s_sortedn1~8_combout\);

-- Location: FF_X80_Y70_N25
\s_sortedn1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn1~8_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn1(3));

-- Location: IOIBUF_X85_Y73_N8
\n6[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n6(0),
	o => \n6[0]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\n2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n2(0),
	o => \n2[0]~input_o\);

-- Location: LCCOMB_X77_Y70_N6
\s_c1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c1~0_combout\ = (!\res~input_o\ & \enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \res~input_o\,
	datad => \enable~input_o\,
	combout => \s_c1~0_combout\);

-- Location: FF_X76_Y70_N17
s_c1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_sortedn1~3_combout\,
	sload => VCC,
	ena => \s_c1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_c1~q\);

-- Location: IOIBUF_X72_Y73_N1
\n6[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n6(1),
	o => \n6[1]~input_o\);

-- Location: LCCOMB_X76_Y71_N22
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\n1[1]~input_o\ & (((!\n6[0]~input_o\ & \n1[0]~input_o\)) # (!\n6[1]~input_o\))) # (!\n1[1]~input_o\ & (!\n6[0]~input_o\ & (!\n6[1]~input_o\ & \n1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n6[0]~input_o\,
	datab => \n1[1]~input_o\,
	datac => \n6[1]~input_o\,
	datad => \n1[0]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: IOIBUF_X69_Y73_N22
\n6[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n6(2),
	o => \n6[2]~input_o\);

-- Location: LCCOMB_X76_Y71_N24
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\LessThan1~0_combout\ & ((\n1[2]~input_o\) # (!\n6[2]~input_o\))) # (!\LessThan1~0_combout\ & (\n1[2]~input_o\ & !\n6[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datac => \n1[2]~input_o\,
	datad => \n6[2]~input_o\,
	combout => \LessThan1~1_combout\);

-- Location: IOIBUF_X79_Y73_N1
\n6[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n6(3),
	o => \n6[3]~input_o\);

-- Location: LCCOMB_X77_Y71_N16
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\LessThan1~1_combout\ & ((\n1[3]~input_o\) # (!\n6[3]~input_o\))) # (!\LessThan1~1_combout\ & (!\n6[3]~input_o\ & \n1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~1_combout\,
	datac => \n6[3]~input_o\,
	datad => \n1[3]~input_o\,
	combout => \LessThan1~2_combout\);

-- Location: IOIBUF_X72_Y73_N22
\n2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n2(3),
	o => \n2[3]~input_o\);

-- Location: IOIBUF_X79_Y73_N8
\n2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n2(2),
	o => \n2[2]~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\n2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n2(1),
	o => \n2[1]~input_o\);

-- Location: LCCOMB_X73_Y71_N28
\LessThan18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan18~0_combout\ = (\n5[1]~input_o\ & (((\n5[0]~input_o\ & !\n2[0]~input_o\)) # (!\n2[1]~input_o\))) # (!\n5[1]~input_o\ & (\n5[0]~input_o\ & (!\n2[0]~input_o\ & !\n2[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n5[0]~input_o\,
	datab => \n5[1]~input_o\,
	datac => \n2[0]~input_o\,
	datad => \n2[1]~input_o\,
	combout => \LessThan18~0_combout\);

-- Location: LCCOMB_X72_Y71_N28
\LessThan18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan18~1_combout\ = (\n2[2]~input_o\ & (\n5[2]~input_o\ & \LessThan18~0_combout\)) # (!\n2[2]~input_o\ & ((\n5[2]~input_o\) # (\LessThan18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2[2]~input_o\,
	datab => \n5[2]~input_o\,
	datad => \LessThan18~0_combout\,
	combout => \LessThan18~1_combout\);

-- Location: LCCOMB_X77_Y70_N18
\LessThan18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan18~2_combout\ = (\n2[3]~input_o\ & (\LessThan18~1_combout\ & \n5[3]~input_o\)) # (!\n2[3]~input_o\ & ((\LessThan18~1_combout\) # (\n5[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n2[3]~input_o\,
	datac => \LessThan18~1_combout\,
	datad => \n5[3]~input_o\,
	combout => \LessThan18~2_combout\);

-- Location: LCCOMB_X73_Y71_N26
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\n5[1]~input_o\ & (!\n5[0]~input_o\ & (\n2[0]~input_o\ & \n2[1]~input_o\))) # (!\n5[1]~input_o\ & ((\n2[1]~input_o\) # ((!\n5[0]~input_o\ & \n2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n5[0]~input_o\,
	datab => \n5[1]~input_o\,
	datac => \n2[0]~input_o\,
	datad => \n2[1]~input_o\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X72_Y71_N26
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\n2[2]~input_o\ & ((\LessThan2~0_combout\) # (!\n5[2]~input_o\))) # (!\n2[2]~input_o\ & (\LessThan2~0_combout\ & !\n5[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2[2]~input_o\,
	datab => \LessThan2~0_combout\,
	datac => \n5[2]~input_o\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X77_Y70_N24
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (\LessThan2~1_combout\ & ((\n2[3]~input_o\) # (!\n5[3]~input_o\))) # (!\LessThan2~1_combout\ & (\n2[3]~input_o\ & !\n5[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datac => \n2[3]~input_o\,
	datad => \n5[3]~input_o\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X77_Y70_N22
\s_sortedn2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn2[0]~0_combout\ = (\inc_dec~input_o\ & ((\LessThan18~2_combout\) # ((\s_c1~q\)))) # (!\inc_dec~input_o\ & (((!\s_c1~q\ & \LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_dec~input_o\,
	datab => \LessThan18~2_combout\,
	datac => \s_c1~q\,
	datad => \LessThan2~2_combout\,
	combout => \s_sortedn2[0]~0_combout\);

-- Location: LCCOMB_X76_Y71_N26
\LessThan17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan17~0_combout\ = (\n1[1]~input_o\ & (\n6[0]~input_o\ & (\n6[1]~input_o\ & !\n1[0]~input_o\))) # (!\n1[1]~input_o\ & ((\n6[1]~input_o\) # ((\n6[0]~input_o\ & !\n1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n6[0]~input_o\,
	datab => \n1[1]~input_o\,
	datac => \n6[1]~input_o\,
	datad => \n1[0]~input_o\,
	combout => \LessThan17~0_combout\);

-- Location: LCCOMB_X76_Y71_N8
\LessThan17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan17~1_combout\ = (\LessThan17~0_combout\ & ((\n6[2]~input_o\) # (!\n1[2]~input_o\))) # (!\LessThan17~0_combout\ & (!\n1[2]~input_o\ & \n6[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan17~0_combout\,
	datac => \n1[2]~input_o\,
	datad => \n6[2]~input_o\,
	combout => \LessThan17~1_combout\);

-- Location: LCCOMB_X77_Y70_N12
\LessThan17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan17~2_combout\ = (\LessThan17~1_combout\ & ((\n6[3]~input_o\) # (!\n1[3]~input_o\))) # (!\LessThan17~1_combout\ & (\n6[3]~input_o\ & !\n1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan17~1_combout\,
	datab => \n6[3]~input_o\,
	datac => \n1[3]~input_o\,
	combout => \LessThan17~2_combout\);

-- Location: LCCOMB_X77_Y70_N14
\s_sortedn2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn2[0]~1_combout\ = (\s_c1~q\ & ((\s_sortedn2[0]~0_combout\ & ((\LessThan17~2_combout\))) # (!\s_sortedn2[0]~0_combout\ & (\LessThan1~2_combout\)))) # (!\s_c1~q\ & (((\s_sortedn2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_c1~q\,
	datab => \LessThan1~2_combout\,
	datac => \s_sortedn2[0]~0_combout\,
	datad => \LessThan17~2_combout\,
	combout => \s_sortedn2[0]~1_combout\);

-- Location: LCCOMB_X76_Y71_N30
\s_sortedn2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn2~2_combout\ = (\s_c1~q\ & ((\n1[0]~input_o\) # ((\s_sortedn2[0]~1_combout\)))) # (!\s_c1~q\ & (((\n2[0]~input_o\ & !\s_sortedn2[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1[0]~input_o\,
	datab => \n2[0]~input_o\,
	datac => \s_c1~q\,
	datad => \s_sortedn2[0]~1_combout\,
	combout => \s_sortedn2~2_combout\);

-- Location: LCCOMB_X76_Y71_N6
\s_sortedn2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn2~3_combout\ = (\s_sortedn2~2_combout\ & ((\n6[0]~input_o\) # ((!\s_sortedn2[0]~1_combout\)))) # (!\s_sortedn2~2_combout\ & (((\n5[0]~input_o\ & \s_sortedn2[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n6[0]~input_o\,
	datab => \n5[0]~input_o\,
	datac => \s_sortedn2~2_combout\,
	datad => \s_sortedn2[0]~1_combout\,
	combout => \s_sortedn2~3_combout\);

-- Location: FF_X76_Y71_N7
\s_sortedn2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn2~3_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn2(0));

-- Location: LCCOMB_X76_Y71_N4
\s_sortedn2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn2~4_combout\ = (\s_c1~q\ & ((\n1[1]~input_o\) # ((\s_sortedn2[0]~1_combout\)))) # (!\s_c1~q\ & (((\n2[1]~input_o\ & !\s_sortedn2[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_c1~q\,
	datab => \n1[1]~input_o\,
	datac => \n2[1]~input_o\,
	datad => \s_sortedn2[0]~1_combout\,
	combout => \s_sortedn2~4_combout\);

-- Location: LCCOMB_X76_Y71_N20
\s_sortedn2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn2~5_combout\ = (\s_sortedn2~4_combout\ & ((\n6[1]~input_o\) # ((!\s_sortedn2[0]~1_combout\)))) # (!\s_sortedn2~4_combout\ & (((\n5[1]~input_o\ & \s_sortedn2[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n6[1]~input_o\,
	datab => \n5[1]~input_o\,
	datac => \s_sortedn2~4_combout\,
	datad => \s_sortedn2[0]~1_combout\,
	combout => \s_sortedn2~5_combout\);

-- Location: FF_X76_Y71_N21
\s_sortedn2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn2~5_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn2(1));

-- Location: LCCOMB_X76_Y71_N14
\s_sortedn2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn2~6_combout\ = (\s_c1~q\ & (((\n1[2]~input_o\) # (\s_sortedn2[0]~1_combout\)))) # (!\s_c1~q\ & (\n2[2]~input_o\ & ((!\s_sortedn2[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_c1~q\,
	datab => \n2[2]~input_o\,
	datac => \n1[2]~input_o\,
	datad => \s_sortedn2[0]~1_combout\,
	combout => \s_sortedn2~6_combout\);

-- Location: LCCOMB_X76_Y71_N2
\s_sortedn2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn2~7_combout\ = (\s_sortedn2~6_combout\ & (((\n6[2]~input_o\) # (!\s_sortedn2[0]~1_combout\)))) # (!\s_sortedn2~6_combout\ & (\n5[2]~input_o\ & ((\s_sortedn2[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n5[2]~input_o\,
	datab => \n6[2]~input_o\,
	datac => \s_sortedn2~6_combout\,
	datad => \s_sortedn2[0]~1_combout\,
	combout => \s_sortedn2~7_combout\);

-- Location: FF_X76_Y71_N3
\s_sortedn2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn2~7_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn2(2));

-- Location: LCCOMB_X77_Y70_N0
\s_sortedn2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn2~8_combout\ = (\s_c1~q\ & ((\n1[3]~input_o\) # ((\s_sortedn2[0]~1_combout\)))) # (!\s_c1~q\ & (((!\s_sortedn2[0]~1_combout\ & \n2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_c1~q\,
	datab => \n1[3]~input_o\,
	datac => \s_sortedn2[0]~1_combout\,
	datad => \n2[3]~input_o\,
	combout => \s_sortedn2~8_combout\);

-- Location: LCCOMB_X77_Y70_N28
\s_sortedn2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn2~9_combout\ = (\s_sortedn2~8_combout\ & (((\n6[3]~input_o\) # (!\s_sortedn2[0]~1_combout\)))) # (!\s_sortedn2~8_combout\ & (\n5[3]~input_o\ & (\s_sortedn2[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_sortedn2~8_combout\,
	datab => \n5[3]~input_o\,
	datac => \s_sortedn2[0]~1_combout\,
	datad => \n6[3]~input_o\,
	combout => \s_sortedn2~9_combout\);

-- Location: FF_X77_Y70_N29
\s_sortedn2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn2~9_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn2(3));

-- Location: LCCOMB_X79_Y70_N22
\s_c2[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c2[1]~2_combout\ = !\s_c1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_c1~q\,
	combout => \s_c2[1]~2_combout\);

-- Location: FF_X79_Y70_N23
\s_c2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_c2[1]~2_combout\,
	ena => \s_c1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_c2(1));

-- Location: LCCOMB_X77_Y70_N8
\s_c2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c2~0_combout\ = (\inc_dec~input_o\ & (((\s_c1~q\)) # (!\LessThan18~2_combout\))) # (!\inc_dec~input_o\ & (((!\s_c1~q\ & !\LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_dec~input_o\,
	datab => \LessThan18~2_combout\,
	datac => \s_c1~q\,
	datad => \LessThan2~2_combout\,
	combout => \s_c2~0_combout\);

-- Location: LCCOMB_X79_Y70_N24
\s_c2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c2~1_combout\ = (\s_c1~q\ & ((\s_c2~0_combout\ & (!\LessThan17~2_combout\)) # (!\s_c2~0_combout\ & ((!\LessThan1~2_combout\))))) # (!\s_c1~q\ & (((\s_c2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan17~2_combout\,
	datab => \s_c1~q\,
	datac => \s_c2~0_combout\,
	datad => \LessThan1~2_combout\,
	combout => \s_c2~1_combout\);

-- Location: FF_X79_Y70_N25
\s_c2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_c2~1_combout\,
	ena => \s_c1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_c2(0));

-- Location: LCCOMB_X80_Y70_N6
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!s_c2(1) & !s_c2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_c2(1),
	datad => s_c2(0),
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X81_Y73_N8
\n7[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n7(3),
	o => \n7[3]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\n7[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n7(2),
	o => \n7[2]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\n7[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n7(1),
	o => \n7[1]~input_o\);

-- Location: IOIBUF_X87_Y73_N1
\n7[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n7(0),
	o => \n7[0]~input_o\);

-- Location: LCCOMB_X80_Y70_N14
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (\n1[1]~input_o\ & (((!\n7[0]~input_o\ & \n1[0]~input_o\)) # (!\n7[1]~input_o\))) # (!\n1[1]~input_o\ & (!\n7[1]~input_o\ & (!\n7[0]~input_o\ & \n1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1[1]~input_o\,
	datab => \n7[1]~input_o\,
	datac => \n7[0]~input_o\,
	datad => \n1[0]~input_o\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X80_Y70_N4
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (\n1[2]~input_o\ & ((\LessThan3~0_combout\) # (!\n7[2]~input_o\))) # (!\n1[2]~input_o\ & (!\n7[2]~input_o\ & \LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1[2]~input_o\,
	datab => \n7[2]~input_o\,
	datac => \LessThan3~0_combout\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X80_Y70_N30
\LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (\n7[3]~input_o\ & (\LessThan3~1_combout\ & \n1[3]~input_o\)) # (!\n7[3]~input_o\ & ((\LessThan3~1_combout\) # (\n1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n7[3]~input_o\,
	datac => \LessThan3~1_combout\,
	datad => \n1[3]~input_o\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X80_Y70_N0
\LessThan19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan19~0_combout\ = (\n1[1]~input_o\ & (\n7[1]~input_o\ & (\n7[0]~input_o\ & !\n1[0]~input_o\))) # (!\n1[1]~input_o\ & ((\n7[1]~input_o\) # ((\n7[0]~input_o\ & !\n1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1[1]~input_o\,
	datab => \n7[1]~input_o\,
	datac => \n7[0]~input_o\,
	datad => \n1[0]~input_o\,
	combout => \LessThan19~0_combout\);

-- Location: LCCOMB_X80_Y70_N26
\LessThan19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan19~1_combout\ = (\n1[2]~input_o\ & (\LessThan19~0_combout\ & \n7[2]~input_o\)) # (!\n1[2]~input_o\ & ((\LessThan19~0_combout\) # (\n7[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1[2]~input_o\,
	datab => \LessThan19~0_combout\,
	datac => \n7[2]~input_o\,
	combout => \LessThan19~1_combout\);

-- Location: LCCOMB_X80_Y70_N20
\LessThan19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan19~2_combout\ = (\n1[3]~input_o\ & (\LessThan19~1_combout\ & \n7[3]~input_o\)) # (!\n1[3]~input_o\ & ((\LessThan19~1_combout\) # (\n7[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1[3]~input_o\,
	datac => \LessThan19~1_combout\,
	datad => \n7[3]~input_o\,
	combout => \LessThan19~2_combout\);

-- Location: LCCOMB_X80_Y70_N8
\s_sortedn3[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn3[0]~8_combout\ = (\inc_dec~input_o\ & ((\LessThan19~2_combout\))) # (!\inc_dec~input_o\ & (\LessThan3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_dec~input_o\,
	datac => \LessThan3~2_combout\,
	datad => \LessThan19~2_combout\,
	combout => \s_sortedn3[0]~8_combout\);

-- Location: LCCOMB_X80_Y70_N10
\s_sortedn3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn3~9_combout\ = (\Equal0~0_combout\ & ((\s_sortedn3[0]~8_combout\ & (\n7[0]~input_o\)) # (!\s_sortedn3[0]~8_combout\ & ((\n1[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s_sortedn3[0]~8_combout\,
	datac => \n7[0]~input_o\,
	datad => \n1[0]~input_o\,
	combout => \s_sortedn3~9_combout\);

-- Location: IOIBUF_X89_Y73_N8
\n3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n3(0),
	o => \n3[0]~input_o\);

-- Location: LCCOMB_X79_Y70_N20
\s_sortedn3[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn3[0]~10_combout\ = s_c2(1) $ (!s_c2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_c2(1),
	datad => s_c2(0),
	combout => \s_sortedn3[0]~10_combout\);

-- Location: LCCOMB_X76_Y69_N8
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (\n6[1]~input_o\ & (\n2[1]~input_o\ & (!\n6[0]~input_o\ & \n2[0]~input_o\))) # (!\n6[1]~input_o\ & ((\n2[1]~input_o\) # ((!\n6[0]~input_o\ & \n2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n6[1]~input_o\,
	datab => \n2[1]~input_o\,
	datac => \n6[0]~input_o\,
	datad => \n2[0]~input_o\,
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X76_Y69_N30
\LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (\n6[2]~input_o\ & (\LessThan4~0_combout\ & \n2[2]~input_o\)) # (!\n6[2]~input_o\ & ((\LessThan4~0_combout\) # (\n2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n6[2]~input_o\,
	datac => \LessThan4~0_combout\,
	datad => \n2[2]~input_o\,
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X76_Y69_N20
\LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = (\LessThan4~1_combout\ & ((\n2[3]~input_o\) # (!\n6[3]~input_o\))) # (!\LessThan4~1_combout\ & (\n2[3]~input_o\ & !\n6[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~1_combout\,
	datab => \n2[3]~input_o\,
	datac => \n6[3]~input_o\,
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X76_Y69_N22
\LessThan20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan20~0_combout\ = (\n6[1]~input_o\ & (((\n6[0]~input_o\ & !\n2[0]~input_o\)) # (!\n2[1]~input_o\))) # (!\n6[1]~input_o\ & (!\n2[1]~input_o\ & (\n6[0]~input_o\ & !\n2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n6[1]~input_o\,
	datab => \n2[1]~input_o\,
	datac => \n6[0]~input_o\,
	datad => \n2[0]~input_o\,
	combout => \LessThan20~0_combout\);

-- Location: LCCOMB_X76_Y69_N12
\LessThan20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan20~1_combout\ = (\n6[2]~input_o\ & ((\LessThan20~0_combout\) # (!\n2[2]~input_o\))) # (!\n6[2]~input_o\ & (\LessThan20~0_combout\ & !\n2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n6[2]~input_o\,
	datac => \LessThan20~0_combout\,
	datad => \n2[2]~input_o\,
	combout => \LessThan20~1_combout\);

-- Location: LCCOMB_X76_Y69_N10
\LessThan20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan20~2_combout\ = (\LessThan20~1_combout\ & ((\n6[3]~input_o\) # (!\n2[3]~input_o\))) # (!\LessThan20~1_combout\ & (!\n2[3]~input_o\ & \n6[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan20~1_combout\,
	datab => \n2[3]~input_o\,
	datac => \n6[3]~input_o\,
	combout => \LessThan20~2_combout\);

-- Location: IOIBUF_X81_Y73_N15
\n3[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n3(3),
	o => \n3[3]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\n3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n3(1),
	o => \n3[1]~input_o\);

-- Location: LCCOMB_X75_Y71_N6
\LessThan21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan21~0_combout\ = (\n3[1]~input_o\ & (!\n3[0]~input_o\ & (\n5[1]~input_o\ & \n5[0]~input_o\))) # (!\n3[1]~input_o\ & ((\n5[1]~input_o\) # ((!\n3[0]~input_o\ & \n5[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3[1]~input_o\,
	datab => \n3[0]~input_o\,
	datac => \n5[1]~input_o\,
	datad => \n5[0]~input_o\,
	combout => \LessThan21~0_combout\);

-- Location: IOIBUF_X72_Y73_N8
\n3[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n3(2),
	o => \n3[2]~input_o\);

-- Location: LCCOMB_X75_Y71_N16
\LessThan21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan21~1_combout\ = (\LessThan21~0_combout\ & ((\n5[2]~input_o\) # (!\n3[2]~input_o\))) # (!\LessThan21~0_combout\ & (\n5[2]~input_o\ & !\n3[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan21~0_combout\,
	datab => \n5[2]~input_o\,
	datac => \n3[2]~input_o\,
	combout => \LessThan21~1_combout\);

-- Location: LCCOMB_X75_Y71_N18
\LessThan21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan21~2_combout\ = (\n3[3]~input_o\ & (\LessThan21~1_combout\ & \n5[3]~input_o\)) # (!\n3[3]~input_o\ & ((\LessThan21~1_combout\) # (\n5[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3[3]~input_o\,
	datab => \LessThan21~1_combout\,
	datad => \n5[3]~input_o\,
	combout => \LessThan21~2_combout\);

-- Location: LCCOMB_X75_Y71_N24
\LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (\n3[1]~input_o\ & (((\n3[0]~input_o\ & !\n5[0]~input_o\)) # (!\n5[1]~input_o\))) # (!\n3[1]~input_o\ & (\n3[0]~input_o\ & (!\n5[1]~input_o\ & !\n5[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3[1]~input_o\,
	datab => \n3[0]~input_o\,
	datac => \n5[1]~input_o\,
	datad => \n5[0]~input_o\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X75_Y71_N26
\LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (\n5[2]~input_o\ & (\n3[2]~input_o\ & \LessThan5~0_combout\)) # (!\n5[2]~input_o\ & ((\n3[2]~input_o\) # (\LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n5[2]~input_o\,
	datac => \n3[2]~input_o\,
	datad => \LessThan5~0_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X75_Y71_N28
\LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (\n3[3]~input_o\ & ((\LessThan5~1_combout\) # (!\n5[3]~input_o\))) # (!\n3[3]~input_o\ & (\LessThan5~1_combout\ & !\n5[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3[3]~input_o\,
	datac => \LessThan5~1_combout\,
	datad => \n5[3]~input_o\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X79_Y70_N10
\s_sortedn3[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn3[0]~11_combout\ = (\inc_dec~input_o\ & ((\LessThan21~2_combout\) # ((!\s_sortedn3[0]~10_combout\)))) # (!\inc_dec~input_o\ & (((\LessThan5~2_combout\ & \s_sortedn3[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan21~2_combout\,
	datab => \inc_dec~input_o\,
	datac => \LessThan5~2_combout\,
	datad => \s_sortedn3[0]~10_combout\,
	combout => \s_sortedn3[0]~11_combout\);

-- Location: LCCOMB_X79_Y70_N12
\s_sortedn3[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn3[0]~12_combout\ = (\s_sortedn3[0]~10_combout\ & (((\s_sortedn3[0]~11_combout\)))) # (!\s_sortedn3[0]~10_combout\ & ((\s_sortedn3[0]~11_combout\ & ((\LessThan20~2_combout\))) # (!\s_sortedn3[0]~11_combout\ & (\LessThan4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~2_combout\,
	datab => \s_sortedn3[0]~10_combout\,
	datac => \LessThan20~2_combout\,
	datad => \s_sortedn3[0]~11_combout\,
	combout => \s_sortedn3[0]~12_combout\);

-- Location: LCCOMB_X79_Y70_N30
\s_sortedn3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn3~13_combout\ = (\s_sortedn3[0]~10_combout\ & (\n3[0]~input_o\ & ((!\s_sortedn3[0]~12_combout\)))) # (!\s_sortedn3[0]~10_combout\ & (((\n2[0]~input_o\) # (\s_sortedn3[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3[0]~input_o\,
	datab => \s_sortedn3[0]~10_combout\,
	datac => \n2[0]~input_o\,
	datad => \s_sortedn3[0]~12_combout\,
	combout => \s_sortedn3~13_combout\);

-- Location: LCCOMB_X79_Y70_N16
\s_sortedn3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn3~14_combout\ = (\s_sortedn3~13_combout\ & ((\n6[0]~input_o\) # ((!\s_sortedn3[0]~12_combout\)))) # (!\s_sortedn3~13_combout\ & (((\n5[0]~input_o\ & \s_sortedn3[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n6[0]~input_o\,
	datab => \n5[0]~input_o\,
	datac => \s_sortedn3~13_combout\,
	datad => \s_sortedn3[0]~12_combout\,
	combout => \s_sortedn3~14_combout\);

-- Location: LCCOMB_X80_Y70_N2
\s_sortedn3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn3~24_combout\ = (\s_sortedn3~9_combout\) # ((\s_sortedn3~14_combout\ & ((s_c2(0)) # (s_c2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_sortedn3~9_combout\,
	datab => s_c2(0),
	datac => \s_sortedn3~14_combout\,
	datad => s_c2(1),
	combout => \s_sortedn3~24_combout\);

-- Location: FF_X80_Y70_N3
\s_sortedn3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn3~24_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn3(0));

-- Location: LCCOMB_X80_Y70_N12
\s_sortedn3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn3~15_combout\ = (\Equal0~0_combout\ & ((\s_sortedn3[0]~8_combout\ & ((\n7[1]~input_o\))) # (!\s_sortedn3[0]~8_combout\ & (\n1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1[1]~input_o\,
	datab => \n7[1]~input_o\,
	datac => \s_sortedn3[0]~8_combout\,
	datad => \Equal0~0_combout\,
	combout => \s_sortedn3~15_combout\);

-- Location: LCCOMB_X79_Y70_N26
\s_sortedn3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn3~16_combout\ = (\s_sortedn3[0]~10_combout\ & (((\n3[1]~input_o\ & !\s_sortedn3[0]~12_combout\)))) # (!\s_sortedn3[0]~10_combout\ & ((\n2[1]~input_o\) # ((\s_sortedn3[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2[1]~input_o\,
	datab => \s_sortedn3[0]~10_combout\,
	datac => \n3[1]~input_o\,
	datad => \s_sortedn3[0]~12_combout\,
	combout => \s_sortedn3~16_combout\);

-- Location: LCCOMB_X79_Y70_N28
\s_sortedn3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn3~17_combout\ = (\s_sortedn3~16_combout\ & (((\n6[1]~input_o\) # (!\s_sortedn3[0]~12_combout\)))) # (!\s_sortedn3~16_combout\ & (\n5[1]~input_o\ & ((\s_sortedn3[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n5[1]~input_o\,
	datab => \n6[1]~input_o\,
	datac => \s_sortedn3~16_combout\,
	datad => \s_sortedn3[0]~12_combout\,
	combout => \s_sortedn3~17_combout\);

-- Location: LCCOMB_X80_Y70_N28
\s_sortedn3~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn3~25_combout\ = (\s_sortedn3~15_combout\) # ((\s_sortedn3~17_combout\ & ((s_c2(1)) # (s_c2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_sortedn3~15_combout\,
	datab => s_c2(1),
	datac => s_c2(0),
	datad => \s_sortedn3~17_combout\,
	combout => \s_sortedn3~25_combout\);

-- Location: FF_X80_Y70_N29
\s_sortedn3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn3~25_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn3(1));

-- Location: LCCOMB_X79_Y70_N6
\s_sortedn3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn3~19_combout\ = (\s_sortedn3[0]~10_combout\ & (((\n3[2]~input_o\ & !\s_sortedn3[0]~12_combout\)))) # (!\s_sortedn3[0]~10_combout\ & ((\n2[2]~input_o\) # ((\s_sortedn3[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2[2]~input_o\,
	datab => \s_sortedn3[0]~10_combout\,
	datac => \n3[2]~input_o\,
	datad => \s_sortedn3[0]~12_combout\,
	combout => \s_sortedn3~19_combout\);

-- Location: LCCOMB_X79_Y70_N4
\s_sortedn3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn3~20_combout\ = (\s_sortedn3[0]~12_combout\ & ((\s_sortedn3~19_combout\ & ((\n6[2]~input_o\))) # (!\s_sortedn3~19_combout\ & (\n5[2]~input_o\)))) # (!\s_sortedn3[0]~12_combout\ & (((\s_sortedn3~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_sortedn3[0]~12_combout\,
	datab => \n5[2]~input_o\,
	datac => \n6[2]~input_o\,
	datad => \s_sortedn3~19_combout\,
	combout => \s_sortedn3~20_combout\);

-- Location: LCCOMB_X80_Y70_N22
\s_sortedn3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn3~18_combout\ = (\Equal0~0_combout\ & ((\s_sortedn3[0]~8_combout\ & ((\n7[2]~input_o\))) # (!\s_sortedn3[0]~8_combout\ & (\n1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1[2]~input_o\,
	datab => \n7[2]~input_o\,
	datac => \s_sortedn3[0]~8_combout\,
	datad => \Equal0~0_combout\,
	combout => \s_sortedn3~18_combout\);

-- Location: LCCOMB_X79_Y70_N0
\s_sortedn3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn3~26_combout\ = (\s_sortedn3~18_combout\) # ((\s_sortedn3~20_combout\ & ((s_c2(1)) # (s_c2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_c2(1),
	datab => s_c2(0),
	datac => \s_sortedn3~20_combout\,
	datad => \s_sortedn3~18_combout\,
	combout => \s_sortedn3~26_combout\);

-- Location: FF_X79_Y70_N1
\s_sortedn3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn3~26_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn3(2));

-- Location: LCCOMB_X79_Y70_N18
\s_sortedn3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn3~22_combout\ = (\s_sortedn3[0]~12_combout\ & ((\n5[3]~input_o\) # ((!\s_sortedn3[0]~10_combout\)))) # (!\s_sortedn3[0]~12_combout\ & (((\n3[3]~input_o\ & \s_sortedn3[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_sortedn3[0]~12_combout\,
	datab => \n5[3]~input_o\,
	datac => \n3[3]~input_o\,
	datad => \s_sortedn3[0]~10_combout\,
	combout => \s_sortedn3~22_combout\);

-- Location: LCCOMB_X79_Y70_N8
\s_sortedn3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn3~23_combout\ = (\s_sortedn3[0]~10_combout\ & (((\s_sortedn3~22_combout\)))) # (!\s_sortedn3[0]~10_combout\ & ((\s_sortedn3~22_combout\ & (\n6[3]~input_o\)) # (!\s_sortedn3~22_combout\ & ((\n2[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n6[3]~input_o\,
	datab => \s_sortedn3[0]~10_combout\,
	datac => \n2[3]~input_o\,
	datad => \s_sortedn3~22_combout\,
	combout => \s_sortedn3~23_combout\);

-- Location: LCCOMB_X80_Y70_N16
\s_sortedn3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn3~21_combout\ = (\Equal0~0_combout\ & ((\s_sortedn3[0]~8_combout\ & ((\n7[3]~input_o\))) # (!\s_sortedn3[0]~8_combout\ & (\n1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1[3]~input_o\,
	datab => \n7[3]~input_o\,
	datac => \s_sortedn3[0]~8_combout\,
	datad => \Equal0~0_combout\,
	combout => \s_sortedn3~21_combout\);

-- Location: LCCOMB_X79_Y70_N2
\s_sortedn3~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn3~27_combout\ = (\s_sortedn3~21_combout\) # ((\s_sortedn3~23_combout\ & ((s_c2(1)) # (s_c2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_c2(1),
	datab => s_c2(0),
	datac => \s_sortedn3~23_combout\,
	datad => \s_sortedn3~21_combout\,
	combout => \s_sortedn3~27_combout\);

-- Location: FF_X79_Y70_N3
\s_sortedn3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn3~27_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn3(3));

-- Location: IOIBUF_X60_Y73_N22
\n8[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n8(1),
	o => \n8[1]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\n8[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n8(0),
	o => \n8[0]~input_o\);

-- Location: LCCOMB_X75_Y72_N18
\LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (\n1[1]~input_o\ & (((!\n8[0]~input_o\ & \n1[0]~input_o\)) # (!\n8[1]~input_o\))) # (!\n1[1]~input_o\ & (!\n8[1]~input_o\ & (!\n8[0]~input_o\ & \n1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n1[1]~input_o\,
	datab => \n8[1]~input_o\,
	datac => \n8[0]~input_o\,
	datad => \n1[0]~input_o\,
	combout => \LessThan6~0_combout\);

-- Location: IOIBUF_X65_Y73_N15
\n8[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n8(2),
	o => \n8[2]~input_o\);

-- Location: LCCOMB_X74_Y69_N26
\LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = (\LessThan6~0_combout\ & ((\n1[2]~input_o\) # (!\n8[2]~input_o\))) # (!\LessThan6~0_combout\ & (!\n8[2]~input_o\ & \n1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan6~0_combout\,
	datac => \n8[2]~input_o\,
	datad => \n1[2]~input_o\,
	combout => \LessThan6~1_combout\);

-- Location: IOIBUF_X62_Y73_N22
\n8[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n8(3),
	o => \n8[3]~input_o\);

-- Location: LCCOMB_X74_Y69_N4
\LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = (\LessThan6~1_combout\ & ((\n1[3]~input_o\) # (!\n8[3]~input_o\))) # (!\LessThan6~1_combout\ & (!\n8[3]~input_o\ & \n1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~1_combout\,
	datac => \n8[3]~input_o\,
	datad => \n1[3]~input_o\,
	combout => \LessThan6~2_combout\);

-- Location: LCCOMB_X74_Y69_N12
\LessThan22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan22~0_combout\ = (\n8[1]~input_o\ & (((\n8[0]~input_o\ & !\n1[0]~input_o\)) # (!\n1[1]~input_o\))) # (!\n8[1]~input_o\ & (\n8[0]~input_o\ & (!\n1[0]~input_o\ & !\n1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n8[1]~input_o\,
	datab => \n8[0]~input_o\,
	datac => \n1[0]~input_o\,
	datad => \n1[1]~input_o\,
	combout => \LessThan22~0_combout\);

-- Location: LCCOMB_X74_Y69_N22
\LessThan22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan22~1_combout\ = (\LessThan22~0_combout\ & ((\n8[2]~input_o\) # (!\n1[2]~input_o\))) # (!\LessThan22~0_combout\ & (\n8[2]~input_o\ & !\n1[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan22~0_combout\,
	datac => \n8[2]~input_o\,
	datad => \n1[2]~input_o\,
	combout => \LessThan22~1_combout\);

-- Location: LCCOMB_X74_Y69_N24
\LessThan22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan22~2_combout\ = (\LessThan22~1_combout\ & ((\n8[3]~input_o\) # (!\n1[3]~input_o\))) # (!\LessThan22~1_combout\ & (\n8[3]~input_o\ & !\n1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan22~1_combout\,
	datac => \n8[3]~input_o\,
	datad => \n1[3]~input_o\,
	combout => \LessThan22~2_combout\);

-- Location: LCCOMB_X76_Y70_N18
\s_c3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c3~0_combout\ = (\inc_dec~input_o\ & ((s_c2(0) $ (!s_c2(1))))) # (!\inc_dec~input_o\ & ((s_c2(0) $ (!s_c2(1))) # (!\LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_dec~input_o\,
	datab => \LessThan4~2_combout\,
	datac => s_c2(0),
	datad => s_c2(1),
	combout => \s_c3~0_combout\);

-- Location: LCCOMB_X73_Y70_N4
\s_c3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c3~1_combout\ = (!\Equal0~0_combout\ & ((\s_c3~0_combout\) # ((\inc_dec~input_o\ & !\LessThan20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \inc_dec~input_o\,
	datac => \s_c3~0_combout\,
	datad => \LessThan20~2_combout\,
	combout => \s_c3~1_combout\);

-- Location: FF_X73_Y70_N5
\s_c3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_c3~1_combout\,
	ena => \s_c1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_c3(1));

-- Location: LCCOMB_X79_Y70_N14
\s_c3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c3~2_combout\ = (\LessThan4~2_combout\ & ((s_c2(1) $ (s_c2(0))) # (!\LessThan5~2_combout\))) # (!\LessThan4~2_combout\ & (!\LessThan5~2_combout\ & (s_c2(1) $ (!s_c2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~2_combout\,
	datab => \LessThan5~2_combout\,
	datac => s_c2(1),
	datad => s_c2(0),
	combout => \s_c3~2_combout\);

-- Location: LCCOMB_X76_Y70_N0
\s_c3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c3~4_combout\ = (\LessThan21~2_combout\ & (\LessThan20~2_combout\ & (s_c2(0) $ (s_c2(1))))) # (!\LessThan21~2_combout\ & ((\LessThan20~2_combout\) # (s_c2(0) $ (!s_c2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan21~2_combout\,
	datab => \LessThan20~2_combout\,
	datac => s_c2(0),
	datad => s_c2(1),
	combout => \s_c3~4_combout\);

-- Location: LCCOMB_X80_Y70_N18
\s_c3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c3~3_combout\ = (\inc_dec~input_o\ & (((!\Equal0~0_combout\)) # (!\LessThan19~2_combout\))) # (!\inc_dec~input_o\ & (((!\LessThan3~2_combout\ & \Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_dec~input_o\,
	datab => \LessThan19~2_combout\,
	datac => \LessThan3~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \s_c3~3_combout\);

-- Location: LCCOMB_X73_Y70_N2
\s_c3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c3~5_combout\ = (\Equal0~0_combout\ & (((\s_c3~3_combout\)))) # (!\Equal0~0_combout\ & ((\s_c3~3_combout\ & ((\s_c3~4_combout\))) # (!\s_c3~3_combout\ & (\s_c3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_c3~2_combout\,
	datab => \s_c3~4_combout\,
	datac => \Equal0~0_combout\,
	datad => \s_c3~3_combout\,
	combout => \s_c3~5_combout\);

-- Location: FF_X73_Y70_N3
\s_c3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_c3~5_combout\,
	ena => \s_c1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_c3(0));

-- Location: LCCOMB_X73_Y70_N6
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (s_c3(1)) # (s_c3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_c3(1),
	datad => s_c3(0),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X73_Y69_N4
\s_sortedn4[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4[2]~8_combout\ = (!\Equal3~0_combout\ & ((\inc_dec~input_o\ & ((\LessThan22~2_combout\))) # (!\inc_dec~input_o\ & (\LessThan6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~2_combout\,
	datab => \LessThan22~2_combout\,
	datac => \inc_dec~input_o\,
	datad => \Equal3~0_combout\,
	combout => \s_sortedn4[2]~8_combout\);

-- Location: LCCOMB_X75_Y69_N30
\LessThan23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan23~0_combout\ = (\n7[1]~input_o\ & (((\n7[0]~input_o\ & !\n2[0]~input_o\)) # (!\n2[1]~input_o\))) # (!\n7[1]~input_o\ & (!\n2[1]~input_o\ & (\n7[0]~input_o\ & !\n2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n7[1]~input_o\,
	datab => \n2[1]~input_o\,
	datac => \n7[0]~input_o\,
	datad => \n2[0]~input_o\,
	combout => \LessThan23~0_combout\);

-- Location: LCCOMB_X75_Y69_N4
\LessThan23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan23~1_combout\ = (\n2[2]~input_o\ & (\LessThan23~0_combout\ & \n7[2]~input_o\)) # (!\n2[2]~input_o\ & ((\LessThan23~0_combout\) # (\n7[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n2[2]~input_o\,
	datac => \LessThan23~0_combout\,
	datad => \n7[2]~input_o\,
	combout => \LessThan23~1_combout\);

-- Location: LCCOMB_X74_Y69_N0
\LessThan23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan23~2_combout\ = (\LessThan23~1_combout\ & ((\n7[3]~input_o\) # (!\n2[3]~input_o\))) # (!\LessThan23~1_combout\ & (!\n2[3]~input_o\ & \n7[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan23~1_combout\,
	datac => \n2[3]~input_o\,
	datad => \n7[3]~input_o\,
	combout => \LessThan23~2_combout\);

-- Location: LCCOMB_X75_Y69_N6
\LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (\n7[1]~input_o\ & (\n2[1]~input_o\ & (!\n7[0]~input_o\ & \n2[0]~input_o\))) # (!\n7[1]~input_o\ & ((\n2[1]~input_o\) # ((!\n7[0]~input_o\ & \n2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n7[1]~input_o\,
	datab => \n2[1]~input_o\,
	datac => \n7[0]~input_o\,
	datad => \n2[0]~input_o\,
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X75_Y69_N8
\LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (\LessThan7~0_combout\ & ((\n2[2]~input_o\) # (!\n7[2]~input_o\))) # (!\LessThan7~0_combout\ & (\n2[2]~input_o\ & !\n7[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~0_combout\,
	datab => \n2[2]~input_o\,
	datad => \n7[2]~input_o\,
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X74_Y69_N18
\LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = (\LessThan7~1_combout\ & ((\n2[3]~input_o\) # (!\n7[3]~input_o\))) # (!\LessThan7~1_combout\ & (\n2[3]~input_o\ & !\n7[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan7~1_combout\,
	datac => \n2[3]~input_o\,
	datad => \n7[3]~input_o\,
	combout => \LessThan7~2_combout\);

-- Location: LCCOMB_X73_Y70_N24
\s_sortedn4[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4[2]~4_combout\ = (s_c3(0) & ((\inc_dec~input_o\ & (\LessThan23~2_combout\)) # (!\inc_dec~input_o\ & ((\LessThan7~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan23~2_combout\,
	datab => \LessThan7~2_combout\,
	datac => \inc_dec~input_o\,
	datad => s_c3(0),
	combout => \s_sortedn4[2]~4_combout\);

-- Location: LCCOMB_X73_Y70_N22
\s_sortedn4[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4[2]~5_combout\ = (s_c3(1)) # (\s_sortedn4[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_c3(1),
	datad => \s_sortedn4[2]~4_combout\,
	combout => \s_sortedn4[2]~5_combout\);

-- Location: LCCOMB_X73_Y70_N12
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (s_c3(0) & !s_c3(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_c3(0),
	datad => s_c3(1),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X73_Y71_N8
\s_sortedn4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4~6_combout\ = (\Equal4~0_combout\ & ((\n2[0]~input_o\) # ((\s_sortedn4[2]~5_combout\)))) # (!\Equal4~0_combout\ & (((\n1[0]~input_o\ & !\s_sortedn4[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2[0]~input_o\,
	datab => \n1[0]~input_o\,
	datac => \Equal4~0_combout\,
	datad => \s_sortedn4[2]~5_combout\,
	combout => \s_sortedn4~6_combout\);

-- Location: LCCOMB_X75_Y72_N24
\LessThan24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan24~0_combout\ = (\n3[1]~input_o\ & (\n6[1]~input_o\ & (\n6[0]~input_o\ & !\n3[0]~input_o\))) # (!\n3[1]~input_o\ & ((\n6[1]~input_o\) # ((\n6[0]~input_o\ & !\n3[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3[1]~input_o\,
	datab => \n6[1]~input_o\,
	datac => \n6[0]~input_o\,
	datad => \n3[0]~input_o\,
	combout => \LessThan24~0_combout\);

-- Location: LCCOMB_X74_Y72_N8
\LessThan24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan24~1_combout\ = (\n6[2]~input_o\ & ((\LessThan24~0_combout\) # (!\n3[2]~input_o\))) # (!\n6[2]~input_o\ & (!\n3[2]~input_o\ & \LessThan24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n6[2]~input_o\,
	datac => \n3[2]~input_o\,
	datad => \LessThan24~0_combout\,
	combout => \LessThan24~1_combout\);

-- Location: LCCOMB_X74_Y70_N26
\LessThan24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan24~2_combout\ = (\LessThan24~1_combout\ & ((\n6[3]~input_o\) # (!\n3[3]~input_o\))) # (!\LessThan24~1_combout\ & (!\n3[3]~input_o\ & \n6[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan24~1_combout\,
	datac => \n3[3]~input_o\,
	datad => \n6[3]~input_o\,
	combout => \LessThan24~2_combout\);

-- Location: LCCOMB_X75_Y71_N10
\LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (\n3[1]~input_o\ & (((!\n6[0]~input_o\ & \n3[0]~input_o\)) # (!\n6[1]~input_o\))) # (!\n3[1]~input_o\ & (!\n6[0]~input_o\ & (!\n6[1]~input_o\ & \n3[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3[1]~input_o\,
	datab => \n6[0]~input_o\,
	datac => \n6[1]~input_o\,
	datad => \n3[0]~input_o\,
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X75_Y71_N4
\LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = (\n3[2]~input_o\ & ((\LessThan8~0_combout\) # (!\n6[2]~input_o\))) # (!\n3[2]~input_o\ & (!\n6[2]~input_o\ & \LessThan8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3[2]~input_o\,
	datac => \n6[2]~input_o\,
	datad => \LessThan8~0_combout\,
	combout => \LessThan8~1_combout\);

-- Location: LCCOMB_X74_Y71_N30
\LessThan8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan8~2_combout\ = (\LessThan8~1_combout\ & ((\n3[3]~input_o\) # (!\n6[3]~input_o\))) # (!\LessThan8~1_combout\ & (!\n6[3]~input_o\ & \n3[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~1_combout\,
	datac => \n6[3]~input_o\,
	datad => \n3[3]~input_o\,
	combout => \LessThan8~2_combout\);

-- Location: LCCOMB_X73_Y70_N20
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (s_c3(1) & !s_c3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_c3(1),
	datad => s_c3(0),
	combout => \Equal5~0_combout\);

-- Location: IOIBUF_X67_Y73_N22
\n4[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n4(3),
	o => \n4[3]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\n4[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n4(2),
	o => \n4[2]~input_o\);

-- Location: LCCOMB_X75_Y69_N10
\LessThan25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan25~2_combout\ = (\n4[3]~input_o\ & (\n5[3]~input_o\ & (\n4[2]~input_o\ $ (!\n5[2]~input_o\)))) # (!\n4[3]~input_o\ & (!\n5[3]~input_o\ & (\n4[2]~input_o\ $ (!\n5[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n4[3]~input_o\,
	datab => \n4[2]~input_o\,
	datac => \n5[2]~input_o\,
	datad => \n5[3]~input_o\,
	combout => \LessThan25~2_combout\);

-- Location: LCCOMB_X75_Y69_N28
\LessThan25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan25~0_combout\ = (\n4[3]~input_o\ & (!\n4[2]~input_o\ & (\n5[2]~input_o\ & \n5[3]~input_o\))) # (!\n4[3]~input_o\ & ((\n5[3]~input_o\) # ((!\n4[2]~input_o\ & \n5[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n4[3]~input_o\,
	datab => \n4[2]~input_o\,
	datac => \n5[2]~input_o\,
	datad => \n5[3]~input_o\,
	combout => \LessThan25~0_combout\);

-- Location: IOIBUF_X67_Y73_N8
\n4[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n4(1),
	o => \n4[1]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\n4[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n4(0),
	o => \n4[0]~input_o\);

-- Location: LCCOMB_X76_Y69_N16
\LessThan25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan25~1_combout\ = (\n4[1]~input_o\ & (!\n4[0]~input_o\ & (\n5[0]~input_o\ & \n5[1]~input_o\))) # (!\n4[1]~input_o\ & ((\n5[1]~input_o\) # ((!\n4[0]~input_o\ & \n5[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n4[1]~input_o\,
	datab => \n4[0]~input_o\,
	datac => \n5[0]~input_o\,
	datad => \n5[1]~input_o\,
	combout => \LessThan25~1_combout\);

-- Location: LCCOMB_X75_Y69_N20
\LessThan25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan25~3_combout\ = (\LessThan25~0_combout\) # ((\LessThan25~2_combout\ & \LessThan25~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan25~2_combout\,
	datab => \LessThan25~0_combout\,
	datad => \LessThan25~1_combout\,
	combout => \LessThan25~3_combout\);

-- Location: LCCOMB_X75_Y69_N18
\LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (\n4[3]~input_o\ & (((\n4[2]~input_o\ & !\n5[2]~input_o\)) # (!\n5[3]~input_o\))) # (!\n4[3]~input_o\ & (\n4[2]~input_o\ & (!\n5[2]~input_o\ & !\n5[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n4[3]~input_o\,
	datab => \n4[2]~input_o\,
	datac => \n5[2]~input_o\,
	datad => \n5[3]~input_o\,
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X76_Y69_N26
\LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~1_combout\ = (\n4[1]~input_o\ & (((\n4[0]~input_o\ & !\n5[0]~input_o\)) # (!\n5[1]~input_o\))) # (!\n4[1]~input_o\ & (\n4[0]~input_o\ & (!\n5[0]~input_o\ & !\n5[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n4[1]~input_o\,
	datab => \n4[0]~input_o\,
	datac => \n5[0]~input_o\,
	datad => \n5[1]~input_o\,
	combout => \LessThan9~1_combout\);

-- Location: LCCOMB_X75_Y69_N0
\LessThan9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~2_combout\ = (\LessThan9~0_combout\) # ((\LessThan25~2_combout\ & \LessThan9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan25~2_combout\,
	datab => \LessThan9~0_combout\,
	datad => \LessThan9~1_combout\,
	combout => \LessThan9~2_combout\);

-- Location: LCCOMB_X73_Y70_N26
\s_sortedn4[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4[2]~0_combout\ = (\inc_dec~input_o\ & ((\LessThan25~3_combout\) # ((\Equal5~0_combout\)))) # (!\inc_dec~input_o\ & (((\LessThan9~2_combout\ & !\Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan25~3_combout\,
	datab => \LessThan9~2_combout\,
	datac => \inc_dec~input_o\,
	datad => \Equal5~0_combout\,
	combout => \s_sortedn4[2]~0_combout\);

-- Location: LCCOMB_X72_Y70_N2
\s_sortedn4[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4[2]~1_combout\ = (\Equal5~0_combout\ & ((\s_sortedn4[2]~0_combout\ & (\LessThan24~2_combout\)) # (!\s_sortedn4[2]~0_combout\ & ((\LessThan8~2_combout\))))) # (!\Equal5~0_combout\ & (((\s_sortedn4[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan24~2_combout\,
	datab => \LessThan8~2_combout\,
	datac => \Equal5~0_combout\,
	datad => \s_sortedn4[2]~0_combout\,
	combout => \s_sortedn4[2]~1_combout\);

-- Location: LCCOMB_X73_Y71_N20
\s_sortedn4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4~2_combout\ = (\Equal5~0_combout\ & ((\n3[0]~input_o\) # ((\s_sortedn4[2]~1_combout\)))) # (!\Equal5~0_combout\ & (((\n4[0]~input_o\ & !\s_sortedn4[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3[0]~input_o\,
	datab => \Equal5~0_combout\,
	datac => \n4[0]~input_o\,
	datad => \s_sortedn4[2]~1_combout\,
	combout => \s_sortedn4~2_combout\);

-- Location: LCCOMB_X73_Y71_N10
\s_sortedn4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4~3_combout\ = (\s_sortedn4[2]~1_combout\ & ((\s_sortedn4~2_combout\ & (\n6[0]~input_o\)) # (!\s_sortedn4~2_combout\ & ((\n5[0]~input_o\))))) # (!\s_sortedn4[2]~1_combout\ & (((\s_sortedn4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n6[0]~input_o\,
	datab => \s_sortedn4[2]~1_combout\,
	datac => \n5[0]~input_o\,
	datad => \s_sortedn4~2_combout\,
	combout => \s_sortedn4~3_combout\);

-- Location: LCCOMB_X73_Y71_N2
\s_sortedn4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4~7_combout\ = (\s_sortedn4[2]~5_combout\ & ((\s_sortedn4~6_combout\ & (\n7[0]~input_o\)) # (!\s_sortedn4~6_combout\ & ((\s_sortedn4~3_combout\))))) # (!\s_sortedn4[2]~5_combout\ & (((\s_sortedn4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n7[0]~input_o\,
	datab => \s_sortedn4[2]~5_combout\,
	datac => \s_sortedn4~6_combout\,
	datad => \s_sortedn4~3_combout\,
	combout => \s_sortedn4~7_combout\);

-- Location: LCCOMB_X73_Y71_N12
\s_sortedn4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4~9_combout\ = (\s_sortedn4[2]~8_combout\ & (\n8[0]~input_o\)) # (!\s_sortedn4[2]~8_combout\ & ((\s_sortedn4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_sortedn4[2]~8_combout\,
	datac => \n8[0]~input_o\,
	datad => \s_sortedn4~7_combout\,
	combout => \s_sortedn4~9_combout\);

-- Location: FF_X73_Y71_N13
\s_sortedn4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn4~9_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn4(0));

-- Location: LCCOMB_X72_Y70_N4
\s_sortedn4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4~10_combout\ = (\Equal5~0_combout\ & (((\n3[1]~input_o\) # (\s_sortedn4[2]~1_combout\)))) # (!\Equal5~0_combout\ & (\n4[1]~input_o\ & ((!\s_sortedn4[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n4[1]~input_o\,
	datab => \n3[1]~input_o\,
	datac => \Equal5~0_combout\,
	datad => \s_sortedn4[2]~1_combout\,
	combout => \s_sortedn4~10_combout\);

-- Location: LCCOMB_X72_Y70_N22
\s_sortedn4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4~11_combout\ = (\s_sortedn4~10_combout\ & ((\n6[1]~input_o\) # ((!\s_sortedn4[2]~1_combout\)))) # (!\s_sortedn4~10_combout\ & (((\n5[1]~input_o\ & \s_sortedn4[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n6[1]~input_o\,
	datab => \n5[1]~input_o\,
	datac => \s_sortedn4~10_combout\,
	datad => \s_sortedn4[2]~1_combout\,
	combout => \s_sortedn4~11_combout\);

-- Location: LCCOMB_X72_Y70_N28
\s_sortedn4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4~12_combout\ = (\Equal4~0_combout\ & ((\s_sortedn4[2]~5_combout\) # ((\n2[1]~input_o\)))) # (!\Equal4~0_combout\ & (!\s_sortedn4[2]~5_combout\ & ((\n1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \s_sortedn4[2]~5_combout\,
	datac => \n2[1]~input_o\,
	datad => \n1[1]~input_o\,
	combout => \s_sortedn4~12_combout\);

-- Location: LCCOMB_X72_Y70_N18
\s_sortedn4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4~13_combout\ = (\s_sortedn4[2]~5_combout\ & ((\s_sortedn4~12_combout\ & (\n7[1]~input_o\)) # (!\s_sortedn4~12_combout\ & ((\s_sortedn4~11_combout\))))) # (!\s_sortedn4[2]~5_combout\ & (((\s_sortedn4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n7[1]~input_o\,
	datab => \s_sortedn4[2]~5_combout\,
	datac => \s_sortedn4~11_combout\,
	datad => \s_sortedn4~12_combout\,
	combout => \s_sortedn4~13_combout\);

-- Location: LCCOMB_X72_Y70_N0
\s_sortedn4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4~14_combout\ = (\s_sortedn4[2]~8_combout\ & (\n8[1]~input_o\)) # (!\s_sortedn4[2]~8_combout\ & ((\s_sortedn4~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_sortedn4[2]~8_combout\,
	datac => \n8[1]~input_o\,
	datad => \s_sortedn4~13_combout\,
	combout => \s_sortedn4~14_combout\);

-- Location: FF_X72_Y70_N1
\s_sortedn4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn4~14_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn4(1));

-- Location: LCCOMB_X72_Y70_N12
\s_sortedn4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4~15_combout\ = (\Equal5~0_combout\ & ((\n3[2]~input_o\) # ((\s_sortedn4[2]~1_combout\)))) # (!\Equal5~0_combout\ & (((\n4[2]~input_o\ & !\s_sortedn4[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3[2]~input_o\,
	datab => \n4[2]~input_o\,
	datac => \Equal5~0_combout\,
	datad => \s_sortedn4[2]~1_combout\,
	combout => \s_sortedn4~15_combout\);

-- Location: LCCOMB_X72_Y70_N30
\s_sortedn4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4~16_combout\ = (\s_sortedn4[2]~1_combout\ & ((\s_sortedn4~15_combout\ & ((\n6[2]~input_o\))) # (!\s_sortedn4~15_combout\ & (\n5[2]~input_o\)))) # (!\s_sortedn4[2]~1_combout\ & (((\s_sortedn4~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n5[2]~input_o\,
	datab => \s_sortedn4[2]~1_combout\,
	datac => \n6[2]~input_o\,
	datad => \s_sortedn4~15_combout\,
	combout => \s_sortedn4~16_combout\);

-- Location: LCCOMB_X72_Y70_N20
\s_sortedn4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4~17_combout\ = (\Equal4~0_combout\ & ((\n2[2]~input_o\) # ((\s_sortedn4[2]~5_combout\)))) # (!\Equal4~0_combout\ & (((\n1[2]~input_o\ & !\s_sortedn4[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \n2[2]~input_o\,
	datac => \n1[2]~input_o\,
	datad => \s_sortedn4[2]~5_combout\,
	combout => \s_sortedn4~17_combout\);

-- Location: LCCOMB_X72_Y70_N14
\s_sortedn4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4~18_combout\ = (\s_sortedn4[2]~5_combout\ & ((\s_sortedn4~17_combout\ & (\n7[2]~input_o\)) # (!\s_sortedn4~17_combout\ & ((\s_sortedn4~16_combout\))))) # (!\s_sortedn4[2]~5_combout\ & (((\s_sortedn4~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n7[2]~input_o\,
	datab => \s_sortedn4[2]~5_combout\,
	datac => \s_sortedn4~16_combout\,
	datad => \s_sortedn4~17_combout\,
	combout => \s_sortedn4~18_combout\);

-- Location: LCCOMB_X72_Y70_N26
\s_sortedn4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4~19_combout\ = (\s_sortedn4[2]~8_combout\ & (\n8[2]~input_o\)) # (!\s_sortedn4[2]~8_combout\ & ((\s_sortedn4~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n8[2]~input_o\,
	datac => \s_sortedn4~18_combout\,
	datad => \s_sortedn4[2]~8_combout\,
	combout => \s_sortedn4~19_combout\);

-- Location: FF_X72_Y70_N27
\s_sortedn4[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn4~19_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn4(2));

-- Location: LCCOMB_X72_Y70_N8
\s_sortedn4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4~22_combout\ = (\Equal4~0_combout\ & ((\n2[3]~input_o\) # ((\s_sortedn4[2]~5_combout\)))) # (!\Equal4~0_combout\ & (((\n1[3]~input_o\ & !\s_sortedn4[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \n2[3]~input_o\,
	datac => \n1[3]~input_o\,
	datad => \s_sortedn4[2]~5_combout\,
	combout => \s_sortedn4~22_combout\);

-- Location: LCCOMB_X72_Y70_N24
\s_sortedn4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4~20_combout\ = (\Equal5~0_combout\ & ((\n3[3]~input_o\) # ((\s_sortedn4[2]~1_combout\)))) # (!\Equal5~0_combout\ & (((\n4[3]~input_o\ & !\s_sortedn4[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3[3]~input_o\,
	datab => \n4[3]~input_o\,
	datac => \Equal5~0_combout\,
	datad => \s_sortedn4[2]~1_combout\,
	combout => \s_sortedn4~20_combout\);

-- Location: LCCOMB_X72_Y70_N6
\s_sortedn4~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4~21_combout\ = (\s_sortedn4[2]~1_combout\ & ((\s_sortedn4~20_combout\ & ((\n6[3]~input_o\))) # (!\s_sortedn4~20_combout\ & (\n5[3]~input_o\)))) # (!\s_sortedn4[2]~1_combout\ & (((\s_sortedn4~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n5[3]~input_o\,
	datab => \s_sortedn4[2]~1_combout\,
	datac => \n6[3]~input_o\,
	datad => \s_sortedn4~20_combout\,
	combout => \s_sortedn4~21_combout\);

-- Location: LCCOMB_X72_Y70_N10
\s_sortedn4~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4~23_combout\ = (\s_sortedn4[2]~5_combout\ & ((\s_sortedn4~22_combout\ & (\n7[3]~input_o\)) # (!\s_sortedn4~22_combout\ & ((\s_sortedn4~21_combout\))))) # (!\s_sortedn4[2]~5_combout\ & (((\s_sortedn4~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n7[3]~input_o\,
	datab => \s_sortedn4[2]~5_combout\,
	datac => \s_sortedn4~22_combout\,
	datad => \s_sortedn4~21_combout\,
	combout => \s_sortedn4~23_combout\);

-- Location: LCCOMB_X72_Y70_N16
\s_sortedn4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn4~24_combout\ = (\s_sortedn4[2]~8_combout\ & (\n8[3]~input_o\)) # (!\s_sortedn4[2]~8_combout\ & ((\s_sortedn4~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_sortedn4[2]~8_combout\,
	datac => \n8[3]~input_o\,
	datad => \s_sortedn4~23_combout\,
	combout => \s_sortedn4~24_combout\);

-- Location: FF_X72_Y70_N17
\s_sortedn4[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn4~24_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn1[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn4(3));

-- Location: LCCOMB_X74_Y70_N28
\s_c4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c4~4_combout\ = (\Equal3~0_combout\ & (((\inc_dec~input_o\)))) # (!\Equal3~0_combout\ & ((\inc_dec~input_o\ & (!\LessThan22~2_combout\)) # (!\inc_dec~input_o\ & ((!\LessThan6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan22~2_combout\,
	datab => \Equal3~0_combout\,
	datac => \inc_dec~input_o\,
	datad => \LessThan6~2_combout\,
	combout => \s_c4~4_combout\);

-- Location: LCCOMB_X74_Y70_N14
\s_c4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c4~7_combout\ = (\Equal3~0_combout\ & ((\s_c4~4_combout\ & ((\LessThan23~2_combout\))) # (!\s_c4~4_combout\ & (\LessThan7~2_combout\)))) # (!\Equal3~0_combout\ & (((\s_c4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan7~2_combout\,
	datab => \LessThan23~2_combout\,
	datac => \Equal3~0_combout\,
	datad => \s_c4~4_combout\,
	combout => \s_c4~7_combout\);

-- Location: LCCOMB_X74_Y70_N22
\s_c4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c4~5_combout\ = (\Equal5~0_combout\ & (((\s_c4~4_combout\) # (!\LessThan8~2_combout\)))) # (!\Equal5~0_combout\ & (\LessThan9~2_combout\ & ((!\s_c4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~2_combout\,
	datab => \Equal5~0_combout\,
	datac => \LessThan8~2_combout\,
	datad => \s_c4~4_combout\,
	combout => \s_c4~5_combout\);

-- Location: LCCOMB_X74_Y70_N4
\s_c4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c4~6_combout\ = (\s_c4~5_combout\ & (((!\s_c4~4_combout\)) # (!\LessThan24~2_combout\))) # (!\s_c4~5_combout\ & (((\LessThan25~3_combout\ & \s_c4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan24~2_combout\,
	datab => \LessThan25~3_combout\,
	datac => \s_c4~5_combout\,
	datad => \s_c4~4_combout\,
	combout => \s_c4~6_combout\);

-- Location: LCCOMB_X73_Y70_N30
\s_c4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c4~8_combout\ = (\Equal3~0_combout\ & ((\Equal4~0_combout\ & (\s_c4~7_combout\)) # (!\Equal4~0_combout\ & ((\s_c4~6_combout\))))) # (!\Equal3~0_combout\ & (((\s_c4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal4~0_combout\,
	datac => \s_c4~7_combout\,
	datad => \s_c4~6_combout\,
	combout => \s_c4~8_combout\);

-- Location: FF_X73_Y70_N31
\s_c4[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_c4~8_combout\,
	ena => \s_c1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_c4(0));

-- Location: LCCOMB_X73_Y69_N28
\s_c4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c4~0_combout\ = s_c3(0) $ (s_c3(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_c3(0),
	datad => s_c3(1),
	combout => \s_c4~0_combout\);

-- Location: LCCOMB_X73_Y69_N30
\s_c4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c4~1_combout\ = (\s_c4~0_combout\) # ((\inc_dec~input_o\ & (\LessThan25~3_combout\)) # (!\inc_dec~input_o\ & ((\LessThan9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan25~3_combout\,
	datab => \inc_dec~input_o\,
	datac => \LessThan9~2_combout\,
	datad => \s_c4~0_combout\,
	combout => \s_c4~1_combout\);

-- Location: LCCOMB_X74_Y69_N30
\s_c4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c4~2_combout\ = (\inc_dec~input_o\ & ((\LessThan23~2_combout\))) # (!\inc_dec~input_o\ & (\LessThan7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_dec~input_o\,
	datab => \LessThan7~2_combout\,
	datad => \LessThan23~2_combout\,
	combout => \s_c4~2_combout\);

-- Location: LCCOMB_X73_Y70_N28
\s_c4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c4~3_combout\ = (\Equal3~0_combout\ & (\s_c4~1_combout\ & ((!\s_c4~2_combout\) # (!\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal4~0_combout\,
	datac => \s_c4~1_combout\,
	datad => \s_c4~2_combout\,
	combout => \s_c4~3_combout\);

-- Location: FF_X73_Y70_N29
\s_c4[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_c4~3_combout\,
	ena => \s_c1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_c4(1));

-- Location: LCCOMB_X73_Y71_N22
\s_sortedn5[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5[2]~9_combout\ = (!s_c4(0) & !s_c4(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_c4(0),
	datad => s_c4(1),
	combout => \s_sortedn5[2]~9_combout\);

-- Location: LCCOMB_X73_Y69_N6
\LessThan10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~4_combout\ = \n8[3]~input_o\ $ (\n2[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n8[3]~input_o\,
	datac => \n2[3]~input_o\,
	combout => \LessThan10~4_combout\);

-- Location: LCCOMB_X73_Y69_N20
\LessThan10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~3_combout\ = (\n2[1]~input_o\ & (((!\n8[0]~input_o\ & \n2[0]~input_o\)) # (!\n8[1]~input_o\))) # (!\n2[1]~input_o\ & (!\n8[0]~input_o\ & (!\n8[1]~input_o\ & \n2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n8[0]~input_o\,
	datab => \n2[1]~input_o\,
	datac => \n8[1]~input_o\,
	datad => \n2[0]~input_o\,
	combout => \LessThan10~3_combout\);

-- Location: LCCOMB_X73_Y69_N12
\LessThan10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~5_combout\ = (!\LessThan10~4_combout\ & ((\LessThan10~3_combout\ & ((\n2[2]~input_o\) # (!\n8[2]~input_o\))) # (!\LessThan10~3_combout\ & (!\n8[2]~input_o\ & \n2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~4_combout\,
	datab => \LessThan10~3_combout\,
	datac => \n8[2]~input_o\,
	datad => \n2[2]~input_o\,
	combout => \LessThan10~5_combout\);

-- Location: LCCOMB_X73_Y69_N8
\s_sortedn6[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6[3]~36_combout\ = (!\inc_dec~input_o\ & ((\LessThan10~5_combout\) # ((!\n8[3]~input_o\ & \n2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n8[3]~input_o\,
	datab => \inc_dec~input_o\,
	datac => \n2[3]~input_o\,
	datad => \LessThan10~5_combout\,
	combout => \s_sortedn6[3]~36_combout\);

-- Location: LCCOMB_X73_Y69_N10
\LessThan26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan26~0_combout\ = (\n2[1]~input_o\ & (\n8[0]~input_o\ & (\n8[1]~input_o\ & !\n2[0]~input_o\))) # (!\n2[1]~input_o\ & ((\n8[1]~input_o\) # ((\n8[0]~input_o\ & !\n2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n8[0]~input_o\,
	datab => \n2[1]~input_o\,
	datac => \n8[1]~input_o\,
	datad => \n2[0]~input_o\,
	combout => \LessThan26~0_combout\);

-- Location: LCCOMB_X73_Y69_N16
\LessThan26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan26~1_combout\ = (\LessThan26~0_combout\ & ((\n8[2]~input_o\) # (!\n2[2]~input_o\))) # (!\LessThan26~0_combout\ & (\n8[2]~input_o\ & !\n2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan26~0_combout\,
	datac => \n8[2]~input_o\,
	datad => \n2[2]~input_o\,
	combout => \LessThan26~1_combout\);

-- Location: LCCOMB_X73_Y69_N26
\s_sortedn6[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6[3]~14_combout\ = (\inc_dec~input_o\ & ((\n8[3]~input_o\ & ((\LessThan26~1_combout\) # (!\n2[3]~input_o\))) # (!\n8[3]~input_o\ & (!\n2[3]~input_o\ & \LessThan26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n8[3]~input_o\,
	datab => \n2[3]~input_o\,
	datac => \inc_dec~input_o\,
	datad => \LessThan26~1_combout\,
	combout => \s_sortedn6[3]~14_combout\);

-- Location: LCCOMB_X73_Y71_N4
\s_sortedn5[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5[2]~6_combout\ = (s_c4(1)) # ((s_c4(0) & ((\s_sortedn6[3]~36_combout\) # (\s_sortedn6[3]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_sortedn6[3]~36_combout\,
	datab => \s_sortedn6[3]~14_combout\,
	datac => s_c4(0),
	datad => s_c4(1),
	combout => \s_sortedn5[2]~6_combout\);

-- Location: LCCOMB_X76_Y69_N18
\LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~0_combout\ = (\n4[3]~input_o\ & (((!\n6[2]~input_o\ & \n4[2]~input_o\)) # (!\n6[3]~input_o\))) # (!\n4[3]~input_o\ & (!\n6[2]~input_o\ & (!\n6[3]~input_o\ & \n4[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n4[3]~input_o\,
	datab => \n6[2]~input_o\,
	datac => \n6[3]~input_o\,
	datad => \n4[2]~input_o\,
	combout => \LessThan12~0_combout\);

-- Location: LCCOMB_X76_Y69_N28
\LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~1_combout\ = (\n6[1]~input_o\ & (\n4[0]~input_o\ & (!\n6[0]~input_o\ & \n4[1]~input_o\))) # (!\n6[1]~input_o\ & ((\n4[1]~input_o\) # ((\n4[0]~input_o\ & !\n6[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n6[1]~input_o\,
	datab => \n4[0]~input_o\,
	datac => \n6[0]~input_o\,
	datad => \n4[1]~input_o\,
	combout => \LessThan12~1_combout\);

-- Location: LCCOMB_X76_Y69_N24
\LessThan28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan28~2_combout\ = (\n4[3]~input_o\ & (\n6[3]~input_o\ & (\n6[2]~input_o\ $ (!\n4[2]~input_o\)))) # (!\n4[3]~input_o\ & (!\n6[3]~input_o\ & (\n6[2]~input_o\ $ (!\n4[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n4[3]~input_o\,
	datab => \n6[2]~input_o\,
	datac => \n6[3]~input_o\,
	datad => \n4[2]~input_o\,
	combout => \LessThan28~2_combout\);

-- Location: LCCOMB_X76_Y69_N14
\LessThan12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~2_combout\ = (\LessThan12~0_combout\) # ((\LessThan12~1_combout\ & \LessThan28~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan12~0_combout\,
	datac => \LessThan12~1_combout\,
	datad => \LessThan28~2_combout\,
	combout => \LessThan12~2_combout\);

-- Location: LCCOMB_X76_Y69_N2
\LessThan28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan28~1_combout\ = (\n6[1]~input_o\ & (((!\n4[0]~input_o\ & \n6[0]~input_o\)) # (!\n4[1]~input_o\))) # (!\n6[1]~input_o\ & (!\n4[0]~input_o\ & (\n6[0]~input_o\ & !\n4[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n6[1]~input_o\,
	datab => \n4[0]~input_o\,
	datac => \n6[0]~input_o\,
	datad => \n4[1]~input_o\,
	combout => \LessThan28~1_combout\);

-- Location: LCCOMB_X76_Y69_N0
\LessThan28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan28~0_combout\ = (\n4[3]~input_o\ & (\n6[2]~input_o\ & (\n6[3]~input_o\ & !\n4[2]~input_o\))) # (!\n4[3]~input_o\ & ((\n6[3]~input_o\) # ((\n6[2]~input_o\ & !\n4[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n4[3]~input_o\,
	datab => \n6[2]~input_o\,
	datac => \n6[3]~input_o\,
	datad => \n4[2]~input_o\,
	combout => \LessThan28~0_combout\);

-- Location: LCCOMB_X76_Y70_N16
\LessThan28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan28~3_combout\ = (\LessThan28~0_combout\) # ((\LessThan28~2_combout\ & \LessThan28~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan28~2_combout\,
	datab => \LessThan28~1_combout\,
	datad => \LessThan28~0_combout\,
	combout => \LessThan28~3_combout\);

-- Location: LCCOMB_X73_Y69_N2
\s_sortedn5[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5[2]~2_combout\ = (\inc_dec~input_o\ & ((\LessThan28~3_combout\))) # (!\inc_dec~input_o\ & (\LessThan12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inc_dec~input_o\,
	datac => \LessThan12~2_combout\,
	datad => \LessThan28~3_combout\,
	combout => \s_sortedn5[2]~2_combout\);

-- Location: LCCOMB_X75_Y71_N12
\LessThan27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan27~1_combout\ = (\n7[1]~input_o\ & (((!\n3[0]~input_o\ & \n7[0]~input_o\)) # (!\n3[1]~input_o\))) # (!\n7[1]~input_o\ & (!\n3[0]~input_o\ & (\n7[0]~input_o\ & !\n3[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n7[1]~input_o\,
	datab => \n3[0]~input_o\,
	datac => \n7[0]~input_o\,
	datad => \n3[1]~input_o\,
	combout => \LessThan27~1_combout\);

-- Location: LCCOMB_X75_Y71_N14
\LessThan27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan27~0_combout\ = (\n3[3]~input_o\ & (!\n3[2]~input_o\ & (\n7[2]~input_o\ & \n7[3]~input_o\))) # (!\n3[3]~input_o\ & ((\n7[3]~input_o\) # ((!\n3[2]~input_o\ & \n7[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3[2]~input_o\,
	datab => \n7[2]~input_o\,
	datac => \n3[3]~input_o\,
	datad => \n7[3]~input_o\,
	combout => \LessThan27~0_combout\);

-- Location: LCCOMB_X75_Y71_N30
\LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~0_combout\ = (\n3[2]~input_o\ & (\n7[2]~input_o\ & (\n3[3]~input_o\ $ (!\n7[3]~input_o\)))) # (!\n3[2]~input_o\ & (!\n7[2]~input_o\ & (\n3[3]~input_o\ $ (!\n7[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3[2]~input_o\,
	datab => \n7[2]~input_o\,
	datac => \n3[3]~input_o\,
	datad => \n7[3]~input_o\,
	combout => \LessThan11~0_combout\);

-- Location: LCCOMB_X75_Y71_N0
\LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~1_combout\ = (\n3[3]~input_o\ & (((\n3[2]~input_o\ & !\n7[2]~input_o\)) # (!\n7[3]~input_o\))) # (!\n3[3]~input_o\ & (\n3[2]~input_o\ & (!\n7[2]~input_o\ & !\n7[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3[2]~input_o\,
	datab => \n7[2]~input_o\,
	datac => \n3[3]~input_o\,
	datad => \n7[3]~input_o\,
	combout => \LessThan11~1_combout\);

-- Location: LCCOMB_X75_Y71_N22
\LessThan11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~2_combout\ = (\n7[1]~input_o\ & (\n3[0]~input_o\ & (!\n7[0]~input_o\ & \n3[1]~input_o\))) # (!\n7[1]~input_o\ & ((\n3[1]~input_o\) # ((\n3[0]~input_o\ & !\n7[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n7[1]~input_o\,
	datab => \n3[0]~input_o\,
	datac => \n7[0]~input_o\,
	datad => \n3[1]~input_o\,
	combout => \LessThan11~2_combout\);

-- Location: LCCOMB_X75_Y71_N8
\s_sortedn5[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5[2]~0_combout\ = (\inc_dec~input_o\ & (\LessThan11~0_combout\)) # (!\inc_dec~input_o\ & ((\LessThan11~1_combout\) # ((\LessThan11~0_combout\ & \LessThan11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~0_combout\,
	datab => \LessThan11~1_combout\,
	datac => \LessThan11~2_combout\,
	datad => \inc_dec~input_o\,
	combout => \s_sortedn5[2]~0_combout\);

-- Location: LCCOMB_X75_Y71_N2
\s_sortedn5[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5[2]~1_combout\ = (\inc_dec~input_o\ & ((\LessThan27~0_combout\) # ((\LessThan27~1_combout\ & \s_sortedn5[2]~0_combout\)))) # (!\inc_dec~input_o\ & (((\s_sortedn5[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan27~1_combout\,
	datab => \LessThan27~0_combout\,
	datac => \s_sortedn5[2]~0_combout\,
	datad => \inc_dec~input_o\,
	combout => \s_sortedn5[2]~1_combout\);

-- Location: LCCOMB_X74_Y71_N4
\s_sortedn5[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5[2]~3_combout\ = (s_c4(0) & (\s_sortedn5[2]~2_combout\)) # (!s_c4(0) & ((s_c4(1) & ((\s_sortedn5[2]~1_combout\))) # (!s_c4(1) & (\s_sortedn5[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_sortedn5[2]~2_combout\,
	datab => \s_sortedn5[2]~1_combout\,
	datac => s_c4(0),
	datad => s_c4(1),
	combout => \s_sortedn5[2]~3_combout\);

-- Location: LCCOMB_X73_Y70_N0
\Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (!s_c4(0) & s_c4(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_c4(0),
	datad => s_c4(1),
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X73_Y71_N16
\s_sortedn5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~4_combout\ = (\Equal8~0_combout\ & (((\n3[0]~input_o\) # (\s_sortedn5[2]~3_combout\)))) # (!\Equal8~0_combout\ & (\n4[0]~input_o\ & ((!\s_sortedn5[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n4[0]~input_o\,
	datab => \n3[0]~input_o\,
	datac => \Equal8~0_combout\,
	datad => \s_sortedn5[2]~3_combout\,
	combout => \s_sortedn5~4_combout\);

-- Location: LCCOMB_X73_Y71_N14
\s_sortedn5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~5_combout\ = (\s_sortedn5[2]~3_combout\ & ((\s_sortedn5~4_combout\ & ((\n7[0]~input_o\))) # (!\s_sortedn5~4_combout\ & (\n6[0]~input_o\)))) # (!\s_sortedn5[2]~3_combout\ & (((\s_sortedn5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_sortedn5[2]~3_combout\,
	datab => \n6[0]~input_o\,
	datac => \n7[0]~input_o\,
	datad => \s_sortedn5~4_combout\,
	combout => \s_sortedn5~5_combout\);

-- Location: LCCOMB_X73_Y70_N10
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (s_c4(0) & !s_c4(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_c4(0),
	datad => s_c4(1),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X73_Y71_N18
\s_sortedn5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~7_combout\ = (\s_sortedn5[2]~6_combout\ & (((\Equal7~0_combout\)))) # (!\s_sortedn5[2]~6_combout\ & ((\Equal7~0_combout\ & ((\n2[0]~input_o\))) # (!\Equal7~0_combout\ & (\n5[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n5[0]~input_o\,
	datab => \s_sortedn5[2]~6_combout\,
	datac => \n2[0]~input_o\,
	datad => \Equal7~0_combout\,
	combout => \s_sortedn5~7_combout\);

-- Location: LCCOMB_X73_Y71_N0
\s_sortedn5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~8_combout\ = (\s_sortedn5[2]~6_combout\ & ((\s_sortedn5~7_combout\ & (\n8[0]~input_o\)) # (!\s_sortedn5~7_combout\ & ((\s_sortedn5~5_combout\))))) # (!\s_sortedn5[2]~6_combout\ & (((\s_sortedn5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n8[0]~input_o\,
	datab => \s_sortedn5[2]~6_combout\,
	datac => \s_sortedn5~5_combout\,
	datad => \s_sortedn5~7_combout\,
	combout => \s_sortedn5~8_combout\);

-- Location: LCCOMB_X73_Y71_N30
\s_sortedn5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~10_combout\ = (\s_sortedn5[2]~9_combout\ & ((\Equal3~0_combout\ & ((\s_sortedn5~8_combout\))) # (!\Equal3~0_combout\ & (\n1[0]~input_o\)))) # (!\s_sortedn5[2]~9_combout\ & (((\s_sortedn5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_sortedn5[2]~9_combout\,
	datab => \n1[0]~input_o\,
	datac => \Equal3~0_combout\,
	datad => \s_sortedn5~8_combout\,
	combout => \s_sortedn5~10_combout\);

-- Location: LCCOMB_X73_Y70_N16
\s_sortedn5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~11_combout\ = (s_c3(1) & (!\LessThan25~3_combout\ & ((s_c3(0))))) # (!s_c3(1) & (((\LessThan22~2_combout\ & !s_c3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan25~3_combout\,
	datab => \LessThan22~2_combout\,
	datac => s_c3(1),
	datad => s_c3(0),
	combout => \s_sortedn5~11_combout\);

-- Location: LCCOMB_X74_Y70_N20
\s_sortedn5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~12_combout\ = (s_c3(1) & (!\LessThan9~2_combout\ & ((s_c3(0))))) # (!s_c3(1) & (((\LessThan6~2_combout\ & !s_c3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~2_combout\,
	datab => \LessThan6~2_combout\,
	datac => s_c3(1),
	datad => s_c3(0),
	combout => \s_sortedn5~12_combout\);

-- Location: LCCOMB_X74_Y70_N10
\s_sortedn5[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5[2]~13_combout\ = (\inc_dec~input_o\ & (\s_sortedn5~11_combout\)) # (!\inc_dec~input_o\ & ((\s_sortedn5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inc_dec~input_o\,
	datac => \s_sortedn5~11_combout\,
	datad => \s_sortedn5~12_combout\,
	combout => \s_sortedn5[2]~13_combout\);

-- Location: LCCOMB_X74_Y71_N22
\s_sortedn5[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5[2]~14_combout\ = (\res~input_o\) # ((\enable~input_o\ & ((\s_sortedn5[2]~13_combout\) # (!\s_sortedn5[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res~input_o\,
	datab => \enable~input_o\,
	datac => \s_sortedn5[2]~13_combout\,
	datad => \s_sortedn5[2]~9_combout\,
	combout => \s_sortedn5[2]~14_combout\);

-- Location: FF_X73_Y71_N31
\s_sortedn5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn5~10_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn5[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn5(0));

-- Location: LCCOMB_X73_Y71_N24
\s_sortedn5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~17_combout\ = (\s_sortedn5[2]~6_combout\ & (((\Equal7~0_combout\)))) # (!\s_sortedn5[2]~6_combout\ & ((\Equal7~0_combout\ & (\n2[1]~input_o\)) # (!\Equal7~0_combout\ & ((\n5[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2[1]~input_o\,
	datab => \n5[1]~input_o\,
	datac => \s_sortedn5[2]~6_combout\,
	datad => \Equal7~0_combout\,
	combout => \s_sortedn5~17_combout\);

-- Location: LCCOMB_X74_Y71_N12
\s_sortedn5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~15_combout\ = (\s_sortedn5[2]~3_combout\ & (((\Equal8~0_combout\)))) # (!\s_sortedn5[2]~3_combout\ & ((\Equal8~0_combout\ & (\n3[1]~input_o\)) # (!\Equal8~0_combout\ & ((\n4[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3[1]~input_o\,
	datab => \n4[1]~input_o\,
	datac => \s_sortedn5[2]~3_combout\,
	datad => \Equal8~0_combout\,
	combout => \s_sortedn5~15_combout\);

-- Location: LCCOMB_X74_Y71_N10
\s_sortedn5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~16_combout\ = (\s_sortedn5[2]~3_combout\ & ((\s_sortedn5~15_combout\ & ((\n7[1]~input_o\))) # (!\s_sortedn5~15_combout\ & (\n6[1]~input_o\)))) # (!\s_sortedn5[2]~3_combout\ & (((\s_sortedn5~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n6[1]~input_o\,
	datab => \n7[1]~input_o\,
	datac => \s_sortedn5[2]~3_combout\,
	datad => \s_sortedn5~15_combout\,
	combout => \s_sortedn5~16_combout\);

-- Location: LCCOMB_X74_Y71_N8
\s_sortedn5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~18_combout\ = (\s_sortedn5~17_combout\ & ((\n8[1]~input_o\) # ((!\s_sortedn5[2]~6_combout\)))) # (!\s_sortedn5~17_combout\ & (((\s_sortedn5[2]~6_combout\ & \s_sortedn5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n8[1]~input_o\,
	datab => \s_sortedn5~17_combout\,
	datac => \s_sortedn5[2]~6_combout\,
	datad => \s_sortedn5~16_combout\,
	combout => \s_sortedn5~18_combout\);

-- Location: LCCOMB_X74_Y71_N0
\s_sortedn5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~19_combout\ = (\Equal3~0_combout\ & (((\s_sortedn5~18_combout\)))) # (!\Equal3~0_combout\ & ((\s_sortedn5[2]~9_combout\ & (\n1[1]~input_o\)) # (!\s_sortedn5[2]~9_combout\ & ((\s_sortedn5~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \n1[1]~input_o\,
	datac => \s_sortedn5~18_combout\,
	datad => \s_sortedn5[2]~9_combout\,
	combout => \s_sortedn5~19_combout\);

-- Location: FF_X74_Y71_N1
\s_sortedn5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn5~19_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn5[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn5(1));

-- Location: LCCOMB_X73_Y71_N6
\s_sortedn5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~22_combout\ = (\s_sortedn5[2]~6_combout\ & (((\Equal7~0_combout\)))) # (!\s_sortedn5[2]~6_combout\ & ((\Equal7~0_combout\ & ((\n2[2]~input_o\))) # (!\Equal7~0_combout\ & (\n5[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n5[2]~input_o\,
	datab => \n2[2]~input_o\,
	datac => \s_sortedn5[2]~6_combout\,
	datad => \Equal7~0_combout\,
	combout => \s_sortedn5~22_combout\);

-- Location: LCCOMB_X74_Y71_N6
\s_sortedn5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~20_combout\ = (\s_sortedn5[2]~3_combout\ & (((\Equal8~0_combout\)))) # (!\s_sortedn5[2]~3_combout\ & ((\Equal8~0_combout\ & (\n3[2]~input_o\)) # (!\Equal8~0_combout\ & ((\n4[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3[2]~input_o\,
	datab => \n4[2]~input_o\,
	datac => \s_sortedn5[2]~3_combout\,
	datad => \Equal8~0_combout\,
	combout => \s_sortedn5~20_combout\);

-- Location: LCCOMB_X74_Y71_N16
\s_sortedn5~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~21_combout\ = (\s_sortedn5[2]~3_combout\ & ((\s_sortedn5~20_combout\ & (\n7[2]~input_o\)) # (!\s_sortedn5~20_combout\ & ((\n6[2]~input_o\))))) # (!\s_sortedn5[2]~3_combout\ & (((\s_sortedn5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n7[2]~input_o\,
	datab => \n6[2]~input_o\,
	datac => \s_sortedn5[2]~3_combout\,
	datad => \s_sortedn5~20_combout\,
	combout => \s_sortedn5~21_combout\);

-- Location: LCCOMB_X74_Y71_N14
\s_sortedn5~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~23_combout\ = (\s_sortedn5[2]~6_combout\ & ((\s_sortedn5~22_combout\ & (\n8[2]~input_o\)) # (!\s_sortedn5~22_combout\ & ((\s_sortedn5~21_combout\))))) # (!\s_sortedn5[2]~6_combout\ & (((\s_sortedn5~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n8[2]~input_o\,
	datab => \s_sortedn5[2]~6_combout\,
	datac => \s_sortedn5~22_combout\,
	datad => \s_sortedn5~21_combout\,
	combout => \s_sortedn5~23_combout\);

-- Location: LCCOMB_X74_Y71_N26
\s_sortedn5~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~24_combout\ = (\Equal3~0_combout\ & (((\s_sortedn5~23_combout\)))) # (!\Equal3~0_combout\ & ((\s_sortedn5[2]~9_combout\ & (\n1[2]~input_o\)) # (!\s_sortedn5[2]~9_combout\ & ((\s_sortedn5~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \n1[2]~input_o\,
	datac => \s_sortedn5~23_combout\,
	datad => \s_sortedn5[2]~9_combout\,
	combout => \s_sortedn5~24_combout\);

-- Location: FF_X74_Y71_N27
\s_sortedn5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn5~24_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn5[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn5(2));

-- Location: LCCOMB_X74_Y71_N24
\s_sortedn5~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~25_combout\ = (\s_sortedn5[2]~3_combout\ & (((\Equal8~0_combout\)))) # (!\s_sortedn5[2]~3_combout\ & ((\Equal8~0_combout\ & ((\n3[3]~input_o\))) # (!\Equal8~0_combout\ & (\n4[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n4[3]~input_o\,
	datab => \n3[3]~input_o\,
	datac => \s_sortedn5[2]~3_combout\,
	datad => \Equal8~0_combout\,
	combout => \s_sortedn5~25_combout\);

-- Location: LCCOMB_X74_Y71_N18
\s_sortedn5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~26_combout\ = (\s_sortedn5[2]~3_combout\ & ((\s_sortedn5~25_combout\ & (\n7[3]~input_o\)) # (!\s_sortedn5~25_combout\ & ((\n6[3]~input_o\))))) # (!\s_sortedn5[2]~3_combout\ & (((\s_sortedn5~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n7[3]~input_o\,
	datab => \n6[3]~input_o\,
	datac => \s_sortedn5[2]~3_combout\,
	datad => \s_sortedn5~25_combout\,
	combout => \s_sortedn5~26_combout\);

-- Location: LCCOMB_X74_Y71_N20
\s_sortedn5~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~27_combout\ = (\Equal7~0_combout\ & (\s_sortedn5[2]~6_combout\)) # (!\Equal7~0_combout\ & ((\s_sortedn5[2]~6_combout\ & ((\s_sortedn5~26_combout\))) # (!\s_sortedn5[2]~6_combout\ & (\n5[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \s_sortedn5[2]~6_combout\,
	datac => \n5[3]~input_o\,
	datad => \s_sortedn5~26_combout\,
	combout => \s_sortedn5~27_combout\);

-- Location: LCCOMB_X74_Y71_N2
\s_sortedn5~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~28_combout\ = (\Equal7~0_combout\ & ((\s_sortedn5~27_combout\ & (\n8[3]~input_o\)) # (!\s_sortedn5~27_combout\ & ((\n2[3]~input_o\))))) # (!\Equal7~0_combout\ & (((\s_sortedn5~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \n8[3]~input_o\,
	datac => \n2[3]~input_o\,
	datad => \s_sortedn5~27_combout\,
	combout => \s_sortedn5~28_combout\);

-- Location: LCCOMB_X74_Y71_N28
\s_sortedn5~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn5~29_combout\ = (\Equal3~0_combout\ & (((\s_sortedn5~28_combout\)))) # (!\Equal3~0_combout\ & ((\s_sortedn5[2]~9_combout\ & (\n1[3]~input_o\)) # (!\s_sortedn5[2]~9_combout\ & ((\s_sortedn5~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \s_sortedn5[2]~9_combout\,
	datac => \n1[3]~input_o\,
	datad => \s_sortedn5~28_combout\,
	combout => \s_sortedn5~29_combout\);

-- Location: FF_X74_Y71_N29
\s_sortedn5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn5~29_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn5[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn5(3));

-- Location: LCCOMB_X73_Y69_N22
\LessThan26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan26~2_combout\ = (\n8[3]~input_o\ & ((\LessThan26~1_combout\) # (!\n2[3]~input_o\))) # (!\n8[3]~input_o\ & (!\n2[3]~input_o\ & \LessThan26~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n8[3]~input_o\,
	datac => \n2[3]~input_o\,
	datad => \LessThan26~1_combout\,
	combout => \LessThan26~2_combout\);

-- Location: LCCOMB_X73_Y69_N18
\s_sortedn6[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6[3]~37_combout\ = (\LessThan10~5_combout\) # ((!\n8[3]~input_o\ & \n2[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n8[3]~input_o\,
	datac => \n2[3]~input_o\,
	datad => \LessThan10~5_combout\,
	combout => \s_sortedn6[3]~37_combout\);

-- Location: LCCOMB_X76_Y70_N30
\s_c5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c5~0_combout\ = (\LessThan28~0_combout\) # ((\Equal8~0_combout\) # ((\LessThan28~2_combout\ & \LessThan28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan28~0_combout\,
	datab => \Equal8~0_combout\,
	datac => \LessThan28~2_combout\,
	datad => \LessThan28~1_combout\,
	combout => \s_c5~0_combout\);

-- Location: LCCOMB_X76_Y70_N12
\s_c5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c5~1_combout\ = (\LessThan12~0_combout\) # ((\Equal8~0_combout\) # ((\LessThan28~2_combout\ & \LessThan12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan28~2_combout\,
	datab => \LessThan12~0_combout\,
	datac => \LessThan12~1_combout\,
	datad => \Equal8~0_combout\,
	combout => \s_c5~1_combout\);

-- Location: LCCOMB_X76_Y70_N2
\s_c5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c5~2_combout\ = (\Equal7~0_combout\ & (\inc_dec~input_o\)) # (!\Equal7~0_combout\ & ((\inc_dec~input_o\ & (\s_c5~0_combout\)) # (!\inc_dec~input_o\ & ((\s_c5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \inc_dec~input_o\,
	datac => \s_c5~0_combout\,
	datad => \s_c5~1_combout\,
	combout => \s_c5~2_combout\);

-- Location: LCCOMB_X76_Y70_N26
\s_c5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c5~3_combout\ = (\Equal7~0_combout\ & ((\s_c5~2_combout\ & (!\LessThan26~2_combout\)) # (!\s_c5~2_combout\ & ((!\s_sortedn6[3]~37_combout\))))) # (!\Equal7~0_combout\ & (((\s_c5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan26~2_combout\,
	datab => \s_sortedn6[3]~37_combout\,
	datac => \Equal7~0_combout\,
	datad => \s_c5~2_combout\,
	combout => \s_c5~3_combout\);

-- Location: LCCOMB_X77_Y70_N30
\s_c5[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c5[0]~4_combout\ = (\enable~input_o\ & (!\res~input_o\ & ((s_c4(1)) # (s_c4(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \res~input_o\,
	datac => s_c4(1),
	datad => s_c4(0),
	combout => \s_c5[0]~4_combout\);

-- Location: FF_X76_Y70_N27
\s_c5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_c5~3_combout\,
	ena => \s_c5[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_c5(1));

-- Location: LCCOMB_X75_Y70_N22
\s_c5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c5~5_combout\ = ((!\LessThan27~0_combout\ & ((!\LessThan27~1_combout\) # (!\LessThan11~0_combout\)))) # (!\Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~0_combout\,
	datab => \LessThan27~0_combout\,
	datac => \LessThan27~1_combout\,
	datad => \Equal8~0_combout\,
	combout => \s_c5~5_combout\);

-- Location: LCCOMB_X75_Y70_N16
\s_c5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c5~6_combout\ = ((!\LessThan11~1_combout\ & ((!\LessThan11~0_combout\) # (!\LessThan11~2_combout\)))) # (!\Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \LessThan11~2_combout\,
	datac => \LessThan11~0_combout\,
	datad => \LessThan11~1_combout\,
	combout => \s_c5~6_combout\);

-- Location: LCCOMB_X75_Y70_N14
\s_c5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c5~7_combout\ = (\inc_dec~input_o\ & ((\Equal7~0_combout\) # ((\s_c5~5_combout\)))) # (!\inc_dec~input_o\ & (!\Equal7~0_combout\ & ((\s_c5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_dec~input_o\,
	datab => \Equal7~0_combout\,
	datac => \s_c5~5_combout\,
	datad => \s_c5~6_combout\,
	combout => \s_c5~7_combout\);

-- Location: LCCOMB_X76_Y70_N20
\s_c5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c5~8_combout\ = (\Equal7~0_combout\ & ((\s_c5~7_combout\ & (\LessThan26~2_combout\)) # (!\s_c5~7_combout\ & ((\s_sortedn6[3]~37_combout\))))) # (!\Equal7~0_combout\ & (((\s_c5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan26~2_combout\,
	datab => \s_sortedn6[3]~37_combout\,
	datac => \Equal7~0_combout\,
	datad => \s_c5~7_combout\,
	combout => \s_c5~8_combout\);

-- Location: FF_X76_Y70_N21
\s_c5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_c5~8_combout\,
	ena => \s_c5[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_c5(0));

-- Location: LCCOMB_X76_Y70_N22
\Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (s_c5(1) & !s_c5(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_c5(1),
	datad => s_c5(0),
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X75_Y72_N0
\LessThan29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan29~0_combout\ = (\n3[1]~input_o\ & (\n8[1]~input_o\ & (\n8[0]~input_o\ & !\n3[0]~input_o\))) # (!\n3[1]~input_o\ & ((\n8[1]~input_o\) # ((\n8[0]~input_o\ & !\n3[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3[1]~input_o\,
	datab => \n8[1]~input_o\,
	datac => \n8[0]~input_o\,
	datad => \n3[0]~input_o\,
	combout => \LessThan29~0_combout\);

-- Location: LCCOMB_X75_Y72_N10
\LessThan29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan29~1_combout\ = (\n3[2]~input_o\ & (\n8[2]~input_o\ & \LessThan29~0_combout\)) # (!\n3[2]~input_o\ & ((\n8[2]~input_o\) # (\LessThan29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n3[2]~input_o\,
	datac => \n8[2]~input_o\,
	datad => \LessThan29~0_combout\,
	combout => \LessThan29~1_combout\);

-- Location: LCCOMB_X75_Y72_N20
\LessThan29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan29~2_combout\ = (\n3[3]~input_o\ & (\n8[3]~input_o\ & \LessThan29~1_combout\)) # (!\n3[3]~input_o\ & ((\n8[3]~input_o\) # (\LessThan29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n3[3]~input_o\,
	datac => \n8[3]~input_o\,
	datad => \LessThan29~1_combout\,
	combout => \LessThan29~2_combout\);

-- Location: LCCOMB_X75_Y72_N2
\LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan13~0_combout\ = (\n3[1]~input_o\ & (((!\n8[0]~input_o\ & \n3[0]~input_o\)) # (!\n8[1]~input_o\))) # (!\n3[1]~input_o\ & (!\n8[1]~input_o\ & (!\n8[0]~input_o\ & \n3[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3[1]~input_o\,
	datab => \n8[1]~input_o\,
	datac => \n8[0]~input_o\,
	datad => \n3[0]~input_o\,
	combout => \LessThan13~0_combout\);

-- Location: LCCOMB_X75_Y72_N28
\LessThan13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan13~1_combout\ = (\n3[2]~input_o\ & ((\LessThan13~0_combout\) # (!\n8[2]~input_o\))) # (!\n3[2]~input_o\ & (!\n8[2]~input_o\ & \LessThan13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n3[2]~input_o\,
	datac => \n8[2]~input_o\,
	datad => \LessThan13~0_combout\,
	combout => \LessThan13~1_combout\);

-- Location: LCCOMB_X75_Y72_N26
\LessThan13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan13~2_combout\ = (\n8[3]~input_o\ & (\LessThan13~1_combout\ & \n3[3]~input_o\)) # (!\n8[3]~input_o\ & ((\LessThan13~1_combout\) # (\n3[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n8[3]~input_o\,
	datab => \LessThan13~1_combout\,
	datad => \n3[3]~input_o\,
	combout => \LessThan13~2_combout\);

-- Location: LCCOMB_X75_Y72_N12
\s_sortedn6[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6[3]~15_combout\ = (\inc_dec~input_o\ & (\LessThan29~2_combout\)) # (!\inc_dec~input_o\ & ((\LessThan13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan29~2_combout\,
	datac => \LessThan13~2_combout\,
	datad => \inc_dec~input_o\,
	combout => \s_sortedn6[3]~15_combout\);

-- Location: LCCOMB_X75_Y72_N30
\s_sortedn6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6~16_combout\ = (\Equal9~0_combout\ & ((\s_sortedn6[3]~15_combout\ & ((\n8[0]~input_o\))) # (!\s_sortedn6[3]~15_combout\ & (\n3[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3[0]~input_o\,
	datab => \n8[0]~input_o\,
	datac => \Equal9~0_combout\,
	datad => \s_sortedn6[3]~15_combout\,
	combout => \s_sortedn6~16_combout\);

-- Location: LCCOMB_X75_Y69_N24
\LessThan14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~0_combout\ = (\n7[1]~input_o\ & (\n4[0]~input_o\ & (!\n7[0]~input_o\ & \n4[1]~input_o\))) # (!\n7[1]~input_o\ & ((\n4[1]~input_o\) # ((\n4[0]~input_o\ & !\n7[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n7[1]~input_o\,
	datab => \n4[0]~input_o\,
	datac => \n7[0]~input_o\,
	datad => \n4[1]~input_o\,
	combout => \LessThan14~0_combout\);

-- Location: LCCOMB_X75_Y69_N22
\LessThan14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~1_combout\ = (\LessThan14~0_combout\ & ((\n4[2]~input_o\) # (!\n7[2]~input_o\))) # (!\LessThan14~0_combout\ & (\n4[2]~input_o\ & !\n7[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan14~0_combout\,
	datac => \n4[2]~input_o\,
	datad => \n7[2]~input_o\,
	combout => \LessThan14~1_combout\);

-- Location: LCCOMB_X75_Y69_N16
\LessThan14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~2_combout\ = (\LessThan14~1_combout\ & ((\n4[3]~input_o\) # (!\n7[3]~input_o\))) # (!\LessThan14~1_combout\ & (!\n7[3]~input_o\ & \n4[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~1_combout\,
	datab => \n7[3]~input_o\,
	datac => \n4[3]~input_o\,
	combout => \LessThan14~2_combout\);

-- Location: LCCOMB_X75_Y69_N2
\LessThan30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan30~0_combout\ = (\n7[1]~input_o\ & (((!\n4[0]~input_o\ & \n7[0]~input_o\)) # (!\n4[1]~input_o\))) # (!\n7[1]~input_o\ & (!\n4[0]~input_o\ & (\n7[0]~input_o\ & !\n4[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n7[1]~input_o\,
	datab => \n4[0]~input_o\,
	datac => \n7[0]~input_o\,
	datad => \n4[1]~input_o\,
	combout => \LessThan30~0_combout\);

-- Location: LCCOMB_X75_Y69_N12
\LessThan30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan30~1_combout\ = (\LessThan30~0_combout\ & ((\n7[2]~input_o\) # (!\n4[2]~input_o\))) # (!\LessThan30~0_combout\ & (!\n4[2]~input_o\ & \n7[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan30~0_combout\,
	datac => \n4[2]~input_o\,
	datad => \n7[2]~input_o\,
	combout => \LessThan30~1_combout\);

-- Location: LCCOMB_X75_Y69_N14
\LessThan30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan30~2_combout\ = (\LessThan30~1_combout\ & ((\n7[3]~input_o\) # (!\n4[3]~input_o\))) # (!\LessThan30~1_combout\ & (\n7[3]~input_o\ & !\n4[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan30~1_combout\,
	datab => \n7[3]~input_o\,
	datac => \n4[3]~input_o\,
	combout => \LessThan30~2_combout\);

-- Location: LCCOMB_X75_Y69_N26
\s_sortedn6[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6[3]~18_combout\ = (\inc_dec~input_o\ & ((\LessThan30~2_combout\))) # (!\inc_dec~input_o\ & (\LessThan14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan14~2_combout\,
	datac => \LessThan30~2_combout\,
	datad => \inc_dec~input_o\,
	combout => \s_sortedn6[3]~18_combout\);

-- Location: LCCOMB_X73_Y70_N14
\s_sortedn6[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6[3]~19_combout\ = (\s_sortedn6[3]~37_combout\ & (!\inc_dec~input_o\ & (s_c4(0) & !s_c4(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_sortedn6[3]~37_combout\,
	datab => \inc_dec~input_o\,
	datac => s_c4(0),
	datad => s_c4(1),
	combout => \s_sortedn6[3]~19_combout\);

-- Location: LCCOMB_X73_Y69_N0
\s_sortedn6[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6[3]~20_combout\ = (\inc_dec~input_o\ & ((!\LessThan28~3_combout\))) # (!\inc_dec~input_o\ & (!\LessThan12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inc_dec~input_o\,
	datac => \LessThan12~2_combout\,
	datad => \LessThan28~3_combout\,
	combout => \s_sortedn6[3]~20_combout\);

-- Location: LCCOMB_X73_Y70_N8
\s_sortedn6[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6[3]~21_combout\ = (s_c4(0) & ((s_c4(1) & ((\s_sortedn6[3]~20_combout\))) # (!s_c4(1) & (\s_sortedn6[3]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_sortedn6[3]~14_combout\,
	datab => \s_sortedn6[3]~20_combout\,
	datac => s_c4(0),
	datad => s_c4(1),
	combout => \s_sortedn6[3]~21_combout\);

-- Location: LCCOMB_X74_Y72_N10
\s_sortedn6[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6[3]~22_combout\ = (\s_sortedn6[3]~19_combout\ & (!\Equal7~0_combout\)) # (!\s_sortedn6[3]~19_combout\ & ((\s_sortedn6[3]~21_combout\ & (!\Equal7~0_combout\)) # (!\s_sortedn6[3]~21_combout\ & ((\Equal3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \s_sortedn6[3]~19_combout\,
	datac => \s_sortedn6[3]~21_combout\,
	datad => \Equal3~0_combout\,
	combout => \s_sortedn6[3]~22_combout\);

-- Location: LCCOMB_X74_Y72_N2
\s_sortedn6[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6[3]~38_combout\ = (s_c5(0) & ((s_c5(1) & (\s_sortedn6[3]~18_combout\)) # (!s_c5(1) & ((!\s_sortedn6[3]~22_combout\))))) # (!s_c5(0) & (((!\s_sortedn6[3]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_c5(0),
	datab => \s_sortedn6[3]~18_combout\,
	datac => s_c5(1),
	datad => \s_sortedn6[3]~22_combout\,
	combout => \s_sortedn6[3]~38_combout\);

-- Location: LCCOMB_X76_Y70_N24
\s_sortedn6[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6[3]~17_combout\ = (!s_c5(0)) # (!s_c5(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_c5(1),
	datad => s_c5(0),
	combout => \s_sortedn6[3]~17_combout\);

-- Location: LCCOMB_X74_Y72_N28
\s_sortedn6~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6~23_combout\ = (\s_sortedn6[3]~17_combout\ & (\n6[0]~input_o\ & ((!\s_sortedn6[3]~38_combout\)))) # (!\s_sortedn6[3]~17_combout\ & (((\n4[0]~input_o\) # (\s_sortedn6[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n6[0]~input_o\,
	datab => \n4[0]~input_o\,
	datac => \s_sortedn6[3]~17_combout\,
	datad => \s_sortedn6[3]~38_combout\,
	combout => \s_sortedn6~23_combout\);

-- Location: LCCOMB_X74_Y72_N14
\s_sortedn6~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6~24_combout\ = (\s_sortedn6[3]~38_combout\ & ((\s_sortedn6~23_combout\ & (\n7[0]~input_o\)) # (!\s_sortedn6~23_combout\ & ((\n2[0]~input_o\))))) # (!\s_sortedn6[3]~38_combout\ & (((\s_sortedn6~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n7[0]~input_o\,
	datab => \n2[0]~input_o\,
	datac => \s_sortedn6[3]~38_combout\,
	datad => \s_sortedn6~23_combout\,
	combout => \s_sortedn6~24_combout\);

-- Location: LCCOMB_X74_Y72_N4
\s_sortedn6~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6~39_combout\ = (\s_sortedn6~16_combout\) # ((\s_sortedn6~24_combout\ & ((s_c5(0)) # (!s_c5(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_sortedn6~16_combout\,
	datab => s_c5(1),
	datac => \s_sortedn6~24_combout\,
	datad => s_c5(0),
	combout => \s_sortedn6~39_combout\);

-- Location: LCCOMB_X74_Y70_N0
\s_sortedn6[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6[3]~25_combout\ = (!\s_sortedn6[3]~21_combout\ & (!\s_sortedn5[2]~13_combout\ & ((!\s_sortedn6[3]~36_combout\) # (!\Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \s_sortedn6[3]~36_combout\,
	datac => \s_sortedn6[3]~21_combout\,
	datad => \s_sortedn5[2]~13_combout\,
	combout => \s_sortedn6[3]~25_combout\);

-- Location: LCCOMB_X74_Y72_N20
\s_sortedn6[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6[3]~26_combout\ = (\res~input_o\) # ((\enable~input_o\ & ((s_c5(1)) # (!\s_sortedn6[3]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res~input_o\,
	datab => \enable~input_o\,
	datac => s_c5(1),
	datad => \s_sortedn6[3]~25_combout\,
	combout => \s_sortedn6[3]~26_combout\);

-- Location: FF_X74_Y72_N5
\s_sortedn6[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn6~39_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn6[3]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn6(0));

-- Location: LCCOMB_X75_Y72_N16
\s_sortedn6~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6~27_combout\ = (\Equal9~0_combout\ & ((\s_sortedn6[3]~15_combout\ & ((\n8[1]~input_o\))) # (!\s_sortedn6[3]~15_combout\ & (\n3[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n3[1]~input_o\,
	datab => \n8[1]~input_o\,
	datac => \Equal9~0_combout\,
	datad => \s_sortedn6[3]~15_combout\,
	combout => \s_sortedn6~27_combout\);

-- Location: LCCOMB_X74_Y72_N18
\s_sortedn6~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6~28_combout\ = (\s_sortedn6[3]~17_combout\ & (\n6[1]~input_o\ & ((!\s_sortedn6[3]~38_combout\)))) # (!\s_sortedn6[3]~17_combout\ & (((\n4[1]~input_o\) # (\s_sortedn6[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n6[1]~input_o\,
	datab => \n4[1]~input_o\,
	datac => \s_sortedn6[3]~17_combout\,
	datad => \s_sortedn6[3]~38_combout\,
	combout => \s_sortedn6~28_combout\);

-- Location: LCCOMB_X74_Y72_N12
\s_sortedn6~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6~29_combout\ = (\s_sortedn6[3]~38_combout\ & ((\s_sortedn6~28_combout\ & ((\n7[1]~input_o\))) # (!\s_sortedn6~28_combout\ & (\n2[1]~input_o\)))) # (!\s_sortedn6[3]~38_combout\ & (((\s_sortedn6~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n2[1]~input_o\,
	datab => \n7[1]~input_o\,
	datac => \s_sortedn6[3]~38_combout\,
	datad => \s_sortedn6~28_combout\,
	combout => \s_sortedn6~29_combout\);

-- Location: LCCOMB_X74_Y72_N26
\s_sortedn6~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6~40_combout\ = (\s_sortedn6~27_combout\) # ((\s_sortedn6~29_combout\ & ((s_c5(0)) # (!s_c5(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_c5(0),
	datab => \s_sortedn6~27_combout\,
	datac => s_c5(1),
	datad => \s_sortedn6~29_combout\,
	combout => \s_sortedn6~40_combout\);

-- Location: FF_X74_Y72_N27
\s_sortedn6[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn6~40_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn6[3]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn6(1));

-- Location: LCCOMB_X75_Y72_N14
\s_sortedn6~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6~30_combout\ = (\Equal9~0_combout\ & ((\s_sortedn6[3]~15_combout\ & (\n8[2]~input_o\)) # (!\s_sortedn6[3]~15_combout\ & ((\n3[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n8[2]~input_o\,
	datab => \n3[2]~input_o\,
	datac => \Equal9~0_combout\,
	datad => \s_sortedn6[3]~15_combout\,
	combout => \s_sortedn6~30_combout\);

-- Location: LCCOMB_X74_Y72_N30
\s_sortedn6~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6~31_combout\ = (\s_sortedn6[3]~17_combout\ & ((\s_sortedn6[3]~38_combout\ & ((\n2[2]~input_o\))) # (!\s_sortedn6[3]~38_combout\ & (\n6[2]~input_o\)))) # (!\s_sortedn6[3]~17_combout\ & (((\s_sortedn6[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n6[2]~input_o\,
	datab => \n2[2]~input_o\,
	datac => \s_sortedn6[3]~17_combout\,
	datad => \s_sortedn6[3]~38_combout\,
	combout => \s_sortedn6~31_combout\);

-- Location: LCCOMB_X74_Y72_N16
\s_sortedn6~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6~32_combout\ = (\s_sortedn6[3]~17_combout\ & (((\s_sortedn6~31_combout\)))) # (!\s_sortedn6[3]~17_combout\ & ((\s_sortedn6~31_combout\ & ((\n7[2]~input_o\))) # (!\s_sortedn6~31_combout\ & (\n4[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_sortedn6[3]~17_combout\,
	datab => \n4[2]~input_o\,
	datac => \s_sortedn6~31_combout\,
	datad => \n7[2]~input_o\,
	combout => \s_sortedn6~32_combout\);

-- Location: LCCOMB_X74_Y72_N0
\s_sortedn6~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6~41_combout\ = (\s_sortedn6~30_combout\) # ((\s_sortedn6~32_combout\ & ((s_c5(0)) # (!s_c5(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_c5(0),
	datab => s_c5(1),
	datac => \s_sortedn6~30_combout\,
	datad => \s_sortedn6~32_combout\,
	combout => \s_sortedn6~41_combout\);

-- Location: FF_X74_Y72_N1
\s_sortedn6[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn6~41_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn6[3]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn6(2));

-- Location: LCCOMB_X75_Y72_N8
\s_sortedn6~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6~33_combout\ = (\Equal9~0_combout\ & ((\s_sortedn6[3]~15_combout\ & (\n8[3]~input_o\)) # (!\s_sortedn6[3]~15_combout\ & ((\n3[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n8[3]~input_o\,
	datab => \n3[3]~input_o\,
	datac => \Equal9~0_combout\,
	datad => \s_sortedn6[3]~15_combout\,
	combout => \s_sortedn6~33_combout\);

-- Location: LCCOMB_X74_Y72_N6
\s_sortedn6~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6~34_combout\ = (\s_sortedn6[3]~17_combout\ & (((\n6[3]~input_o\ & !\s_sortedn6[3]~38_combout\)))) # (!\s_sortedn6[3]~17_combout\ & ((\n4[3]~input_o\) # ((\s_sortedn6[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n4[3]~input_o\,
	datab => \n6[3]~input_o\,
	datac => \s_sortedn6[3]~17_combout\,
	datad => \s_sortedn6[3]~38_combout\,
	combout => \s_sortedn6~34_combout\);

-- Location: LCCOMB_X74_Y72_N24
\s_sortedn6~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6~35_combout\ = (\s_sortedn6[3]~38_combout\ & ((\s_sortedn6~34_combout\ & (\n7[3]~input_o\)) # (!\s_sortedn6~34_combout\ & ((\n2[3]~input_o\))))) # (!\s_sortedn6[3]~38_combout\ & (((\s_sortedn6~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n7[3]~input_o\,
	datab => \s_sortedn6[3]~38_combout\,
	datac => \n2[3]~input_o\,
	datad => \s_sortedn6~34_combout\,
	combout => \s_sortedn6~35_combout\);

-- Location: LCCOMB_X74_Y72_N22
\s_sortedn6~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn6~42_combout\ = (\s_sortedn6~33_combout\) # ((\s_sortedn6~35_combout\ & ((s_c5(0)) # (!s_c5(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_c5(0),
	datab => \s_sortedn6~33_combout\,
	datac => s_c5(1),
	datad => \s_sortedn6~35_combout\,
	combout => \s_sortedn6~42_combout\);

-- Location: FF_X74_Y72_N23
\s_sortedn6[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn6~42_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn6[3]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn6(3));

-- Location: LCCOMB_X76_Y70_N8
\s_c6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c6~0_combout\ = (\Equal9~0_combout\ & (((\inc_dec~input_o\)))) # (!\Equal9~0_combout\ & ((\inc_dec~input_o\ & (\LessThan30~2_combout\)) # (!\inc_dec~input_o\ & ((\LessThan14~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan30~2_combout\,
	datab => \LessThan14~2_combout\,
	datac => \Equal9~0_combout\,
	datad => \inc_dec~input_o\,
	combout => \s_c6~0_combout\);

-- Location: LCCOMB_X76_Y70_N10
\s_c6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c6~1_combout\ = (\Equal9~0_combout\ & (((\s_c6~0_combout\)))) # (!\Equal9~0_combout\ & ((\s_c6~q\) # ((\s_c6~0_combout\ & !\s_sortedn6[3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \s_c6~q\,
	datac => \s_c6~0_combout\,
	datad => \s_sortedn6[3]~17_combout\,
	combout => \s_c6~1_combout\);

-- Location: LCCOMB_X76_Y70_N14
\s_c6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_c6~2_combout\ = (\Equal9~0_combout\ & ((\s_c6~1_combout\ & (!\LessThan29~2_combout\)) # (!\s_c6~1_combout\ & ((!\LessThan13~2_combout\))))) # (!\Equal9~0_combout\ & (((\s_c6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \LessThan29~2_combout\,
	datac => \LessThan13~2_combout\,
	datad => \s_c6~1_combout\,
	combout => \s_c6~2_combout\);

-- Location: FF_X76_Y70_N15
s_c6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_c6~2_combout\,
	ena => \s_c1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_c6~q\);

-- Location: LCCOMB_X73_Y69_N14
\LessThan15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~0_combout\ = (\n4[1]~input_o\ & (((!\n8[0]~input_o\ & \n4[0]~input_o\)) # (!\n8[1]~input_o\))) # (!\n4[1]~input_o\ & (!\n8[0]~input_o\ & (!\n8[1]~input_o\ & \n4[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n8[0]~input_o\,
	datab => \n4[1]~input_o\,
	datac => \n8[1]~input_o\,
	datad => \n4[0]~input_o\,
	combout => \LessThan15~0_combout\);

-- Location: LCCOMB_X73_Y69_N24
\LessThan15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~1_combout\ = (\n4[2]~input_o\ & ((\LessThan15~0_combout\) # (!\n8[2]~input_o\))) # (!\n4[2]~input_o\ & (\LessThan15~0_combout\ & !\n8[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n4[2]~input_o\,
	datab => \LessThan15~0_combout\,
	datac => \n8[2]~input_o\,
	combout => \LessThan15~1_combout\);

-- Location: LCCOMB_X74_Y69_N28
\s_sortedn7[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn7[3]~6_combout\ = (!\inc_dec~input_o\ & ((\n4[3]~input_o\ & ((\LessThan15~1_combout\) # (!\n8[3]~input_o\))) # (!\n4[3]~input_o\ & (!\n8[3]~input_o\ & \LessThan15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_dec~input_o\,
	datab => \n4[3]~input_o\,
	datac => \n8[3]~input_o\,
	datad => \LessThan15~1_combout\,
	combout => \s_sortedn7[3]~6_combout\);

-- Location: LCCOMB_X75_Y72_N6
\LessThan31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan31~0_combout\ = (\n4[1]~input_o\ & (\n8[1]~input_o\ & (\n8[0]~input_o\ & !\n4[0]~input_o\))) # (!\n4[1]~input_o\ & ((\n8[1]~input_o\) # ((\n8[0]~input_o\ & !\n4[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n4[1]~input_o\,
	datab => \n8[1]~input_o\,
	datac => \n8[0]~input_o\,
	datad => \n4[0]~input_o\,
	combout => \LessThan31~0_combout\);

-- Location: LCCOMB_X75_Y72_N4
\LessThan31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan31~1_combout\ = (\n4[2]~input_o\ & (\n8[2]~input_o\ & \LessThan31~0_combout\)) # (!\n4[2]~input_o\ & ((\n8[2]~input_o\) # (\LessThan31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n4[2]~input_o\,
	datac => \n8[2]~input_o\,
	datad => \LessThan31~0_combout\,
	combout => \LessThan31~1_combout\);

-- Location: LCCOMB_X75_Y72_N22
\s_sortedn7[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn7[3]~5_combout\ = (\inc_dec~input_o\ & ((\n8[3]~input_o\ & ((\LessThan31~1_combout\) # (!\n4[3]~input_o\))) # (!\n8[3]~input_o\ & (\LessThan31~1_combout\ & !\n4[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n8[3]~input_o\,
	datab => \LessThan31~1_combout\,
	datac => \n4[3]~input_o\,
	datad => \inc_dec~input_o\,
	combout => \s_sortedn7[3]~5_combout\);

-- Location: LCCOMB_X73_Y70_N18
\s_sortedn7[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn7[3]~0_combout\ = (\s_sortedn6[3]~19_combout\ & (((\Equal7~0_combout\)))) # (!\s_sortedn6[3]~19_combout\ & ((\s_sortedn6[3]~21_combout\ & ((\Equal7~0_combout\))) # (!\s_sortedn6[3]~21_combout\ & (!\Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \s_sortedn6[3]~19_combout\,
	datac => \s_sortedn6[3]~21_combout\,
	datad => \Equal7~0_combout\,
	combout => \s_sortedn7[3]~0_combout\);

-- Location: LCCOMB_X75_Y70_N30
\s_sortedn7[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn7[3]~1_combout\ = (!\inc_dec~input_o\ & ((s_c5(0) & (!\LessThan14~2_combout\)) # (!s_c5(0) & ((\LessThan13~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~2_combout\,
	datab => \LessThan13~2_combout\,
	datac => s_c5(0),
	datad => \inc_dec~input_o\,
	combout => \s_sortedn7[3]~1_combout\);

-- Location: LCCOMB_X75_Y70_N20
\s_sortedn7[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn7[3]~2_combout\ = (\inc_dec~input_o\ & ((s_c5(0) & (!\LessThan30~2_combout\)) # (!s_c5(0) & ((\LessThan29~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_dec~input_o\,
	datab => \LessThan30~2_combout\,
	datac => s_c5(0),
	datad => \LessThan29~2_combout\,
	combout => \s_sortedn7[3]~2_combout\);

-- Location: LCCOMB_X75_Y70_N6
\s_sortedn7[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn7[3]~3_combout\ = (s_c5(1) & ((\s_sortedn7[3]~1_combout\) # (\s_sortedn7[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_c5(1),
	datac => \s_sortedn7[3]~1_combout\,
	datad => \s_sortedn7[3]~2_combout\,
	combout => \s_sortedn7[3]~3_combout\);

-- Location: LCCOMB_X75_Y70_N12
\s_sortedn7[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn7[3]~4_combout\ = (!\s_c6~q\ & ((\s_sortedn7[3]~3_combout\ & (\Equal9~0_combout\)) # (!\s_sortedn7[3]~3_combout\ & ((\s_sortedn7[3]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_c6~q\,
	datab => \Equal9~0_combout\,
	datac => \s_sortedn7[3]~0_combout\,
	datad => \s_sortedn7[3]~3_combout\,
	combout => \s_sortedn7[3]~4_combout\);

-- Location: LCCOMB_X75_Y70_N2
\s_sortedn7[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn7[3]~7_combout\ = (\s_sortedn7[3]~4_combout\) # ((\s_c6~q\ & ((\s_sortedn7[3]~6_combout\) # (\s_sortedn7[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_sortedn7[3]~6_combout\,
	datab => \s_sortedn7[3]~5_combout\,
	datac => \s_c6~q\,
	datad => \s_sortedn7[3]~4_combout\,
	combout => \s_sortedn7[3]~7_combout\);

-- Location: LCCOMB_X75_Y70_N4
\s_sortedn7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn7~8_combout\ = (\s_c6~q\ & (((\n4[0]~input_o\) # (\s_sortedn7[3]~7_combout\)))) # (!\s_c6~q\ & (\n7[0]~input_o\ & ((!\s_sortedn7[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n7[0]~input_o\,
	datab => \s_c6~q\,
	datac => \n4[0]~input_o\,
	datad => \s_sortedn7[3]~7_combout\,
	combout => \s_sortedn7~8_combout\);

-- Location: LCCOMB_X75_Y70_N0
\s_sortedn7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn7~9_combout\ = (\s_sortedn7~8_combout\ & ((\n8[0]~input_o\) # ((!\s_sortedn7[3]~7_combout\)))) # (!\s_sortedn7~8_combout\ & (((\n3[0]~input_o\ & \s_sortedn7[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n8[0]~input_o\,
	datab => \n3[0]~input_o\,
	datac => \s_sortedn7~8_combout\,
	datad => \s_sortedn7[3]~7_combout\,
	combout => \s_sortedn7~9_combout\);

-- Location: LCCOMB_X75_Y70_N10
\s_sortedn7[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn7[3]~10_combout\ = (!\s_c6~q\ & (((!\s_sortedn7[3]~1_combout\ & !\s_sortedn7[3]~2_combout\)) # (!s_c5(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_c5(1),
	datab => \s_c6~q\,
	datac => \s_sortedn7[3]~1_combout\,
	datad => \s_sortedn7[3]~2_combout\,
	combout => \s_sortedn7[3]~10_combout\);

-- Location: LCCOMB_X74_Y70_N6
\s_sortedn7[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn7[3]~11_combout\ = (\res~input_o\) # ((\enable~input_o\ & ((!\s_sortedn6[3]~25_combout\) # (!\s_sortedn7[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \res~input_o\,
	datab => \enable~input_o\,
	datac => \s_sortedn7[3]~10_combout\,
	datad => \s_sortedn6[3]~25_combout\,
	combout => \s_sortedn7[3]~11_combout\);

-- Location: FF_X75_Y70_N1
\s_sortedn7[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn7~9_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn7[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn7(0));

-- Location: LCCOMB_X74_Y70_N16
\s_sortedn7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn7~12_combout\ = (\s_c6~q\ & ((\n4[1]~input_o\) # ((\s_sortedn7[3]~7_combout\)))) # (!\s_c6~q\ & (((\n7[1]~input_o\ & !\s_sortedn7[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n4[1]~input_o\,
	datab => \s_c6~q\,
	datac => \n7[1]~input_o\,
	datad => \s_sortedn7[3]~7_combout\,
	combout => \s_sortedn7~12_combout\);

-- Location: LCCOMB_X74_Y70_N24
\s_sortedn7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn7~13_combout\ = (\s_sortedn7[3]~7_combout\ & ((\s_sortedn7~12_combout\ & ((\n8[1]~input_o\))) # (!\s_sortedn7~12_combout\ & (\n3[1]~input_o\)))) # (!\s_sortedn7[3]~7_combout\ & (((\s_sortedn7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_sortedn7[3]~7_combout\,
	datab => \n3[1]~input_o\,
	datac => \n8[1]~input_o\,
	datad => \s_sortedn7~12_combout\,
	combout => \s_sortedn7~13_combout\);

-- Location: FF_X74_Y70_N25
\s_sortedn7[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn7~13_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn7[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn7(1));

-- Location: LCCOMB_X75_Y70_N28
\s_sortedn7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn7~14_combout\ = (\s_c6~q\ & (((\n4[2]~input_o\) # (\s_sortedn7[3]~7_combout\)))) # (!\s_c6~q\ & (\n7[2]~input_o\ & ((!\s_sortedn7[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n7[2]~input_o\,
	datab => \s_c6~q\,
	datac => \n4[2]~input_o\,
	datad => \s_sortedn7[3]~7_combout\,
	combout => \s_sortedn7~14_combout\);

-- Location: LCCOMB_X75_Y70_N18
\s_sortedn7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn7~15_combout\ = (\s_sortedn7[3]~7_combout\ & ((\s_sortedn7~14_combout\ & (\n8[2]~input_o\)) # (!\s_sortedn7~14_combout\ & ((\n3[2]~input_o\))))) # (!\s_sortedn7[3]~7_combout\ & (((\s_sortedn7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n8[2]~input_o\,
	datab => \s_sortedn7[3]~7_combout\,
	datac => \n3[2]~input_o\,
	datad => \s_sortedn7~14_combout\,
	combout => \s_sortedn7~15_combout\);

-- Location: FF_X75_Y70_N19
\s_sortedn7[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn7~15_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn7[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn7(2));

-- Location: LCCOMB_X74_Y70_N18
\s_sortedn7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn7~16_combout\ = (\s_c6~q\ & (((\n4[3]~input_o\) # (\s_sortedn7[3]~7_combout\)))) # (!\s_c6~q\ & (\n7[3]~input_o\ & ((!\s_sortedn7[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n7[3]~input_o\,
	datab => \s_c6~q\,
	datac => \n4[3]~input_o\,
	datad => \s_sortedn7[3]~7_combout\,
	combout => \s_sortedn7~16_combout\);

-- Location: LCCOMB_X74_Y70_N2
\s_sortedn7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn7~17_combout\ = (\s_sortedn7[3]~7_combout\ & ((\s_sortedn7~16_combout\ & (\n8[3]~input_o\)) # (!\s_sortedn7~16_combout\ & ((\n3[3]~input_o\))))) # (!\s_sortedn7[3]~7_combout\ & (((\s_sortedn7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_sortedn7[3]~7_combout\,
	datab => \n8[3]~input_o\,
	datac => \n3[3]~input_o\,
	datad => \s_sortedn7~16_combout\,
	combout => \s_sortedn7~17_combout\);

-- Location: FF_X74_Y70_N3
\s_sortedn7[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn7~17_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn7[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn7(3));

-- Location: LCCOMB_X75_Y70_N26
\s_sortedn8[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn8[3]~0_combout\ = (\s_c6~q\ & ((\s_sortedn7[3]~6_combout\) # (\s_sortedn7[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_sortedn7[3]~6_combout\,
	datac => \s_c6~q\,
	datad => \s_sortedn7[3]~5_combout\,
	combout => \s_sortedn8[3]~0_combout\);

-- Location: LCCOMB_X75_Y70_N24
\s_sortedn8[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn8[3]~1_combout\ = (\s_sortedn8[3]~0_combout\) # ((\s_sortedn7[3]~4_combout\ & ((!\s_c6~q\) # (!\inc_dec~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_dec~input_o\,
	datab => \s_c6~q\,
	datac => \s_sortedn8[3]~0_combout\,
	datad => \s_sortedn7[3]~4_combout\,
	combout => \s_sortedn8[3]~1_combout\);

-- Location: LCCOMB_X75_Y70_N8
\s_sortedn8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn8~2_combout\ = (\s_sortedn8[3]~1_combout\ & (\n4[0]~input_o\)) # (!\s_sortedn8[3]~1_combout\ & ((\n8[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n4[0]~input_o\,
	datac => \n8[0]~input_o\,
	datad => \s_sortedn8[3]~1_combout\,
	combout => \s_sortedn8~2_combout\);

-- Location: FF_X75_Y70_N9
\s_sortedn8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn8~2_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn7[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn8(0));

-- Location: LCCOMB_X74_Y70_N12
\s_sortedn8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn8~3_combout\ = (\s_sortedn8[3]~1_combout\ & (\n4[1]~input_o\)) # (!\s_sortedn8[3]~1_combout\ & ((\n8[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n4[1]~input_o\,
	datab => \n8[1]~input_o\,
	datad => \s_sortedn8[3]~1_combout\,
	combout => \s_sortedn8~3_combout\);

-- Location: FF_X74_Y70_N13
\s_sortedn8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn8~3_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn7[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn8(1));

-- Location: LCCOMB_X74_Y70_N30
\s_sortedn8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn8~4_combout\ = (\s_sortedn8[3]~1_combout\ & ((\n4[2]~input_o\))) # (!\s_sortedn8[3]~1_combout\ & (\n8[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n8[2]~input_o\,
	datac => \n4[2]~input_o\,
	datad => \s_sortedn8[3]~1_combout\,
	combout => \s_sortedn8~4_combout\);

-- Location: FF_X74_Y70_N31
\s_sortedn8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn8~4_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn7[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn8(2));

-- Location: LCCOMB_X74_Y70_N8
\s_sortedn8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_sortedn8~5_combout\ = (\s_sortedn8[3]~1_combout\ & ((\n4[3]~input_o\))) # (!\s_sortedn8[3]~1_combout\ & (\n8[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n8[3]~input_o\,
	datac => \n4[3]~input_o\,
	datad => \s_sortedn8[3]~1_combout\,
	combout => \s_sortedn8~5_combout\);

-- Location: FF_X74_Y70_N9
\s_sortedn8[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_sortedn8~5_combout\,
	sclr => \res~input_o\,
	ena => \s_sortedn7[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_sortedn8(3));

-- Location: LCCOMB_X76_Y70_N6
\s_finish~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_finish~1_combout\ = (s_c5(1) & ((s_c5(0) & ((!\LessThan30~2_combout\))) # (!s_c5(0) & (\LessThan29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_c5(0),
	datab => \LessThan29~2_combout\,
	datac => s_c5(1),
	datad => \LessThan30~2_combout\,
	combout => \s_finish~1_combout\);

-- Location: LCCOMB_X76_Y70_N28
\s_finish~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_finish~0_combout\ = (s_c4(0) & ((s_c4(1) & ((!\LessThan28~3_combout\))) # (!s_c4(1) & (\LessThan26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan26~2_combout\,
	datab => \LessThan28~3_combout\,
	datac => s_c4(0),
	datad => s_c4(1),
	combout => \s_finish~0_combout\);

-- Location: LCCOMB_X77_Y70_N10
\s_finish~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_finish~2_combout\ = (\inc_dec~input_o\ & ((\s_finish~1_combout\) # ((\s_sortedn5~11_combout\) # (\s_finish~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inc_dec~input_o\,
	datab => \s_finish~1_combout\,
	datac => \s_sortedn5~11_combout\,
	datad => \s_finish~0_combout\,
	combout => \s_finish~2_combout\);

-- Location: LCCOMB_X76_Y70_N4
\s_finish~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_finish~3_combout\ = (s_c5(1) & ((s_c5(0) & ((!\LessThan14~2_combout\))) # (!s_c5(0) & (\LessThan13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan13~2_combout\,
	datab => \LessThan14~2_combout\,
	datac => s_c5(1),
	datad => s_c5(0),
	combout => \s_finish~3_combout\);

-- Location: LCCOMB_X74_Y69_N2
\LessThan10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~2_combout\ = (\n2[3]~input_o\ & !\n8[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \n2[3]~input_o\,
	datac => \n8[3]~input_o\,
	combout => \LessThan10~2_combout\);

-- Location: LCCOMB_X77_Y70_N4
\s_finish~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_finish~4_combout\ = (s_c4(1) & (((!\LessThan12~2_combout\)))) # (!s_c4(1) & ((\LessThan10~2_combout\) # ((\LessThan10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~2_combout\,
	datab => \LessThan12~2_combout\,
	datac => \LessThan10~5_combout\,
	datad => s_c4(1),
	combout => \s_finish~4_combout\);

-- Location: LCCOMB_X77_Y70_N26
\s_finish~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_finish~5_combout\ = (\s_finish~3_combout\) # ((\s_sortedn5~12_combout\) # ((s_c4(0) & \s_finish~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_c4(0),
	datab => \s_finish~3_combout\,
	datac => \s_finish~4_combout\,
	datad => \s_sortedn5~12_combout\,
	combout => \s_finish~5_combout\);

-- Location: LCCOMB_X77_Y70_N16
\s_finish~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_finish~6_combout\ = (\s_c6~q\) # ((\s_finish~5_combout\ & !\inc_dec~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_c6~q\,
	datac => \s_finish~5_combout\,
	datad => \inc_dec~input_o\,
	combout => \s_finish~6_combout\);

-- Location: LCCOMB_X77_Y70_N2
\s_finish~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_finish~7_combout\ = (\s_finish~q\) # ((\enable~input_o\ & ((\s_finish~2_combout\) # (\s_finish~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_finish~2_combout\,
	datab => \enable~input_o\,
	datac => \s_finish~q\,
	datad => \s_finish~6_combout\,
	combout => \s_finish~7_combout\);

-- Location: FF_X77_Y70_N3
s_finish : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_finish~7_combout\,
	sclr => \res~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_finish~q\);

ww_sortedn1(0) <= \sortedn1[0]~output_o\;

ww_sortedn1(1) <= \sortedn1[1]~output_o\;

ww_sortedn1(2) <= \sortedn1[2]~output_o\;

ww_sortedn1(3) <= \sortedn1[3]~output_o\;

ww_sortedn2(0) <= \sortedn2[0]~output_o\;

ww_sortedn2(1) <= \sortedn2[1]~output_o\;

ww_sortedn2(2) <= \sortedn2[2]~output_o\;

ww_sortedn2(3) <= \sortedn2[3]~output_o\;

ww_sortedn3(0) <= \sortedn3[0]~output_o\;

ww_sortedn3(1) <= \sortedn3[1]~output_o\;

ww_sortedn3(2) <= \sortedn3[2]~output_o\;

ww_sortedn3(3) <= \sortedn3[3]~output_o\;

ww_sortedn4(0) <= \sortedn4[0]~output_o\;

ww_sortedn4(1) <= \sortedn4[1]~output_o\;

ww_sortedn4(2) <= \sortedn4[2]~output_o\;

ww_sortedn4(3) <= \sortedn4[3]~output_o\;

ww_sortedn5(0) <= \sortedn5[0]~output_o\;

ww_sortedn5(1) <= \sortedn5[1]~output_o\;

ww_sortedn5(2) <= \sortedn5[2]~output_o\;

ww_sortedn5(3) <= \sortedn5[3]~output_o\;

ww_sortedn6(0) <= \sortedn6[0]~output_o\;

ww_sortedn6(1) <= \sortedn6[1]~output_o\;

ww_sortedn6(2) <= \sortedn6[2]~output_o\;

ww_sortedn6(3) <= \sortedn6[3]~output_o\;

ww_sortedn7(0) <= \sortedn7[0]~output_o\;

ww_sortedn7(1) <= \sortedn7[1]~output_o\;

ww_sortedn7(2) <= \sortedn7[2]~output_o\;

ww_sortedn7(3) <= \sortedn7[3]~output_o\;

ww_sortedn8(0) <= \sortedn8[0]~output_o\;

ww_sortedn8(1) <= \sortedn8[1]~output_o\;

ww_sortedn8(2) <= \sortedn8[2]~output_o\;

ww_sortedn8(3) <= \sortedn8[3]~output_o\;

ww_finish <= \finish~output_o\;
END structure;


