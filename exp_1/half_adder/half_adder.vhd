library ieee;
use ieee.std_logic_1164.all;

Entity half_adder is
port (a,b: in bit;
	  c,s: out bit);
end half_adder;

Architecture dataflow of half_adder is
begin
	s <= a xor b;
	c <= a and b;
end dataflow ;