library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.ALL;  

entity sleep_sort is
	port(	clk		: in std_logic;
    		reset		: in std_logic;
    		data		: in std_logic_vector (3 downto 0);
			ready		: out std_logic := '0'
    	);
end sleep_sort;

architecture algorithm of sleep_sort is
begin
	sleep : process(clk)
    variable clock_pulse : std_logic_vector(3 downto 0) := (others => '0');
	 variable used			 : std_logic := '0';
	 --variable seconds : integer range 0 to 2;--50000000; -- 1 segundo para um clk de 50mhz
    begin
    	if (rising_edge(clk)) then
        	if (reset = '1') then
				ready 		<= '0';
				clock_pulse := (others => '0');
			elsif (clock_pulse < data) then
				clock_pulse 	:= std_logic_vector(unsigned(clock_pulse) + 1);
			else
				if (used = '0') then
					ready <= '1';
					used 	:= '1';
				else
					ready <= '0';
				end if;
         end if;
      end if;
   end process sleep;
end algorithm;