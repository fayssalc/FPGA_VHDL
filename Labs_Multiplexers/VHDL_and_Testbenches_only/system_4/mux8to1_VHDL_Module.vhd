----------------------------------------------------------------------------------
-- Company: Tipaza uni
-- Engineer: F.CHABNI
-- 
-- Create Date:    22:35:57 04/21/2020 
-- Design Name: Mux8to1
-- Module Name:    mux8to1w - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux8to1w is
    Port ( E0 : in  STD_LOGIC_VECTOR (4 downto 0);
           E1 : in  STD_LOGIC_VECTOR (4 downto 0);
           E2 : in  STD_LOGIC_VECTOR (4 downto 0);
           E3 : in  STD_LOGIC_VECTOR (4 downto 0);
           E4 : in  STD_LOGIC_VECTOR (4 downto 0);
           E5 : in  STD_LOGIC_VECTOR (4 downto 0);
           E6 : in  STD_LOGIC_VECTOR (4 downto 0);
           E7 : in  STD_LOGIC_VECTOR (4 downto 0);
           Sel : in  STD_LOGIC_VECTOR (2 downto 0);
           Z : out  STD_LOGIC_VECTOR (4 downto 0));
end mux8to1w;

architecture Behavioral of mux8to1w is

begin
Z<=E0 when Sel="000" else
   E1 when Sel="001" else
	E2 when Sel="010" else
   E3 when Sel="011" else	
   E4 when Sel="100" else
   E5 when Sel="101" else	
   E6 when Sel="110" else
   E7;	

end Behavioral;

