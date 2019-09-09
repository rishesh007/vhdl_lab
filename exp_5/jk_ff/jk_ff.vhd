library ieee;
use ieee.std_logic_1164.all;

entity jk_ff is
port (J, rst, K, clk: in std_logic;
		Q :out std_logic);
end jk_ff;

Architecture behave of jk_ff is
Begin 

Process(clk,rst)
variable jk: std_logic_vector(1 downto 0);
variable Qn: std_logic:='0';

Begin
	jk(0) := K;
	jk(1) := J;

	if rst = '0' then
		Q <= '0';
	elsif clk'event and clk = '1' then
		case jk is
			when "00" => Q <= Qn;
			when "01" => Q <= '0';
			when "10" => Q <= '1';
			when "11" => Q <= not Qn;
			when others => Q <= '0';
		end case;
	else null;
	end if;
end process;
end behave;
	