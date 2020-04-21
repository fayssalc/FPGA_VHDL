--------------------------------------------------------------------------------
-- Company: Tipaza Uni
-- Engineer:F.CHABNI
--
-- Create Date:   22:55:31 04/21/2020
-- Design Name:   
-- Module Name:   C:/Users/CHABNI/Desktop/mux/mux8to1_when_else/mux8to1tb.vhd
-- Project Name:  mux8to1_when_else
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux8to1w
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
 
ENTITY mux8to1tb IS
END mux8to1tb;
 
ARCHITECTURE behavior OF mux8to1tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux8to1w
    PORT(
         E0 : IN  std_logic_vector(4 downto 0);
         E1 : IN  std_logic_vector(4 downto 0);
         E2 : IN  std_logic_vector(4 downto 0);
         E3 : IN  std_logic_vector(4 downto 0);
         E4 : IN  std_logic_vector(4 downto 0);
         E5 : IN  std_logic_vector(4 downto 0);
         E6 : IN  std_logic_vector(4 downto 0);
         E7 : IN  std_logic_vector(4 downto 0);
         Sel : IN  std_logic_vector(2 downto 0);
         Z : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal E0 : std_logic_vector(4 downto 0) := (others => '0');
   signal E1 : std_logic_vector(4 downto 0) := (others => '0');
   signal E2 : std_logic_vector(4 downto 0) := (others => '0');
   signal E3 : std_logic_vector(4 downto 0) := (others => '0');
   signal E4 : std_logic_vector(4 downto 0) := (others => '0');
   signal E5 : std_logic_vector(4 downto 0) := (others => '0');
   signal E6 : std_logic_vector(4 downto 0) := (others => '0');
   signal E7 : std_logic_vector(4 downto 0) := (others => '0');
   signal Sel : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Z : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux8to1w PORT MAP (
          E0 => E0,
          E1 => E1,
          E2 => E2,
          E3 => E3,
          E4 => E4,
          E5 => E5,
          E6 => E6,
          E7 => E7,
          Sel => Sel,
          Z => Z
        );


   -- Stimulus process
   stim_procinput: process
   begin		
      E0<="00000";
		E1<="10000";
		E2<="01000";
		E3<="11000";
		E4<="00100";
		E5<="10100";
		E6<="01100";
		E7<="11100";
      wait;
   end process;


   stim_procselection: process
   begin		
      Sel<="000";
		wait for 10 ns;
		Sel<="001";
		wait for 10 ns;
		Sel<="010";
		wait for 10 ns;
		Sel<="011";
		wait for 10 ns;
		Sel<="100";
		wait for 10 ns;
		Sel<="101";
		wait for 10 ns;
		Sel<="110";
		wait for 10 ns;
		Sel<="111";
		wait for 10 ns;
   end process;
END;
