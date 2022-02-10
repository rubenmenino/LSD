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
-- Generated on "05/23/2018 23:17:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ControlUnit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ControlUnit_vhd_vec_tst IS
END ControlUnit_vhd_vec_tst;
ARCHITECTURE ControlUnit_arch OF ControlUnit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL full : STD_LOGIC;
SIGNAL inc_dec : STD_LOGIC;
SIGNAL insert : STD_LOGIC;
SIGNAL load : STD_LOGIC;
SIGNAL merge : STD_LOGIC;
SIGNAL out_count : STD_LOGIC;
SIGNAL out_dec : STD_LOGIC;
SIGNAL out_inc : STD_LOGIC;
SIGNAL out_load : STD_LOGIC;
SIGNAL out_merge : STD_LOGIC;
SIGNAL out_rand : STD_LOGIC;
SIGNAL out_user : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT ControlUnit
	PORT (
	clk : IN STD_LOGIC;
	full : IN STD_LOGIC;
	inc_dec : IN STD_LOGIC;
	insert : IN STD_LOGIC;
	load : IN STD_LOGIC;
	merge : IN STD_LOGIC;
	out_count : OUT STD_LOGIC;
	out_dec : OUT STD_LOGIC;
	out_inc : OUT STD_LOGIC;
	out_load : OUT STD_LOGIC;
	out_merge : OUT STD_LOGIC;
	out_rand : OUT STD_LOGIC;
	out_user : OUT STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ControlUnit
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	full => full,
	inc_dec => inc_dec,
	insert => insert,
	load => load,
	merge => merge,
	out_count => out_count,
	out_dec => out_dec,
	out_inc => out_inc,
	out_load => out_load,
	out_merge => out_merge,
	out_rand => out_rand,
	out_user => out_user,
	reset => reset
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

-- inc_dec
t_prcs_inc_dec: PROCESS
BEGIN
	inc_dec <= '0';
	WAIT FOR 320000 ps;
	inc_dec <= '1';
	WAIT FOR 210000 ps;
	inc_dec <= '0';
WAIT;
END PROCESS t_prcs_inc_dec;

-- insert
t_prcs_insert: PROCESS
BEGIN
	insert <= '0';
	WAIT FOR 140000 ps;
	insert <= '1';
	WAIT FOR 70000 ps;
	insert <= '0';
WAIT;
END PROCESS t_prcs_insert;

-- load
t_prcs_load: PROCESS
BEGIN
	load <= '0';
	WAIT FOR 90000 ps;
	load <= '1';
	WAIT FOR 20000 ps;
	load <= '0';
	WAIT FOR 80000 ps;
	load <= '1';
	WAIT FOR 80000 ps;
	load <= '0';
WAIT;
END PROCESS t_prcs_load;

-- merge
t_prcs_merge: PROCESS
BEGIN
	merge <= '0';
WAIT;
END PROCESS t_prcs_merge;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 840000 ps;
	reset <= '1';
	WAIT FOR 40000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- full
t_prcs_full: PROCESS
BEGIN
	full <= '0';
	WAIT FOR 500000 ps;
	full <= '1';
	WAIT FOR 60000 ps;
	full <= '0';
WAIT;
END PROCESS t_prcs_full;
END ControlUnit_arch;
