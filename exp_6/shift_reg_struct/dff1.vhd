library ieee;
use ieee.std_logic_1164.all;

entity dff1 is
	port(d,clk1,rst1 : in std_logic;
		 q : out std_logic);
end dff1;

architecture dataflow of dff1 is
begin	
process(clk1,rst1)
	begin
		if rst1 = '1' then
			q<='0';
		elsif clk1 = '1' and clk1'event then
			q<=d;
		else 
			null;
		end if;
end process;
end dataflow;
		