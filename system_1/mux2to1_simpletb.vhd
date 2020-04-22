--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:59:27 04/21/2020
-- Design Name:   
-- Module Name:   C:/Users/CHABNI/Desktop/mux/mux2to1_simple_when/mux2to1_simpletb.vhd
-- Project Name:  mux2to1_simple_when
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux2to1_simple
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY mux2to1_simpletb IS
END mux2to1_simpletb;
 
ARCHITECTURE behavior OF mux2to1_simpletb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux2to1_simple
    PORT(
         E0 : IN  std_logic;
         E1 : IN  std_logic;
         Sel : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal E0 : std_logic := '0';
   signal E1 : std_logic := '0';
   signal Sel : std_logic := '0';

 	--Outputs
   signal Z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux2to1_simple PORT MAP (
          E0 => E0,
          E1 => E1,
          Sel => Sel,
          Z => Z
        );

  

   -- Stimulus process
   stim_procInputs: process
   begin		
      E0<='1';
     
		E1<='0';
      wait;
   end process;
	
	  
	 stim_procSelection: process
   begin		
      Sel<='1';
      wait for 10 ns;	
		Sel<='0';
      wait for 20 ns;
   end process;

END;
