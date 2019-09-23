library ieee;
use ieee.std_logic_1164.all;

entity mux_struct is
port(W: in std_logic_vector(7 downto 0);
	sel: in std_logic_vector(2 downto 0);
	R: out std_logic);
end mux_struct;

Architecture struct of mux_struct is
	component mux_2_1 
		port( I1,I2: in std_logic;
			  S: in std_logic;
			  y: out std_logic);
	end component;

	signal temp: std_logic_vector(3 downto 0);
	signal t2 : std_logic_vector(1 downto 0);
	Begin
	L1:	for i in 0 to 3 generate
			U1: mux_2_1 port map(w(2*i), w(2*i+1),sel(0),temp(i));
		end generate;
		U2: mux_2_1 port map(temp(0),temp(1),sel(1),t2(0));
		U3: mux_2_1 port map(temp(2),temp(3),sel(1),t2(1));
		U4: mux_2_1 port map(t2(0),t2(1),sel(2),R);
end struct;
