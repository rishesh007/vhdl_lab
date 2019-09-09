library ieee;
use ieee.std_logic_1164.all;

entity mod_10_counter is
port (rst,clk: in std_logic;
		O: out integer);
end mod_10_counter;

Architecture behave of mod_10_counter is
Begin
Process(rst,clk)
variable d: integer:=0;
Begin
	if rst = '0' then
		d := 0;
	elsif clk'event and clk = '1' then
		d := (d+1) mod 10;
	else null;
	end if;
	O <= d;
end process;
end behave;