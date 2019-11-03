library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

package main is 
	type myint is range 0 to 50;
	type myfrac is range 0.0 to 2.0;
	constant c1: integer:=2;
	function convert(I:myint) return std_logic_vector;
end main;

package body main is
	
	function convert(I: myint) return std_logic_vector is 
		variable bin: std_logic_vector(7 downto 0);
		variable num: myint:= I; 
		begin
		for i in 0 to 7 loop
			
			if (num mod 2) = 0 then
				bin(i) := '0';
			else
				bin(i) := '1';
			end if;
			
			num := num / 2;
			
		end loop;	
		return bin;
	end convert;
end main;
