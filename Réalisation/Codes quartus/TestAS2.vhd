library ieee;
use ieee.std_logic_1164.all;

entity TestAS2 is
port(
	switch : in std_logic_vector (9 downto 0);
	button : in std_logic_vector (3 downto 0);
	ledR : out std_logic_vector (9 downto 0);
	ledV : out std_logic_vector(7 downto 0)
	);
end entity;

architecture dataflow of TestAS2 is
signal led_R : std_logic_vector (9 downto 0);
signal led_V : std_logic_vector(7 downto 0);
begin
	process(switch, button)
	variable i,j : integer := 0;
	begin
		loop1: for i in 0 to 9 loop
			if (switch(i) = '1') then
				led_R(i) <= '1';
			else
				led_R(i) <= '0';
			end if;
		end loop loop1;
		loop2: for j in 0 to 3 loop
			if (button(j) = '0') then
				led_V(j) <= '1';
				led_V(7-j) <= '1';
			else
				led_V(j) <= '0';
				led_V(7-j) <= '0';
			end if;
		end loop loop2;
	end process;
	ledR <= led_R;
	ledV <= led_V;
end dataflow;