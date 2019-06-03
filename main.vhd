library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.ALL;  

entity main is
	port(clk		: in std_logic;
	     reset		: in std_logic;
	     result	: out std_logic_vector(3 downto 0);
	     display	: out std_logic_vector(6 downto 0)
	    );
end main;

architecture arq of main is
	component sleep_sort is
		port (clk		: in std_logic;
		      reset		: in std_logic;
		      data		: in std_logic_vector (3 downto 0);
		      ready		: out std_logic
		     );
	end component;
	
	component display7seg is
		port (data	:	in std_logic_vector(3 downto 0);
		      output:	out std_logic_vector(6 downto 0)
		     );
	end component;

	subtype word is STD_LOGIC_VECTOR (3 downto 0);
	type memory_table is array (0 to 3) of word;
	
	function init_table return memory_table is
		variable tmp : memory_table;
	begin
		tmp(0)	:= "0110";
		tmp(1)	:= "0010";
		tmp(2)	:= "0001";
		tmp(3)	:= "0011";
		return tmp;
	end init_table;
	
	function result_table return memory_table is
		variable tmp : memory_table;
	begin
		tmp(0)	:= (others => '0');
		tmp(1)	:= (others => '0');
		tmp(2)	:= (others => '0');
		tmp(3)	:= (others => '0');
		return tmp;
	end result_table;
	
	signal table			: memory_table := init_table;
	signal output_table		: memory_table := result_table;
	signal data			: std_logic_vector (3 downto 0) := (others => '0');
	signal bus_ready		: std_logic_vector (3 downto 0) := (others => '0');
	
begin
	g_sp : for I in 0 to 3 generate
		sp : sleep_sort port map(clk => clk, reset => reset, data => table(I), ready => bus_ready(I));
	end generate g_sp;
			
	d1 : display7seg 	port map(data => data, output => display);
	
	read_list : process(clk)
		variable t 		: integer range 0 to 4 := 0;
		variable counter 	: integer range 0 to 3 := 0;
		variable delay		: std_logic_vector(31 downto 0) := (others => '0');
	begin
		if (rising_edge(clk)) then
			if (t /= 4) then
				ffs: for J in 3 downto 0 loop
					if (bus_ready(J) = '1') then
						output_table(t)	<= table(J);
						t 		:= t + 1;
					end if;
				end loop;
			else
				if (delay < "00000011111111111111111111111111")then
					delay 	:= std_logic_vector(unsigned(delay) + 1);
				else
					result 	<= output_table(counter);
					data	<= output_table(counter);
					counter	:= counter + 1;
					delay	:= (others => '0');
				end if;
			end if;
		end if;
   	end process read_list;
end arq;
