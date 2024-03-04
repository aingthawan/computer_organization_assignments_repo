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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "03/05/2023 20:59:30"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	control_unit IS
    PORT (
	instruction_in : IN std_logic_vector(31 DOWNTO 0);
	RegDst : BUFFER std_logic;
	Jump : BUFFER std_logic;
	Branch : BUFFER std_logic;
	MemtoReg : BUFFER std_logic;
	MemRead : BUFFER std_logic;
	MemWrite : BUFFER std_logic;
	ALUSrc : BUFFER std_logic;
	RegWrite : BUFFER std_logic;
	ALU_control_input : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END control_unit;

ARCHITECTURE structure OF control_unit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_instruction_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RegDst : std_logic;
SIGNAL ww_Jump : std_logic;
SIGNAL ww_Branch : std_logic;
SIGNAL ww_MemtoReg : std_logic;
SIGNAL ww_MemRead : std_logic;
SIGNAL ww_MemWrite : std_logic;
SIGNAL ww_ALUSrc : std_logic;
SIGNAL ww_RegWrite : std_logic;
SIGNAL ww_ALU_control_input : std_logic_vector(3 DOWNTO 0);
SIGNAL \instruction_in[6]~input_o\ : std_logic;
SIGNAL \instruction_in[7]~input_o\ : std_logic;
SIGNAL \instruction_in[8]~input_o\ : std_logic;
SIGNAL \instruction_in[9]~input_o\ : std_logic;
SIGNAL \instruction_in[10]~input_o\ : std_logic;
SIGNAL \instruction_in[11]~input_o\ : std_logic;
SIGNAL \instruction_in[12]~input_o\ : std_logic;
SIGNAL \instruction_in[13]~input_o\ : std_logic;
SIGNAL \instruction_in[14]~input_o\ : std_logic;
SIGNAL \instruction_in[15]~input_o\ : std_logic;
SIGNAL \instruction_in[16]~input_o\ : std_logic;
SIGNAL \instruction_in[17]~input_o\ : std_logic;
SIGNAL \instruction_in[18]~input_o\ : std_logic;
SIGNAL \instruction_in[19]~input_o\ : std_logic;
SIGNAL \instruction_in[20]~input_o\ : std_logic;
SIGNAL \instruction_in[21]~input_o\ : std_logic;
SIGNAL \instruction_in[22]~input_o\ : std_logic;
SIGNAL \instruction_in[23]~input_o\ : std_logic;
SIGNAL \instruction_in[24]~input_o\ : std_logic;
SIGNAL \instruction_in[25]~input_o\ : std_logic;
SIGNAL \RegDst~output_o\ : std_logic;
SIGNAL \Jump~output_o\ : std_logic;
SIGNAL \Branch~output_o\ : std_logic;
SIGNAL \MemtoReg~output_o\ : std_logic;
SIGNAL \MemRead~output_o\ : std_logic;
SIGNAL \MemWrite~output_o\ : std_logic;
SIGNAL \ALUSrc~output_o\ : std_logic;
SIGNAL \RegWrite~output_o\ : std_logic;
SIGNAL \ALU_control_input[0]~output_o\ : std_logic;
SIGNAL \ALU_control_input[1]~output_o\ : std_logic;
SIGNAL \ALU_control_input[2]~output_o\ : std_logic;
SIGNAL \ALU_control_input[3]~output_o\ : std_logic;
SIGNAL \instruction_in[28]~input_o\ : std_logic;
SIGNAL \instruction_in[31]~input_o\ : std_logic;
SIGNAL \instruction_in[29]~input_o\ : std_logic;
SIGNAL \instruction_in[30]~input_o\ : std_logic;
SIGNAL \instruction_in[26]~input_o\ : std_logic;
SIGNAL \instruction_in[27]~input_o\ : std_logic;
SIGNAL \MIPSCon|Equal0~0_combout\ : std_logic;
SIGNAL \instruction_in[4]~input_o\ : std_logic;
SIGNAL \instruction_in[5]~input_o\ : std_logic;
SIGNAL \MIPSCon|Equal0~1_combout\ : std_logic;
SIGNAL \MIPSCon|RegDst~0_combout\ : std_logic;
SIGNAL \MIPSCon|RegDst~combout\ : std_logic;
SIGNAL \MIPSCon|Jump~0_combout\ : std_logic;
SIGNAL \MIPSCon|Jump~combout\ : std_logic;
SIGNAL \MIPSCon|Branch~0_combout\ : std_logic;
SIGNAL \MIPSCon|Branch~combout\ : std_logic;
SIGNAL \MIPSCon|MemtoReg~0_combout\ : std_logic;
SIGNAL \MIPSCon|MemtoReg~combout\ : std_logic;
SIGNAL \MIPSCon|MemtoReg~1_combout\ : std_logic;
SIGNAL \MIPSCon|MemWrite~combout\ : std_logic;
SIGNAL \MIPSCon|ALUSrc~combout\ : std_logic;
SIGNAL \instruction_in[1]~input_o\ : std_logic;
SIGNAL \instruction_in[0]~input_o\ : std_logic;
SIGNAL \instruction_in[2]~input_o\ : std_logic;
SIGNAL \instruction_in[3]~input_o\ : std_logic;
SIGNAL \ALUCon|Equal2~0_combout\ : std_logic;
SIGNAL \ALUCon|ALU_control_input[0]~0_combout\ : std_logic;
SIGNAL \ALUCon|ALU_control_input[1]~1_combout\ : std_logic;
SIGNAL \ALUCon|ALU_control_input[2]~2_combout\ : std_logic;
SIGNAL \ALUCon|ALU_control_input[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_instruction_in[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_instruction_in[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_instruction_in[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_instruction_in[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_instruction_in[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_instruction_in[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_instruction_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_instruction_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_instruction_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_instruction_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_instruction_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_instruction_in[1]~input_o\ : std_logic;
SIGNAL \ALUCon|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \MIPSCon|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \MIPSCon|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \MIPSCon|ALT_INV_Jump~0_combout\ : std_logic;
SIGNAL \MIPSCon|ALT_INV_RegDst~0_combout\ : std_logic;
SIGNAL \MIPSCon|ALT_INV_Branch~0_combout\ : std_logic;
SIGNAL \MIPSCon|ALT_INV_MemWrite~combout\ : std_logic;
SIGNAL \MIPSCon|ALT_INV_ALUSrc~combout\ : std_logic;
SIGNAL \MIPSCon|ALT_INV_MemtoReg~0_combout\ : std_logic;
SIGNAL \MIPSCon|ALT_INV_MemtoReg~1_combout\ : std_logic;
SIGNAL \MIPSCon|ALT_INV_RegDst~combout\ : std_logic;
SIGNAL \MIPSCon|ALT_INV_Branch~combout\ : std_logic;
SIGNAL \MIPSCon|ALT_INV_Jump~combout\ : std_logic;
SIGNAL \MIPSCon|ALT_INV_MemtoReg~combout\ : std_logic;

BEGIN

ww_instruction_in <= instruction_in;
RegDst <= ww_RegDst;
Jump <= ww_Jump;
Branch <= ww_Branch;
MemtoReg <= ww_MemtoReg;
MemRead <= ww_MemRead;
MemWrite <= ww_MemWrite;
ALUSrc <= ww_ALUSrc;
RegWrite <= ww_RegWrite;
ALU_control_input <= ww_ALU_control_input;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_instruction_in[27]~input_o\ <= NOT \instruction_in[27]~input_o\;
\ALT_INV_instruction_in[26]~input_o\ <= NOT \instruction_in[26]~input_o\;
\ALT_INV_instruction_in[30]~input_o\ <= NOT \instruction_in[30]~input_o\;
\ALT_INV_instruction_in[29]~input_o\ <= NOT \instruction_in[29]~input_o\;
\ALT_INV_instruction_in[31]~input_o\ <= NOT \instruction_in[31]~input_o\;
\ALT_INV_instruction_in[28]~input_o\ <= NOT \instruction_in[28]~input_o\;
\ALT_INV_instruction_in[5]~input_o\ <= NOT \instruction_in[5]~input_o\;
\ALT_INV_instruction_in[4]~input_o\ <= NOT \instruction_in[4]~input_o\;
\ALT_INV_instruction_in[3]~input_o\ <= NOT \instruction_in[3]~input_o\;
\ALT_INV_instruction_in[2]~input_o\ <= NOT \instruction_in[2]~input_o\;
\ALT_INV_instruction_in[0]~input_o\ <= NOT \instruction_in[0]~input_o\;
\ALT_INV_instruction_in[1]~input_o\ <= NOT \instruction_in[1]~input_o\;
\ALUCon|ALT_INV_Equal2~0_combout\ <= NOT \ALUCon|Equal2~0_combout\;
\MIPSCon|ALT_INV_Equal0~0_combout\ <= NOT \MIPSCon|Equal0~0_combout\;
\MIPSCon|ALT_INV_Equal0~1_combout\ <= NOT \MIPSCon|Equal0~1_combout\;
\MIPSCon|ALT_INV_Jump~0_combout\ <= NOT \MIPSCon|Jump~0_combout\;
\MIPSCon|ALT_INV_RegDst~0_combout\ <= NOT \MIPSCon|RegDst~0_combout\;
\MIPSCon|ALT_INV_Branch~0_combout\ <= NOT \MIPSCon|Branch~0_combout\;
\MIPSCon|ALT_INV_MemWrite~combout\ <= NOT \MIPSCon|MemWrite~combout\;
\MIPSCon|ALT_INV_ALUSrc~combout\ <= NOT \MIPSCon|ALUSrc~combout\;
\MIPSCon|ALT_INV_MemtoReg~0_combout\ <= NOT \MIPSCon|MemtoReg~0_combout\;
\MIPSCon|ALT_INV_MemtoReg~1_combout\ <= NOT \MIPSCon|MemtoReg~1_combout\;
\MIPSCon|ALT_INV_RegDst~combout\ <= NOT \MIPSCon|RegDst~combout\;
\MIPSCon|ALT_INV_Branch~combout\ <= NOT \MIPSCon|Branch~combout\;
\MIPSCon|ALT_INV_Jump~combout\ <= NOT \MIPSCon|Jump~combout\;
\MIPSCon|ALT_INV_MemtoReg~combout\ <= NOT \MIPSCon|MemtoReg~combout\;

\RegDst~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MIPSCon|RegDst~combout\,
	devoe => ww_devoe,
	o => \RegDst~output_o\);

\Jump~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MIPSCon|Jump~combout\,
	devoe => ww_devoe,
	o => \Jump~output_o\);

\Branch~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MIPSCon|Branch~combout\,
	devoe => ww_devoe,
	o => \Branch~output_o\);

\MemtoReg~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MIPSCon|MemtoReg~combout\,
	devoe => ww_devoe,
	o => \MemtoReg~output_o\);

\MemRead~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MIPSCon|MemtoReg~combout\,
	devoe => ww_devoe,
	o => \MemRead~output_o\);

\MemWrite~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MIPSCon|MemWrite~combout\,
	devoe => ww_devoe,
	o => \MemWrite~output_o\);

\ALUSrc~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MIPSCon|ALUSrc~combout\,
	devoe => ww_devoe,
	o => \ALUSrc~output_o\);

\RegWrite~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MIPSCon|MemtoReg~combout\,
	devoe => ww_devoe,
	o => \RegWrite~output_o\);

\ALU_control_input[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUCon|ALU_control_input[0]~0_combout\,
	devoe => ww_devoe,
	o => \ALU_control_input[0]~output_o\);

\ALU_control_input[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUCon|ALU_control_input[1]~1_combout\,
	devoe => ww_devoe,
	o => \ALU_control_input[1]~output_o\);

\ALU_control_input[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUCon|ALU_control_input[2]~2_combout\,
	devoe => ww_devoe,
	o => \ALU_control_input[2]~output_o\);

\ALU_control_input[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUCon|ALU_control_input[3]~3_combout\,
	devoe => ww_devoe,
	o => \ALU_control_input[3]~output_o\);

\instruction_in[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(28),
	o => \instruction_in[28]~input_o\);

\instruction_in[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(31),
	o => \instruction_in[31]~input_o\);

\instruction_in[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(29),
	o => \instruction_in[29]~input_o\);

\instruction_in[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(30),
	o => \instruction_in[30]~input_o\);

\instruction_in[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(26),
	o => \instruction_in[26]~input_o\);

\instruction_in[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(27),
	o => \instruction_in[27]~input_o\);

\MIPSCon|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIPSCon|Equal0~0_combout\ = ( !\instruction_in[26]~input_o\ & ( !\instruction_in[27]~input_o\ & ( (!\instruction_in[28]~input_o\ & (!\instruction_in[31]~input_o\ & (!\instruction_in[29]~input_o\ & !\instruction_in[30]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instruction_in[28]~input_o\,
	datab => \ALT_INV_instruction_in[31]~input_o\,
	datac => \ALT_INV_instruction_in[29]~input_o\,
	datad => \ALT_INV_instruction_in[30]~input_o\,
	datae => \ALT_INV_instruction_in[26]~input_o\,
	dataf => \ALT_INV_instruction_in[27]~input_o\,
	combout => \MIPSCon|Equal0~0_combout\);

\instruction_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(4),
	o => \instruction_in[4]~input_o\);

\instruction_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(5),
	o => \instruction_in[5]~input_o\);

\MIPSCon|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIPSCon|Equal0~1_combout\ = (!\instruction_in[31]~input_o\ & (!\instruction_in[29]~input_o\ & !\instruction_in[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instruction_in[31]~input_o\,
	datab => \ALT_INV_instruction_in[29]~input_o\,
	datac => \ALT_INV_instruction_in[30]~input_o\,
	combout => \MIPSCon|Equal0~1_combout\);

\MIPSCon|RegDst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIPSCon|RegDst~0_combout\ = ( \instruction_in[26]~input_o\ & ( \instruction_in[27]~input_o\ & ( !\MIPSCon|Equal0~1_combout\ ) ) ) # ( !\instruction_in[26]~input_o\ & ( \instruction_in[27]~input_o\ & ( (!\instruction_in[28]~input_o\) # 
-- (!\MIPSCon|Equal0~1_combout\) ) ) ) # ( \instruction_in[26]~input_o\ & ( !\instruction_in[27]~input_o\ & ( !\MIPSCon|Equal0~1_combout\ ) ) ) # ( !\instruction_in[26]~input_o\ & ( !\instruction_in[27]~input_o\ & ( ((!\MIPSCon|Equal0~1_combout\) # 
-- ((!\instruction_in[4]~input_o\ & \instruction_in[5]~input_o\))) # (\instruction_in[28]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100101111111111110000000011111111111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instruction_in[4]~input_o\,
	datab => \ALT_INV_instruction_in[5]~input_o\,
	datac => \ALT_INV_instruction_in[28]~input_o\,
	datad => \MIPSCon|ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_instruction_in[26]~input_o\,
	dataf => \ALT_INV_instruction_in[27]~input_o\,
	combout => \MIPSCon|RegDst~0_combout\);

\MIPSCon|RegDst\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIPSCon|RegDst~combout\ = ( \MIPSCon|RegDst~combout\ & ( \MIPSCon|RegDst~0_combout\ & ( \MIPSCon|Equal0~0_combout\ ) ) ) # ( !\MIPSCon|RegDst~combout\ & ( \MIPSCon|RegDst~0_combout\ & ( \MIPSCon|Equal0~0_combout\ ) ) ) # ( \MIPSCon|RegDst~combout\ & ( 
-- !\MIPSCon|RegDst~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MIPSCon|ALT_INV_Equal0~0_combout\,
	datae => \MIPSCon|ALT_INV_RegDst~combout\,
	dataf => \MIPSCon|ALT_INV_RegDst~0_combout\,
	combout => \MIPSCon|RegDst~combout\);

\MIPSCon|Jump~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIPSCon|Jump~0_combout\ = ( \instruction_in[26]~input_o\ & ( \instruction_in[27]~input_o\ ) ) # ( !\instruction_in[26]~input_o\ & ( \instruction_in[27]~input_o\ & ( (((\instruction_in[30]~input_o\) # (\instruction_in[29]~input_o\)) # 
-- (\instruction_in[31]~input_o\)) # (\instruction_in[28]~input_o\) ) ) ) # ( \instruction_in[26]~input_o\ & ( !\instruction_in[27]~input_o\ ) ) # ( !\instruction_in[26]~input_o\ & ( !\instruction_in[27]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instruction_in[28]~input_o\,
	datab => \ALT_INV_instruction_in[31]~input_o\,
	datac => \ALT_INV_instruction_in[29]~input_o\,
	datad => \ALT_INV_instruction_in[30]~input_o\,
	datae => \ALT_INV_instruction_in[26]~input_o\,
	dataf => \ALT_INV_instruction_in[27]~input_o\,
	combout => \MIPSCon|Jump~0_combout\);

\MIPSCon|Jump\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIPSCon|Jump~combout\ = ( \MIPSCon|Jump~combout\ & ( \MIPSCon|RegDst~0_combout\ & ( !\MIPSCon|Jump~0_combout\ ) ) ) # ( !\MIPSCon|Jump~combout\ & ( \MIPSCon|RegDst~0_combout\ & ( !\MIPSCon|Jump~0_combout\ ) ) ) # ( \MIPSCon|Jump~combout\ & ( 
-- !\MIPSCon|RegDst~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MIPSCon|ALT_INV_Jump~0_combout\,
	datae => \MIPSCon|ALT_INV_Jump~combout\,
	dataf => \MIPSCon|ALT_INV_RegDst~0_combout\,
	combout => \MIPSCon|Jump~combout\);

\MIPSCon|Branch~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIPSCon|Branch~0_combout\ = ( \instruction_in[26]~input_o\ & ( (!\instruction_in[31]~input_o\ & (!\instruction_in[29]~input_o\ & !\instruction_in[30]~input_o\)) ) ) # ( !\instruction_in[26]~input_o\ & ( (\instruction_in[28]~input_o\ & 
-- (!\instruction_in[31]~input_o\ & (!\instruction_in[29]~input_o\ & !\instruction_in[30]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000110000000000000001000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instruction_in[28]~input_o\,
	datab => \ALT_INV_instruction_in[31]~input_o\,
	datac => \ALT_INV_instruction_in[29]~input_o\,
	datad => \ALT_INV_instruction_in[30]~input_o\,
	datae => \ALT_INV_instruction_in[26]~input_o\,
	combout => \MIPSCon|Branch~0_combout\);

\MIPSCon|Branch\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIPSCon|Branch~combout\ = ( \MIPSCon|Branch~combout\ & ( \MIPSCon|RegDst~0_combout\ & ( \MIPSCon|Branch~0_combout\ ) ) ) # ( !\MIPSCon|Branch~combout\ & ( \MIPSCon|RegDst~0_combout\ & ( \MIPSCon|Branch~0_combout\ ) ) ) # ( \MIPSCon|Branch~combout\ & ( 
-- !\MIPSCon|RegDst~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MIPSCon|ALT_INV_Branch~0_combout\,
	datae => \MIPSCon|ALT_INV_Branch~combout\,
	dataf => \MIPSCon|ALT_INV_RegDst~0_combout\,
	combout => \MIPSCon|Branch~combout\);

\MIPSCon|MemtoReg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIPSCon|MemtoReg~0_combout\ = (\instruction_in[31]~input_o\ & (!\instruction_in[29]~input_o\ & !\instruction_in[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instruction_in[31]~input_o\,
	datab => \ALT_INV_instruction_in[29]~input_o\,
	datac => \ALT_INV_instruction_in[30]~input_o\,
	combout => \MIPSCon|MemtoReg~0_combout\);

\MIPSCon|MemtoReg\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIPSCon|MemtoReg~combout\ = ( \MIPSCon|MemtoReg~combout\ & ( \MIPSCon|RegDst~0_combout\ & ( \MIPSCon|MemtoReg~0_combout\ ) ) ) # ( !\MIPSCon|MemtoReg~combout\ & ( \MIPSCon|RegDst~0_combout\ & ( \MIPSCon|MemtoReg~0_combout\ ) ) ) # ( 
-- \MIPSCon|MemtoReg~combout\ & ( !\MIPSCon|RegDst~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MIPSCon|ALT_INV_MemtoReg~0_combout\,
	datae => \MIPSCon|ALT_INV_MemtoReg~combout\,
	dataf => \MIPSCon|ALT_INV_RegDst~0_combout\,
	combout => \MIPSCon|MemtoReg~combout\);

\MIPSCon|MemtoReg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIPSCon|MemtoReg~1_combout\ = (!\instruction_in[29]~input_o\ & !\instruction_in[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instruction_in[29]~input_o\,
	datab => \ALT_INV_instruction_in[30]~input_o\,
	combout => \MIPSCon|MemtoReg~1_combout\);

\MIPSCon|MemWrite\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIPSCon|MemWrite~combout\ = ( \MIPSCon|MemWrite~combout\ & ( \MIPSCon|RegDst~0_combout\ & ( !\MIPSCon|MemtoReg~1_combout\ ) ) ) # ( !\MIPSCon|MemWrite~combout\ & ( \MIPSCon|RegDst~0_combout\ & ( !\MIPSCon|MemtoReg~1_combout\ ) ) ) # ( 
-- \MIPSCon|MemWrite~combout\ & ( !\MIPSCon|RegDst~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MIPSCon|ALT_INV_MemtoReg~1_combout\,
	datae => \MIPSCon|ALT_INV_MemWrite~combout\,
	dataf => \MIPSCon|ALT_INV_RegDst~0_combout\,
	combout => \MIPSCon|MemWrite~combout\);

\MIPSCon|ALUSrc\ : cyclonev_lcell_comb
-- Equation(s):
-- \MIPSCon|ALUSrc~combout\ = ( \MIPSCon|ALUSrc~combout\ & ( \MIPSCon|RegDst~0_combout\ & ( !\MIPSCon|Equal0~1_combout\ ) ) ) # ( !\MIPSCon|ALUSrc~combout\ & ( \MIPSCon|RegDst~0_combout\ & ( !\MIPSCon|Equal0~1_combout\ ) ) ) # ( \MIPSCon|ALUSrc~combout\ & ( 
-- !\MIPSCon|RegDst~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MIPSCon|ALT_INV_Equal0~1_combout\,
	datae => \MIPSCon|ALT_INV_ALUSrc~combout\,
	dataf => \MIPSCon|ALT_INV_RegDst~0_combout\,
	combout => \MIPSCon|ALUSrc~combout\);

\instruction_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(1),
	o => \instruction_in[1]~input_o\);

\instruction_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(0),
	o => \instruction_in[0]~input_o\);

\instruction_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(2),
	o => \instruction_in[2]~input_o\);

\instruction_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(3),
	o => \instruction_in[3]~input_o\);

\ALUCon|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUCon|Equal2~0_combout\ = (!\instruction_in[3]~input_o\ & (!\instruction_in[4]~input_o\ & \instruction_in[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_instruction_in[3]~input_o\,
	datab => \ALT_INV_instruction_in[4]~input_o\,
	datac => \ALT_INV_instruction_in[5]~input_o\,
	combout => \ALUCon|Equal2~0_combout\);

\ALUCon|ALU_control_input[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUCon|ALU_control_input[0]~0_combout\ = ( \ALUCon|Equal2~0_combout\ & ( (\MIPSCon|RegDst~combout\ & (!\instruction_in[0]~input_o\ $ (((!\instruction_in[1]~input_o\) # (!\instruction_in[2]~input_o\))))) ) ) # ( !\ALUCon|Equal2~0_combout\ & ( 
-- \MIPSCon|RegDst~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000001010001010001010101010101010000010100010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIPSCon|ALT_INV_RegDst~combout\,
	datab => \ALT_INV_instruction_in[1]~input_o\,
	datac => \ALT_INV_instruction_in[0]~input_o\,
	datad => \ALT_INV_instruction_in[2]~input_o\,
	datae => \ALUCon|ALT_INV_Equal2~0_combout\,
	combout => \ALUCon|ALU_control_input[0]~0_combout\);

\ALUCon|ALU_control_input[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUCon|ALU_control_input[1]~1_combout\ = ( \ALUCon|Equal2~0_combout\ & ( (!\MIPSCon|RegDst~combout\) # ((!\instruction_in[2]~input_o\) # ((\instruction_in[1]~input_o\ & !\instruction_in[0]~input_o\))) ) ) # ( !\ALUCon|Equal2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111011101011111111111111111111111110111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIPSCon|ALT_INV_RegDst~combout\,
	datab => \ALT_INV_instruction_in[1]~input_o\,
	datac => \ALT_INV_instruction_in[0]~input_o\,
	datad => \ALT_INV_instruction_in[2]~input_o\,
	datae => \ALUCon|ALT_INV_Equal2~0_combout\,
	combout => \ALUCon|ALU_control_input[1]~1_combout\);

\ALUCon|ALU_control_input[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUCon|ALU_control_input[2]~2_combout\ = ( \instruction_in[2]~input_o\ & ( \ALUCon|Equal2~0_combout\ & ( (!\MIPSCon|RegDst~combout\ & (\MIPSCon|Branch~combout\)) # (\MIPSCon|RegDst~combout\ & ((\instruction_in[1]~input_o\))) ) ) ) # ( 
-- !\instruction_in[2]~input_o\ & ( \ALUCon|Equal2~0_combout\ & ( (!\MIPSCon|RegDst~combout\ & (\MIPSCon|Branch~combout\)) # (\MIPSCon|RegDst~combout\ & (((\instruction_in[0]~input_o\) # (\instruction_in[1]~input_o\)))) ) ) ) # ( \instruction_in[2]~input_o\ 
-- & ( !\ALUCon|Equal2~0_combout\ & ( (\MIPSCon|Branch~combout\) # (\MIPSCon|RegDst~combout\) ) ) ) # ( !\instruction_in[2]~input_o\ & ( !\ALUCon|Equal2~0_combout\ & ( (\MIPSCon|Branch~combout\) # (\MIPSCon|RegDst~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011100100111011101110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIPSCon|ALT_INV_RegDst~combout\,
	datab => \MIPSCon|ALT_INV_Branch~combout\,
	datac => \ALT_INV_instruction_in[1]~input_o\,
	datad => \ALT_INV_instruction_in[0]~input_o\,
	datae => \ALT_INV_instruction_in[2]~input_o\,
	dataf => \ALUCon|ALT_INV_Equal2~0_combout\,
	combout => \ALUCon|ALU_control_input[2]~2_combout\);

\ALUCon|ALU_control_input[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ALUCon|ALU_control_input[3]~3_combout\ = ( \ALUCon|Equal2~0_combout\ & ( (\MIPSCon|RegDst~combout\ & (\instruction_in[1]~input_o\ & (\instruction_in[0]~input_o\ & \instruction_in[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MIPSCon|ALT_INV_RegDst~combout\,
	datab => \ALT_INV_instruction_in[1]~input_o\,
	datac => \ALT_INV_instruction_in[0]~input_o\,
	datad => \ALT_INV_instruction_in[2]~input_o\,
	datae => \ALUCon|ALT_INV_Equal2~0_combout\,
	combout => \ALUCon|ALU_control_input[3]~3_combout\);

\instruction_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(6),
	o => \instruction_in[6]~input_o\);

\instruction_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(7),
	o => \instruction_in[7]~input_o\);

\instruction_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(8),
	o => \instruction_in[8]~input_o\);

\instruction_in[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(9),
	o => \instruction_in[9]~input_o\);

\instruction_in[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(10),
	o => \instruction_in[10]~input_o\);

\instruction_in[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(11),
	o => \instruction_in[11]~input_o\);

\instruction_in[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(12),
	o => \instruction_in[12]~input_o\);

\instruction_in[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(13),
	o => \instruction_in[13]~input_o\);

\instruction_in[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(14),
	o => \instruction_in[14]~input_o\);

\instruction_in[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(15),
	o => \instruction_in[15]~input_o\);

\instruction_in[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(16),
	o => \instruction_in[16]~input_o\);

\instruction_in[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(17),
	o => \instruction_in[17]~input_o\);

\instruction_in[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(18),
	o => \instruction_in[18]~input_o\);

\instruction_in[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(19),
	o => \instruction_in[19]~input_o\);

\instruction_in[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(20),
	o => \instruction_in[20]~input_o\);

\instruction_in[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(21),
	o => \instruction_in[21]~input_o\);

\instruction_in[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(22),
	o => \instruction_in[22]~input_o\);

\instruction_in[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(23),
	o => \instruction_in[23]~input_o\);

\instruction_in[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(24),
	o => \instruction_in[24]~input_o\);

\instruction_in[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction_in(25),
	o => \instruction_in[25]~input_o\);

ww_RegDst <= \RegDst~output_o\;

ww_Jump <= \Jump~output_o\;

ww_Branch <= \Branch~output_o\;

ww_MemtoReg <= \MemtoReg~output_o\;

ww_MemRead <= \MemRead~output_o\;

ww_MemWrite <= \MemWrite~output_o\;

ww_ALUSrc <= \ALUSrc~output_o\;

ww_RegWrite <= \RegWrite~output_o\;

ww_ALU_control_input(0) <= \ALU_control_input[0]~output_o\;

ww_ALU_control_input(1) <= \ALU_control_input[1]~output_o\;

ww_ALU_control_input(2) <= \ALU_control_input[2]~output_o\;

ww_ALU_control_input(3) <= \ALU_control_input[3]~output_o\;
END structure;


