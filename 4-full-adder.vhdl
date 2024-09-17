library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration
entity full_adder is
    Port (
        A : in  STD_LOGIC;
        B : in  STD_LOGIC;
        Cin : in  STD_LOGIC;
        Sum : out STD_LOGIC;
        Cout : out STD_LOGIC
    );
end full_adder;

-- Architecture Body
architecture Behavioral of full_adder is
    signal S1, C1, C2 : STD_LOGIC;
    
    component half_adder
        Port (
            A : in  STD_LOGIC;
            B : in  STD_LOGIC;
            Sum : out STD_LOGIC;
            Carry : out STD_LOGIC
        );
    end component;

begin
    -- first half adder
    HA1: half_adder port map(A => A, B => B, Sum => S1, Carry => C1);
    
    -- second half adder
    HA2: half_adder port map(A => S1, B => Cin, Sum => Sum, Carry => C2);
    
    -- carry output
    Cout <= C1 OR C2;

end Behavioral;
