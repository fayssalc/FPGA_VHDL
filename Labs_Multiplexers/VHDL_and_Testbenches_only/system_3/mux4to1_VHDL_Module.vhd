library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux4to1 is
    Port ( E0 : in  STD_LOGIC_VECTOR (3 downto 0);
           E1 : in  STD_LOGIC_VECTOR (3 downto 0);
           E2 : in  STD_LOGIC_VECTOR (3 downto 0);
           E3 : in  STD_LOGIC_VECTOR (3 downto 0);
           Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           Z : out  STD_LOGIC_VECTOR (3 downto 0));
end Mux4to1;

architecture Behavioral of Mux4to1 is

begin

Z<=E0 when Sel="00" else
   E1 when Sel="01" else  
   E2 when Sel="10" else
   E3; 




end Behavioral;

