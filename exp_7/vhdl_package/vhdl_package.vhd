library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
library Packages;
use Packages.main.all;

entity vhdl_package is
port( I: in myint;
	  y: out std_logic_vector(7 downto 0));
end vhdl_package;

Architecture behave of vhdl_package is
begin
	y <= convert(I);
end behave;