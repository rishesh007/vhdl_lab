library ieee;
use ieee.std_logic_1164.all;

Entity mux_8_1_if is
port (I: in std_logic_vector(7 downto 0);
	  s: in std_logic_vector(2 downto 0);
	  En: in std_logic;
	  y: out std_logic);
end mux_8_1_if;

Architecture behave of mux_8_1_if is
begin	
	process(I,En,s)
	begin
		if En = '1' then
			if s = "000" then
				y<=I(0);
			elsif s = "001" then
				y<=I(1);
			elsif s = "010" then
				y<=I(2);
			elsif s = "011" then
				y<=I(3);
			elsif s = "100" then
				y<=I(4);
			elsif s = "101" then
				y<=I(5);
			elsif s = "110" then
				y<=I(6);
			elsif s = "111" then
				y<=I(7);
			else 
				y<='1';
			end if;
		else 
			y<='0';
		end if;
	end process;
end behave ;
