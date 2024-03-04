-- A code design for
-- Control unit of MIPS Processor
-- Dev : Aingkk.

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY MIPS_control_unit IS
	PORT (
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
END MIPS_control_unit;



ARCHITECTURE struct OF MIPS_control_unit IS
 
BEGIN
	PROCESS (instruction_in) 
	BEGIN
	IF instruction_in(31 DOWNTO 26) = "0000000" THEN
		-- R - Type check bit 5 : 0
		-- check 5 : 3 first
 
		IF instruction_in(5 DOWNTO 3) = "100" THEN
			-- then check 2 : 0
			IF instruction_in(2 DOWNTO 0) = "000" THEN
				-- add OK
				RegDst   <= '1';
				Jump     <= '0';
				Branch   <= '0';
				MemtoReg <= '0';
				MemRead  <= '0';
				-- don't care just jump
				ALUOp    <= "10";
				MemWrite <= '0';
				ALUSrc   <= '0';
				RegWrite <= '0';
 
			ELSIF instruction_in(2 DOWNTO 0) = "010" THEN
				-- subtract
				RegDst   <= '1';
				Jump     <= '0';
				Branch   <= '0';
				MemtoReg <= '0';
				MemRead  <= '0';
				ALUOp    <= "10"; 
				MemWrite <= '0';
				ALUSrc   <= '0';
				RegWrite <= '0';				
 
			ELSIF instruction_in(2 DOWNTO 0) = "100" THEN
				-- and
				RegDst   <= '1'; 
				Jump     <= '0';
				Branch   <= '0';
				MemtoReg <= '0'; 
				MemRead  <= '0';
				ALUOp    <= "10"; 
				MemWrite <= '0';
				ALUSrc   <= '0';
				RegWrite <= '0';				
 
			ELSIF instruction_in(2 DOWNTO 0) = "101" THEN
				-- or
				RegDst   <= '1';
				Jump     <= '0';
				Branch   <= '0';
				MemtoReg <= '0';
				MemRead  <= '0';
				ALUOp    <= "10"; 
				MemWrite <= '0';
				ALUSrc   <= '0';
				RegWrite <= '0';		
 
			ELSE
				-- nor ???????????
				RegDst   <= '1'; 
				Jump     <= '0';
				Branch   <= '0';
				MemtoReg <= '0';
				MemRead  <= '0';
				ALUOp    <= "10";
				MemWrite <= '0';
				ALUSrc   <= '0';
				RegWrite <= '0';	
 
			END IF;
 
		ELSIF instruction_in(5 DOWNTO 3) = "101" THEN
			-- slt
			RegDst   <= '1';
			Jump     <= '0';
			Branch   <= '0';
			MemtoReg <= '0';
			MemRead  <= '0';
			ALUOp    <= "10";  
			MemWrite <= '0';
			ALUSrc   <= '0';
			RegWrite <= '0';	
 
		END IF;
 
	ELSE
		-- Operation
		-- check 31 : 26
		-- first check 31 : 29
		IF instruction_in(31 DOWNTO 29) = "000" THEN
			-- then check 28 : 26
			IF instruction_in(28 DOWNTO 26) = "010" THEN
				-- J - Type OK
				-- jump - van halen
				RegDst   <= '0';
				Jump     <= '1';
				Branch   <= '0';
				MemtoReg <= '0';
				MemRead  <= '0';
				ALUOp    <= "00";  
				MemWrite <= '0';
				ALUSrc   <= '0';
				RegWrite <= '0';
 
			ELSIF instruction_in(28 DOWNTO 26) = "100" THEN
				-- beq OK
 				RegDst   <= '0';
				Jump     <= '0';
				Branch   <= '1';
				MemtoReg <= '0';
				MemRead  <= '0';
				ALUOp    <= "01";  
				MemWrite <= '0';
				ALUSrc   <= '0';
				RegWrite <= '0';
				
--		   NOT AVAILABLE
--			ELSE
--				-- bne 101 ??????????????????????????????????????????????????????????????????????????????????????????
-- 				RegDst   <= '0';
--				Jump     <= '0';
--				Branch   <= '1'; 
--				MemtoReg <= '0'; 
--				MemRead  <= '0'; 
--				ALUOp    <= "01"; -- perform sub
--				MemWrite <= '0'; 
--				ALUSrc   <= '0'; 
--				RegWrite <= '0'; 
				
			END IF;
 
		ELSIF instruction_in(31 DOWNTO 29) = "100" THEN
			-- load word
			RegDst   <= '0';
			Jump     <= '0';
			Branch   <= '0';
			MemtoReg <= '1';
			MemRead  <= '1';
			ALUOp    <= "00";  
			MemWrite <= '0';
			ALUSrc   <= '1';
			RegWrite <= '1';	
 
		ELSE
			-- store word
			RegDst   <= '0'; -- X?
			Jump     <= '0';
			Branch   <= '0';
			MemtoReg <= '0'; -- x?
			MemRead  <= '0';
			ALUOp    <= "00";  
			MemWrite <= '1';
			ALUSrc   <= '1';
			RegWrite <= '0';
 
		END IF;
 
	END IF;
 
END PROCESS;
 
END struct;