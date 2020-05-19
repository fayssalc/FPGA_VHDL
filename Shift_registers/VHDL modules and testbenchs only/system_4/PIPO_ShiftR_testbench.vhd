--------------------------------------------------------------------------------
-- Company: Tipaza Uni
-- Engineer: F.CHABNI
--
-- Create Date:   03:14:28 05/18/2020
-- Design Name:   
-- Module Name:   C:/Users/CHABNI/Desktop/TP_Registres/VHDL/PIPO_system4/PIPO_HDL/PIPO_ShiftR_testbench.vhd
-- Project Name:  PIPO_HDL

--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY PIPO_ShiftR_testbench IS
END PIPO_ShiftR_testbench;
 
ARCHITECTURE behavior OF PIPO_ShiftR_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PIPO_ShiftR
    PORT(
         P3 : IN  std_logic;
         P2 : IN  std_logic;
         P1 : IN  std_logic;
         P0 : IN  std_logic;
         Q3 : OUT  std_logic;
         Q2 : OUT  std_logic;
         Q1 : OUT  std_logic;
         Q0 : OUT  std_logic;
         clear : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal P3 : std_logic := '0';
   signal P2 : std_logic := '0';
   signal P1 : std_logic := '0';
   signal P0 : std_logic := '0';
   signal clear : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Q3 : std_logic;
   signal Q2 : std_logic;
   signal Q1 : std_logic;
   signal Q0 : std_logic;


 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PIPO_ShiftR PORT MAP (
          P3 => P3,
          P2 => P2,
          P1 => P1,
          P0 => P0,
          Q3 => Q3,
          Q2 => Q2,
          Q1 => Q1,
          Q0 => Q0,
          clear => clear,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
   end process;
 

   
   Data_proc: process
   begin		
      P3<='0';
		P2<='0';
		P1<='0';
		P0<='1';
      wait for 20 ns;	
		P3<='0';
		P2<='0';
		P1<='1';
		P0<='0';
      wait for 20 ns;
      P3<='0';
		P2<='0';
		P1<='1';
		P0<='1';
      wait for 20 ns;
		P3<='0';
		P2<='1';
		P1<='0';
		P0<='0';
      wait for 20 ns;
		P3<='0';
		P2<='1';
		P1<='0';
		P0<='1';
      wait for 20 ns;
      P3<='1';
		P2<='1';
		P1<='1';
		P0<='1';
      wait for 60 ns;
      P3<='0';
		P2<='0';
		P1<='0';
		P0<='0';
		wait for 20 ns;
		P3<='1';
		P2<='1';
		P1<='1';
		P0<='1';
		wait for 60 ns;
		P3<='0';
		P2<='0';
		P1<='0';
		P0<='0';
		wait;
   end process;
	
	
 reset_process :process
   begin
		clear <= '0';
		wait for 220 ns;
		clear <= '1';
		wait for 20 ns;
		clear <= '0';
		wait;
   end process;	

END;
