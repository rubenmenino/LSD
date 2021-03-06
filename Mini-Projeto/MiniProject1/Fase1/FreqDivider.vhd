library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity FreqDivider is    
	port(clkIn  : in  std_logic;
		  clkOut : out std_logic); 
end FreqDivider;


architecture Behavioral of FreqDivider is    
	
	constant k       : std_logic_vector(31 downto 0):= "00000010111110101111000010000000";
	signal s_counter : natural;    
	signal s_halfWay : unsigned(31 downto 0);
begin
	s_halfWay <= (unsigned(k) / 2);
	
	process (clkIn)
	begin
		if	(rising_edge(clkIn)) then
			if	(s_counter= unsigned(k)-1) then
				clkOut <= '0';
				s_counter<= 0;
			else
				if (s_counter= s_halfway - 1) then
					clkOut<= '1';
				end if;	
				s_counter<= s_counter+1;
			end if;
		end if;
	end process;
end Behavioral;	