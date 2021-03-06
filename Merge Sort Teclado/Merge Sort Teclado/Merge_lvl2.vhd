library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Merge_lvl2 is

	port(clk: in std_logic;
		  enable: in std_logic;
		  res: in std_logic;
		  inc_dec: in std_logic;
		  n1: in std_logic_vector(3 downto 0);
		  n2: in std_logic_vector(3 downto 0);
		  n3: in std_logic_vector(3 downto 0);
		  n4: in std_logic_vector(3 downto 0);
		  sortedn1: out std_logic_vector(3 downto 0);
		  sortedn2: out std_logic_vector(3 downto 0);
		  sortedn3: out std_logic_vector(3 downto 0);
		  sortedn4: out std_logic_vector(3 downto 0);
		  nextlevel: out std_logic);
end Merge_lvl2;


architecture Behavioral of Merge_lvl2 is
	signal s_n1, s_n2, s_n3, s_n4, s_sortedn1, s_sortedn2, s_sortedn3, s_sortedn4: unsigned(3 downto 0);
	signal s_c : std_logic;
	signal s_nextlevel: std_logic:= '0';

begin
	s_n1<=unsigned(n1);
	s_n2<=unsigned(n2);
	s_n3<=unsigned(n3);
	s_n4<=unsigned(n4);
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(res='1') then
				s_nextlevel<='0';
				s_sortedn1<="0000";
				s_sortedn2<="0000";
				s_sortedn3<="0000";
				s_sortedn4<="0000";
			elsif(enable='1') then
				s_nextlevel <= '1';
				if(inc_dec='0') then --crescente
					
					-- comparação 1
					if(s_n1 > s_n3) then 
						s_sortedn1<= s_n3;
						s_c <= '1';
					else
						s_sortedn1<=s_n1;
						s_c <= '0';
					end if;
					
					--comparação 2
					
					if(s_c= '1') then
						if(s_n1 >= s_n4) then
							s_sortedn2<= s_n4;
							s_sortedn3<= s_n1;
							s_sortedn4<= s_n2;
						elsif(s_n2 >= s_n4) then
							s_sortedn2<= s_n1;
							s_sortedn3<= s_n4;
							s_sortedn4<= s_n2;
						else
							s_sortedn2<= s_n1;
							s_sortedn3<= s_n2;
							s_sortedn4<= s_n4;
						end if;	
					else
						if(s_n3 >= s_n2) then
							s_sortedn2<= s_n2;
							s_sortedn3<= s_n3;
							s_sortedn4<= s_n4;
						elsif(s_n4 >= s_n2) then
							s_sortedn2<= s_n3;
							s_sortedn3<= s_n2;
							s_sortedn4<= s_n4;
						else
							s_sortedn2<= s_n3;
							s_sortedn3<= s_n4;
							s_sortedn4<= s_n2;
						end if;
					end if;	
						
				else --decrescente
					
					--comparação 1
					if(s_n3 > s_n1) then
						s_sortedn1<= s_n3;
						s_c<= '1';
					else
						s_sortedn1<= s_n1;
						s_c <= '0';
					end if;
					
					--comparação 2
					
					if(s_c= '1') then
						if(s_n4 >= s_n1) then
							s_sortedn2<= s_n4;
							s_sortedn3<= s_n1;
							s_sortedn4<= s_n2;
						elsif(s_n4 >= s_n2) then
							s_sortedn2<= s_n1;
							s_sortedn3<= s_n4;
							s_sortedn4<= s_n2;
						else
							s_sortedn2<= s_n1;
							s_sortedn3<= s_n2;
							s_sortedn4<= s_n4;
						end if;	
					else
						if(s_n2 >= s_n3) then
							s_sortedn2<= s_n2;
							s_sortedn3<= s_n3;
							s_sortedn4<= s_n4;
						elsif(s_n2 >= s_n4) then
							s_sortedn2<= s_n3;
							s_sortedn3<= s_n2;
							s_sortedn4<= s_n4;
						else
							s_sortedn2<= s_n3;
							s_sortedn3<= s_n4;
							s_sortedn4<= s_n2;
						end if;
					end if;	
				end if;
			end if;
		end if;
	end process;	
					
	nextlevel<= s_nextlevel;
	sortedn1<= std_logic_vector(s_sortedn1);
	sortedn2<= std_logic_vector(s_sortedn2);
	sortedn3<= std_logic_vector(s_sortedn3);
	sortedn4<= std_logic_vector(s_sortedn4);
end Behavioral;