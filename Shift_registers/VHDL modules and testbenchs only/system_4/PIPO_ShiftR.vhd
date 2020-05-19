----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:50:58 05/09/2020 
-- Design Name: 
-- Module Name:    PIPO_ShiftR - Behavioral 
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



entity PIPO_ShiftR is
    Port ( P3 : in  STD_LOGIC;
	        P2 : in  STD_LOGIC;
			  P1 : in  STD_LOGIC;
			  P0 : in  STD_LOGIC; 
           Q3 : out  STD_LOGIC;
			  Q2 : out  STD_LOGIC;
			  Q1 : out  STD_LOGIC;
			  Q0 : out  STD_LOGIC;
           clear : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end PIPO_ShiftR;

architecture Behavioral of PIPO_ShiftR is

begin


process(clk,clear,P3,P2,P1,P0)
begin

if(clear='1') then
Q3<='0';
Q2<='0';
Q1<='0';
Q0<='0';
elsif(rising_edge(clk))then

Q3<=P3;
Q2<=P2;
Q1<=P1;
Q0<=P0;
end if;
end process; 
end Behavioral;

