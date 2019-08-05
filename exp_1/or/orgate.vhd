library ieee;
use ieee.std_logic_1164.all;

Entity orgate is 
port (a,b: in bit;
		c: out bit);
end orgate;

Architecture dataflow of orgate is 
begin 
c <= a or b;
end dataflow;