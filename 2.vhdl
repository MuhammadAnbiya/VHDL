library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration
entity half_adder_v2 is
    Port (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        Sum : out STD_LOGIC;
        Carry : out STD_LOGIC;
    );
end half_adder_v2;

-- Architecture Body
architecture Behavioral of half_adder_v2 is
begin

    -- Half adder algorithm: SUM = A XOR B, CARRY = A AND B
    Sum <= A XOR B;
    Carry <= A AND B;

end Behavioral;
