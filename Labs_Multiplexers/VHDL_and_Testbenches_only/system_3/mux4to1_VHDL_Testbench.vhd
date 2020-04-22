LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY mux4to1test IS
END mux4to1test;
 
ARCHITECTURE behavior OF mux4to1test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux4to1
    PORT(
         E0 : IN  std_logic_vector(3 downto 0);
         E1 : IN  std_logic_vector(3 downto 0);
         E2 : IN  std_logic_vector(3 downto 0);
         E3 : IN  std_logic_vector(3 downto 0);
         Sel : IN  std_logic_vector(1 downto 0);
         Z : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal E0 : std_logic_vector(3 downto 0) := (others => '0');
   signal E1 : std_logic_vector(3 downto 0) := (others => '0');
   signal E2 : std_logic_vector(3 downto 0) := (others => '0');
   signal E3 : std_logic_vector(3 downto 0) := (others => '0');
   signal Sel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux4to1 PORT MAP (
          E0 => E0,
          E1 => E1,
          E2 => E2,
          E3 => E3,
          Sel => Sel,
          Z => Z
        );

 

   stim_procInputs: process
   begin		
      E0<="0000";		
      E1<="0001";
      E2<="0010";
		E3<="0011";
		wait;
   end process;

   stim_procSelection: process
   begin		
Sel<="00";
      wait for 10 ns;	
Sel<="01";
      wait for 10 ns;
Sel<="10";
      wait for 10 ns;
Sel<="11";
      wait for 10 ns;	
	end process;

END;
