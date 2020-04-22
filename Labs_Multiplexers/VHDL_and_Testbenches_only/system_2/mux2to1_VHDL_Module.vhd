----------------------------------------------------------------------------------
-- Company: Tipaza Uni
-- Engineer: 
-- 
-- Create Date:    23:10:57 04/21/2020 
-- Design Name: 
-- Module Name:    mux2to1 - Behavioral 
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
entity mux2to1 is
    Port ( E0 : in  STD_LOGIC_VECTOR (4 downto 0);
           E1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Sel : in  STD_LOGIC;
           Z : out  STD_LOGIC_VECTOR (4 downto 0));
end mux2to1;

architecture Behavioral of mux2to1 is

begin
Z<=E0 when Sel='1' else
   E1;
end Behavioral;

