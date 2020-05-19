library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity PISO_shiftR is
    Port ( Clear : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           P0 : in  STD_LOGIC;
           P1 : in  STD_LOGIC;
           P2 : in  STD_LOGIC;
           P3 : in  STD_LOGIC;
           Data_out : out  STD_LOGIC;
           Load : in  STD_LOGIC);
end PISO_shiftR;

architecture Behavioral of PISO_shiftR is
signal tmpand,Q3,Q2,Q1,Q0,M2,M1,M0 : STD_LOGIC;
begin


Inst_andg: entity work.andg PORT MAP(
		A =>Load ,
		B =>P3 ,
		Z => tmpand
	);


Inst_DFF3: entity work.DFF PORT MAP(
		D =>tmpand ,
		Q =>Q3 ,
		clear =>Clear ,
		clk =>Clock 
	);

Inst_Mux2:entity work.Mux PORT MAP(
		In1 =>Q3 ,
		In2 =>P2,
		Output =>M2 ,
		Sel => Load
	);


Inst_DFF2: entity work.DFF PORT MAP(
		D =>M2 ,
		Q => Q2,
		clear => Clear,
		clk => Clock
	);
	
	Inst_Mux1: entity work.Mux PORT MAP(
		In1 =>Q2,
		In2 =>P1 ,
		Output =>M1 ,
		Sel => Load
	);

	Inst_DFF1: entity work.DFF PORT MAP(
		D =>M1 ,
		Q =>Q1 ,
		clear =>Clear ,
		clk => Clock
	);
	
	Inst_Mux0: entity work.Mux PORT MAP(
		In1 =>Q1 ,
		In2 => P0,
		Output => M0,
		Sel => Load
	);

	
	Inst_DFF0:entity work.DFF PORT MAP(
		D =>M0,
		Q => Q0,
		clear => Clear ,
		clk => Clock
	);

	Data_out<=Q0;
end Behavioral;

