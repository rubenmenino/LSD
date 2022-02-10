library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity InsertedCount is
	port( clk: in std_logic;
			res: in std_logic;
			enable: in std_logic;
			count: out std_logic_vector(2 downto 0);
			isFull: out std_logic);
end InsertedCount;


architecture Behavioral of InsertedCount is
	signal s_count: unsigned(2 downto 0):= "000";

begin	
	
	process(clK)
	begin
		if (rising_edge(clk)) then
			if (res= '1') then
				s_count<= "000";
			else
				if(enable='1') then
					s_count<= s_count + 1;
				else
					s_count<= s_count;
				end if;
			end if;
			if (s_count="111") then
				isFull<= '1';
			else
				isFull<= '0';
			end if;	
		end if;
	end process;	
	count<= std_logic_vector(s_count);
end Behavioral;