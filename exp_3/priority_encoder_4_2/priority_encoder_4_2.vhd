library ieee;
use ieee.std_logic_1164.all;

Entity priority_encoder_4_2 is
port (I: in std_logic_vector(3 downto 0);
	  En: in std_logic;
	  y: out std_logic_vector(1 downto 0));
end priority_encoder_4_2;

Architecture behave of priority_encoder_4_2 is
begin	
	process(I,En)
	begin
		if En = '1' then
			if I(3) = '1' then
				y<="11";
			elsif I(2) = '1' then
				y<="10";
			elsif I(1) = '1' then
				y<="01";
			elsif I(0) = '1' then
				y<="00";
			else 
				y<="00";
			end if;
		else 
			y<="00";
		end if;
	end process;
end behave ;
