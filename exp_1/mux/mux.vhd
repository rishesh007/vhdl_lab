library ieee;
use ieee.std_logic_1164.all;

Entity mux is
port (i1,i2,i3,i4,s1,s2: in bit;
		y: out bit);
end mux;

Architecture dataflow of mux is
begin
	y <= (i1 and ((not s1) and (not s2))) or (i2 and ((not s1) and ( s2))) or (i3 and (( s1) and (not s2))) or (i4 and (( s1) and ( s2)));
	
		
end dataflow ;