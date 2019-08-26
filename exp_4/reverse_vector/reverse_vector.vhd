library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

Entity reverse_vector is
	generic(N : integer := 8);
	  port (A: in std_ulogic_vector(N-1 downto 0);
			S1,S2,S3: out std_ulogic_vector(N-1 downto 0));
end reverse_vector;

Architecture behave of reverse_vector is
begin	
	process(A)
		begin
			for i in 0 to N-1 loop
				S1(N-1-i) <= A(i);
			end loop;
			for i in A'reverse_range loop
				S2(N-1-i) <= A(i);
			end loop;
			for i in A'range loop
				S3(N-1-i) <= A(i);
			end loop;
	end process;	
end behave ;
