--------------------------------------------------------------------------------
-- Company: Tipaza Uni
-- Engineer: F.CHABNI
--
-- Create Date:   11:05:02 05/09/2020
-- Design Name:   
-- Module Name:   C:/Users/CHABNI/Desktop/TP_Registres/VHDL/SIPO/SIPO_HDL/SIPO_ShiftR_testbench.vhd
-- Project Name:  SIPO_HDL
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 

-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY SIPO_ShiftR_testbench IS
END SIPO_ShiftR_testbench;
 
ARCHITECTURE behavior OF SIPO_ShiftR_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SIPO_ShiftR
    PORT(
         Din : IN  std_logic;
         Q0 : OUT  std_logic;
         Q1 : OUT  std_logic;
         Q2 : OUT  std_logic;
         Q3 : OUT  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Din : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal Q0 : std_logic;
   signal Q1 : std_logic;
   signal Q2 : std_logic;
   signal Q3 : std_logic;

   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SIPO_ShiftR PORT MAP (
          Din => Din,
          Q0 => Q0,
          Q1 => Q1,
          Q2 => Q2,
          Q3 => Q3,
          clk => clk,
          rst => rst
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for 5 ns;
		clk <= '1';
		wait for 5 ns;
   end process;
 

   --Data in Stimulus process
   Reset_proc: process
   begin		
      rst<='0';
      wait for 100 ns;	

      rst<='1';
      wait for 5 ns;	
      rst<='0';
      wait;
   end process;


   --Data in Stimulus process
   Data_in_proc: process
   begin		
      Din<='0';
      wait for 10 ns;	

      Din<='1';
      wait for 40 ns;	
      Din<='0';
      wait for 10 ns;	

      Din<='1';
      wait for 40 ns;	
      Din<='0';
		wait;
   end process;




END;
