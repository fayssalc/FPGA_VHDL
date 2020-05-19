library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFF is
    Port ( D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           clear : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end DFF;

architecture Behavioral of DFF is
begin
process(clk,clear)
begin
if(clear='1') then
Q<='0';
elsif(rising_edge(clk)) then
Q<=D;
end if;
end process;
end Behavioral;

