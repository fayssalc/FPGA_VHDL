
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux is
    Port ( In1 : in  STD_LOGIC;
           In2 : in  STD_LOGIC;
           Output : out  STD_LOGIC;
           Sel : in  STD_LOGIC);
end Mux;

architecture Behavioral of Mux is

begin
Output<=In1 when Sel='0' else In2;

end Behavioral;

