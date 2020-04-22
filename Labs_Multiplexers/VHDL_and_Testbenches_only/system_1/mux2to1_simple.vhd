----------------------------------------------------------------------------------
-- Company: Tipaza Uni
-- Engineer: Chabni F
-- 
-- Create Date:    23:37:34 04/21/2020 
-- Design Name: 
-- Module Name:    mux2to1_simple - Behavioral 
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

entity mux2to1_simple is
    Port ( E0 : in  STD_LOGIC;
           E1 : in  STD_LOGIC;
           Sel : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end mux2to1_simple;

architecture Behavioral of mux2to1_simple is

begin
Z<=E0 when Sel='0' else E1;


end Behavioral;

