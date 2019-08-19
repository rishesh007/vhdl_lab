library ieee;
use ieee.std_logic_1164.all;

Entity demux_1_8 is
port (I: in std_logic;
	  En: in std_logic;
	  s: in std_logic_vector(2 downto 0);
	  y: out std_logic_vector(7 downto 0));
end demux_1_8;

Architecture behave of demux_1_8 is
begin	
	process(I,En,s)
		begin
		if En = '1' then
			case s is
				when "000" => y <= ("0000000" & I);
				when "001" => y <= ("000000" & I & '0');
				when "010" => y <= ("00000" & I & "00");
				when "011" => y <= ("0000" & I & "000");
				when "100" => y <= ("000" & I & "0000");
				when "101" => y <= ("00" & I & "00000");
				when "110" => y <= ('0' & I & "000000");
				when "111" => y <= (I & "0000000");
				when others => y <= "00000000";
			end case;
		else 
			y<= "00000000";
		end if;
	end process;	
end behave ;
