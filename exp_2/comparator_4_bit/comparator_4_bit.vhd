library ieee;
use ieee.std_logic_1164.all;

Entity comparator_4_bit is
port (A,B: in std_logic_vector(3 downto 0);
	  y: out std_logic_vector(2 downto 0));
end comparator_4_bit;

Architecture behave of comparator_4_bit is
begin	
		y <= "100" when A=B else
		"010" when A>B else
		"001" when A<B else
		"000";
end behave ;
