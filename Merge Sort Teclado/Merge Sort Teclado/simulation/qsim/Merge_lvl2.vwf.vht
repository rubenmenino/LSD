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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/29/2018 17:36:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Merge_lvl2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Merge_lvl2_vhd_vec_tst IS
END Merge_lvl2_vhd_vec_tst;
ARCHITECTURE Merge_lvl2_arch OF Merge_lvl2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL inc_dec : STD_LOGIC;
SIGNAL n1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL n2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL n3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL n4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL nextlevel : STD_LOGIC;
SIGNAL sortedn1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sortedn2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sortedn3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sortedn4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Merge_lvl2
	PORT (
	clk : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	inc_dec : IN STD_LOGIC;
	n1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	n2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	n3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	n4 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	nextlevel : OUT STD_LOGIC;
	sortedn1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	sortedn2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	sortedn3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	sortedn4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Merge_lvl2
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	enable => enable,
	inc_dec => inc_dec,
	n1 => n1,
	n2 => n2,
	n3 => n3,
	n4 => n4,
	nextlevel => nextlevel,
	sortedn1 => sortedn1,
	sortedn2 => sortedn2,
	sortedn3 => sortedn3,
	sortedn4 => sortedn4
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
	WAIT FOR 350000 ps;
	enable <= '0';
	WAIT FOR 80000 ps;
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;

-- inc_dec
t_prcs_inc_dec: PROCESS
BEGIN
	inc_dec <= '0';
WAIT;
END PROCESS t_prcs_inc_dec;
-- n1[3]
t_prcs_n1_3: PROCESS
BEGIN
	n1(3) <= '0';
WAIT;
END PROCESS t_prcs_n1_3;
-- n1[2]
t_prcs_n1_2: PROCESS
BEGIN
	n1(2) <= '0';
WAIT;
END PROCESS t_prcs_n1_2;
-- n1[1]
t_prcs_n1_1: PROCESS
BEGIN
	n1(1) <= '0';
WAIT;
END PROCESS t_prcs_n1_1;
-- n1[0]
t_prcs_n1_0: PROCESS
BEGIN
	n1(0) <= '1';
WAIT;
END PROCESS t_prcs_n1_0;
-- n2[3]
t_prcs_n2_3: PROCESS
BEGIN
	n2(3) <= '0';
WAIT;
END PROCESS t_prcs_n2_3;
-- n2[2]
t_prcs_n2_2: PROCESS
BEGIN
	n2(2) <= '1';
WAIT;
END PROCESS t_prcs_n2_2;
-- n2[1]
t_prcs_n2_1: PROCESS
BEGIN
	n2(1) <= '0';
WAIT;
END PROCESS t_prcs_n2_1;
-- n2[0]
t_prcs_n2_0: PROCESS
BEGIN
	n2(0) <= '0';
WAIT;
END PROCESS t_prcs_n2_0;
-- n3[3]
t_prcs_n3_3: PROCESS
BEGIN
	n3(3) <= '0';
WAIT;
END PROCESS t_prcs_n3_3;
-- n3[2]
t_prcs_n3_2: PROCESS
BEGIN
	n3(2) <= '0';
WAIT;
END PROCESS t_prcs_n3_2;
-- n3[1]
t_prcs_n3_1: PROCESS
BEGIN
	n3(1) <= '1';
WAIT;
END PROCESS t_prcs_n3_1;
-- n3[0]
t_prcs_n3_0: PROCESS
BEGIN
	n3(0) <= '1';
WAIT;
END PROCESS t_prcs_n3_0;
-- n4[3]
t_prcs_n4_3: PROCESS
BEGIN
	n4(3) <= '0';
WAIT;
END PROCESS t_prcs_n4_3;
-- n4[2]
t_prcs_n4_2: PROCESS
BEGIN
	n4(2) <= '1';
WAIT;
END PROCESS t_prcs_n4_2;
-- n4[1]
t_prcs_n4_1: PROCESS
BEGIN
	n4(1) <= '1';
WAIT;
END PROCESS t_prcs_n4_1;
-- n4[0]
t_prcs_n4_0: PROCESS
BEGIN
	n4(0) <= '0';
WAIT;
END PROCESS t_prcs_n4_0;
END Merge_lvl2_arch;
