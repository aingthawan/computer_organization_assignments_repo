-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/05/2023 20:55:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          control_unit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY control_unit_vhd_vec_tst IS
END control_unit_vhd_vec_tst;
ARCHITECTURE control_unit_arch OF control_unit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALU_control_input : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ALUSrc : STD_LOGIC;
SIGNAL Branch : STD_LOGIC;
SIGNAL instruction_in : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Jump : STD_LOGIC;
SIGNAL MemRead : STD_LOGIC;
SIGNAL MemtoReg : STD_LOGIC;
SIGNAL MemWrite : STD_LOGIC;
SIGNAL RegDst : STD_LOGIC;
SIGNAL RegWrite : STD_LOGIC;
COMPONENT control_unit
	PORT (
	ALU_control_input : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	ALUSrc : BUFFER STD_LOGIC;
	Branch : BUFFER STD_LOGIC;
	instruction_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	Jump : BUFFER STD_LOGIC;
	MemRead : BUFFER STD_LOGIC;
	MemtoReg : BUFFER STD_LOGIC;
	MemWrite : BUFFER STD_LOGIC;
	RegDst : BUFFER STD_LOGIC;
	RegWrite : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : control_unit
	PORT MAP (
-- list connections between master ports and signals
	ALU_control_input => ALU_control_input,
	ALUSrc => ALUSrc,
	Branch => Branch,
	instruction_in => instruction_in,
	Jump => Jump,
	MemRead => MemRead,
	MemtoReg => MemtoReg,
	MemWrite => MemWrite,
	RegDst => RegDst,
	RegWrite => RegWrite
	);
-- instruction_in[31]
t_prcs_instruction_in_31: PROCESS
BEGIN
	instruction_in(31) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_31;
-- instruction_in[30]
t_prcs_instruction_in_30: PROCESS
BEGIN
	instruction_in(30) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_30;
-- instruction_in[29]
t_prcs_instruction_in_29: PROCESS
BEGIN
	instruction_in(29) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_29;
-- instruction_in[28]
t_prcs_instruction_in_28: PROCESS
BEGIN
	instruction_in(28) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_28;
-- instruction_in[27]
t_prcs_instruction_in_27: PROCESS
BEGIN
	instruction_in(27) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_27;
-- instruction_in[26]
t_prcs_instruction_in_26: PROCESS
BEGIN
	instruction_in(26) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_26;
-- instruction_in[25]
t_prcs_instruction_in_25: PROCESS
BEGIN
	instruction_in(25) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_25;
-- instruction_in[24]
t_prcs_instruction_in_24: PROCESS
BEGIN
	instruction_in(24) <= '1';
WAIT;
END PROCESS t_prcs_instruction_in_24;
-- instruction_in[23]
t_prcs_instruction_in_23: PROCESS
BEGIN
	instruction_in(23) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_23;
-- instruction_in[22]
t_prcs_instruction_in_22: PROCESS
BEGIN
	instruction_in(22) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_22;
-- instruction_in[21]
t_prcs_instruction_in_21: PROCESS
BEGIN
	instruction_in(21) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_21;
-- instruction_in[20]
t_prcs_instruction_in_20: PROCESS
BEGIN
	instruction_in(20) <= '1';
WAIT;
END PROCESS t_prcs_instruction_in_20;
-- instruction_in[19]
t_prcs_instruction_in_19: PROCESS
BEGIN
	instruction_in(19) <= '1';
WAIT;
END PROCESS t_prcs_instruction_in_19;
-- instruction_in[18]
t_prcs_instruction_in_18: PROCESS
BEGIN
	instruction_in(18) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_18;
-- instruction_in[17]
t_prcs_instruction_in_17: PROCESS
BEGIN
	instruction_in(17) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_17;
-- instruction_in[16]
t_prcs_instruction_in_16: PROCESS
BEGIN
	instruction_in(16) <= '1';
WAIT;
END PROCESS t_prcs_instruction_in_16;
-- instruction_in[15]
t_prcs_instruction_in_15: PROCESS
BEGIN
	instruction_in(15) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_15;
-- instruction_in[14]
t_prcs_instruction_in_14: PROCESS
BEGIN
	instruction_in(14) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_14;
-- instruction_in[13]
t_prcs_instruction_in_13: PROCESS
BEGIN
	instruction_in(13) <= '1';
WAIT;
END PROCESS t_prcs_instruction_in_13;
-- instruction_in[12]
t_prcs_instruction_in_12: PROCESS
BEGIN
	instruction_in(12) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_12;
-- instruction_in[11]
t_prcs_instruction_in_11: PROCESS
BEGIN
	instruction_in(11) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_11;
-- instruction_in[10]
t_prcs_instruction_in_10: PROCESS
BEGIN
	instruction_in(10) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_10;
-- instruction_in[9]
t_prcs_instruction_in_9: PROCESS
BEGIN
	instruction_in(9) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_9;
-- instruction_in[8]
t_prcs_instruction_in_8: PROCESS
BEGIN
	instruction_in(8) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_8;
-- instruction_in[7]
t_prcs_instruction_in_7: PROCESS
BEGIN
	instruction_in(7) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_7;
-- instruction_in[6]
t_prcs_instruction_in_6: PROCESS
BEGIN
	instruction_in(6) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_6;
-- instruction_in[5]
t_prcs_instruction_in_5: PROCESS
BEGIN
	instruction_in(5) <= '1';
WAIT;
END PROCESS t_prcs_instruction_in_5;
-- instruction_in[4]
t_prcs_instruction_in_4: PROCESS
BEGIN
	instruction_in(4) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_4;
-- instruction_in[3]
t_prcs_instruction_in_3: PROCESS
BEGIN
	instruction_in(3) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_3;
-- instruction_in[2]
t_prcs_instruction_in_2: PROCESS
BEGIN
	instruction_in(2) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_2;
-- instruction_in[1]
t_prcs_instruction_in_1: PROCESS
BEGIN
	instruction_in(1) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_1;
-- instruction_in[0]
t_prcs_instruction_in_0: PROCESS
BEGIN
	instruction_in(0) <= '0';
WAIT;
END PROCESS t_prcs_instruction_in_0;
END control_unit_arch;
