library ieee;
use ieee.std_logic_1164.all;

entity n_bit_sipo is
	Generic(N: integer:=8);
	port(l,r,clk, rst, d1,dn: in std_logic;
		 Q:out std_logic_vector(N-1 downto 0));
end n_bit_sipo;

Architecture behave of n_bit_sipo is
begin 
process(clk,rst)
variable d:std_logic_vector(N-1 downto 0) := "00000000";
begin 
	if clk'event and clk = '1' then 
		if rst = '0' then 
			d := "00000000";
		elsif L = '1' and R = '0' then
			d := d(N-2 downto 0) & d1;
		elsif R = '1' and L = '0' then 
			d := dn & d(N-1 downto 1);
		else 
			NULL;
		end if;
	else 
		NULL;
	end if;
	Q <= d;
end process;
end behave;