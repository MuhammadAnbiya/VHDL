library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration
entity half_adder is
    Port (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        Sum : out STD_LOGIC;
        Carry : out STD_LOGIC
    );
end half_adder;

-- Architecture Body
architecture Behavioral of half_adder is
begin

    Sum <= A XOR B;
    Carry <= A AND B;
end Behavioral;
