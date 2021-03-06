library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Register1bit is

	port(clk: in std_logic;
		  dataIn: in std_logic;
		  dataOut: out std_logic);
end Register1bit;


architecture Behavioral of Register1bit is

	signal s_dataOut: std_logic;

begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			s_dataOut<= dataIn;
		end if;
	end process;
	
	dataOut<= s_dataOut;
end Behavioral;	