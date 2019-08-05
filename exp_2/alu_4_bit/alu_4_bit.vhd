library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

Entity alu_4_bit is
port (A,B: in std_logic_vector(3 downto 0);
	  s: in std_logic_vector(2 downto 0);
	  y: out std_logic_vector(3 downto 0));
end alu_4_bit;

Architecture dataflow of alu_4_bit is
begin
	with s select
		y <= A + B when "000",
			 A - B when "001",
			 A and B when "010",
			 A or B when "011",
			 A xor B when "100",
			 A nand B when "101",
			 A nor B when "110",
			 A xnor B when "111",
			 "0000" when others;
end dataflow ;
