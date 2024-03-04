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

-- DATE "01/16/2023 20:08:59"

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

ENTITY 	alu_32bit IS
    PORT (
	a : IN std_logic_vector(31 DOWNTO 0);
	b : IN std_logic_vector(31 DOWNTO 0);
	a_inv : IN std_logic;
	b_inv : IN std_logic;
	c_in : IN std_logic;
	ops : IN std_logic_vector(1 DOWNTO 0);
	result : OUT std_logic_vector(31 DOWNTO 0);
	zero : OUT std_logic;
	overflow : OUT std_logic
	);
END alu_32bit;

ARCHITECTURE structure OF alu_32bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_a_inv : std_logic;
SIGNAL ww_b_inv : std_logic;
SIGNAL ww_c_in : std_logic;
SIGNAL ww_ops : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL ww_overflow : std_logic;
SIGNAL \c_in~input_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \result[16]~output_o\ : std_logic;
SIGNAL \result[17]~output_o\ : std_logic;
SIGNAL \result[18]~output_o\ : std_logic;
SIGNAL \result[19]~output_o\ : std_logic;
SIGNAL \result[20]~output_o\ : std_logic;
SIGNAL \result[21]~output_o\ : std_logic;
SIGNAL \result[22]~output_o\ : std_logic;
SIGNAL \result[23]~output_o\ : std_logic;
SIGNAL \result[24]~output_o\ : std_logic;
SIGNAL \result[25]~output_o\ : std_logic;
SIGNAL \result[26]~output_o\ : std_logic;
SIGNAL \result[27]~output_o\ : std_logic;
SIGNAL \result[28]~output_o\ : std_logic;
SIGNAL \result[29]~output_o\ : std_logic;
SIGNAL \result[30]~output_o\ : std_logic;
SIGNAL \result[31]~output_o\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \b_inv~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a_inv~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \generate_31bits:1:alu|c_out~combout\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \generate_31bits:2:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \generate_31bits:2:alu|input_b~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \generate_31bits:3:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \generate_31bits:3:alu|input_b~0_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \generate_31bits:4:alu|sum_ans~0_combout\ : std_logic;
SIGNAL \generate_31bits:4:alu|c_out~0_combout\ : std_logic;
SIGNAL \generate_31bits:4:alu|and_ans~0_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \generate_31bits:5:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \generate_31bits:5:alu|input_b~0_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \generate_31bits:6:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \generate_31bits:6:alu|input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:6:alu|c_out~combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \generate_31bits:7:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \generate_31bits:7:alu|input_b~0_combout\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \generate_31bits:8:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \generate_31bits:8:alu|input_b~0_combout\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \generate_31bits:9:alu|sum_ans~0_combout\ : std_logic;
SIGNAL \generate_31bits:9:alu|c_out~0_combout\ : std_logic;
SIGNAL \generate_31bits:9:alu|and_ans~0_combout\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \generate_31bits:10:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \generate_31bits:10:alu|input_b~0_combout\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \generate_31bits:11:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \generate_31bits:11:alu|input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:11:alu|c_out~combout\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \generate_31bits:12:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \generate_31bits:12:alu|input_b~0_combout\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \generate_31bits:13:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \generate_31bits:13:alu|input_b~0_combout\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \generate_31bits:14:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \generate_31bits:14:alu|sum_ans~0_combout\ : std_logic;
SIGNAL \generate_31bits:14:alu|c_out~0_combout\ : std_logic;
SIGNAL \generate_31bits:14:alu|and_ans~0_combout\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \generate_31bits:15:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \generate_31bits:15:alu|input_b~0_combout\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \generate_31bits:16:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[16]~input_o\ : std_logic;
SIGNAL \generate_31bits:16:alu|input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:16:alu|c_out~combout\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \generate_31bits:17:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[17]~input_o\ : std_logic;
SIGNAL \generate_31bits:17:alu|input_b~0_combout\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \generate_31bits:18:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[18]~input_o\ : std_logic;
SIGNAL \generate_31bits:18:alu|input_b~0_combout\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \generate_31bits:19:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[19]~input_o\ : std_logic;
SIGNAL \generate_31bits:19:alu|sum_ans~0_combout\ : std_logic;
SIGNAL \generate_31bits:19:alu|c_out~0_combout\ : std_logic;
SIGNAL \generate_31bits:19:alu|and_ans~0_combout\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \generate_31bits:20:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[20]~input_o\ : std_logic;
SIGNAL \generate_31bits:20:alu|input_b~0_combout\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \generate_31bits:21:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[21]~input_o\ : std_logic;
SIGNAL \generate_31bits:21:alu|input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:21:alu|c_out~combout\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \generate_31bits:22:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[22]~input_o\ : std_logic;
SIGNAL \generate_31bits:22:alu|input_b~0_combout\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \generate_31bits:23:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[23]~input_o\ : std_logic;
SIGNAL \generate_31bits:23:alu|input_b~0_combout\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \generate_31bits:24:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[24]~input_o\ : std_logic;
SIGNAL \generate_31bits:24:alu|input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:24:alu|sum_ans~0_combout\ : std_logic;
SIGNAL \generate_31bits:24:alu|c_out~0_combout\ : std_logic;
SIGNAL \generate_31bits:24:alu|and_ans~0_combout\ : std_logic;
SIGNAL \a[25]~input_o\ : std_logic;
SIGNAL \generate_31bits:25:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[25]~input_o\ : std_logic;
SIGNAL \generate_31bits:25:alu|input_b~0_combout\ : std_logic;
SIGNAL \a[26]~input_o\ : std_logic;
SIGNAL \generate_31bits:26:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[26]~input_o\ : std_logic;
SIGNAL \generate_31bits:26:alu|input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:26:alu|c_out~combout\ : std_logic;
SIGNAL \a[27]~input_o\ : std_logic;
SIGNAL \generate_31bits:27:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[27]~input_o\ : std_logic;
SIGNAL \a[28]~input_o\ : std_logic;
SIGNAL \generate_31bits:28:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[28]~input_o\ : std_logic;
SIGNAL \generate_31bits:28:alu|c_out~combout\ : std_logic;
SIGNAL \a[29]~input_o\ : std_logic;
SIGNAL \generate_31bits:29:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[29]~input_o\ : std_logic;
SIGNAL \generate_31bits:29:alu|input_b~0_combout\ : std_logic;
SIGNAL \a[30]~input_o\ : std_logic;
SIGNAL \generate_31bits:30:alu|input_a~0_combout\ : std_logic;
SIGNAL \b[30]~input_o\ : std_logic;
SIGNAL \generate_31bits:30:alu|input_b~0_combout\ : std_logic;
SIGNAL \a[31]~input_o\ : std_logic;
SIGNAL \msb_alu|input_a~0_combout\ : std_logic;
SIGNAL \b[31]~input_o\ : std_logic;
SIGNAL \msb_alu|set~0_combout\ : std_logic;
SIGNAL \msb_alu|set~combout\ : std_logic;
SIGNAL \ops[0]~input_o\ : std_logic;
SIGNAL \ops[1]~input_o\ : std_logic;
SIGNAL \alu_0|input_a~0_combout\ : std_logic;
SIGNAL \alu_0|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:1:alu|input_a~0_combout\ : std_logic;
SIGNAL \alu_0|c_out~0_combout\ : std_logic;
SIGNAL \generate_31bits:1:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:2:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:2:alu|c_out~combout\ : std_logic;
SIGNAL \generate_31bits:3:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:3:alu|c_out~combout\ : std_logic;
SIGNAL \generate_31bits:4:alu|input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:4:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:5:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:5:alu|c_out~combout\ : std_logic;
SIGNAL \generate_31bits:6:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:7:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:7:alu|c_out~combout\ : std_logic;
SIGNAL \generate_31bits:8:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:8:alu|c_out~combout\ : std_logic;
SIGNAL \generate_31bits:9:alu|input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:9:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:10:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:10:alu|c_out~combout\ : std_logic;
SIGNAL \generate_31bits:11:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:12:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:12:alu|c_out~combout\ : std_logic;
SIGNAL \generate_31bits:13:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:13:alu|c_out~combout\ : std_logic;
SIGNAL \generate_31bits:14:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:15:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:15:alu|c_out~combout\ : std_logic;
SIGNAL \generate_31bits:16:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:17:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:17:alu|c_out~combout\ : std_logic;
SIGNAL \generate_31bits:18:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:18:alu|c_out~combout\ : std_logic;
SIGNAL \generate_31bits:19:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:20:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:20:alu|c_out~combout\ : std_logic;
SIGNAL \generate_31bits:21:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:22:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:22:alu|c_out~combout\ : std_logic;
SIGNAL \generate_31bits:23:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:23:alu|c_out~combout\ : std_logic;
SIGNAL \generate_31bits:24:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:25:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:25:alu|c_out~combout\ : std_logic;
SIGNAL \generate_31bits:26:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:27:alu|input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:27:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:28:alu|sum_ans~0_combout\ : std_logic;
SIGNAL \generate_31bits:25:alu|Mux0~1_combout\ : std_logic;
SIGNAL \generate_31bits:28:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:28:alu|Mux0~1_combout\ : std_logic;
SIGNAL \generate_31bits:29:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:30:alu|sum_ans~0_combout\ : std_logic;
SIGNAL \generate_31bits:30:alu|Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:30:alu|Mux0~1_combout\ : std_logic;
SIGNAL \msb_alu|Mux0~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr0~2_combout\ : std_logic;
SIGNAL \WideOr0~3_combout\ : std_logic;
SIGNAL \WideOr0~4_combout\ : std_logic;
SIGNAL \WideOr0~5_combout\ : std_logic;
SIGNAL \WideOr0~6_combout\ : std_logic;
SIGNAL \WideOr0~7_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \msb_alu|overflow~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~7_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~6_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~5_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~4_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~3_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~2_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~1_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \msb_alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:30:alu|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \generate_31bits:30:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:30:alu|ALT_INV_sum_ans~0_combout\ : std_logic;
SIGNAL \generate_31bits:29:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:28:alu|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \generate_31bits:28:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:25:alu|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \generate_31bits:28:alu|ALT_INV_sum_ans~0_combout\ : std_logic;
SIGNAL \generate_31bits:27:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:27:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:26:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:25:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:25:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:24:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:23:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:23:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:22:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:22:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:21:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:20:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:20:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:19:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:18:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:18:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:17:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:17:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:16:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:15:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:15:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:14:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:13:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:13:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:12:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:12:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:11:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:10:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:10:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:9:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:9:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:8:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:8:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:7:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:7:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:6:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:5:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:5:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:4:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:4:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:3:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:3:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:2:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:2:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \generate_31bits:1:alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \alu_0|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \generate_31bits:1:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \alu_0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \alu_0|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \msb_alu|ALT_INV_set~combout\ : std_logic;
SIGNAL \msb_alu|ALT_INV_set~0_combout\ : std_logic;
SIGNAL \msb_alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:30:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:30:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:29:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:29:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:28:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:28:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:27:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:26:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:26:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:26:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:25:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:25:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:24:alu|ALT_INV_and_ans~0_combout\ : std_logic;
SIGNAL \generate_31bits:24:alu|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \generate_31bits:24:alu|ALT_INV_sum_ans~0_combout\ : std_logic;
SIGNAL \generate_31bits:24:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:24:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:23:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:23:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:22:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:22:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:21:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:21:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:21:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:20:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:20:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:19:alu|ALT_INV_and_ans~0_combout\ : std_logic;
SIGNAL \generate_31bits:19:alu|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \generate_31bits:19:alu|ALT_INV_sum_ans~0_combout\ : std_logic;
SIGNAL \generate_31bits:19:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:18:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:18:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:17:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:17:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:16:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:16:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:16:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:15:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:15:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:14:alu|ALT_INV_and_ans~0_combout\ : std_logic;
SIGNAL \generate_31bits:14:alu|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \generate_31bits:14:alu|ALT_INV_sum_ans~0_combout\ : std_logic;
SIGNAL \generate_31bits:14:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:13:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:13:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:12:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:12:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:11:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:11:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:11:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:10:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:10:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:9:alu|ALT_INV_and_ans~0_combout\ : std_logic;
SIGNAL \generate_31bits:9:alu|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \generate_31bits:9:alu|ALT_INV_sum_ans~0_combout\ : std_logic;
SIGNAL \generate_31bits:8:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:8:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:7:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:7:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:6:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \generate_31bits:6:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:6:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:5:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:5:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:4:alu|ALT_INV_and_ans~0_combout\ : std_logic;
SIGNAL \generate_31bits:4:alu|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \generate_31bits:4:alu|ALT_INV_sum_ans~0_combout\ : std_logic;
SIGNAL \generate_31bits:3:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:3:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:2:alu|ALT_INV_input_b~0_combout\ : std_logic;
SIGNAL \generate_31bits:2:alu|ALT_INV_input_a~0_combout\ : std_logic;
SIGNAL \generate_31bits:1:alu|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ALT_INV_ops[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ops[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_a_inv~input_o\ : std_logic;
SIGNAL \ALT_INV_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_b_inv~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_a_inv <= a_inv;
ww_b_inv <= b_inv;
ww_c_in <= c_in;
ww_ops <= ops;
result <= ww_result;
zero <= ww_zero;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_WideOr0~combout\ <= NOT \WideOr0~combout\;
\ALT_INV_WideOr0~7_combout\ <= NOT \WideOr0~7_combout\;
\ALT_INV_WideOr0~6_combout\ <= NOT \WideOr0~6_combout\;
\ALT_INV_WideOr0~5_combout\ <= NOT \WideOr0~5_combout\;
\ALT_INV_WideOr0~4_combout\ <= NOT \WideOr0~4_combout\;
\ALT_INV_WideOr0~3_combout\ <= NOT \WideOr0~3_combout\;
\ALT_INV_WideOr0~2_combout\ <= NOT \WideOr0~2_combout\;
\ALT_INV_WideOr0~1_combout\ <= NOT \WideOr0~1_combout\;
\ALT_INV_WideOr0~0_combout\ <= NOT \WideOr0~0_combout\;
\msb_alu|ALT_INV_Mux0~0_combout\ <= NOT \msb_alu|Mux0~0_combout\;
\generate_31bits:30:alu|ALT_INV_Mux0~1_combout\ <= NOT \generate_31bits:30:alu|Mux0~1_combout\;
\generate_31bits:30:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:30:alu|Mux0~0_combout\;
\generate_31bits:30:alu|ALT_INV_sum_ans~0_combout\ <= NOT \generate_31bits:30:alu|sum_ans~0_combout\;
\generate_31bits:29:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:29:alu|Mux0~0_combout\;
\generate_31bits:28:alu|ALT_INV_Mux0~1_combout\ <= NOT \generate_31bits:28:alu|Mux0~1_combout\;
\generate_31bits:28:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:28:alu|Mux0~0_combout\;
\generate_31bits:25:alu|ALT_INV_Mux0~1_combout\ <= NOT \generate_31bits:25:alu|Mux0~1_combout\;
\generate_31bits:28:alu|ALT_INV_sum_ans~0_combout\ <= NOT \generate_31bits:28:alu|sum_ans~0_combout\;
\generate_31bits:27:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:27:alu|Mux0~0_combout\;
\generate_31bits:27:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:27:alu|input_b~0_combout\;
\generate_31bits:26:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:26:alu|Mux0~0_combout\;
\generate_31bits:25:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:25:alu|c_out~combout\;
\generate_31bits:25:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:25:alu|Mux0~0_combout\;
\generate_31bits:24:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:24:alu|Mux0~0_combout\;
\generate_31bits:23:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:23:alu|c_out~combout\;
\generate_31bits:23:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:23:alu|Mux0~0_combout\;
\generate_31bits:22:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:22:alu|c_out~combout\;
\generate_31bits:22:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:22:alu|Mux0~0_combout\;
\generate_31bits:21:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:21:alu|Mux0~0_combout\;
\generate_31bits:20:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:20:alu|c_out~combout\;
\generate_31bits:20:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:20:alu|Mux0~0_combout\;
\generate_31bits:19:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:19:alu|Mux0~0_combout\;
\generate_31bits:18:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:18:alu|c_out~combout\;
\generate_31bits:18:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:18:alu|Mux0~0_combout\;
\generate_31bits:17:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:17:alu|c_out~combout\;
\generate_31bits:17:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:17:alu|Mux0~0_combout\;
\generate_31bits:16:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:16:alu|Mux0~0_combout\;
\generate_31bits:15:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:15:alu|c_out~combout\;
\generate_31bits:15:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:15:alu|Mux0~0_combout\;
\generate_31bits:14:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:14:alu|Mux0~0_combout\;
\generate_31bits:13:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:13:alu|c_out~combout\;
\generate_31bits:13:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:13:alu|Mux0~0_combout\;
\generate_31bits:12:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:12:alu|c_out~combout\;
\generate_31bits:12:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:12:alu|Mux0~0_combout\;
\generate_31bits:11:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:11:alu|Mux0~0_combout\;
\generate_31bits:10:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:10:alu|c_out~combout\;
\generate_31bits:10:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:10:alu|Mux0~0_combout\;
\generate_31bits:9:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:9:alu|Mux0~0_combout\;
\generate_31bits:9:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:9:alu|input_a~0_combout\;
\generate_31bits:8:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:8:alu|c_out~combout\;
\generate_31bits:8:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:8:alu|Mux0~0_combout\;
\generate_31bits:7:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:7:alu|c_out~combout\;
\generate_31bits:7:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:7:alu|Mux0~0_combout\;
\generate_31bits:6:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:6:alu|Mux0~0_combout\;
\generate_31bits:5:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:5:alu|c_out~combout\;
\generate_31bits:5:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:5:alu|Mux0~0_combout\;
\generate_31bits:4:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:4:alu|Mux0~0_combout\;
\generate_31bits:4:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:4:alu|input_a~0_combout\;
\generate_31bits:3:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:3:alu|c_out~combout\;
\generate_31bits:3:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:3:alu|Mux0~0_combout\;
\generate_31bits:2:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:2:alu|c_out~combout\;
\generate_31bits:2:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:2:alu|Mux0~0_combout\;
\generate_31bits:1:alu|ALT_INV_Mux0~0_combout\ <= NOT \generate_31bits:1:alu|Mux0~0_combout\;
\alu_0|ALT_INV_c_out~0_combout\ <= NOT \alu_0|c_out~0_combout\;
\generate_31bits:1:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:1:alu|input_a~0_combout\;
\alu_0|ALT_INV_Mux0~0_combout\ <= NOT \alu_0|Mux0~0_combout\;
\alu_0|ALT_INV_input_a~0_combout\ <= NOT \alu_0|input_a~0_combout\;
\msb_alu|ALT_INV_set~combout\ <= NOT \msb_alu|set~combout\;
\msb_alu|ALT_INV_set~0_combout\ <= NOT \msb_alu|set~0_combout\;
\msb_alu|ALT_INV_input_a~0_combout\ <= NOT \msb_alu|input_a~0_combout\;
\generate_31bits:30:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:30:alu|input_b~0_combout\;
\generate_31bits:30:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:30:alu|input_a~0_combout\;
\generate_31bits:29:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:29:alu|input_b~0_combout\;
\generate_31bits:29:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:29:alu|input_a~0_combout\;
\generate_31bits:28:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:28:alu|c_out~combout\;
\generate_31bits:28:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:28:alu|input_a~0_combout\;
\generate_31bits:27:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:27:alu|input_a~0_combout\;
\generate_31bits:26:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:26:alu|c_out~combout\;
\generate_31bits:26:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:26:alu|input_b~0_combout\;
\generate_31bits:26:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:26:alu|input_a~0_combout\;
\generate_31bits:25:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:25:alu|input_b~0_combout\;
\generate_31bits:25:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:25:alu|input_a~0_combout\;
\generate_31bits:24:alu|ALT_INV_and_ans~0_combout\ <= NOT \generate_31bits:24:alu|and_ans~0_combout\;
\generate_31bits:24:alu|ALT_INV_c_out~0_combout\ <= NOT \generate_31bits:24:alu|c_out~0_combout\;
\generate_31bits:24:alu|ALT_INV_sum_ans~0_combout\ <= NOT \generate_31bits:24:alu|sum_ans~0_combout\;
\generate_31bits:24:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:24:alu|input_b~0_combout\;
\generate_31bits:24:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:24:alu|input_a~0_combout\;
\generate_31bits:23:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:23:alu|input_b~0_combout\;
\generate_31bits:23:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:23:alu|input_a~0_combout\;
\generate_31bits:22:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:22:alu|input_b~0_combout\;
\generate_31bits:22:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:22:alu|input_a~0_combout\;
\generate_31bits:21:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:21:alu|c_out~combout\;
\generate_31bits:21:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:21:alu|input_b~0_combout\;
\generate_31bits:21:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:21:alu|input_a~0_combout\;
\generate_31bits:20:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:20:alu|input_b~0_combout\;
\generate_31bits:20:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:20:alu|input_a~0_combout\;
\generate_31bits:19:alu|ALT_INV_and_ans~0_combout\ <= NOT \generate_31bits:19:alu|and_ans~0_combout\;
\generate_31bits:19:alu|ALT_INV_c_out~0_combout\ <= NOT \generate_31bits:19:alu|c_out~0_combout\;
\generate_31bits:19:alu|ALT_INV_sum_ans~0_combout\ <= NOT \generate_31bits:19:alu|sum_ans~0_combout\;
\generate_31bits:19:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:19:alu|input_a~0_combout\;
\generate_31bits:18:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:18:alu|input_b~0_combout\;
\generate_31bits:18:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:18:alu|input_a~0_combout\;
\generate_31bits:17:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:17:alu|input_b~0_combout\;
\generate_31bits:17:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:17:alu|input_a~0_combout\;
\generate_31bits:16:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:16:alu|c_out~combout\;
\generate_31bits:16:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:16:alu|input_b~0_combout\;
\generate_31bits:16:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:16:alu|input_a~0_combout\;
\generate_31bits:15:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:15:alu|input_b~0_combout\;
\generate_31bits:15:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:15:alu|input_a~0_combout\;
\generate_31bits:14:alu|ALT_INV_and_ans~0_combout\ <= NOT \generate_31bits:14:alu|and_ans~0_combout\;
\generate_31bits:14:alu|ALT_INV_c_out~0_combout\ <= NOT \generate_31bits:14:alu|c_out~0_combout\;
\generate_31bits:14:alu|ALT_INV_sum_ans~0_combout\ <= NOT \generate_31bits:14:alu|sum_ans~0_combout\;
\generate_31bits:14:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:14:alu|input_a~0_combout\;
\generate_31bits:13:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:13:alu|input_b~0_combout\;
\generate_31bits:13:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:13:alu|input_a~0_combout\;
\generate_31bits:12:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:12:alu|input_b~0_combout\;
\generate_31bits:12:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:12:alu|input_a~0_combout\;
\generate_31bits:11:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:11:alu|c_out~combout\;
\generate_31bits:11:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:11:alu|input_b~0_combout\;
\generate_31bits:11:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:11:alu|input_a~0_combout\;
\generate_31bits:10:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:10:alu|input_b~0_combout\;
\generate_31bits:10:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:10:alu|input_a~0_combout\;
\generate_31bits:9:alu|ALT_INV_and_ans~0_combout\ <= NOT \generate_31bits:9:alu|and_ans~0_combout\;
\generate_31bits:9:alu|ALT_INV_c_out~0_combout\ <= NOT \generate_31bits:9:alu|c_out~0_combout\;
\generate_31bits:9:alu|ALT_INV_sum_ans~0_combout\ <= NOT \generate_31bits:9:alu|sum_ans~0_combout\;
\generate_31bits:8:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:8:alu|input_b~0_combout\;
\generate_31bits:8:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:8:alu|input_a~0_combout\;
\generate_31bits:7:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:7:alu|input_b~0_combout\;
\generate_31bits:7:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:7:alu|input_a~0_combout\;
\generate_31bits:6:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:6:alu|c_out~combout\;
\generate_31bits:6:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:6:alu|input_b~0_combout\;
\generate_31bits:6:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:6:alu|input_a~0_combout\;
\generate_31bits:5:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:5:alu|input_b~0_combout\;
\generate_31bits:5:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:5:alu|input_a~0_combout\;
\generate_31bits:4:alu|ALT_INV_and_ans~0_combout\ <= NOT \generate_31bits:4:alu|and_ans~0_combout\;
\generate_31bits:4:alu|ALT_INV_c_out~0_combout\ <= NOT \generate_31bits:4:alu|c_out~0_combout\;
\generate_31bits:4:alu|ALT_INV_sum_ans~0_combout\ <= NOT \generate_31bits:4:alu|sum_ans~0_combout\;
\generate_31bits:3:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:3:alu|input_b~0_combout\;
\generate_31bits:3:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:3:alu|input_a~0_combout\;
\generate_31bits:2:alu|ALT_INV_input_b~0_combout\ <= NOT \generate_31bits:2:alu|input_b~0_combout\;
\generate_31bits:2:alu|ALT_INV_input_a~0_combout\ <= NOT \generate_31bits:2:alu|input_a~0_combout\;
\generate_31bits:1:alu|ALT_INV_c_out~combout\ <= NOT \generate_31bits:1:alu|c_out~combout\;
\ALT_INV_ops[1]~input_o\ <= NOT \ops[1]~input_o\;
\ALT_INV_ops[0]~input_o\ <= NOT \ops[0]~input_o\;
\ALT_INV_b[31]~input_o\ <= NOT \b[31]~input_o\;
\ALT_INV_a[31]~input_o\ <= NOT \a[31]~input_o\;
\ALT_INV_b[30]~input_o\ <= NOT \b[30]~input_o\;
\ALT_INV_a[30]~input_o\ <= NOT \a[30]~input_o\;
\ALT_INV_b[29]~input_o\ <= NOT \b[29]~input_o\;
\ALT_INV_a[29]~input_o\ <= NOT \a[29]~input_o\;
\ALT_INV_b[28]~input_o\ <= NOT \b[28]~input_o\;
\ALT_INV_a[28]~input_o\ <= NOT \a[28]~input_o\;
\ALT_INV_b[27]~input_o\ <= NOT \b[27]~input_o\;
\ALT_INV_a[27]~input_o\ <= NOT \a[27]~input_o\;
\ALT_INV_b[26]~input_o\ <= NOT \b[26]~input_o\;
\ALT_INV_a[26]~input_o\ <= NOT \a[26]~input_o\;
\ALT_INV_b[25]~input_o\ <= NOT \b[25]~input_o\;
\ALT_INV_a[25]~input_o\ <= NOT \a[25]~input_o\;
\ALT_INV_b[24]~input_o\ <= NOT \b[24]~input_o\;
\ALT_INV_a[24]~input_o\ <= NOT \a[24]~input_o\;
\ALT_INV_b[23]~input_o\ <= NOT \b[23]~input_o\;
\ALT_INV_a[23]~input_o\ <= NOT \a[23]~input_o\;
\ALT_INV_b[22]~input_o\ <= NOT \b[22]~input_o\;
\ALT_INV_a[22]~input_o\ <= NOT \a[22]~input_o\;
\ALT_INV_b[21]~input_o\ <= NOT \b[21]~input_o\;
\ALT_INV_a[21]~input_o\ <= NOT \a[21]~input_o\;
\ALT_INV_b[20]~input_o\ <= NOT \b[20]~input_o\;
\ALT_INV_a[20]~input_o\ <= NOT \a[20]~input_o\;
\ALT_INV_b[19]~input_o\ <= NOT \b[19]~input_o\;
\ALT_INV_a[19]~input_o\ <= NOT \a[19]~input_o\;
\ALT_INV_b[18]~input_o\ <= NOT \b[18]~input_o\;
\ALT_INV_a[18]~input_o\ <= NOT \a[18]~input_o\;
\ALT_INV_b[17]~input_o\ <= NOT \b[17]~input_o\;
\ALT_INV_a[17]~input_o\ <= NOT \a[17]~input_o\;
\ALT_INV_b[16]~input_o\ <= NOT \b[16]~input_o\;
\ALT_INV_a[16]~input_o\ <= NOT \a[16]~input_o\;
\ALT_INV_b[15]~input_o\ <= NOT \b[15]~input_o\;
\ALT_INV_a[15]~input_o\ <= NOT \a[15]~input_o\;
\ALT_INV_b[14]~input_o\ <= NOT \b[14]~input_o\;
\ALT_INV_a[14]~input_o\ <= NOT \a[14]~input_o\;
\ALT_INV_b[13]~input_o\ <= NOT \b[13]~input_o\;
\ALT_INV_a[13]~input_o\ <= NOT \a[13]~input_o\;
\ALT_INV_b[12]~input_o\ <= NOT \b[12]~input_o\;
\ALT_INV_a[12]~input_o\ <= NOT \a[12]~input_o\;
\ALT_INV_b[11]~input_o\ <= NOT \b[11]~input_o\;
\ALT_INV_a[11]~input_o\ <= NOT \a[11]~input_o\;
\ALT_INV_b[10]~input_o\ <= NOT \b[10]~input_o\;
\ALT_INV_a[10]~input_o\ <= NOT \a[10]~input_o\;
\ALT_INV_b[9]~input_o\ <= NOT \b[9]~input_o\;
\ALT_INV_a[9]~input_o\ <= NOT \a[9]~input_o\;
\ALT_INV_b[8]~input_o\ <= NOT \b[8]~input_o\;
\ALT_INV_a[8]~input_o\ <= NOT \a[8]~input_o\;
\ALT_INV_b[7]~input_o\ <= NOT \b[7]~input_o\;
\ALT_INV_a[7]~input_o\ <= NOT \a[7]~input_o\;
\ALT_INV_b[6]~input_o\ <= NOT \b[6]~input_o\;
\ALT_INV_a[6]~input_o\ <= NOT \a[6]~input_o\;
\ALT_INV_b[5]~input_o\ <= NOT \b[5]~input_o\;
\ALT_INV_a[5]~input_o\ <= NOT \a[5]~input_o\;
\ALT_INV_b[4]~input_o\ <= NOT \b[4]~input_o\;
\ALT_INV_a[4]~input_o\ <= NOT \a[4]~input_o\;
\ALT_INV_b[3]~input_o\ <= NOT \b[3]~input_o\;
\ALT_INV_a[3]~input_o\ <= NOT \a[3]~input_o\;
\ALT_INV_b[2]~input_o\ <= NOT \b[2]~input_o\;
\ALT_INV_a[2]~input_o\ <= NOT \a[2]~input_o\;
\ALT_INV_a[0]~input_o\ <= NOT \a[0]~input_o\;
\ALT_INV_b[1]~input_o\ <= NOT \b[1]~input_o\;
\ALT_INV_a_inv~input_o\ <= NOT \a_inv~input_o\;
\ALT_INV_a[1]~input_o\ <= NOT \a[1]~input_o\;
\ALT_INV_b[0]~input_o\ <= NOT \b[0]~input_o\;
\ALT_INV_b_inv~input_o\ <= NOT \b_inv~input_o\;

\result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

\result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:1:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

\result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:2:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

\result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:3:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

\result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:4:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

\result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:5:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

\result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:6:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

\result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:7:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

\result[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:8:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[8]~output_o\);

\result[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:9:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[9]~output_o\);

\result[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:10:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[10]~output_o\);

\result[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:11:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[11]~output_o\);

\result[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:12:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[12]~output_o\);

\result[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:13:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[13]~output_o\);

\result[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:14:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[14]~output_o\);

\result[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:15:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[15]~output_o\);

\result[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:16:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[16]~output_o\);

\result[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:17:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[17]~output_o\);

\result[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:18:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[18]~output_o\);

\result[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:19:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[19]~output_o\);

\result[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:20:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[20]~output_o\);

\result[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:21:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[21]~output_o\);

\result[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:22:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[22]~output_o\);

\result[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:23:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[23]~output_o\);

\result[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:24:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[24]~output_o\);

\result[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:25:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[25]~output_o\);

\result[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:26:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[26]~output_o\);

\result[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:27:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[27]~output_o\);

\result[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:28:alu|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[28]~output_o\);

\result[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:29:alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[29]~output_o\);

\result[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \generate_31bits:30:alu|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \result[30]~output_o\);

\result[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \msb_alu|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result[31]~output_o\);

\zero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr0~combout\,
	devoe => ww_devoe,
	o => \zero~output_o\);

\overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \msb_alu|overflow~combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

\b_inv~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b_inv,
	o => \b_inv~input_o\);

\b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

\a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

\a_inv~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_inv,
	o => \a_inv~input_o\);

\b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

\a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

\generate_31bits:1:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:1:alu|c_out~combout\ = ( \b[1]~input_o\ & ( \a[0]~input_o\ & ( (!\a[1]~input_o\ & ((!\b[0]~input_o\ & ((\a_inv~input_o\))) # (\b[0]~input_o\ & (!\b_inv~input_o\)))) # (\a[1]~input_o\ & (((!\a_inv~input_o\)))) ) ) ) # ( !\b[1]~input_o\ & ( 
-- \a[0]~input_o\ & ( (!\b[0]~input_o\ & (\b_inv~input_o\)) # (\b[0]~input_o\ & ((!\a[1]~input_o\ & (\b_inv~input_o\)) # (\a[1]~input_o\ & ((!\a_inv~input_o\))))) ) ) ) # ( \b[1]~input_o\ & ( !\a[0]~input_o\ & ( (!\a[1]~input_o\ & (((\a_inv~input_o\)))) # 
-- (\a[1]~input_o\ & ((!\b[0]~input_o\ & ((!\a_inv~input_o\))) # (\b[0]~input_o\ & (!\b_inv~input_o\)))) ) ) ) # ( !\b[1]~input_o\ & ( !\a[0]~input_o\ & ( (!\b[0]~input_o\ & (\b_inv~input_o\)) # (\b[0]~input_o\ & ((!\a[1]~input_o\ & ((\a_inv~input_o\))) # 
-- (\a[1]~input_o\ & (\b_inv~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101110101000011101111001001010111010101000010111111100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \ALT_INV_a[1]~input_o\,
	datad => \ALT_INV_a_inv~input_o\,
	datae => \ALT_INV_b[1]~input_o\,
	dataf => \ALT_INV_a[0]~input_o\,
	combout => \generate_31bits:1:alu|c_out~combout\);

\a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

\generate_31bits:2:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:2:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[2]~input_o\,
	combout => \generate_31bits:2:alu|input_a~0_combout\);

\b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

\generate_31bits:2:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:2:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[2]~input_o\,
	combout => \generate_31bits:2:alu|input_b~0_combout\);

\a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

\generate_31bits:3:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:3:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[3]~input_o\,
	combout => \generate_31bits:3:alu|input_a~0_combout\);

\b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

\generate_31bits:3:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:3:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[3]~input_o\,
	combout => \generate_31bits:3:alu|input_b~0_combout\);

\a[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

\b[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

\generate_31bits:4:alu|sum_ans~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:4:alu|sum_ans~0_combout\ = !\b_inv~input_o\ $ (!\a_inv~input_o\ $ (!\a[4]~input_o\ $ (!\b[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_a_inv~input_o\,
	datac => \ALT_INV_a[4]~input_o\,
	datad => \ALT_INV_b[4]~input_o\,
	combout => \generate_31bits:4:alu|sum_ans~0_combout\);

\generate_31bits:4:alu|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:4:alu|c_out~0_combout\ = ( \generate_31bits:3:alu|input_b~0_combout\ & ( \generate_31bits:4:alu|sum_ans~0_combout\ & ( ((!\generate_31bits:1:alu|c_out~combout\ & (\generate_31bits:2:alu|input_a~0_combout\ & 
-- \generate_31bits:2:alu|input_b~0_combout\)) # (\generate_31bits:1:alu|c_out~combout\ & ((\generate_31bits:2:alu|input_b~0_combout\) # (\generate_31bits:2:alu|input_a~0_combout\)))) # (\generate_31bits:3:alu|input_a~0_combout\) ) ) ) # ( 
-- !\generate_31bits:3:alu|input_b~0_combout\ & ( \generate_31bits:4:alu|sum_ans~0_combout\ & ( (\generate_31bits:3:alu|input_a~0_combout\ & ((!\generate_31bits:1:alu|c_out~combout\ & (\generate_31bits:2:alu|input_a~0_combout\ & 
-- \generate_31bits:2:alu|input_b~0_combout\)) # (\generate_31bits:1:alu|c_out~combout\ & ((\generate_31bits:2:alu|input_b~0_combout\) # (\generate_31bits:2:alu|input_a~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:1:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:2:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:2:alu|ALT_INV_input_b~0_combout\,
	datad => \generate_31bits:3:alu|ALT_INV_input_a~0_combout\,
	datae => \generate_31bits:3:alu|ALT_INV_input_b~0_combout\,
	dataf => \generate_31bits:4:alu|ALT_INV_sum_ans~0_combout\,
	combout => \generate_31bits:4:alu|c_out~0_combout\);

\generate_31bits:4:alu|and_ans~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:4:alu|and_ans~0_combout\ = (!\b_inv~input_o\ & (\b[4]~input_o\ & (!\a_inv~input_o\ $ (!\a[4]~input_o\)))) # (\b_inv~input_o\ & (!\b[4]~input_o\ & (!\a_inv~input_o\ $ (!\a[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000101000000101000010100000010100001010000001010000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_a_inv~input_o\,
	datac => \ALT_INV_a[4]~input_o\,
	datad => \ALT_INV_b[4]~input_o\,
	combout => \generate_31bits:4:alu|and_ans~0_combout\);

\a[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

\generate_31bits:5:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:5:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[5]~input_o\,
	combout => \generate_31bits:5:alu|input_a~0_combout\);

\b[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

\generate_31bits:5:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:5:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[5]~input_o\,
	combout => \generate_31bits:5:alu|input_b~0_combout\);

\a[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

\generate_31bits:6:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:6:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[6]~input_o\,
	combout => \generate_31bits:6:alu|input_a~0_combout\);

\b[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

\generate_31bits:6:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:6:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[6]~input_o\,
	combout => \generate_31bits:6:alu|input_b~0_combout\);

\generate_31bits:6:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:6:alu|c_out~combout\ = ( !\generate_31bits:6:alu|input_a~0_combout\ & ( \generate_31bits:6:alu|input_b~0_combout\ & ( (!\generate_31bits:5:alu|input_a~0_combout\ & ((!\generate_31bits:5:alu|input_b~0_combout\) # 
-- ((!\generate_31bits:4:alu|c_out~0_combout\ & !\generate_31bits:4:alu|and_ans~0_combout\)))) # (\generate_31bits:5:alu|input_a~0_combout\ & (!\generate_31bits:4:alu|c_out~0_combout\ & (!\generate_31bits:4:alu|and_ans~0_combout\ & 
-- !\generate_31bits:5:alu|input_b~0_combout\))) ) ) ) # ( \generate_31bits:6:alu|input_a~0_combout\ & ( !\generate_31bits:6:alu|input_b~0_combout\ & ( (!\generate_31bits:5:alu|input_a~0_combout\ & ((!\generate_31bits:5:alu|input_b~0_combout\) # 
-- ((!\generate_31bits:4:alu|c_out~0_combout\ & !\generate_31bits:4:alu|and_ans~0_combout\)))) # (\generate_31bits:5:alu|input_a~0_combout\ & (!\generate_31bits:4:alu|c_out~0_combout\ & (!\generate_31bits:4:alu|and_ans~0_combout\ & 
-- !\generate_31bits:5:alu|input_b~0_combout\))) ) ) ) # ( !\generate_31bits:6:alu|input_a~0_combout\ & ( !\generate_31bits:6:alu|input_b~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:4:alu|ALT_INV_c_out~0_combout\,
	datab => \generate_31bits:4:alu|ALT_INV_and_ans~0_combout\,
	datac => \generate_31bits:5:alu|ALT_INV_input_a~0_combout\,
	datad => \generate_31bits:5:alu|ALT_INV_input_b~0_combout\,
	datae => \generate_31bits:6:alu|ALT_INV_input_a~0_combout\,
	dataf => \generate_31bits:6:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:6:alu|c_out~combout\);

\a[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

\generate_31bits:7:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:7:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[7]~input_o\,
	combout => \generate_31bits:7:alu|input_a~0_combout\);

\b[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

\generate_31bits:7:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:7:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[7]~input_o\,
	combout => \generate_31bits:7:alu|input_b~0_combout\);

\a[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

\generate_31bits:8:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:8:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[8]~input_o\,
	combout => \generate_31bits:8:alu|input_a~0_combout\);

\b[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

\generate_31bits:8:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:8:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[8]~input_o\,
	combout => \generate_31bits:8:alu|input_b~0_combout\);

\a[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

\b[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

\generate_31bits:9:alu|sum_ans~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:9:alu|sum_ans~0_combout\ = !\b_inv~input_o\ $ (!\a_inv~input_o\ $ (!\a[9]~input_o\ $ (!\b[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_a_inv~input_o\,
	datac => \ALT_INV_a[9]~input_o\,
	datad => \ALT_INV_b[9]~input_o\,
	combout => \generate_31bits:9:alu|sum_ans~0_combout\);

\generate_31bits:9:alu|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:9:alu|c_out~0_combout\ = ( \generate_31bits:8:alu|input_b~0_combout\ & ( \generate_31bits:9:alu|sum_ans~0_combout\ & ( ((!\generate_31bits:6:alu|c_out~combout\ & ((\generate_31bits:7:alu|input_b~0_combout\) # 
-- (\generate_31bits:7:alu|input_a~0_combout\))) # (\generate_31bits:6:alu|c_out~combout\ & (\generate_31bits:7:alu|input_a~0_combout\ & \generate_31bits:7:alu|input_b~0_combout\))) # (\generate_31bits:8:alu|input_a~0_combout\) ) ) ) # ( 
-- !\generate_31bits:8:alu|input_b~0_combout\ & ( \generate_31bits:9:alu|sum_ans~0_combout\ & ( (\generate_31bits:8:alu|input_a~0_combout\ & ((!\generate_31bits:6:alu|c_out~combout\ & ((\generate_31bits:7:alu|input_b~0_combout\) # 
-- (\generate_31bits:7:alu|input_a~0_combout\))) # (\generate_31bits:6:alu|c_out~combout\ & (\generate_31bits:7:alu|input_a~0_combout\ & \generate_31bits:7:alu|input_b~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:6:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:7:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:7:alu|ALT_INV_input_b~0_combout\,
	datad => \generate_31bits:8:alu|ALT_INV_input_a~0_combout\,
	datae => \generate_31bits:8:alu|ALT_INV_input_b~0_combout\,
	dataf => \generate_31bits:9:alu|ALT_INV_sum_ans~0_combout\,
	combout => \generate_31bits:9:alu|c_out~0_combout\);

\generate_31bits:9:alu|and_ans~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:9:alu|and_ans~0_combout\ = (!\b_inv~input_o\ & (\b[9]~input_o\ & (!\a_inv~input_o\ $ (!\a[9]~input_o\)))) # (\b_inv~input_o\ & (!\b[9]~input_o\ & (!\a_inv~input_o\ $ (!\a[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000101000000101000010100000010100001010000001010000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_a_inv~input_o\,
	datac => \ALT_INV_a[9]~input_o\,
	datad => \ALT_INV_b[9]~input_o\,
	combout => \generate_31bits:9:alu|and_ans~0_combout\);

\a[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

\generate_31bits:10:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:10:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[10]~input_o\,
	combout => \generate_31bits:10:alu|input_a~0_combout\);

\b[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

\generate_31bits:10:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:10:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[10]~input_o\,
	combout => \generate_31bits:10:alu|input_b~0_combout\);

\a[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

\generate_31bits:11:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:11:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[11]~input_o\,
	combout => \generate_31bits:11:alu|input_a~0_combout\);

\b[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

\generate_31bits:11:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:11:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[11]~input_o\,
	combout => \generate_31bits:11:alu|input_b~0_combout\);

\generate_31bits:11:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:11:alu|c_out~combout\ = ( !\generate_31bits:11:alu|input_a~0_combout\ & ( \generate_31bits:11:alu|input_b~0_combout\ & ( (!\generate_31bits:10:alu|input_a~0_combout\ & ((!\generate_31bits:10:alu|input_b~0_combout\) # 
-- ((!\generate_31bits:9:alu|c_out~0_combout\ & !\generate_31bits:9:alu|and_ans~0_combout\)))) # (\generate_31bits:10:alu|input_a~0_combout\ & (!\generate_31bits:9:alu|c_out~0_combout\ & (!\generate_31bits:9:alu|and_ans~0_combout\ & 
-- !\generate_31bits:10:alu|input_b~0_combout\))) ) ) ) # ( \generate_31bits:11:alu|input_a~0_combout\ & ( !\generate_31bits:11:alu|input_b~0_combout\ & ( (!\generate_31bits:10:alu|input_a~0_combout\ & ((!\generate_31bits:10:alu|input_b~0_combout\) # 
-- ((!\generate_31bits:9:alu|c_out~0_combout\ & !\generate_31bits:9:alu|and_ans~0_combout\)))) # (\generate_31bits:10:alu|input_a~0_combout\ & (!\generate_31bits:9:alu|c_out~0_combout\ & (!\generate_31bits:9:alu|and_ans~0_combout\ & 
-- !\generate_31bits:10:alu|input_b~0_combout\))) ) ) ) # ( !\generate_31bits:11:alu|input_a~0_combout\ & ( !\generate_31bits:11:alu|input_b~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:9:alu|ALT_INV_c_out~0_combout\,
	datab => \generate_31bits:9:alu|ALT_INV_and_ans~0_combout\,
	datac => \generate_31bits:10:alu|ALT_INV_input_a~0_combout\,
	datad => \generate_31bits:10:alu|ALT_INV_input_b~0_combout\,
	datae => \generate_31bits:11:alu|ALT_INV_input_a~0_combout\,
	dataf => \generate_31bits:11:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:11:alu|c_out~combout\);

\a[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

\generate_31bits:12:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:12:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[12]~input_o\,
	combout => \generate_31bits:12:alu|input_a~0_combout\);

\b[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

\generate_31bits:12:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:12:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[12]~input_o\,
	combout => \generate_31bits:12:alu|input_b~0_combout\);

\a[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

\generate_31bits:13:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:13:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[13]~input_o\,
	combout => \generate_31bits:13:alu|input_a~0_combout\);

\b[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

\generate_31bits:13:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:13:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[13]~input_o\,
	combout => \generate_31bits:13:alu|input_b~0_combout\);

\a[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

\generate_31bits:14:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:14:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[14]~input_o\,
	combout => \generate_31bits:14:alu|input_a~0_combout\);

\b[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

\generate_31bits:14:alu|sum_ans~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:14:alu|sum_ans~0_combout\ = !\b_inv~input_o\ $ (!\generate_31bits:14:alu|input_a~0_combout\ $ (\b[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \generate_31bits:14:alu|ALT_INV_input_a~0_combout\,
	datac => \ALT_INV_b[14]~input_o\,
	combout => \generate_31bits:14:alu|sum_ans~0_combout\);

\generate_31bits:14:alu|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:14:alu|c_out~0_combout\ = ( \generate_31bits:13:alu|input_b~0_combout\ & ( \generate_31bits:14:alu|sum_ans~0_combout\ & ( ((!\generate_31bits:11:alu|c_out~combout\ & ((\generate_31bits:12:alu|input_b~0_combout\) # 
-- (\generate_31bits:12:alu|input_a~0_combout\))) # (\generate_31bits:11:alu|c_out~combout\ & (\generate_31bits:12:alu|input_a~0_combout\ & \generate_31bits:12:alu|input_b~0_combout\))) # (\generate_31bits:13:alu|input_a~0_combout\) ) ) ) # ( 
-- !\generate_31bits:13:alu|input_b~0_combout\ & ( \generate_31bits:14:alu|sum_ans~0_combout\ & ( (\generate_31bits:13:alu|input_a~0_combout\ & ((!\generate_31bits:11:alu|c_out~combout\ & ((\generate_31bits:12:alu|input_b~0_combout\) # 
-- (\generate_31bits:12:alu|input_a~0_combout\))) # (\generate_31bits:11:alu|c_out~combout\ & (\generate_31bits:12:alu|input_a~0_combout\ & \generate_31bits:12:alu|input_b~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:11:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:12:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:12:alu|ALT_INV_input_b~0_combout\,
	datad => \generate_31bits:13:alu|ALT_INV_input_a~0_combout\,
	datae => \generate_31bits:13:alu|ALT_INV_input_b~0_combout\,
	dataf => \generate_31bits:14:alu|ALT_INV_sum_ans~0_combout\,
	combout => \generate_31bits:14:alu|c_out~0_combout\);

\generate_31bits:14:alu|and_ans~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:14:alu|and_ans~0_combout\ = (\generate_31bits:14:alu|input_a~0_combout\ & (!\b_inv~input_o\ $ (!\b[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \generate_31bits:14:alu|ALT_INV_input_a~0_combout\,
	datac => \ALT_INV_b[14]~input_o\,
	combout => \generate_31bits:14:alu|and_ans~0_combout\);

\a[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

\generate_31bits:15:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:15:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[15]~input_o\,
	combout => \generate_31bits:15:alu|input_a~0_combout\);

\b[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

\generate_31bits:15:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:15:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[15]~input_o\,
	combout => \generate_31bits:15:alu|input_b~0_combout\);

\a[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

\generate_31bits:16:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:16:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[16]~input_o\,
	combout => \generate_31bits:16:alu|input_a~0_combout\);

\b[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(16),
	o => \b[16]~input_o\);

\generate_31bits:16:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:16:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[16]~input_o\,
	combout => \generate_31bits:16:alu|input_b~0_combout\);

\generate_31bits:16:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:16:alu|c_out~combout\ = ( !\generate_31bits:16:alu|input_a~0_combout\ & ( \generate_31bits:16:alu|input_b~0_combout\ & ( (!\generate_31bits:15:alu|input_a~0_combout\ & ((!\generate_31bits:15:alu|input_b~0_combout\) # 
-- ((!\generate_31bits:14:alu|c_out~0_combout\ & !\generate_31bits:14:alu|and_ans~0_combout\)))) # (\generate_31bits:15:alu|input_a~0_combout\ & (!\generate_31bits:14:alu|c_out~0_combout\ & (!\generate_31bits:14:alu|and_ans~0_combout\ & 
-- !\generate_31bits:15:alu|input_b~0_combout\))) ) ) ) # ( \generate_31bits:16:alu|input_a~0_combout\ & ( !\generate_31bits:16:alu|input_b~0_combout\ & ( (!\generate_31bits:15:alu|input_a~0_combout\ & ((!\generate_31bits:15:alu|input_b~0_combout\) # 
-- ((!\generate_31bits:14:alu|c_out~0_combout\ & !\generate_31bits:14:alu|and_ans~0_combout\)))) # (\generate_31bits:15:alu|input_a~0_combout\ & (!\generate_31bits:14:alu|c_out~0_combout\ & (!\generate_31bits:14:alu|and_ans~0_combout\ & 
-- !\generate_31bits:15:alu|input_b~0_combout\))) ) ) ) # ( !\generate_31bits:16:alu|input_a~0_combout\ & ( !\generate_31bits:16:alu|input_b~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:14:alu|ALT_INV_c_out~0_combout\,
	datab => \generate_31bits:14:alu|ALT_INV_and_ans~0_combout\,
	datac => \generate_31bits:15:alu|ALT_INV_input_a~0_combout\,
	datad => \generate_31bits:15:alu|ALT_INV_input_b~0_combout\,
	datae => \generate_31bits:16:alu|ALT_INV_input_a~0_combout\,
	dataf => \generate_31bits:16:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:16:alu|c_out~combout\);

\a[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

\generate_31bits:17:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:17:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[17]~input_o\,
	combout => \generate_31bits:17:alu|input_a~0_combout\);

\b[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(17),
	o => \b[17]~input_o\);

\generate_31bits:17:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:17:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[17]~input_o\,
	combout => \generate_31bits:17:alu|input_b~0_combout\);

\a[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

\generate_31bits:18:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:18:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[18]~input_o\,
	combout => \generate_31bits:18:alu|input_a~0_combout\);

\b[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(18),
	o => \b[18]~input_o\);

\generate_31bits:18:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:18:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[18]~input_o\,
	combout => \generate_31bits:18:alu|input_b~0_combout\);

\a[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

\generate_31bits:19:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:19:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[19]~input_o\,
	combout => \generate_31bits:19:alu|input_a~0_combout\);

\b[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(19),
	o => \b[19]~input_o\);

\generate_31bits:19:alu|sum_ans~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:19:alu|sum_ans~0_combout\ = !\b_inv~input_o\ $ (!\generate_31bits:19:alu|input_a~0_combout\ $ (\b[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \generate_31bits:19:alu|ALT_INV_input_a~0_combout\,
	datac => \ALT_INV_b[19]~input_o\,
	combout => \generate_31bits:19:alu|sum_ans~0_combout\);

\generate_31bits:19:alu|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:19:alu|c_out~0_combout\ = ( \generate_31bits:18:alu|input_b~0_combout\ & ( \generate_31bits:19:alu|sum_ans~0_combout\ & ( ((!\generate_31bits:16:alu|c_out~combout\ & ((\generate_31bits:17:alu|input_b~0_combout\) # 
-- (\generate_31bits:17:alu|input_a~0_combout\))) # (\generate_31bits:16:alu|c_out~combout\ & (\generate_31bits:17:alu|input_a~0_combout\ & \generate_31bits:17:alu|input_b~0_combout\))) # (\generate_31bits:18:alu|input_a~0_combout\) ) ) ) # ( 
-- !\generate_31bits:18:alu|input_b~0_combout\ & ( \generate_31bits:19:alu|sum_ans~0_combout\ & ( (\generate_31bits:18:alu|input_a~0_combout\ & ((!\generate_31bits:16:alu|c_out~combout\ & ((\generate_31bits:17:alu|input_b~0_combout\) # 
-- (\generate_31bits:17:alu|input_a~0_combout\))) # (\generate_31bits:16:alu|c_out~combout\ & (\generate_31bits:17:alu|input_a~0_combout\ & \generate_31bits:17:alu|input_b~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:16:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:17:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:17:alu|ALT_INV_input_b~0_combout\,
	datad => \generate_31bits:18:alu|ALT_INV_input_a~0_combout\,
	datae => \generate_31bits:18:alu|ALT_INV_input_b~0_combout\,
	dataf => \generate_31bits:19:alu|ALT_INV_sum_ans~0_combout\,
	combout => \generate_31bits:19:alu|c_out~0_combout\);

\generate_31bits:19:alu|and_ans~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:19:alu|and_ans~0_combout\ = (\generate_31bits:19:alu|input_a~0_combout\ & (!\b_inv~input_o\ $ (!\b[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \generate_31bits:19:alu|ALT_INV_input_a~0_combout\,
	datac => \ALT_INV_b[19]~input_o\,
	combout => \generate_31bits:19:alu|and_ans~0_combout\);

\a[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

\generate_31bits:20:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:20:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[20]~input_o\,
	combout => \generate_31bits:20:alu|input_a~0_combout\);

\b[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(20),
	o => \b[20]~input_o\);

\generate_31bits:20:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:20:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[20]~input_o\,
	combout => \generate_31bits:20:alu|input_b~0_combout\);

\a[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

\generate_31bits:21:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:21:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[21]~input_o\,
	combout => \generate_31bits:21:alu|input_a~0_combout\);

\b[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(21),
	o => \b[21]~input_o\);

\generate_31bits:21:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:21:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[21]~input_o\,
	combout => \generate_31bits:21:alu|input_b~0_combout\);

\generate_31bits:21:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:21:alu|c_out~combout\ = ( !\generate_31bits:21:alu|input_a~0_combout\ & ( \generate_31bits:21:alu|input_b~0_combout\ & ( (!\generate_31bits:20:alu|input_a~0_combout\ & ((!\generate_31bits:20:alu|input_b~0_combout\) # 
-- ((!\generate_31bits:19:alu|c_out~0_combout\ & !\generate_31bits:19:alu|and_ans~0_combout\)))) # (\generate_31bits:20:alu|input_a~0_combout\ & (!\generate_31bits:19:alu|c_out~0_combout\ & (!\generate_31bits:19:alu|and_ans~0_combout\ & 
-- !\generate_31bits:20:alu|input_b~0_combout\))) ) ) ) # ( \generate_31bits:21:alu|input_a~0_combout\ & ( !\generate_31bits:21:alu|input_b~0_combout\ & ( (!\generate_31bits:20:alu|input_a~0_combout\ & ((!\generate_31bits:20:alu|input_b~0_combout\) # 
-- ((!\generate_31bits:19:alu|c_out~0_combout\ & !\generate_31bits:19:alu|and_ans~0_combout\)))) # (\generate_31bits:20:alu|input_a~0_combout\ & (!\generate_31bits:19:alu|c_out~0_combout\ & (!\generate_31bits:19:alu|and_ans~0_combout\ & 
-- !\generate_31bits:20:alu|input_b~0_combout\))) ) ) ) # ( !\generate_31bits:21:alu|input_a~0_combout\ & ( !\generate_31bits:21:alu|input_b~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:19:alu|ALT_INV_c_out~0_combout\,
	datab => \generate_31bits:19:alu|ALT_INV_and_ans~0_combout\,
	datac => \generate_31bits:20:alu|ALT_INV_input_a~0_combout\,
	datad => \generate_31bits:20:alu|ALT_INV_input_b~0_combout\,
	datae => \generate_31bits:21:alu|ALT_INV_input_a~0_combout\,
	dataf => \generate_31bits:21:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:21:alu|c_out~combout\);

\a[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

\generate_31bits:22:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:22:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[22]~input_o\,
	combout => \generate_31bits:22:alu|input_a~0_combout\);

\b[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(22),
	o => \b[22]~input_o\);

\generate_31bits:22:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:22:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[22]~input_o\,
	combout => \generate_31bits:22:alu|input_b~0_combout\);

\a[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

\generate_31bits:23:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:23:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[23]~input_o\,
	combout => \generate_31bits:23:alu|input_a~0_combout\);

\b[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(23),
	o => \b[23]~input_o\);

\generate_31bits:23:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:23:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[23]~input_o\,
	combout => \generate_31bits:23:alu|input_b~0_combout\);

\a[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

\generate_31bits:24:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:24:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[24]~input_o\,
	combout => \generate_31bits:24:alu|input_a~0_combout\);

\b[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(24),
	o => \b[24]~input_o\);

\generate_31bits:24:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:24:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[24]~input_o\,
	combout => \generate_31bits:24:alu|input_b~0_combout\);

\generate_31bits:24:alu|sum_ans~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:24:alu|sum_ans~0_combout\ = !\generate_31bits:24:alu|input_a~0_combout\ $ (!\generate_31bits:24:alu|input_b~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:24:alu|ALT_INV_input_a~0_combout\,
	datab => \generate_31bits:24:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:24:alu|sum_ans~0_combout\);

\generate_31bits:24:alu|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:24:alu|c_out~0_combout\ = ( \generate_31bits:23:alu|input_b~0_combout\ & ( \generate_31bits:24:alu|sum_ans~0_combout\ & ( ((!\generate_31bits:21:alu|c_out~combout\ & ((\generate_31bits:22:alu|input_b~0_combout\) # 
-- (\generate_31bits:22:alu|input_a~0_combout\))) # (\generate_31bits:21:alu|c_out~combout\ & (\generate_31bits:22:alu|input_a~0_combout\ & \generate_31bits:22:alu|input_b~0_combout\))) # (\generate_31bits:23:alu|input_a~0_combout\) ) ) ) # ( 
-- !\generate_31bits:23:alu|input_b~0_combout\ & ( \generate_31bits:24:alu|sum_ans~0_combout\ & ( (\generate_31bits:23:alu|input_a~0_combout\ & ((!\generate_31bits:21:alu|c_out~combout\ & ((\generate_31bits:22:alu|input_b~0_combout\) # 
-- (\generate_31bits:22:alu|input_a~0_combout\))) # (\generate_31bits:21:alu|c_out~combout\ & (\generate_31bits:22:alu|input_a~0_combout\ & \generate_31bits:22:alu|input_b~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:21:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:22:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:22:alu|ALT_INV_input_b~0_combout\,
	datad => \generate_31bits:23:alu|ALT_INV_input_a~0_combout\,
	datae => \generate_31bits:23:alu|ALT_INV_input_b~0_combout\,
	dataf => \generate_31bits:24:alu|ALT_INV_sum_ans~0_combout\,
	combout => \generate_31bits:24:alu|c_out~0_combout\);

\generate_31bits:24:alu|and_ans~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:24:alu|and_ans~0_combout\ = (\generate_31bits:24:alu|input_a~0_combout\ & \generate_31bits:24:alu|input_b~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:24:alu|ALT_INV_input_a~0_combout\,
	datab => \generate_31bits:24:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:24:alu|and_ans~0_combout\);

\a[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(25),
	o => \a[25]~input_o\);

\generate_31bits:25:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:25:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[25]~input_o\,
	combout => \generate_31bits:25:alu|input_a~0_combout\);

\b[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(25),
	o => \b[25]~input_o\);

\generate_31bits:25:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:25:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[25]~input_o\,
	combout => \generate_31bits:25:alu|input_b~0_combout\);

\a[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(26),
	o => \a[26]~input_o\);

\generate_31bits:26:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:26:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[26]~input_o\,
	combout => \generate_31bits:26:alu|input_a~0_combout\);

\b[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(26),
	o => \b[26]~input_o\);

\generate_31bits:26:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:26:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[26]~input_o\,
	combout => \generate_31bits:26:alu|input_b~0_combout\);

\generate_31bits:26:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:26:alu|c_out~combout\ = ( !\generate_31bits:26:alu|input_a~0_combout\ & ( \generate_31bits:26:alu|input_b~0_combout\ & ( (!\generate_31bits:25:alu|input_a~0_combout\ & ((!\generate_31bits:25:alu|input_b~0_combout\) # 
-- ((!\generate_31bits:24:alu|c_out~0_combout\ & !\generate_31bits:24:alu|and_ans~0_combout\)))) # (\generate_31bits:25:alu|input_a~0_combout\ & (!\generate_31bits:24:alu|c_out~0_combout\ & (!\generate_31bits:24:alu|and_ans~0_combout\ & 
-- !\generate_31bits:25:alu|input_b~0_combout\))) ) ) ) # ( \generate_31bits:26:alu|input_a~0_combout\ & ( !\generate_31bits:26:alu|input_b~0_combout\ & ( (!\generate_31bits:25:alu|input_a~0_combout\ & ((!\generate_31bits:25:alu|input_b~0_combout\) # 
-- ((!\generate_31bits:24:alu|c_out~0_combout\ & !\generate_31bits:24:alu|and_ans~0_combout\)))) # (\generate_31bits:25:alu|input_a~0_combout\ & (!\generate_31bits:24:alu|c_out~0_combout\ & (!\generate_31bits:24:alu|and_ans~0_combout\ & 
-- !\generate_31bits:25:alu|input_b~0_combout\))) ) ) ) # ( !\generate_31bits:26:alu|input_a~0_combout\ & ( !\generate_31bits:26:alu|input_b~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:24:alu|ALT_INV_c_out~0_combout\,
	datab => \generate_31bits:24:alu|ALT_INV_and_ans~0_combout\,
	datac => \generate_31bits:25:alu|ALT_INV_input_a~0_combout\,
	datad => \generate_31bits:25:alu|ALT_INV_input_b~0_combout\,
	datae => \generate_31bits:26:alu|ALT_INV_input_a~0_combout\,
	dataf => \generate_31bits:26:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:26:alu|c_out~combout\);

\a[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(27),
	o => \a[27]~input_o\);

\generate_31bits:27:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:27:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[27]~input_o\,
	combout => \generate_31bits:27:alu|input_a~0_combout\);

\b[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(27),
	o => \b[27]~input_o\);

\a[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(28),
	o => \a[28]~input_o\);

\generate_31bits:28:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:28:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[28]~input_o\,
	combout => \generate_31bits:28:alu|input_a~0_combout\);

\b[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(28),
	o => \b[28]~input_o\);

\generate_31bits:28:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:28:alu|c_out~combout\ = ( \generate_31bits:28:alu|input_a~0_combout\ & ( \b[28]~input_o\ & ( (!\b_inv~input_o\) # ((!\generate_31bits:26:alu|c_out~combout\ & ((!\b[27]~input_o\) # (\generate_31bits:27:alu|input_a~0_combout\))) # 
-- (\generate_31bits:26:alu|c_out~combout\ & (\generate_31bits:27:alu|input_a~0_combout\ & !\b[27]~input_o\))) ) ) ) # ( !\generate_31bits:28:alu|input_a~0_combout\ & ( \b[28]~input_o\ & ( (!\b_inv~input_o\ & ((!\generate_31bits:26:alu|c_out~combout\ & 
-- ((\b[27]~input_o\) # (\generate_31bits:27:alu|input_a~0_combout\))) # (\generate_31bits:26:alu|c_out~combout\ & (\generate_31bits:27:alu|input_a~0_combout\ & \b[27]~input_o\)))) ) ) ) # ( \generate_31bits:28:alu|input_a~0_combout\ & ( !\b[28]~input_o\ & ( 
-- ((!\generate_31bits:26:alu|c_out~combout\ & ((\b[27]~input_o\) # (\generate_31bits:27:alu|input_a~0_combout\))) # (\generate_31bits:26:alu|c_out~combout\ & (\generate_31bits:27:alu|input_a~0_combout\ & \b[27]~input_o\))) # (\b_inv~input_o\) ) ) ) # ( 
-- !\generate_31bits:28:alu|input_a~0_combout\ & ( !\b[28]~input_o\ & ( (\b_inv~input_o\ & ((!\generate_31bits:26:alu|c_out~combout\ & ((!\b[27]~input_o\) # (\generate_31bits:27:alu|input_a~0_combout\))) # (\generate_31bits:26:alu|c_out~combout\ & 
-- (\generate_31bits:27:alu|input_a~0_combout\ & !\b[27]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100000100010111011101111100001000100010101110111110101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \generate_31bits:26:alu|ALT_INV_c_out~combout\,
	datac => \generate_31bits:27:alu|ALT_INV_input_a~0_combout\,
	datad => \ALT_INV_b[27]~input_o\,
	datae => \generate_31bits:28:alu|ALT_INV_input_a~0_combout\,
	dataf => \ALT_INV_b[28]~input_o\,
	combout => \generate_31bits:28:alu|c_out~combout\);

\a[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(29),
	o => \a[29]~input_o\);

\generate_31bits:29:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:29:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[29]~input_o\,
	combout => \generate_31bits:29:alu|input_a~0_combout\);

\b[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(29),
	o => \b[29]~input_o\);

\generate_31bits:29:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:29:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[29]~input_o\,
	combout => \generate_31bits:29:alu|input_b~0_combout\);

\a[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(30),
	o => \a[30]~input_o\);

\generate_31bits:30:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:30:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[30]~input_o\,
	combout => \generate_31bits:30:alu|input_a~0_combout\);

\b[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(30),
	o => \b[30]~input_o\);

\generate_31bits:30:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:30:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[30]~input_o\,
	combout => \generate_31bits:30:alu|input_b~0_combout\);

\a[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(31),
	o => \a[31]~input_o\);

\msb_alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \msb_alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[31]~input_o\,
	combout => \msb_alu|input_a~0_combout\);

\b[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(31),
	o => \b[31]~input_o\);

\msb_alu|set~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \msb_alu|set~0_combout\ = !\b_inv~input_o\ $ (!\msb_alu|input_a~0_combout\ $ (\b[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \msb_alu|ALT_INV_input_a~0_combout\,
	datac => \ALT_INV_b[31]~input_o\,
	combout => \msb_alu|set~0_combout\);

\msb_alu|set\ : cyclonev_lcell_comb
-- Equation(s):
-- \msb_alu|set~combout\ = ( \generate_31bits:30:alu|input_b~0_combout\ & ( \msb_alu|set~0_combout\ & ( (!\generate_31bits:30:alu|input_a~0_combout\ & ((!\generate_31bits:28:alu|c_out~combout\ & ((!\generate_31bits:29:alu|input_a~0_combout\) # 
-- (!\generate_31bits:29:alu|input_b~0_combout\))) # (\generate_31bits:28:alu|c_out~combout\ & (!\generate_31bits:29:alu|input_a~0_combout\ & !\generate_31bits:29:alu|input_b~0_combout\)))) ) ) ) # ( !\generate_31bits:30:alu|input_b~0_combout\ & ( 
-- \msb_alu|set~0_combout\ & ( (!\generate_31bits:30:alu|input_a~0_combout\) # ((!\generate_31bits:28:alu|c_out~combout\ & ((!\generate_31bits:29:alu|input_a~0_combout\) # (!\generate_31bits:29:alu|input_b~0_combout\))) # 
-- (\generate_31bits:28:alu|c_out~combout\ & (!\generate_31bits:29:alu|input_a~0_combout\ & !\generate_31bits:29:alu|input_b~0_combout\))) ) ) ) # ( \generate_31bits:30:alu|input_b~0_combout\ & ( !\msb_alu|set~0_combout\ & ( 
-- ((!\generate_31bits:28:alu|c_out~combout\ & (\generate_31bits:29:alu|input_a~0_combout\ & \generate_31bits:29:alu|input_b~0_combout\)) # (\generate_31bits:28:alu|c_out~combout\ & ((\generate_31bits:29:alu|input_b~0_combout\) # 
-- (\generate_31bits:29:alu|input_a~0_combout\)))) # (\generate_31bits:30:alu|input_a~0_combout\) ) ) ) # ( !\generate_31bits:30:alu|input_b~0_combout\ & ( !\msb_alu|set~0_combout\ & ( (\generate_31bits:30:alu|input_a~0_combout\ & 
-- ((!\generate_31bits:28:alu|c_out~combout\ & (\generate_31bits:29:alu|input_a~0_combout\ & \generate_31bits:29:alu|input_b~0_combout\)) # (\generate_31bits:28:alu|c_out~combout\ & ((\generate_31bits:29:alu|input_b~0_combout\) # 
-- (\generate_31bits:29:alu|input_a~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111111111111111010001110100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:28:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:29:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:29:alu|ALT_INV_input_b~0_combout\,
	datad => \generate_31bits:30:alu|ALT_INV_input_a~0_combout\,
	datae => \generate_31bits:30:alu|ALT_INV_input_b~0_combout\,
	dataf => \msb_alu|ALT_INV_set~0_combout\,
	combout => \msb_alu|set~combout\);

\ops[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ops(0),
	o => \ops[0]~input_o\);

\ops[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ops(1),
	o => \ops[1]~input_o\);

\alu_0|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_0|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[0]~input_o\,
	combout => \alu_0|input_a~0_combout\);

\alu_0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_0|Mux0~0_combout\ = ( \ops[1]~input_o\ & ( \alu_0|input_a~0_combout\ & ( (!\ops[0]~input_o\ & (!\b[0]~input_o\)) # (\ops[0]~input_o\ & ((\msb_alu|set~combout\))) ) ) ) # ( !\ops[1]~input_o\ & ( \alu_0|input_a~0_combout\ & ( (!\b_inv~input_o\ $ 
-- (!\b[0]~input_o\)) # (\ops[0]~input_o\) ) ) ) # ( \ops[1]~input_o\ & ( !\alu_0|input_a~0_combout\ & ( (!\ops[0]~input_o\ & (\b[0]~input_o\)) # (\ops[0]~input_o\ & ((\msb_alu|set~combout\))) ) ) ) # ( !\ops[1]~input_o\ & ( !\alu_0|input_a~0_combout\ & ( 
-- (\ops[0]~input_o\ & (!\b_inv~input_o\ $ (!\b[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110001100110000111101100110111111111100110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \msb_alu|ALT_INV_set~combout\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	dataf => \alu_0|ALT_INV_input_a~0_combout\,
	combout => \alu_0|Mux0~0_combout\);

\generate_31bits:1:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:1:alu|input_a~0_combout\ = !\a[1]~input_o\ $ (!\a_inv~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[1]~input_o\,
	datab => \ALT_INV_a_inv~input_o\,
	combout => \generate_31bits:1:alu|input_a~0_combout\);

\alu_0|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_0|c_out~0_combout\ = (!\b[0]~input_o\ & (\b_inv~input_o\)) # (\b[0]~input_o\ & ((\alu_0|input_a~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[0]~input_o\,
	datac => \alu_0|ALT_INV_input_a~0_combout\,
	combout => \alu_0|c_out~0_combout\);

\generate_31bits:1:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:1:alu|Mux0~0_combout\ = ( !\ops[0]~input_o\ & ( \ops[1]~input_o\ & ( !\b_inv~input_o\ $ (!\generate_31bits:1:alu|input_a~0_combout\ $ (!\b[1]~input_o\ $ (!\alu_0|c_out~0_combout\))) ) ) ) # ( \ops[0]~input_o\ & ( !\ops[1]~input_o\ & ( 
-- (!\b_inv~input_o\ $ (!\b[1]~input_o\)) # (\generate_31bits:1:alu|input_a~0_combout\) ) ) ) # ( !\ops[0]~input_o\ & ( !\ops[1]~input_o\ & ( (\generate_31bits:1:alu|input_a~0_combout\ & (!\b_inv~input_o\ $ (!\b[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010011110110111101101101001100101100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \generate_31bits:1:alu|ALT_INV_input_a~0_combout\,
	datac => \ALT_INV_b[1]~input_o\,
	datad => \alu_0|ALT_INV_c_out~0_combout\,
	datae => \ALT_INV_ops[0]~input_o\,
	dataf => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:1:alu|Mux0~0_combout\);

\generate_31bits:2:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:2:alu|Mux0~0_combout\ = ( \ops[1]~input_o\ & ( (!\ops[0]~input_o\ & (!\generate_31bits:1:alu|c_out~combout\ $ (!\generate_31bits:2:alu|input_a~0_combout\ $ (\generate_31bits:2:alu|input_b~0_combout\)))) ) ) # ( !\ops[1]~input_o\ & ( 
-- (!\generate_31bits:2:alu|input_a~0_combout\ & (\generate_31bits:2:alu|input_b~0_combout\ & \ops[0]~input_o\)) # (\generate_31bits:2:alu|input_a~0_combout\ & ((\ops[0]~input_o\) # (\generate_31bits:2:alu|input_b~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111011010010000000000000011001111110110100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:1:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:2:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:2:alu|ALT_INV_input_b~0_combout\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:2:alu|Mux0~0_combout\);

\generate_31bits:2:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:2:alu|c_out~combout\ = (!\generate_31bits:1:alu|c_out~combout\ & (\generate_31bits:2:alu|input_a~0_combout\ & \generate_31bits:2:alu|input_b~0_combout\)) # (\generate_31bits:1:alu|c_out~combout\ & 
-- ((\generate_31bits:2:alu|input_b~0_combout\) # (\generate_31bits:2:alu|input_a~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:1:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:2:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:2:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:2:alu|c_out~combout\);

\generate_31bits:3:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:3:alu|Mux0~0_combout\ = ( \ops[1]~input_o\ & ( (!\ops[0]~input_o\ & (!\generate_31bits:2:alu|c_out~combout\ $ (!\generate_31bits:3:alu|input_a~0_combout\ $ (\generate_31bits:3:alu|input_b~0_combout\)))) ) ) # ( !\ops[1]~input_o\ & ( 
-- (!\generate_31bits:3:alu|input_a~0_combout\ & (\generate_31bits:3:alu|input_b~0_combout\ & \ops[0]~input_o\)) # (\generate_31bits:3:alu|input_a~0_combout\ & ((\ops[0]~input_o\) # (\generate_31bits:3:alu|input_b~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111011010010000000000000011001111110110100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:2:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:3:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:3:alu|ALT_INV_input_b~0_combout\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:3:alu|Mux0~0_combout\);

\generate_31bits:3:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:3:alu|c_out~combout\ = ( \generate_31bits:3:alu|input_b~0_combout\ & ( ((!\generate_31bits:1:alu|c_out~combout\ & (\generate_31bits:2:alu|input_a~0_combout\ & \generate_31bits:2:alu|input_b~0_combout\)) # 
-- (\generate_31bits:1:alu|c_out~combout\ & ((\generate_31bits:2:alu|input_b~0_combout\) # (\generate_31bits:2:alu|input_a~0_combout\)))) # (\generate_31bits:3:alu|input_a~0_combout\) ) ) # ( !\generate_31bits:3:alu|input_b~0_combout\ & ( 
-- (\generate_31bits:3:alu|input_a~0_combout\ & ((!\generate_31bits:1:alu|c_out~combout\ & (\generate_31bits:2:alu|input_a~0_combout\ & \generate_31bits:2:alu|input_b~0_combout\)) # (\generate_31bits:1:alu|c_out~combout\ & 
-- ((\generate_31bits:2:alu|input_b~0_combout\) # (\generate_31bits:2:alu|input_a~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:1:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:2:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:2:alu|ALT_INV_input_b~0_combout\,
	datad => \generate_31bits:3:alu|ALT_INV_input_a~0_combout\,
	datae => \generate_31bits:3:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:3:alu|c_out~combout\);

\generate_31bits:4:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:4:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[4]~input_o\,
	combout => \generate_31bits:4:alu|input_a~0_combout\);

\generate_31bits:4:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:4:alu|Mux0~0_combout\ = ( !\ops[0]~input_o\ & ( \ops[1]~input_o\ & ( !\b_inv~input_o\ $ (!\generate_31bits:3:alu|c_out~combout\ $ (!\generate_31bits:4:alu|input_a~0_combout\ $ (!\b[4]~input_o\))) ) ) ) # ( \ops[0]~input_o\ & ( 
-- !\ops[1]~input_o\ & ( (!\b_inv~input_o\ $ (!\b[4]~input_o\)) # (\generate_31bits:4:alu|input_a~0_combout\) ) ) ) # ( !\ops[0]~input_o\ & ( !\ops[1]~input_o\ & ( (\generate_31bits:4:alu|input_a~0_combout\ & (!\b_inv~input_o\ $ (!\b[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010010111111010111101101001100101100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \generate_31bits:3:alu|ALT_INV_c_out~combout\,
	datac => \generate_31bits:4:alu|ALT_INV_input_a~0_combout\,
	datad => \ALT_INV_b[4]~input_o\,
	datae => \ALT_INV_ops[0]~input_o\,
	dataf => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:4:alu|Mux0~0_combout\);

\generate_31bits:5:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:5:alu|Mux0~0_combout\ = ( !\ops[0]~input_o\ & ( \ops[1]~input_o\ & ( !\generate_31bits:5:alu|input_a~0_combout\ $ (!\generate_31bits:5:alu|input_b~0_combout\ $ (((\generate_31bits:4:alu|and_ans~0_combout\) # 
-- (\generate_31bits:4:alu|c_out~0_combout\)))) ) ) ) # ( \ops[0]~input_o\ & ( !\ops[1]~input_o\ & ( (\generate_31bits:5:alu|input_b~0_combout\) # (\generate_31bits:5:alu|input_a~0_combout\) ) ) ) # ( !\ops[0]~input_o\ & ( !\ops[1]~input_o\ & ( 
-- (\generate_31bits:5:alu|input_a~0_combout\ & \generate_31bits:5:alu|input_b~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011111111111101111000100001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:4:alu|ALT_INV_c_out~0_combout\,
	datab => \generate_31bits:4:alu|ALT_INV_and_ans~0_combout\,
	datac => \generate_31bits:5:alu|ALT_INV_input_a~0_combout\,
	datad => \generate_31bits:5:alu|ALT_INV_input_b~0_combout\,
	datae => \ALT_INV_ops[0]~input_o\,
	dataf => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:5:alu|Mux0~0_combout\);

\generate_31bits:5:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:5:alu|c_out~combout\ = (!\generate_31bits:5:alu|input_a~0_combout\ & ((!\generate_31bits:5:alu|input_b~0_combout\) # ((!\generate_31bits:4:alu|c_out~0_combout\ & !\generate_31bits:4:alu|and_ans~0_combout\)))) # 
-- (\generate_31bits:5:alu|input_a~0_combout\ & (!\generate_31bits:4:alu|c_out~0_combout\ & (!\generate_31bits:4:alu|and_ans~0_combout\ & !\generate_31bits:5:alu|input_b~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:4:alu|ALT_INV_c_out~0_combout\,
	datab => \generate_31bits:4:alu|ALT_INV_and_ans~0_combout\,
	datac => \generate_31bits:5:alu|ALT_INV_input_a~0_combout\,
	datad => \generate_31bits:5:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:5:alu|c_out~combout\);

\generate_31bits:6:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:6:alu|Mux0~0_combout\ = ( \ops[1]~input_o\ & ( (!\ops[0]~input_o\ & (!\generate_31bits:5:alu|c_out~combout\ $ (!\generate_31bits:6:alu|input_a~0_combout\ $ (!\generate_31bits:6:alu|input_b~0_combout\)))) ) ) # ( !\ops[1]~input_o\ & ( 
-- (!\generate_31bits:6:alu|input_a~0_combout\ & (\generate_31bits:6:alu|input_b~0_combout\ & \ops[0]~input_o\)) # (\generate_31bits:6:alu|input_a~0_combout\ & ((\ops[0]~input_o\) # (\generate_31bits:6:alu|input_b~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111100101100000000000000011001111111001011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:5:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:6:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:6:alu|ALT_INV_input_b~0_combout\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:6:alu|Mux0~0_combout\);

\generate_31bits:7:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:7:alu|Mux0~0_combout\ = ( \ops[1]~input_o\ & ( (!\ops[0]~input_o\ & (!\generate_31bits:6:alu|c_out~combout\ $ (!\generate_31bits:7:alu|input_a~0_combout\ $ (!\generate_31bits:7:alu|input_b~0_combout\)))) ) ) # ( !\ops[1]~input_o\ & ( 
-- (!\generate_31bits:7:alu|input_a~0_combout\ & (\generate_31bits:7:alu|input_b~0_combout\ & \ops[0]~input_o\)) # (\generate_31bits:7:alu|input_a~0_combout\ & ((\ops[0]~input_o\) # (\generate_31bits:7:alu|input_b~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111100101100000000000000011001111111001011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:6:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:7:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:7:alu|ALT_INV_input_b~0_combout\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:7:alu|Mux0~0_combout\);

\generate_31bits:7:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:7:alu|c_out~combout\ = (!\generate_31bits:6:alu|c_out~combout\ & ((\generate_31bits:7:alu|input_b~0_combout\) # (\generate_31bits:7:alu|input_a~0_combout\))) # (\generate_31bits:6:alu|c_out~combout\ & 
-- (\generate_31bits:7:alu|input_a~0_combout\ & \generate_31bits:7:alu|input_b~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:6:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:7:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:7:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:7:alu|c_out~combout\);

\generate_31bits:8:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:8:alu|Mux0~0_combout\ = ( \ops[1]~input_o\ & ( (!\ops[0]~input_o\ & (!\generate_31bits:7:alu|c_out~combout\ $ (!\generate_31bits:8:alu|input_a~0_combout\ $ (\generate_31bits:8:alu|input_b~0_combout\)))) ) ) # ( !\ops[1]~input_o\ & ( 
-- (!\generate_31bits:8:alu|input_a~0_combout\ & (\generate_31bits:8:alu|input_b~0_combout\ & \ops[0]~input_o\)) # (\generate_31bits:8:alu|input_a~0_combout\ & ((\ops[0]~input_o\) # (\generate_31bits:8:alu|input_b~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111011010010000000000000011001111110110100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:7:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:8:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:8:alu|ALT_INV_input_b~0_combout\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:8:alu|Mux0~0_combout\);

\generate_31bits:8:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:8:alu|c_out~combout\ = ( \generate_31bits:8:alu|input_b~0_combout\ & ( ((!\generate_31bits:6:alu|c_out~combout\ & ((\generate_31bits:7:alu|input_b~0_combout\) # (\generate_31bits:7:alu|input_a~0_combout\))) # 
-- (\generate_31bits:6:alu|c_out~combout\ & (\generate_31bits:7:alu|input_a~0_combout\ & \generate_31bits:7:alu|input_b~0_combout\))) # (\generate_31bits:8:alu|input_a~0_combout\) ) ) # ( !\generate_31bits:8:alu|input_b~0_combout\ & ( 
-- (\generate_31bits:8:alu|input_a~0_combout\ & ((!\generate_31bits:6:alu|c_out~combout\ & ((\generate_31bits:7:alu|input_b~0_combout\) # (\generate_31bits:7:alu|input_a~0_combout\))) # (\generate_31bits:6:alu|c_out~combout\ & 
-- (\generate_31bits:7:alu|input_a~0_combout\ & \generate_31bits:7:alu|input_b~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:6:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:7:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:7:alu|ALT_INV_input_b~0_combout\,
	datad => \generate_31bits:8:alu|ALT_INV_input_a~0_combout\,
	datae => \generate_31bits:8:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:8:alu|c_out~combout\);

\generate_31bits:9:alu|input_a~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:9:alu|input_a~0_combout\ = !\a_inv~input_o\ $ (!\a[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a_inv~input_o\,
	datab => \ALT_INV_a[9]~input_o\,
	combout => \generate_31bits:9:alu|input_a~0_combout\);

\generate_31bits:9:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:9:alu|Mux0~0_combout\ = ( !\ops[0]~input_o\ & ( \ops[1]~input_o\ & ( !\b_inv~input_o\ $ (!\generate_31bits:8:alu|c_out~combout\ $ (!\generate_31bits:9:alu|input_a~0_combout\ $ (!\b[9]~input_o\))) ) ) ) # ( \ops[0]~input_o\ & ( 
-- !\ops[1]~input_o\ & ( (!\b_inv~input_o\ $ (!\b[9]~input_o\)) # (\generate_31bits:9:alu|input_a~0_combout\) ) ) ) # ( !\ops[0]~input_o\ & ( !\ops[1]~input_o\ & ( (\generate_31bits:9:alu|input_a~0_combout\ & (!\b_inv~input_o\ $ (!\b[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010010111111010111101101001100101100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \generate_31bits:8:alu|ALT_INV_c_out~combout\,
	datac => \generate_31bits:9:alu|ALT_INV_input_a~0_combout\,
	datad => \ALT_INV_b[9]~input_o\,
	datae => \ALT_INV_ops[0]~input_o\,
	dataf => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:9:alu|Mux0~0_combout\);

\generate_31bits:10:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:10:alu|Mux0~0_combout\ = ( !\ops[0]~input_o\ & ( \ops[1]~input_o\ & ( !\generate_31bits:10:alu|input_a~0_combout\ $ (!\generate_31bits:10:alu|input_b~0_combout\ $ (((\generate_31bits:9:alu|and_ans~0_combout\) # 
-- (\generate_31bits:9:alu|c_out~0_combout\)))) ) ) ) # ( \ops[0]~input_o\ & ( !\ops[1]~input_o\ & ( (\generate_31bits:10:alu|input_b~0_combout\) # (\generate_31bits:10:alu|input_a~0_combout\) ) ) ) # ( !\ops[0]~input_o\ & ( !\ops[1]~input_o\ & ( 
-- (\generate_31bits:10:alu|input_a~0_combout\ & \generate_31bits:10:alu|input_b~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011111111111101111000100001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:9:alu|ALT_INV_c_out~0_combout\,
	datab => \generate_31bits:9:alu|ALT_INV_and_ans~0_combout\,
	datac => \generate_31bits:10:alu|ALT_INV_input_a~0_combout\,
	datad => \generate_31bits:10:alu|ALT_INV_input_b~0_combout\,
	datae => \ALT_INV_ops[0]~input_o\,
	dataf => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:10:alu|Mux0~0_combout\);

\generate_31bits:10:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:10:alu|c_out~combout\ = (!\generate_31bits:10:alu|input_a~0_combout\ & ((!\generate_31bits:10:alu|input_b~0_combout\) # ((!\generate_31bits:9:alu|c_out~0_combout\ & !\generate_31bits:9:alu|and_ans~0_combout\)))) # 
-- (\generate_31bits:10:alu|input_a~0_combout\ & (!\generate_31bits:9:alu|c_out~0_combout\ & (!\generate_31bits:9:alu|and_ans~0_combout\ & !\generate_31bits:10:alu|input_b~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:9:alu|ALT_INV_c_out~0_combout\,
	datab => \generate_31bits:9:alu|ALT_INV_and_ans~0_combout\,
	datac => \generate_31bits:10:alu|ALT_INV_input_a~0_combout\,
	datad => \generate_31bits:10:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:10:alu|c_out~combout\);

\generate_31bits:11:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:11:alu|Mux0~0_combout\ = ( \ops[1]~input_o\ & ( (!\ops[0]~input_o\ & (!\generate_31bits:10:alu|c_out~combout\ $ (!\generate_31bits:11:alu|input_a~0_combout\ $ (!\generate_31bits:11:alu|input_b~0_combout\)))) ) ) # ( !\ops[1]~input_o\ & ( 
-- (!\generate_31bits:11:alu|input_a~0_combout\ & (\generate_31bits:11:alu|input_b~0_combout\ & \ops[0]~input_o\)) # (\generate_31bits:11:alu|input_a~0_combout\ & ((\ops[0]~input_o\) # (\generate_31bits:11:alu|input_b~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111100101100000000000000011001111111001011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:10:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:11:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:11:alu|ALT_INV_input_b~0_combout\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:11:alu|Mux0~0_combout\);

\generate_31bits:12:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:12:alu|Mux0~0_combout\ = ( \ops[1]~input_o\ & ( (!\ops[0]~input_o\ & (!\generate_31bits:11:alu|c_out~combout\ $ (!\generate_31bits:12:alu|input_a~0_combout\ $ (!\generate_31bits:12:alu|input_b~0_combout\)))) ) ) # ( !\ops[1]~input_o\ & ( 
-- (!\generate_31bits:12:alu|input_a~0_combout\ & (\generate_31bits:12:alu|input_b~0_combout\ & \ops[0]~input_o\)) # (\generate_31bits:12:alu|input_a~0_combout\ & ((\ops[0]~input_o\) # (\generate_31bits:12:alu|input_b~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111100101100000000000000011001111111001011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:11:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:12:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:12:alu|ALT_INV_input_b~0_combout\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:12:alu|Mux0~0_combout\);

\generate_31bits:12:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:12:alu|c_out~combout\ = (!\generate_31bits:11:alu|c_out~combout\ & ((\generate_31bits:12:alu|input_b~0_combout\) # (\generate_31bits:12:alu|input_a~0_combout\))) # (\generate_31bits:11:alu|c_out~combout\ & 
-- (\generate_31bits:12:alu|input_a~0_combout\ & \generate_31bits:12:alu|input_b~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:11:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:12:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:12:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:12:alu|c_out~combout\);

\generate_31bits:13:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:13:alu|Mux0~0_combout\ = ( \ops[1]~input_o\ & ( (!\ops[0]~input_o\ & (!\generate_31bits:12:alu|c_out~combout\ $ (!\generate_31bits:13:alu|input_a~0_combout\ $ (\generate_31bits:13:alu|input_b~0_combout\)))) ) ) # ( !\ops[1]~input_o\ & ( 
-- (!\generate_31bits:13:alu|input_a~0_combout\ & (\generate_31bits:13:alu|input_b~0_combout\ & \ops[0]~input_o\)) # (\generate_31bits:13:alu|input_a~0_combout\ & ((\ops[0]~input_o\) # (\generate_31bits:13:alu|input_b~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111011010010000000000000011001111110110100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:12:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:13:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:13:alu|ALT_INV_input_b~0_combout\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:13:alu|Mux0~0_combout\);

\generate_31bits:13:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:13:alu|c_out~combout\ = ( \generate_31bits:13:alu|input_b~0_combout\ & ( ((!\generate_31bits:11:alu|c_out~combout\ & ((\generate_31bits:12:alu|input_b~0_combout\) # (\generate_31bits:12:alu|input_a~0_combout\))) # 
-- (\generate_31bits:11:alu|c_out~combout\ & (\generate_31bits:12:alu|input_a~0_combout\ & \generate_31bits:12:alu|input_b~0_combout\))) # (\generate_31bits:13:alu|input_a~0_combout\) ) ) # ( !\generate_31bits:13:alu|input_b~0_combout\ & ( 
-- (\generate_31bits:13:alu|input_a~0_combout\ & ((!\generate_31bits:11:alu|c_out~combout\ & ((\generate_31bits:12:alu|input_b~0_combout\) # (\generate_31bits:12:alu|input_a~0_combout\))) # (\generate_31bits:11:alu|c_out~combout\ & 
-- (\generate_31bits:12:alu|input_a~0_combout\ & \generate_31bits:12:alu|input_b~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:11:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:12:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:12:alu|ALT_INV_input_b~0_combout\,
	datad => \generate_31bits:13:alu|ALT_INV_input_a~0_combout\,
	datae => \generate_31bits:13:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:13:alu|c_out~combout\);

\generate_31bits:14:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:14:alu|Mux0~0_combout\ = ( !\ops[0]~input_o\ & ( \ops[1]~input_o\ & ( !\b_inv~input_o\ $ (!\generate_31bits:13:alu|c_out~combout\ $ (!\generate_31bits:14:alu|input_a~0_combout\ $ (!\b[14]~input_o\))) ) ) ) # ( \ops[0]~input_o\ & ( 
-- !\ops[1]~input_o\ & ( (!\b_inv~input_o\ $ (!\b[14]~input_o\)) # (\generate_31bits:14:alu|input_a~0_combout\) ) ) ) # ( !\ops[0]~input_o\ & ( !\ops[1]~input_o\ & ( (\generate_31bits:14:alu|input_a~0_combout\ & (!\b_inv~input_o\ $ (!\b[14]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010010111111010111101101001100101100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \generate_31bits:13:alu|ALT_INV_c_out~combout\,
	datac => \generate_31bits:14:alu|ALT_INV_input_a~0_combout\,
	datad => \ALT_INV_b[14]~input_o\,
	datae => \ALT_INV_ops[0]~input_o\,
	dataf => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:14:alu|Mux0~0_combout\);

\generate_31bits:15:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:15:alu|Mux0~0_combout\ = ( !\ops[0]~input_o\ & ( \ops[1]~input_o\ & ( !\generate_31bits:15:alu|input_a~0_combout\ $ (!\generate_31bits:15:alu|input_b~0_combout\ $ (((\generate_31bits:14:alu|and_ans~0_combout\) # 
-- (\generate_31bits:14:alu|c_out~0_combout\)))) ) ) ) # ( \ops[0]~input_o\ & ( !\ops[1]~input_o\ & ( (\generate_31bits:15:alu|input_b~0_combout\) # (\generate_31bits:15:alu|input_a~0_combout\) ) ) ) # ( !\ops[0]~input_o\ & ( !\ops[1]~input_o\ & ( 
-- (\generate_31bits:15:alu|input_a~0_combout\ & \generate_31bits:15:alu|input_b~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011111111111101111000100001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:14:alu|ALT_INV_c_out~0_combout\,
	datab => \generate_31bits:14:alu|ALT_INV_and_ans~0_combout\,
	datac => \generate_31bits:15:alu|ALT_INV_input_a~0_combout\,
	datad => \generate_31bits:15:alu|ALT_INV_input_b~0_combout\,
	datae => \ALT_INV_ops[0]~input_o\,
	dataf => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:15:alu|Mux0~0_combout\);

\generate_31bits:15:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:15:alu|c_out~combout\ = (!\generate_31bits:15:alu|input_a~0_combout\ & ((!\generate_31bits:15:alu|input_b~0_combout\) # ((!\generate_31bits:14:alu|c_out~0_combout\ & !\generate_31bits:14:alu|and_ans~0_combout\)))) # 
-- (\generate_31bits:15:alu|input_a~0_combout\ & (!\generate_31bits:14:alu|c_out~0_combout\ & (!\generate_31bits:14:alu|and_ans~0_combout\ & !\generate_31bits:15:alu|input_b~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:14:alu|ALT_INV_c_out~0_combout\,
	datab => \generate_31bits:14:alu|ALT_INV_and_ans~0_combout\,
	datac => \generate_31bits:15:alu|ALT_INV_input_a~0_combout\,
	datad => \generate_31bits:15:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:15:alu|c_out~combout\);

\generate_31bits:16:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:16:alu|Mux0~0_combout\ = ( \ops[1]~input_o\ & ( (!\ops[0]~input_o\ & (!\generate_31bits:15:alu|c_out~combout\ $ (!\generate_31bits:16:alu|input_a~0_combout\ $ (!\generate_31bits:16:alu|input_b~0_combout\)))) ) ) # ( !\ops[1]~input_o\ & ( 
-- (!\generate_31bits:16:alu|input_a~0_combout\ & (\generate_31bits:16:alu|input_b~0_combout\ & \ops[0]~input_o\)) # (\generate_31bits:16:alu|input_a~0_combout\ & ((\ops[0]~input_o\) # (\generate_31bits:16:alu|input_b~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111100101100000000000000011001111111001011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:15:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:16:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:16:alu|ALT_INV_input_b~0_combout\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:16:alu|Mux0~0_combout\);

\generate_31bits:17:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:17:alu|Mux0~0_combout\ = ( \ops[1]~input_o\ & ( (!\ops[0]~input_o\ & (!\generate_31bits:16:alu|c_out~combout\ $ (!\generate_31bits:17:alu|input_a~0_combout\ $ (!\generate_31bits:17:alu|input_b~0_combout\)))) ) ) # ( !\ops[1]~input_o\ & ( 
-- (!\generate_31bits:17:alu|input_a~0_combout\ & (\generate_31bits:17:alu|input_b~0_combout\ & \ops[0]~input_o\)) # (\generate_31bits:17:alu|input_a~0_combout\ & ((\ops[0]~input_o\) # (\generate_31bits:17:alu|input_b~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111100101100000000000000011001111111001011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:16:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:17:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:17:alu|ALT_INV_input_b~0_combout\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:17:alu|Mux0~0_combout\);

\generate_31bits:17:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:17:alu|c_out~combout\ = (!\generate_31bits:16:alu|c_out~combout\ & ((\generate_31bits:17:alu|input_b~0_combout\) # (\generate_31bits:17:alu|input_a~0_combout\))) # (\generate_31bits:16:alu|c_out~combout\ & 
-- (\generate_31bits:17:alu|input_a~0_combout\ & \generate_31bits:17:alu|input_b~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:16:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:17:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:17:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:17:alu|c_out~combout\);

\generate_31bits:18:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:18:alu|Mux0~0_combout\ = ( \ops[1]~input_o\ & ( (!\ops[0]~input_o\ & (!\generate_31bits:17:alu|c_out~combout\ $ (!\generate_31bits:18:alu|input_a~0_combout\ $ (\generate_31bits:18:alu|input_b~0_combout\)))) ) ) # ( !\ops[1]~input_o\ & ( 
-- (!\generate_31bits:18:alu|input_a~0_combout\ & (\generate_31bits:18:alu|input_b~0_combout\ & \ops[0]~input_o\)) # (\generate_31bits:18:alu|input_a~0_combout\ & ((\ops[0]~input_o\) # (\generate_31bits:18:alu|input_b~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111011010010000000000000011001111110110100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:17:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:18:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:18:alu|ALT_INV_input_b~0_combout\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:18:alu|Mux0~0_combout\);

\generate_31bits:18:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:18:alu|c_out~combout\ = ( \generate_31bits:18:alu|input_b~0_combout\ & ( ((!\generate_31bits:16:alu|c_out~combout\ & ((\generate_31bits:17:alu|input_b~0_combout\) # (\generate_31bits:17:alu|input_a~0_combout\))) # 
-- (\generate_31bits:16:alu|c_out~combout\ & (\generate_31bits:17:alu|input_a~0_combout\ & \generate_31bits:17:alu|input_b~0_combout\))) # (\generate_31bits:18:alu|input_a~0_combout\) ) ) # ( !\generate_31bits:18:alu|input_b~0_combout\ & ( 
-- (\generate_31bits:18:alu|input_a~0_combout\ & ((!\generate_31bits:16:alu|c_out~combout\ & ((\generate_31bits:17:alu|input_b~0_combout\) # (\generate_31bits:17:alu|input_a~0_combout\))) # (\generate_31bits:16:alu|c_out~combout\ & 
-- (\generate_31bits:17:alu|input_a~0_combout\ & \generate_31bits:17:alu|input_b~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:16:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:17:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:17:alu|ALT_INV_input_b~0_combout\,
	datad => \generate_31bits:18:alu|ALT_INV_input_a~0_combout\,
	datae => \generate_31bits:18:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:18:alu|c_out~combout\);

\generate_31bits:19:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:19:alu|Mux0~0_combout\ = ( !\ops[0]~input_o\ & ( \ops[1]~input_o\ & ( !\b_inv~input_o\ $ (!\generate_31bits:18:alu|c_out~combout\ $ (!\generate_31bits:19:alu|input_a~0_combout\ $ (!\b[19]~input_o\))) ) ) ) # ( \ops[0]~input_o\ & ( 
-- !\ops[1]~input_o\ & ( (!\b_inv~input_o\ $ (!\b[19]~input_o\)) # (\generate_31bits:19:alu|input_a~0_combout\) ) ) ) # ( !\ops[0]~input_o\ & ( !\ops[1]~input_o\ & ( (\generate_31bits:19:alu|input_a~0_combout\ & (!\b_inv~input_o\ $ (!\b[19]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010010111111010111101101001100101100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \generate_31bits:18:alu|ALT_INV_c_out~combout\,
	datac => \generate_31bits:19:alu|ALT_INV_input_a~0_combout\,
	datad => \ALT_INV_b[19]~input_o\,
	datae => \ALT_INV_ops[0]~input_o\,
	dataf => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:19:alu|Mux0~0_combout\);

\generate_31bits:20:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:20:alu|Mux0~0_combout\ = ( !\ops[0]~input_o\ & ( \ops[1]~input_o\ & ( !\generate_31bits:20:alu|input_a~0_combout\ $ (!\generate_31bits:20:alu|input_b~0_combout\ $ (((\generate_31bits:19:alu|and_ans~0_combout\) # 
-- (\generate_31bits:19:alu|c_out~0_combout\)))) ) ) ) # ( \ops[0]~input_o\ & ( !\ops[1]~input_o\ & ( (\generate_31bits:20:alu|input_b~0_combout\) # (\generate_31bits:20:alu|input_a~0_combout\) ) ) ) # ( !\ops[0]~input_o\ & ( !\ops[1]~input_o\ & ( 
-- (\generate_31bits:20:alu|input_a~0_combout\ & \generate_31bits:20:alu|input_b~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011111111111101111000100001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:19:alu|ALT_INV_c_out~0_combout\,
	datab => \generate_31bits:19:alu|ALT_INV_and_ans~0_combout\,
	datac => \generate_31bits:20:alu|ALT_INV_input_a~0_combout\,
	datad => \generate_31bits:20:alu|ALT_INV_input_b~0_combout\,
	datae => \ALT_INV_ops[0]~input_o\,
	dataf => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:20:alu|Mux0~0_combout\);

\generate_31bits:20:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:20:alu|c_out~combout\ = (!\generate_31bits:20:alu|input_a~0_combout\ & ((!\generate_31bits:20:alu|input_b~0_combout\) # ((!\generate_31bits:19:alu|c_out~0_combout\ & !\generate_31bits:19:alu|and_ans~0_combout\)))) # 
-- (\generate_31bits:20:alu|input_a~0_combout\ & (!\generate_31bits:19:alu|c_out~0_combout\ & (!\generate_31bits:19:alu|and_ans~0_combout\ & !\generate_31bits:20:alu|input_b~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:19:alu|ALT_INV_c_out~0_combout\,
	datab => \generate_31bits:19:alu|ALT_INV_and_ans~0_combout\,
	datac => \generate_31bits:20:alu|ALT_INV_input_a~0_combout\,
	datad => \generate_31bits:20:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:20:alu|c_out~combout\);

\generate_31bits:21:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:21:alu|Mux0~0_combout\ = ( \ops[1]~input_o\ & ( (!\ops[0]~input_o\ & (!\generate_31bits:20:alu|c_out~combout\ $ (!\generate_31bits:21:alu|input_a~0_combout\ $ (!\generate_31bits:21:alu|input_b~0_combout\)))) ) ) # ( !\ops[1]~input_o\ & ( 
-- (!\generate_31bits:21:alu|input_a~0_combout\ & (\generate_31bits:21:alu|input_b~0_combout\ & \ops[0]~input_o\)) # (\generate_31bits:21:alu|input_a~0_combout\ & ((\ops[0]~input_o\) # (\generate_31bits:21:alu|input_b~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111100101100000000000000011001111111001011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:20:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:21:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:21:alu|ALT_INV_input_b~0_combout\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:21:alu|Mux0~0_combout\);

\generate_31bits:22:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:22:alu|Mux0~0_combout\ = ( \ops[1]~input_o\ & ( (!\ops[0]~input_o\ & (!\generate_31bits:21:alu|c_out~combout\ $ (!\generate_31bits:22:alu|input_a~0_combout\ $ (!\generate_31bits:22:alu|input_b~0_combout\)))) ) ) # ( !\ops[1]~input_o\ & ( 
-- (!\generate_31bits:22:alu|input_a~0_combout\ & (\generate_31bits:22:alu|input_b~0_combout\ & \ops[0]~input_o\)) # (\generate_31bits:22:alu|input_a~0_combout\ & ((\ops[0]~input_o\) # (\generate_31bits:22:alu|input_b~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111100101100000000000000011001111111001011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:21:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:22:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:22:alu|ALT_INV_input_b~0_combout\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:22:alu|Mux0~0_combout\);

\generate_31bits:22:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:22:alu|c_out~combout\ = (!\generate_31bits:21:alu|c_out~combout\ & ((\generate_31bits:22:alu|input_b~0_combout\) # (\generate_31bits:22:alu|input_a~0_combout\))) # (\generate_31bits:21:alu|c_out~combout\ & 
-- (\generate_31bits:22:alu|input_a~0_combout\ & \generate_31bits:22:alu|input_b~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:21:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:22:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:22:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:22:alu|c_out~combout\);

\generate_31bits:23:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:23:alu|Mux0~0_combout\ = ( \ops[1]~input_o\ & ( (!\ops[0]~input_o\ & (!\generate_31bits:22:alu|c_out~combout\ $ (!\generate_31bits:23:alu|input_a~0_combout\ $ (\generate_31bits:23:alu|input_b~0_combout\)))) ) ) # ( !\ops[1]~input_o\ & ( 
-- (!\generate_31bits:23:alu|input_a~0_combout\ & (\generate_31bits:23:alu|input_b~0_combout\ & \ops[0]~input_o\)) # (\generate_31bits:23:alu|input_a~0_combout\ & ((\ops[0]~input_o\) # (\generate_31bits:23:alu|input_b~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111011010010000000000000011001111110110100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:22:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:23:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:23:alu|ALT_INV_input_b~0_combout\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:23:alu|Mux0~0_combout\);

\generate_31bits:23:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:23:alu|c_out~combout\ = ( \generate_31bits:23:alu|input_b~0_combout\ & ( ((!\generate_31bits:21:alu|c_out~combout\ & ((\generate_31bits:22:alu|input_b~0_combout\) # (\generate_31bits:22:alu|input_a~0_combout\))) # 
-- (\generate_31bits:21:alu|c_out~combout\ & (\generate_31bits:22:alu|input_a~0_combout\ & \generate_31bits:22:alu|input_b~0_combout\))) # (\generate_31bits:23:alu|input_a~0_combout\) ) ) # ( !\generate_31bits:23:alu|input_b~0_combout\ & ( 
-- (\generate_31bits:23:alu|input_a~0_combout\ & ((!\generate_31bits:21:alu|c_out~combout\ & ((\generate_31bits:22:alu|input_b~0_combout\) # (\generate_31bits:22:alu|input_a~0_combout\))) # (\generate_31bits:21:alu|c_out~combout\ & 
-- (\generate_31bits:22:alu|input_a~0_combout\ & \generate_31bits:22:alu|input_b~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:21:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:22:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:22:alu|ALT_INV_input_b~0_combout\,
	datad => \generate_31bits:23:alu|ALT_INV_input_a~0_combout\,
	datae => \generate_31bits:23:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:23:alu|c_out~combout\);

\generate_31bits:24:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:24:alu|Mux0~0_combout\ = ( \ops[1]~input_o\ & ( (!\ops[0]~input_o\ & (!\generate_31bits:23:alu|c_out~combout\ $ (!\generate_31bits:24:alu|input_a~0_combout\ $ (\generate_31bits:24:alu|input_b~0_combout\)))) ) ) # ( !\ops[1]~input_o\ & ( 
-- (!\generate_31bits:24:alu|input_a~0_combout\ & (\generate_31bits:24:alu|input_b~0_combout\ & \ops[0]~input_o\)) # (\generate_31bits:24:alu|input_a~0_combout\ & ((\ops[0]~input_o\) # (\generate_31bits:24:alu|input_b~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111011010010000000000000011001111110110100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:23:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:24:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:24:alu|ALT_INV_input_b~0_combout\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:24:alu|Mux0~0_combout\);

\generate_31bits:25:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:25:alu|Mux0~0_combout\ = ( !\ops[0]~input_o\ & ( \ops[1]~input_o\ & ( !\generate_31bits:25:alu|input_a~0_combout\ $ (!\generate_31bits:25:alu|input_b~0_combout\ $ (((\generate_31bits:24:alu|and_ans~0_combout\) # 
-- (\generate_31bits:24:alu|c_out~0_combout\)))) ) ) ) # ( \ops[0]~input_o\ & ( !\ops[1]~input_o\ & ( (\generate_31bits:25:alu|input_b~0_combout\) # (\generate_31bits:25:alu|input_a~0_combout\) ) ) ) # ( !\ops[0]~input_o\ & ( !\ops[1]~input_o\ & ( 
-- (\generate_31bits:25:alu|input_a~0_combout\ & \generate_31bits:25:alu|input_b~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011111111111101111000100001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:24:alu|ALT_INV_c_out~0_combout\,
	datab => \generate_31bits:24:alu|ALT_INV_and_ans~0_combout\,
	datac => \generate_31bits:25:alu|ALT_INV_input_a~0_combout\,
	datad => \generate_31bits:25:alu|ALT_INV_input_b~0_combout\,
	datae => \ALT_INV_ops[0]~input_o\,
	dataf => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:25:alu|Mux0~0_combout\);

\generate_31bits:25:alu|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:25:alu|c_out~combout\ = (!\generate_31bits:25:alu|input_a~0_combout\ & ((!\generate_31bits:25:alu|input_b~0_combout\) # ((!\generate_31bits:24:alu|c_out~0_combout\ & !\generate_31bits:24:alu|and_ans~0_combout\)))) # 
-- (\generate_31bits:25:alu|input_a~0_combout\ & (!\generate_31bits:24:alu|c_out~0_combout\ & (!\generate_31bits:24:alu|and_ans~0_combout\ & !\generate_31bits:25:alu|input_b~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:24:alu|ALT_INV_c_out~0_combout\,
	datab => \generate_31bits:24:alu|ALT_INV_and_ans~0_combout\,
	datac => \generate_31bits:25:alu|ALT_INV_input_a~0_combout\,
	datad => \generate_31bits:25:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:25:alu|c_out~combout\);

\generate_31bits:26:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:26:alu|Mux0~0_combout\ = ( \ops[1]~input_o\ & ( (!\ops[0]~input_o\ & (!\generate_31bits:25:alu|c_out~combout\ $ (!\generate_31bits:26:alu|input_a~0_combout\ $ (!\generate_31bits:26:alu|input_b~0_combout\)))) ) ) # ( !\ops[1]~input_o\ & ( 
-- (!\generate_31bits:26:alu|input_a~0_combout\ & (\generate_31bits:26:alu|input_b~0_combout\ & \ops[0]~input_o\)) # (\generate_31bits:26:alu|input_a~0_combout\ & ((\ops[0]~input_o\) # (\generate_31bits:26:alu|input_b~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111100101100000000000000011001111111001011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:25:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:26:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:26:alu|ALT_INV_input_b~0_combout\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:26:alu|Mux0~0_combout\);

\generate_31bits:27:alu|input_b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:27:alu|input_b~0_combout\ = !\b_inv~input_o\ $ (!\b[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \ALT_INV_b[27]~input_o\,
	combout => \generate_31bits:27:alu|input_b~0_combout\);

\generate_31bits:27:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:27:alu|Mux0~0_combout\ = ( \ops[1]~input_o\ & ( (!\ops[0]~input_o\ & (!\generate_31bits:26:alu|c_out~combout\ $ (!\generate_31bits:27:alu|input_a~0_combout\ $ (!\generate_31bits:27:alu|input_b~0_combout\)))) ) ) # ( !\ops[1]~input_o\ & ( 
-- (!\generate_31bits:27:alu|input_a~0_combout\ & (\generate_31bits:27:alu|input_b~0_combout\ & \ops[0]~input_o\)) # (\generate_31bits:27:alu|input_a~0_combout\ & ((\ops[0]~input_o\) # (\generate_31bits:27:alu|input_b~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111100101100000000000000011001111111001011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:26:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:27:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:27:alu|ALT_INV_input_b~0_combout\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:27:alu|Mux0~0_combout\);

\generate_31bits:28:alu|sum_ans~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:28:alu|sum_ans~0_combout\ = !\b_inv~input_o\ $ (!\generate_31bits:28:alu|input_a~0_combout\ $ (\b[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \generate_31bits:28:alu|ALT_INV_input_a~0_combout\,
	datac => \ALT_INV_b[28]~input_o\,
	combout => \generate_31bits:28:alu|sum_ans~0_combout\);

\generate_31bits:25:alu|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:25:alu|Mux0~1_combout\ = (!\ops[0]~input_o\ & \ops[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ops[0]~input_o\,
	datab => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:25:alu|Mux0~1_combout\);

\generate_31bits:28:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:28:alu|Mux0~0_combout\ = ( !\ops[1]~input_o\ & ( (!\generate_31bits:28:alu|input_a~0_combout\ & (\ops[0]~input_o\ & (!\b_inv~input_o\ $ (!\b[28]~input_o\)))) # (\generate_31bits:28:alu|input_a~0_combout\ & ((!\b_inv~input_o\ $ 
-- (!\b[28]~input_o\)) # (\ops[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001111011000000000000000000010010011110110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \generate_31bits:28:alu|ALT_INV_input_a~0_combout\,
	datac => \ALT_INV_b[28]~input_o\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:28:alu|Mux0~0_combout\);

\generate_31bits:28:alu|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:28:alu|Mux0~1_combout\ = ( \generate_31bits:25:alu|Mux0~1_combout\ & ( \generate_31bits:28:alu|Mux0~0_combout\ ) ) # ( !\generate_31bits:25:alu|Mux0~1_combout\ & ( \generate_31bits:28:alu|Mux0~0_combout\ ) ) # ( 
-- \generate_31bits:25:alu|Mux0~1_combout\ & ( !\generate_31bits:28:alu|Mux0~0_combout\ & ( !\generate_31bits:28:alu|sum_ans~0_combout\ $ (((!\generate_31bits:26:alu|c_out~combout\ & (!\generate_31bits:27:alu|input_a~0_combout\ & 
-- !\generate_31bits:27:alu|input_b~0_combout\)) # (\generate_31bits:26:alu|c_out~combout\ & ((!\generate_31bits:27:alu|input_a~0_combout\) # (!\generate_31bits:27:alu|input_b~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:26:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:27:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:27:alu|ALT_INV_input_b~0_combout\,
	datad => \generate_31bits:28:alu|ALT_INV_sum_ans~0_combout\,
	datae => \generate_31bits:25:alu|ALT_INV_Mux0~1_combout\,
	dataf => \generate_31bits:28:alu|ALT_INV_Mux0~0_combout\,
	combout => \generate_31bits:28:alu|Mux0~1_combout\);

\generate_31bits:29:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:29:alu|Mux0~0_combout\ = ( \ops[1]~input_o\ & ( (!\ops[0]~input_o\ & (!\generate_31bits:28:alu|c_out~combout\ $ (!\generate_31bits:29:alu|input_a~0_combout\ $ (\generate_31bits:29:alu|input_b~0_combout\)))) ) ) # ( !\ops[1]~input_o\ & ( 
-- (!\generate_31bits:29:alu|input_a~0_combout\ & (\generate_31bits:29:alu|input_b~0_combout\ & \ops[0]~input_o\)) # (\generate_31bits:29:alu|input_a~0_combout\ & ((\ops[0]~input_o\) # (\generate_31bits:29:alu|input_b~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111011010010000000000000011001111110110100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:28:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:29:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:29:alu|ALT_INV_input_b~0_combout\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:29:alu|Mux0~0_combout\);

\generate_31bits:30:alu|sum_ans~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:30:alu|sum_ans~0_combout\ = !\generate_31bits:30:alu|input_a~0_combout\ $ (!\generate_31bits:30:alu|input_b~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:30:alu|ALT_INV_input_a~0_combout\,
	datab => \generate_31bits:30:alu|ALT_INV_input_b~0_combout\,
	combout => \generate_31bits:30:alu|sum_ans~0_combout\);

\generate_31bits:30:alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:30:alu|Mux0~0_combout\ = (!\ops[1]~input_o\ & ((!\generate_31bits:30:alu|input_a~0_combout\ & (\generate_31bits:30:alu|input_b~0_combout\ & \ops[0]~input_o\)) # (\generate_31bits:30:alu|input_a~0_combout\ & ((\ops[0]~input_o\) # 
-- (\generate_31bits:30:alu|input_b~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100000000000101110000000000010111000000000001011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:30:alu|ALT_INV_input_a~0_combout\,
	datab => \generate_31bits:30:alu|ALT_INV_input_b~0_combout\,
	datac => \ALT_INV_ops[0]~input_o\,
	datad => \ALT_INV_ops[1]~input_o\,
	combout => \generate_31bits:30:alu|Mux0~0_combout\);

\generate_31bits:30:alu|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \generate_31bits:30:alu|Mux0~1_combout\ = ( \generate_31bits:25:alu|Mux0~1_combout\ & ( \generate_31bits:30:alu|Mux0~0_combout\ ) ) # ( !\generate_31bits:25:alu|Mux0~1_combout\ & ( \generate_31bits:30:alu|Mux0~0_combout\ ) ) # ( 
-- \generate_31bits:25:alu|Mux0~1_combout\ & ( !\generate_31bits:30:alu|Mux0~0_combout\ & ( !\generate_31bits:30:alu|sum_ans~0_combout\ $ (((!\generate_31bits:28:alu|c_out~combout\ & ((!\generate_31bits:29:alu|input_a~0_combout\) # 
-- (!\generate_31bits:29:alu|input_b~0_combout\))) # (\generate_31bits:28:alu|c_out~combout\ & (!\generate_31bits:29:alu|input_a~0_combout\ & !\generate_31bits:29:alu|input_b~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101111110100011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:28:alu|ALT_INV_c_out~combout\,
	datab => \generate_31bits:29:alu|ALT_INV_input_a~0_combout\,
	datac => \generate_31bits:29:alu|ALT_INV_input_b~0_combout\,
	datad => \generate_31bits:30:alu|ALT_INV_sum_ans~0_combout\,
	datae => \generate_31bits:25:alu|ALT_INV_Mux0~1_combout\,
	dataf => \generate_31bits:30:alu|ALT_INV_Mux0~0_combout\,
	combout => \generate_31bits:30:alu|Mux0~1_combout\);

\msb_alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \msb_alu|Mux0~0_combout\ = ( \ops[1]~input_o\ & ( \msb_alu|set~combout\ & ( !\ops[0]~input_o\ ) ) ) # ( !\ops[1]~input_o\ & ( \msb_alu|set~combout\ & ( (!\msb_alu|input_a~0_combout\ & (\ops[0]~input_o\ & (!\b_inv~input_o\ $ (!\b[31]~input_o\)))) # 
-- (\msb_alu|input_a~0_combout\ & ((!\b_inv~input_o\ $ (!\b[31]~input_o\)) # (\ops[0]~input_o\))) ) ) ) # ( !\ops[1]~input_o\ & ( !\msb_alu|set~combout\ & ( (!\msb_alu|input_a~0_combout\ & (\ops[0]~input_o\ & (!\b_inv~input_o\ $ (!\b[31]~input_o\)))) # 
-- (\msb_alu|input_a~0_combout\ & ((!\b_inv~input_o\ $ (!\b[31]~input_o\)) # (\ops[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001111011000000000000000000010010011110111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b_inv~input_o\,
	datab => \msb_alu|ALT_INV_input_a~0_combout\,
	datac => \ALT_INV_b[31]~input_o\,
	datad => \ALT_INV_ops[0]~input_o\,
	datae => \ALT_INV_ops[1]~input_o\,
	dataf => \msb_alu|ALT_INV_set~combout\,
	combout => \msb_alu|Mux0~0_combout\);

\WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (!\generate_31bits:1:alu|Mux0~0_combout\ & (!\generate_31bits:2:alu|Mux0~0_combout\ & (!\generate_31bits:3:alu|Mux0~0_combout\ & !\generate_31bits:4:alu|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:1:alu|ALT_INV_Mux0~0_combout\,
	datab => \generate_31bits:2:alu|ALT_INV_Mux0~0_combout\,
	datac => \generate_31bits:3:alu|ALT_INV_Mux0~0_combout\,
	datad => \generate_31bits:4:alu|ALT_INV_Mux0~0_combout\,
	combout => \WideOr0~0_combout\);

\WideOr0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (!\generate_31bits:5:alu|Mux0~0_combout\ & (!\generate_31bits:6:alu|Mux0~0_combout\ & (!\generate_31bits:7:alu|Mux0~0_combout\ & \WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:5:alu|ALT_INV_Mux0~0_combout\,
	datab => \generate_31bits:6:alu|ALT_INV_Mux0~0_combout\,
	datac => \generate_31bits:7:alu|ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_WideOr0~0_combout\,
	combout => \WideOr0~1_combout\);

\WideOr0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~2_combout\ = (!\generate_31bits:8:alu|Mux0~0_combout\ & (!\generate_31bits:9:alu|Mux0~0_combout\ & (!\generate_31bits:10:alu|Mux0~0_combout\ & \WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:8:alu|ALT_INV_Mux0~0_combout\,
	datab => \generate_31bits:9:alu|ALT_INV_Mux0~0_combout\,
	datac => \generate_31bits:10:alu|ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_WideOr0~1_combout\,
	combout => \WideOr0~2_combout\);

\WideOr0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~3_combout\ = ( \WideOr0~2_combout\ & ( (!\generate_31bits:11:alu|Mux0~0_combout\ & (!\generate_31bits:12:alu|Mux0~0_combout\ & (!\generate_31bits:13:alu|Mux0~0_combout\ & !\generate_31bits:14:alu|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:11:alu|ALT_INV_Mux0~0_combout\,
	datab => \generate_31bits:12:alu|ALT_INV_Mux0~0_combout\,
	datac => \generate_31bits:13:alu|ALT_INV_Mux0~0_combout\,
	datad => \generate_31bits:14:alu|ALT_INV_Mux0~0_combout\,
	datae => \ALT_INV_WideOr0~2_combout\,
	combout => \WideOr0~3_combout\);

\WideOr0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~4_combout\ = (!\generate_31bits:15:alu|Mux0~0_combout\ & (!\generate_31bits:16:alu|Mux0~0_combout\ & (!\generate_31bits:17:alu|Mux0~0_combout\ & \WideOr0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:15:alu|ALT_INV_Mux0~0_combout\,
	datab => \generate_31bits:16:alu|ALT_INV_Mux0~0_combout\,
	datac => \generate_31bits:17:alu|ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_WideOr0~3_combout\,
	combout => \WideOr0~4_combout\);

\WideOr0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~5_combout\ = ( \WideOr0~4_combout\ & ( (!\generate_31bits:18:alu|Mux0~0_combout\ & (!\generate_31bits:19:alu|Mux0~0_combout\ & (!\generate_31bits:20:alu|Mux0~0_combout\ & !\generate_31bits:22:alu|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:18:alu|ALT_INV_Mux0~0_combout\,
	datab => \generate_31bits:19:alu|ALT_INV_Mux0~0_combout\,
	datac => \generate_31bits:20:alu|ALT_INV_Mux0~0_combout\,
	datad => \generate_31bits:22:alu|ALT_INV_Mux0~0_combout\,
	datae => \ALT_INV_WideOr0~4_combout\,
	combout => \WideOr0~5_combout\);

\WideOr0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~6_combout\ = ( \WideOr0~5_combout\ & ( (!\generate_31bits:21:alu|Mux0~0_combout\ & (!\generate_31bits:23:alu|Mux0~0_combout\ & (!\generate_31bits:24:alu|Mux0~0_combout\ & !\generate_31bits:25:alu|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:21:alu|ALT_INV_Mux0~0_combout\,
	datab => \generate_31bits:23:alu|ALT_INV_Mux0~0_combout\,
	datac => \generate_31bits:24:alu|ALT_INV_Mux0~0_combout\,
	datad => \generate_31bits:25:alu|ALT_INV_Mux0~0_combout\,
	datae => \ALT_INV_WideOr0~5_combout\,
	combout => \WideOr0~6_combout\);

\WideOr0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~7_combout\ = (!\generate_31bits:26:alu|Mux0~0_combout\ & (!\generate_31bits:27:alu|Mux0~0_combout\ & (!\generate_31bits:28:alu|Mux0~1_combout\ & \WideOr0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \generate_31bits:26:alu|ALT_INV_Mux0~0_combout\,
	datab => \generate_31bits:27:alu|ALT_INV_Mux0~0_combout\,
	datac => \generate_31bits:28:alu|ALT_INV_Mux0~1_combout\,
	datad => \ALT_INV_WideOr0~6_combout\,
	combout => \WideOr0~7_combout\);

WideOr0 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = ( \WideOr0~7_combout\ & ( (((\msb_alu|Mux0~0_combout\) # (\generate_31bits:30:alu|Mux0~1_combout\)) # (\generate_31bits:29:alu|Mux0~0_combout\)) # (\alu_0|Mux0~0_combout\) ) ) # ( !\WideOr0~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_0|ALT_INV_Mux0~0_combout\,
	datab => \generate_31bits:29:alu|ALT_INV_Mux0~0_combout\,
	datac => \generate_31bits:30:alu|ALT_INV_Mux0~1_combout\,
	datad => \msb_alu|ALT_INV_Mux0~0_combout\,
	datae => \ALT_INV_WideOr0~7_combout\,
	combout => \WideOr0~combout\);

\msb_alu|overflow\ : cyclonev_lcell_comb
-- Equation(s):
-- \msb_alu|overflow~combout\ = (!\a[31]~input_o\ & (\b[31]~input_o\ & !\msb_alu|set~combout\)) # (\a[31]~input_o\ & ((!\msb_alu|set~combout\) # (\b[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_a[31]~input_o\,
	datab => \ALT_INV_b[31]~input_o\,
	datac => \msb_alu|ALT_INV_set~combout\,
	combout => \msb_alu|overflow~combout\);

\c_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c_in,
	o => \c_in~input_o\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;

ww_result(12) <= \result[12]~output_o\;

ww_result(13) <= \result[13]~output_o\;

ww_result(14) <= \result[14]~output_o\;

ww_result(15) <= \result[15]~output_o\;

ww_result(16) <= \result[16]~output_o\;

ww_result(17) <= \result[17]~output_o\;

ww_result(18) <= \result[18]~output_o\;

ww_result(19) <= \result[19]~output_o\;

ww_result(20) <= \result[20]~output_o\;

ww_result(21) <= \result[21]~output_o\;

ww_result(22) <= \result[22]~output_o\;

ww_result(23) <= \result[23]~output_o\;

ww_result(24) <= \result[24]~output_o\;

ww_result(25) <= \result[25]~output_o\;

ww_result(26) <= \result[26]~output_o\;

ww_result(27) <= \result[27]~output_o\;

ww_result(28) <= \result[28]~output_o\;

ww_result(29) <= \result[29]~output_o\;

ww_result(30) <= \result[30]~output_o\;

ww_result(31) <= \result[31]~output_o\;

ww_zero <= \zero~output_o\;

ww_overflow <= \overflow~output_o\;
END structure;


