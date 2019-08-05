library ieee;
use ieee.std_logic_1164.all;

Entity mux is
port (I: in std_logic_vector(3 downto 0);
	  s: in std_logic_vector(1 downto 0);
	  y: out std_logic);
end mux;

Architecture dataflow of mux is
begin
	with s select
		y <= I(0) when "00",
			 I(1) when "01",
			 I(2) when "10",
			 I(3) when "11",
			 '0' when others;
end dataflow ;
