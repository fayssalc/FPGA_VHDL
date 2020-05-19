library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity andg is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end andg;

architecture Behavioral of andg is

begin
Z<=A and B;

end Behavioral;

