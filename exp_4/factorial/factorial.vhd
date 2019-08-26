library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

Entity factorial is
port (K: in integer range 0 to 10;
	  O: out integer);
end factorial;

Architecture behave of factorial is
begin	
	process(K)
		variable i,y: integer;
		begin
		y := 1;
		i := 0;
		while i<K loop
			i := i+1;
			y := y*i;
		end loop;
		O <= y;
	end process;	
end behave ;
