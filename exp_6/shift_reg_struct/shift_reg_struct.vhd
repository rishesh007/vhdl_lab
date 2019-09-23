library ieee;
use ieee.std_logic_1164.all;

entity shift_reg_struct is
	port(w,clk,rst : in std_logic;
		dout : out std_logic);
end shift_reg_struct;

architecture struct of shift_reg_struct is
	component dff1
		port(d,clk1,rst1 : in std_logic;
			 q : out std_logic);
	end component;
	signal t1,t2,t3: std_logic;
	begin
		D1: dff1 port map (w,clk,rst,t1);
		D2: dff1 port map (t1,clk,rst,t2);
		D3: dff1 port map (t2,clk,rst,t3);
		D4: dff1 port map (t3,clk,rst,dout);
end struct;