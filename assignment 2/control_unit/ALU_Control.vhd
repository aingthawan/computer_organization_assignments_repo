-- A code design for
-- ALU Control UNit of MIPS Processor
-- Dev : Aingkk.
-- Okay for now

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
use ieee.std_logic_unsigned.ALL;

entity ALU_Control is
    port (
        instruction_in    : IN std_logic_vector(31 DOWNTO 0);
        ALUOp             : IN std_logic_vector(1 DOWNTO 0);
		  
        ALU_control_input : OUT std_logic_vector(3 DOWNTO 0)
    );
end entity;

architecture Behave of ALU_Control is
begin
    process(ALUOp, instruction_in)
    begin
        if ALUOp = "00" then
            -- LW / SW
            ALU_control_input <= "0010";
        elsif ALUOp = "01" then
            -- BEQ
            ALU_control_input <= "0110";
        else
            -- 10
            -- check function field
            if instruction_in(5 DOWNTO 0) = "100000" then
                -- ADD
                ALU_control_input <= "0010";
            elsif instruction_in(5 DOWNTO 0) = "100010" then
                -- SUB
                ALU_control_input <= "0110";
            elsif instruction_in(5 DOWNTO 0) = "100100" then
                -- AND
                ALU_control_input <= "0000";
            elsif instruction_in(5 DOWNTO 0) = "100101" then
				    -- OR
                ALU_control_input <= "0001";
					 
				elsif instruction_in(5 DOWNTO 0) = "100111" then
				    -- NOR
					 ALU_control_input <= "1100";
					 
            else
                -- 101010
                -- SLT
                ALU_control_input <= "0111";
            end if;
        end if;
    end process;
end architecture;
