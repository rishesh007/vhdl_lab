library ieee;
use ieee.std_logic_1164.all;

Entity decoder_3_8 is
port (I: in std_logic_vector(2 downto 0);
	  En: in std_logic;
	  y: out std_logic_vector(7 downto 0));
end decoder_3_8;

Architecture behave of decoder_3_8 is
begin	
	y<="00000001" when I = "000" else
	"00000010" when I = "001" else
	"00000100" when I = "010" else
	"00001000" when I = "011" else
	"00010000" when I = "100" else
	"00100000" when I = "101" else
	"01000000" when I = "110" else
	"10000000" when I = "111" else
	"00000000";		
end behave ;
