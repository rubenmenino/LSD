library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegister is
	port( clk: in std_logic;
			res: in std_logic;
			enable: in std_logic;
			dataIn : in std_logic_vector(3 downto 0);
			dataOut7: out std_logic_vector(3 downto 0);
			dataOut6: out std_logic_vector(3 downto 0);
			dataOut5: out std_logic_vector(3 downto 0);
			dataOut4: out std_logic_vector(3 downto 0);
			dataOut3: out std_logic_vector(3 downto 0);
			dataOut2: out std_logic_vector(3 downto 0);
			dataOut1: out std_logic_vector(3 downto 0);
			dataOut0: out std_logic_vector(3 downto 0));
end ShiftRegister;

architecture Behavioral of ShiftRegister is
	signal s_dataOut: std_logic_vector(31 downto 0);
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(res='1') then
				s_dataOut<= (others=>'0');
			else
				if(enable='1') then
					s_dataOut<= s_dataOut(27 downto 0) & dataIn;
				end if;
			end if;
		end if;
	end process;	
		
	dataOut0<= std_logic_vector(s_dataOut(31 downto 28));
	dataOut1<= std_logic_vector(s_dataOut(27 downto 24));
	dataOut2<= std_logic_vector(s_dataOut(23 downto 20));
	dataOut3<= std_logic_vector(s_dataOut(19 downto 16));
	dataOut4<= std_logic_vector(s_dataOut(15 downto 12));
	dataOut5<= std_logic_vector(s_dataOut(11 downto 8));
	dataOut6<= std_logic_vector(s_dataOut(7 downto 4));
	dataOut7<= std_logic_vector(s_dataOut(3 downto 0));
	
end Behavioral;			
	