--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:24:28 04/21/2020
-- Design Name:   
-- Module Name:   C:/Users/CHABNI/Desktop/mux/mux2to1_when_else/mux2to1tb.vhd
-- Project Name:  mux2to1_when_else
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux2to1
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
 
ENTITY mux2to1tb IS
END mux2to1tb;
 
ARCHITECTURE behavior OF mux2to1tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux2to1
    PORT(
         E0 : IN  std_logic_vector(4 downto 0);
         E1 : IN  std_logic_vector(4 downto 0);
         Sel : IN  std_logic;
         Z : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal E0 : std_logic_vector(4 downto 0) := (others => '0');
   signal E1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Sel : std_logic := '0';

 	--Outputs
   signal Z : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux2to1 PORT MAP (
          E0 => E0,
          E1 => E1,
          Sel => Sel,
          Z => Z
        );

   -- Stimulus process
   stim_procInputs: process
   begin		
 E0<="00000";	
 E1<="00100";
      wait;
   end process;	
	
	stim_procselection: process
   begin		
 Sel<='1';
      wait for 20 ns;	
 Sel<='0';
      wait for 20 ns;
   end process;

END;
