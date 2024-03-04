-- A code design for
-- Control unit of MIPS Processor
-- Dev : Aingkk.

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY control_unit IS
	PORT (
		instruction_in : IN std_logic_vector(31 DOWNTO 0);
 
		RegDst : OUT std_logic;
		Jump : OUT std_logic;
		Branch : OUT std_logic;
		MemtoReg : OUT std_logic;
		MemRead : OUT std_logic;
--		ALUOp : OUT std_logic_vector(1 DOWNTO 0);
		MemWrite : OUT std_logic;
		ALUSrc : OUT std_logic;
		RegWrite : OUT std_logic;
		
		ALU_control_input : OUT std_logic_vector(3 DOWNTO 0)
	);
END control_unit;



ARCHITECTURE struct OF control_unit IS

	component ALU_Control is
		port(
			instruction_in    : IN std_logic_vector(31 DOWNTO 0);
			ALUOp             : IN std_logic_vector(1 DOWNTO 0);
			ALU_control_input : OUT std_logic_vector(3 DOWNTO 0)
		);
	end component;
		
	component MIPS_control_unit is
		port(
			instruction_in : IN std_logic_vector(31 DOWNTO 0);
			RegDst : OUT std_logic;
			Jump : OUT std_logic;
			Branch : OUT std_logic;
			MemtoReg : OUT std_logic;
			MemRead : OUT std_logic;
			ALUOp : OUT std_logic_vector(1 DOWNTO 0);
			MemWrite : OUT std_logic;
			ALUSrc : OUT std_logic;
			RegWrite : OUT std_logic 
		);
	end component;
		
	signal ALUOp_signal : std_logic_vector(1 downto 0);
	
	
	
	BEGIN
	
		ALUCon : ALU_Control
			port map(
				instruction_in    => instruction_in,
				ALUOp             => ALUOp_signal,
				ALU_control_input => ALU_control_input
			);
		
		MIPSCon : MIPS_control_unit
			port map(
				instruction_in => instruction_in,
				RegDst         => RegDst,
				Jump           => Jump,
				Branch         => Branch,
				MemtoReg       => MemtoReg,
				MemRead        => MemRead,
				ALUOp          => ALUOp_signal,
				MemWrite       => MemWrite,
				ALUSrc         => ALUSrc,
				RegWrite       => RegWrite
			);
 
 
END struct;