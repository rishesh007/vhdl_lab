library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity hammer_game is
port( 	clk,rst: in std_logic;
		switch: in std_logic_vector(2 downto 0);
		win: out integer range 0 to 10;
		--ffirst,ssecond,tthird: out integer range 0 to 127;
		led: out std_logic_vector(2 downto 0));
end hammer_game;

Architecture behave of hammer_game is

type int_arr is array (2 downto 0) of integer;
type binary_values is array (2 downto 0) of std_logic_vector(2 downto 0);
signal ssclk,ssrst,sclk,srst: std_logic;
signal temp,temp2: std_logic_vector(100 downto 0);
signal led_index: int_arr:=(2,0,1);
signal led_value: binary_values := ("001","010","100");
signal i: integer :=0;
signal led_value_single: std_logic_vector(2 downto 0);
signal win_var:integer:=0;
--begin
--signal ff,ss,tt: integer :=0;
begin
Process(clk,rst)
begin
	if clk'event and clk = '1' then
		--ff<=ff+1;
		--ffirst<=ff;
		if rst ='1' then
			temp <= (others => '0');
			srst <= '1';
		else
			temp <= temp + 1;
			sclk <= temp(2);
			
			if temp(3) = '1' then
				srst <= '0';
			else 
				null;
			end if;
		end if;
		if temp > "0011" then
			if rst ='1' then
				temp2 <= (others => '0');
				ssrst <= '1';
			else
				temp2 <= temp2 + 1;
				ssclk <= temp2(2);
				
				if temp2(3) = '1' then
					ssrst <= '0';
				else 
					null;
				end if;
			end if;
		end if;
	end if;
	
end Process;

process(sclk,srst)
begin
	if sclk'event and sclk = '1' then
		--i<=i+1;
		--ssecond<=i;
		i <= i+1;
		led <= led_value(led_index(i-1 mod 3));
	end if;
	
end process;

process(ssclk,ssrst)
begin
	if ssclk'event and ssclk = '1' then
		--i<=i+1;
		--tthird<=i;
		if  switch = led_value(led_index(i mod 3)) then
			win_var <= win_var+1;
			win <=win_var;
		end if;
	end if;
end process;
end behave;
