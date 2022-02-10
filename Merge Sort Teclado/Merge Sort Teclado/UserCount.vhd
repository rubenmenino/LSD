library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity UserCount is
	port( clk: in std_logic;
			res: in std_logic;
			enable: in std_logic;
			up: in std_logic;
			down: in std_logic;
			count: out std_logic_vector(3 downto 0));
end UserCount;


architecture Behavioral of UserCount is
	signal s_count: unsigned(3 downto 0):= "0000";

begin	
	
	process(clK)
	begin
		if (rising_edge(clk)) then
			if (res= '1') then
				s_count<= "0000";
			else
				if(enable='1') then
					if(up= '1') then
						s_count<= s_count + 1;
					elsif(down = '1') then
						s_count<= s_count - 1;
					else
						s_count<= s_count;
					end if;	
				end if;
			end if;	
		end if;
	end process;	
	count<= std_logic_vector(s_count);
end Behavioral;