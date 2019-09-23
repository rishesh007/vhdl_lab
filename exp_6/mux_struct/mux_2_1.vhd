library ieee;
use ieee.std_logic_1164.all;

entity mux_2_1 is
port( I1,I2: in std_logic;
	  S: in std_logic;
	  Y: out std_logic);
end mux_2_1;

Architecture behave of mux_2_1 is
Begin
	Y <= ((not S) and I1 ) or (S and I2);
end behave;
