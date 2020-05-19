library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SISO_ShiftR is
    Port (  Datain : in  STD_LOGIC ;
				clk : in  STD_LOGIC;
            clear : in  STD_LOGIC;
           Dataout : out  STD_LOGIC);
end SISO_ShiftR;




architecture Behavioral of SISO_ShiftR is
signal D3,D2,D1,D0 :  STD_LOGIC;

begin
process (clk,clear,Datain)
begin
if (clear='1') then
D3<='0';
D2<='0';
D1<='0';
D0<='0';
elsif(rising_edge(clk)) then
D3<=Datain;
D2<=D3;
D1<=D2;
D0<=D1;
end if;
end process;
Dataout<=D0;
end Behavioral;