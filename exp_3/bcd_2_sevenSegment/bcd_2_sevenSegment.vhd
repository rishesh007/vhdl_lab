library ieee;
use ieee.std_logic_1164.all;

Entity bcd_2_sevenSegment is
port (I: in std_logic_vector(3 downto 0);
	  En: in std_logic;
	  y: out std_logic_vector(6 downto 0));
end bcd_2_sevenSegment;

Architecture behave of bcd_2_sevenSegment is
begin	
	process(I,En)
		begin
		if En = '1' then
			case I is
				when "0000" => y <= "1111110";
				when "0001" => y <= "0110000";
				when "0010" => y <= "1101101";
				when "0011" => y <= "1111001";
				when "0100" => y <= "0110011";
				when "0101" => y <= "1011011";
				when "0110" => y <= "1011111";
				when "0111" => y <= "1110000";
				when "1000" => y <= "1111111";
				when "1001" => y <= "1111011";
				when others => y <= "0000000";
			end case;
		else 
			y<= "0000000";
		end if;
	end process;	
end behave ;
