library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity the_game is 
port(rst: in std_logic;
	user: in std_logic_vector(8 downto 0);
	clk: in std_logic;
	power: out std_logic;
	score: out std_logic_vector(27 downto 0);
	led: inout std_logic_vector(8 downto 0));
end the_game;

architecture play of the_game is
signal q: std_logic_vector(3 downto 0);
signal sclk,srst: std_logic;
signal temp: std_logic_vector(25 downto 0);
Begin 
Process(clk,rst)
Begin
	if clk'event and clk = '1' then
		if rst ='1' then
			temp <= (others => '0');
			srst <= '1';
		else
			temp <= temp + 1;
			sclk <= temp(24);
			
			if temp(25) = '1' then
				srst <= '0';
			else 
				null;
			end if;
		end if;
	end if;
end Process;

function int_2_7segment(mmod: integer) return std_logic_vector is
variable y: std_logic_vector(6 downto 0); 
begin
	case mmod is
		when 0 => y <= "1111110";
		when 1 => y <= "0110000";
		when 2 => y <= "1101101";
		when 3 => y <= "1111001";
		when 4 => y <= "0110011";
		when 5 => y <= "1011011";
		when 6 => y <= "1011111";
		when 7 => y <= "1110000";
		when 8 => y <= "1111111";
		when 9 => y <= "1111011";
		when others => y <= "0000000";
	end case;
	return y;
end int_2_7segment;

Process(sclk, srst)
variable i:integer:=0;
variable prv_out:std_logic_vector(8 downto 0):=  (others=>'0');
variable count:integer:=0;
variable ccount:integer;
variable j:integer:=0;
variable mmod:integer;
variable y:std_logic_vector(6 downto 0);
begin
	if srst = '0' then
		led <= (others => '0');
		power <= '0';
		score <= (others => '0');
	elsif sclk = '1' and sclk'event then
		if prv_out = user then
			count:=count+1;
			ccount:=count;
			j:=0;
			while(ccount>0) loop
				mmod:= ccount mod 10;
				y := int_2_7segment(mmod);
				score(7*j + 6 downto 7*j + 0):=y;
				ccount := ccount/10;
				j:=j+1;
			end loop;
		else
			null;
		end if;
		led <= (others => '0');
		led(i) <= 1;
		power <= 1;
		i:= (i+1) mod 9;
		prv_out := led;
	else
		null;
	end if;
end process;
end play;