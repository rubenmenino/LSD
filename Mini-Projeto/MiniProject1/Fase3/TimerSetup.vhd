library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerSetup is
	port (sec0Set     : in std_logic;
			sec1Set     : in std_logic;
			min0Set     : in std_logic;
			min1Set     : in std_logic;
			enable      : in std_logic;
			sec0Out     : out std_logic_vector(3 downto 0);
			sec1Out     : out std_logic_vector(2 downto 0);
			min0Out     : out std_logic_vector(3 downto 0);
			min1Out     : out std_logic_vector(2 downto 0));
end TimerSetup;


architecture BehavProc of TimerSetup is

	signal s_min0, s_sec0 : unsigned (3 downto 0):= "1001";
	signal s_min1, s_sec1 : unsigned (2 downto 0):= "101";

begin
	process(enable, sec0Set, sec1Set, min0Set, min1Set)
	begin
		
		if (enable= '1') then
			
			if (rising_edge(sec0Set)) then
				if	(s_sec0 > 0) then
						s_sec0<= s_sec0 - 1;
				else
						s_sec0<= "1001";
				end if;		
			end if;
		
			if (rising_edge(sec1Set)) then
				if	(s_sec1 > 0) then
						s_sec1<= s_sec1 - 1;
				else
						s_sec1<= "101";
				end if;		
			end if;
						if (rising_edge(min0Set)) then
				if	(s_min0 > 0) then
						s_min0<= s_min0 - 1;
				else
						s_min0<= "1001";
				end if;		
			end if;
			
			if (rising_edge(min1Set)) then
				if	(s_min1 > 0) then
						s_min1<= s_min1 - 1;
				else
						s_min1<= "101";
				end if;		
			end if;
				
		end if;	
	end process;
	sec0Out<= std_logic_vector(s_sec0);
	sec1Out<= std_logic_vector(s_sec1);
	min0Out<= std_logic_vector(s_min0);
	min1Out<= std_logic_vector(s_min1);
end BehavProc;	