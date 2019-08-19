library ieee;
use ieee.std_logic_1164.all;

Entity mux_8_1_case is
port (y: out std_logic;
	  En: in std_logic;
	  s: in std_logic_vector(2 downto 0);
	  I: in std_logic_vector(7 downto 0));
end mux_8_1_case;

Architecture behave of mux_8_1_case is
begin	
	process(I,En,s)
		begin
		if En = '1' then
			case s is
				when "000" => y <= I(0);
				when "001" => y <= I(1);
				when "010" => y <= I(2);
				when "011" => y <= I(3);
				when "100" => y <= I(4);
				when "101" => y <= I(5);
				when "110" => y <= I(6);
				when "111" => y <= I(7);
				when others => y <= '0';
			end case;
		else 
			y<= '0';
		end if;
	end process;	
end behave ;
