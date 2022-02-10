library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimeCounter is
	port( clk   : in std_logic;
			res   : in std_logic;
			start : in std_logic;
			sec0  : out std_logic_vector(3 downto 0);
			sec1  : out std_logic_vector(2 downto 0);
			min0  : out std_logic_vector(3 downto 0);
			min1  : out std_logic_vector(2 downto 0);
			stop  : out std_logic);
end TimeCounter;



architecture BehavProc of TimeCounter is
	signal s_min0, s_sec0 : unsigned (3 downto 0):= "1001";
	signal s_min1, s_sec1 : unsigned (2 downto 0):= "101";
	
begin
	process (clk,res)
	begin
		if (res= '1') then
			s_min0 <= "1001";
         s_sec0 <= "1001";
         s_min1 <= "101";
         s_sec1 <= "101";
			stop <= '0';
		elsif (rising_edge (clk)) then
			if (start= '1') then
				if (s_min1= 0 and s_min0= 0 and s_sec1= 0 and s_sec0= 0) then
					stop<= '1';
				else	
					if (s_min0= 0 and s_sec1= 0 and s_sec0= 0) then
						s_min1<= s_min1 - 1;
						s_min0<= "1001";
						s_sec1<= "101";
						s_sec0<= "1001";
					elsif (s_sec1= 0 and s_sec0= 0) then
						s_min0<= s_min0 - 1;
						s_sec1<= "101";
						s_sec0<= "1001";
					elsif(s_sec0= 0) then
						s_sec1<= s_sec1 - 1;
						s_sec0<= "1001";	
					else
						s_sec0<= s_sec0 - 1;
					end if;	
				end if;	
			end if;	
		end if;	
 	end process;
	sec0 <= std_logic_vector(s_sec0);
	sec1 <= std_logic_vector(s_sec1);
	min0 <= std_logic_vector(s_min0);
	min1 <= std_logic_vector(s_min1);
end BehavProc;