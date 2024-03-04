-- 1 bit ALU
-- Aing KK.
-- Reference : Appendix B, FIGURE B.5.10, Computer Organization and Design: The Hardware/Software Interface, Fifth Edition


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_unsigned.ALL;
ENTITY alu_1bit IS
    PORT (
        a, b : IN std_logic;
        c_in : IN std_logic;
        a_inv : IN std_logic;
        b_inv : IN std_logic;
        less : IN std_logic;
        ops : IN std_logic_vector(1 DOWNTO 0); 
        result : OUT std_logic;
        c_out : OUT std_logic
    );
END alu_1bit;

ARCHITECTURE Behave OF alu_1bit IS
 
    SIGNAL input_a : std_logic;
    SIGNAL input_b : std_logic;
    SIGNAL and_ans : std_logic;
    SIGNAL or_ans : std_logic;
    SIGNAL sum_ans : std_logic;
    SIGNAL less_ans : std_logic;
 
BEGIN
    -- Input Invert Mux
    WITH a_inv SELECT
    input_a <= a WHEN '0', 
               NOT a WHEN OTHERS;
    WITH b_inv SELECT
    input_b <= b WHEN '0', 
               NOT b WHEN OTHERS;
 
    -- And Module
    and_ans <= input_a AND input_b;
    -- Or Module
    or_ans <= input_a OR input_b;
 
    -- Sum Module
    sum_ans <= input_a XOR input_b XOR c_in;
    c_out <= (input_a AND input_b) OR (c_in AND (input_a XOR input_b));
 
    -- Result Mux
    WITH ops SELECT
    result <= and_ans WHEN "00", 
              or_ans WHEN "01", 
              sum_ans WHEN "10", 
              less WHEN "11";

END Behave;