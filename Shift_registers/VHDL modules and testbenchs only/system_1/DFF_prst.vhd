library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity DFF_prst is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           prst : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end DFF_prst;

architecture Behavioral of DFF_prst is

begin
process(clk,rst,prst)
begin

if(rst='1') then
Q<='0';

else if(prst='1')then
Q<='1';

else if(rising_edge(clk))then
Q<=D;

end if;
end if;
end if;
end process;
end Behavioral;

