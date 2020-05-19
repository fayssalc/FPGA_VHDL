--------------------------------------------------------------------------------
-- Company:Uni of Tipaza
-- Engineer: F.CHABNI
--
-- Create Date:   09:32:22 05/09/2020
-- Design Name:   
-- Module Name:   C:/Users/CHABNI/Desktop/TP_Registres/VHDL/SISO/SISO_HDL/SISO_ShiftR_testbench.vhd
-- Project Name:  SISO_HDL
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
 
 
ENTITY SISO_ShiftR_testbench IS
END SISO_ShiftR_testbench;
 
ARCHITECTURE behavior OF SISO_ShiftR_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SISO_ShiftR
    PORT(
         Datain : IN  std_logic;
         clk : IN  std_logic;
         clear : IN  std_logic;
         Dataout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Datain : std_logic := '0';
   signal clk : std_logic := '0';
   signal clear : std_logic := '0';

 	--Outputs
   signal Dataout : std_logic;

   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SISO_ShiftR PORT MAP (
          Datain => Datain,
          clk => clk,
          clear => clear,
          Dataout => Dataout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for 500 ps;
		clk <= '1';
		wait for 500 ps;
   end process;
 
 
    -- clear Stimulus process
   clear_proc: process
   begin		
      -- hold reset state for 100 ns.
      clear<='0';
		wait for 20 ns;	
      clear<='1';
      wait for 10 ns; 
		clear<='0';
      --wait for 10 ns;
      wait;
   end process;

   -- Data in Stimulus process
   Datain_proc: process
   begin		
      
      Datain<='0';
		wait for 5 ns;
		Datain<='1';
		wait for 40 ns;	
      Datain<='0';
		wait for 5 ns;
		wait;
   end process;





END;
