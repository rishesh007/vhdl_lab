library ieee;
use ieee.std_logic_1164.all;

entity addition is
port (a,b: in std_logic_vector(3 downto 0);
	  s: out std_logic_vector(4 downto 0));
end addition;

Architecture behave of addition is
function add(a: std_logic_vector(3 downto 0); b: std_logic_vector(3 downto 0)) return std_logic_vector is
	variable s: std_logic_vector(4 downto 0):= "00000";
	variable c: std_logic:='0';
	Begin
		for i in 0 to 3 loop
			s(i) := a(i) xor b(i) xor c;
			c := ( a(i) and b(i) ) or ( c and (a(i) xor b(i)));
		end loop;
		s(4) := c;
	return s;
end add;

Begin

	s <= add(a,b);

end behave;
