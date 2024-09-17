library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration
entity half_adder is
    Port ( input : in  STD_LOGIC;
           C     : out STD_LOGIC);
end half_adder;

-- Architecture Body
architecture Behavioral of half_adder is
    signal A, B : STD_LOGIC;  -- Internal signals for A and B
begin

    -- Logic for A
    A <= not input;

    -- Logic for B
    B <= not (A and '1');  -- Equivalent to NOT A

    -- Logic for C
    C <= A and B;

end Behavioral;