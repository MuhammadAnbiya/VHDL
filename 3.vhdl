library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration
entity full_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end full_adder;

-- Architecture Body
architecture Behavioral of full_adder is
begin

    -- Implementation full adder from 0
    Sum <= (A xor B) xor Cin;
    Cout <= (A and B) or (Cin and (A xor B));
end Behavioral;