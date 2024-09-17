library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration
entity full_adder is
    Port (
        A    : in  STD_LOGIC;
        B    : in  STD_LOGIC;
        Cin  : in  STD_LOGIC;
        Sum  : out STD_LOGIC;
        Cout : out STD_LOGIC
    );
end full_adder;

-- Architecture Body
architecture Behavioral of full_adder is
    signal S1, C1, C2 : STD_LOGIC;

begin
    -- first half adder
    S1 <= A XOR B;
    C1 <= A AND B;
    
    -- second half adder
    Sum <= S1 XOR Cin;
    C2 <= S1 AND Cin;
    
    -- carry output
    Cout <= C1 OR C2;

end Behavioral;
