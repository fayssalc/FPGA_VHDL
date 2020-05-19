LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY DFF_prset_testbench IS
END DFF_prset_testbench;
 
ARCHITECTURE behavior OF DFF_prset_testbench IS 
 
    COMPONENT DFF_prst
    PORT(
         D : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         prst : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal prst : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DFF_prst PORT MAP (
          D => D,
          clk => clk,
          rst => rst,
          prst => prst,
          Q => Q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
   end process;
 
   -- Stimulus process
   preset_proc: process
   begin		
	 prst<='0';
      wait for 20 ns;	
		prst<='1';
		wait for 10 ns;	
		prst<='0';
      wait;
   end process;
	
   -- Stimulus process
   D_proc: process
   begin		
	 D<='0';
      wait for 50 ns;	
		D<='1';
		wait for 20 ns;	
		D<='0';
		wait for 50 ns;	
		D<='1';
		wait for 30 ns;
		D<='0';
      wait;
   end process;
		
	   Reset_proc: process
   begin		
	 rst<='0';
      wait for 140 ns;	
		rst<='1';
		wait for 10 ns;	
		rst<='0';
		 wait;
   end process;

END;
