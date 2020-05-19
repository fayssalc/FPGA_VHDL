LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY PISO_testb IS
END PISO_testb;
 
ARCHITECTURE behavior OF PISO_testb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PISO_shiftR
    PORT(
         Clear : IN  std_logic;
         Clock : IN  std_logic;
         P0 : IN  std_logic;
         P1 : IN  std_logic;
         P2 : IN  std_logic;
         P3 : IN  std_logic;
         Data_out : OUT  std_logic;
         Load : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clear : std_logic := '0';
   signal Clock : std_logic := '0';
   signal P0 : std_logic := '0';
   signal P1 : std_logic := '0';
   signal P2 : std_logic := '0';
   signal P3 : std_logic := '0';
   signal Load : std_logic := '0';

 	--Outputs
   signal Data_out : std_logic;

  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PISO_shiftR PORT MAP (
          Clear => Clear,
          Clock => Clock,
          P0 => P0,
          P1 => P1,
          P2 => P2,
          P3 => P3,
          Data_out => Data_out,
          Load => Load
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for 10 ns;
		Clock <= '1';
		wait for 10 ns;
   end process;
 

   -- Stimulus process
   Loading_proc: process
   begin		
   Load<='0';
      wait for 60 ns;		
   Load<='1';
      wait for 20 ns; 
		Load<='0';
      wait for 60 ns;		
      Load<='1';
      wait for 20 ns;
		Load<='0';
      wait for 60 ns;		
      Load<='1';
      wait for 20 ns;
		Load<='0';
		wait;
   end process;
	
	
	 Data_proc: process
   begin		
P3<='1';     	
P2<='0';      	
P1<='0';
P0<='1';
wait for 80 ns; 
P3<='0';     	
P2<='1';      	
P1<='1';
P0<='0';
wait for 80 ns; 
P3<='1';     	
P2<='0';      	
P1<='1';
P0<='0';
wait for 80 ns; 
      wait;
   end process;

END;
