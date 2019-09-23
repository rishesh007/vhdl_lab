library ieee;
use ieee.std_logic_1164.all;

entity HA is
	port(a,b : in bit;
		 s,c : out bit);
end HA;

architecture dataflow of HA is
	begin
		s<= A xor B;
		c <= A and B;
end dataflow;