package vhdl_package is
	type vhdl_int is range 0 to 50;
	type vhdl_frac is range 0.0 to 2.0;
	constant c1: integer:=10;
	function bin(x: integer) return 	std_logic_vector;
end package vhdl_package;

package body vhdl_package is
	function bin(x: integer) return std_logic_vector is
		variable z : std_logic_vector(7 downto 0);
		variable y: integer := x ;
		variable i: integer := 0;
		begin 
			while (y>0) loop
				if y mod 2 = 0 then
					z(i) := '0';
				else
					z(i) := '1';
				end if;
					y := y/2;
				i := i+ 1;
			end loop;
		return z;
	end bin;
end package body vhdl_package;