----------------------------------------------------------------------------------
-- Company: Tipaza Uni
-- Engineer: F.CHABNI
-- 
-- Create Date:    11:00:34 05/09/2020 
-- Design Name: 
-- Module Name:    SIPO_ShiftR - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SIPO_ShiftR is
    Port ( Din : in  STD_LOGIC;
           Q0 : out  STD_LOGIC;
           Q1 : out  STD_LOGIC;
           Q2 : out  STD_LOGIC;
           Q3 : out  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC);
end SIPO_ShiftR;

architecture Behavioral of SIPO_ShiftR is
signal D0,D1,D2,D3: STD_LOGIC;
begin
process(clk,rst)
begin
if(rst='1')then
D0<='0';
D1<='0';
D2<='0';
D3<='0';
else if(rising_edge(clk))then
D0<=Din;
D1<=D0;
D2<=D1;
D3<=D2;
end if;
end if;
end process;
Q0<=D0;
Q1<=D1;
Q2<=D2;
Q3<=D3;
end Behavioral;

