library ieee;
use ieee.std_logic_1164.all;

Entity full_adder is
port (a,b, cin: in bit;
	  cout,s: out bit);
end full_adder;

Architecture dataflow of full_adder is
begin
	s <= a xor b xor cin;
	cout <= (a and b) or (cin and (a xor b));
end dataflow ;
