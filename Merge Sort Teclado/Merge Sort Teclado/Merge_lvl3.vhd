library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Merge_lvl3 is

	port(clk: in std_logic;
		  enable: in std_logic;
		  res: in std_logic;
		  inc_dec: in std_logic;
		  n1: in std_logic_vector(3 downto 0);
		  n2: in std_logic_vector(3 downto 0);
		  n3: in std_logic_vector(3 downto 0);
		  n4: in std_logic_vector(3 downto 0);
		  n5: in std_logic_vector(3 downto 0);
		  n6: in std_logic_vector(3 downto 0);
		  n7: in std_logic_vector(3 downto 0);
		  n8: in std_logic_vector(3 downto 0);
		  sortedn1: out std_logic_vector(3 downto 0);
		  sortedn2: out std_logic_vector(3 downto 0);
		  sortedn3: out std_logic_vector(3 downto 0);
		  sortedn4: out std_logic_vector(3 downto 0);
		  sortedn5: out std_logic_vector(3 downto 0);
		  sortedn6: out std_logic_vector(3 downto 0);
		  sortedn7: out std_logic_vector(3 downto 0);
		  sortedn8: out std_logic_vector(3 downto 0);
		  finish: out std_logic);
end Merge_lvl3;


architecture Behavioral of Merge_lvl3 is
	signal s_n1, s_n2, s_n3, s_n4, s_n5, s_n6, s_n7, s_n8, s_sortedn1, s_sortedn2, s_sortedn3, s_sortedn4, s_sortedn5, s_sortedn6, s_sortedn7, s_sortedn8: unsigned(3 downto 0);
	signal s_c1, s_c6 : std_logic;
	signal s_c2, s_c3, s_c4, s_c5 : std_logic_vector(1 downto 0);
	signal s_finish: std_logic:= '0';

begin
	s_n1<=unsigned(n1);
	s_n2<=unsigned(n2);
	s_n3<=unsigned(n3);
	s_n4<=unsigned(n4);
	s_n5<=unsigned(n5);
	s_n6<=unsigned(n6);
	s_n7<=unsigned(n7);
	s_n8<=unsigned(n8);
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(res= '1') then
				s_sortedn1<="0000";
				s_sortedn2<="0000";
				s_sortedn3<="0000";
				s_sortedn4<="0000";
				s_sortedn5<="0000";
				s_sortedn6<="0000";
				s_sortedn7<="0000";
				s_sortedn8<="0000";
				s_finish<='0';
			elsif(enable='1') then
				if(inc_dec='0') then --crescente
					
					--comparação 1
					if(s_n1>s_n5) then
						s_sortedn1<= s_n5;
						s_c1<='1';
					else
						s_sortedn1<= s_n1;
						s_c1<='0';
					end if;
					
					--comparação 2
					if(s_c1='1') then
						if(s_n1>s_n6) then
							s_sortedn2<= s_n6;
							s_c2<="00"; -- 1 e 7
						else
							s_sortedn2<= s_n1;
							s_c2<="01"; -- 2 e 6
						end if;
					else
						if(s_n2>s_n5) then
							s_sortedn2<= s_n5;
							s_c2<="10"; -- 2 e 6
						else
							s_sortedn2<= s_n2;
							s_c2<="11"; -- 3 e 5
						end if;
					end if;
				
					--comparação 3
					if(s_c2="00") then
						if(s_n1>s_n7) then
							s_sortedn3<= s_n7;
							s_c3<="00"; -- 1 e 8
						else
							s_sortedn3<= s_n1;
							s_c3<="01"; -- 2 e 7
						end if;
					elsif((s_c2="01") or (s_c2="10")) then
						if(s_n2>s_n6) then
							s_sortedn3<= s_n6;
							s_c3<="01"; -- 2 e 7
						else
							s_sortedn3<= s_n2;
							s_c3<="10"; -- 3 e 6
						end if;
					else
						if(s_n3>s_n5) then 
							s_sortedn3<= s_n5;
							s_c3<="10"; -- 3 e 6
						else
							s_sortedn3<= s_n3; 
							s_c3<="11"; -- 4 e 5
						end if;
					end if;
					
					--comparação 4
					if(s_c3="00") then	
						if(s_n1>s_n8) then
							s_sortedn4<= s_n8;
							s_sortedn5<= s_n1;
							s_sortedn6<= s_n2;
							s_sortedn7<= s_n3;
							s_sortedn8<= s_n4;
							s_finish <= '1';
							s_c4<="00";
						else
							s_sortedn4<= s_n1; -- 2 e 8
							s_c4<="01";
						end if;
					elsif(s_c3="01") then	
						if(s_n2>s_n7) then
							s_sortedn4<= s_n7; -- 2 e 8
							s_c4<="01";
						else
							s_sortedn4<= s_n2; -- 3 e 7
							s_c4<="10";
						end if;
					elsif(s_c3="10") then	
						if(s_n3>s_n6) then
							s_sortedn4<= s_n6; -- 3 e 7
							s_c4<="10";
						else
							s_sortedn4<= s_n3; -- 4 e 6
							s_c4<="11";
						end if;
					else
						if(s_n4>s_n5) then
							s_sortedn4<= s_n5; -- 4 e 6
							s_c4<="11";
						else
							s_sortedn4<= s_n4;
							s_sortedn5<= s_n5;
							s_sortedn6<= s_n6;
							s_sortedn7<= s_n7;
							s_sortedn8<= s_n8;
							s_finish <= '1';
							s_c4<="00";
						end if;
					end if;
					
					--comparação 5
					if(s_c4="00") then	
					
					--Já não há mais comparações	
					
					elsif(s_c4="01") then	
						if(s_n2>s_n8) then
							s_sortedn5<= s_n8;
							s_sortedn6<= s_n2;
							s_sortedn7<= s_n3;
							s_sortedn8<= s_n4;
							s_finish <= '1';
							s_c5<="01"; 
						else
							s_sortedn5<= s_n2; -- 3 e 8
							s_c5<="10";
						end if;
					elsif(s_c4="10") then	
						if(s_n3>s_n7) then
							s_sortedn5<= s_n7; -- 3 e 8
							s_c5<="10";
						else
							s_sortedn5<= s_n3; -- 4 e 7
							s_c5<="11";
						end if;
					else
						if(s_n4>s_n6) then
							s_sortedn5<= s_n6; -- 4 e 7
							s_c5<="11";
						else
							s_sortedn5<= s_n4;
							s_sortedn6<= s_n6;
							s_sortedn7<= s_n7;
							s_sortedn8<= s_n8;
							s_finish <= '1';
							s_c5<="01";
						end if;
					end if;
					
					--comparação 6
					
					if(s_c5="10") then
						if(s_n3>s_n8) then
							s_sortedn6<=s_n8;
							s_sortedn7<=s_n3;
							s_sortedn8<=s_n4;
							s_finish <= '1';
							s_c6<='0';
						else
							s_sortedn6<=s_n3;
							s_c6<='1';--4 e 8
						end if;
					elsif(s_c5="11") then
						if(s_n4>s_n7)then
							s_sortedn6<=s_n7;
							s_c6<='1';--4 e 8
						else
							s_sortedn6<=s_n4;
							s_sortedn7<=s_n7;
							s_sortedn8<=s_n8;
							s_finish <= '1';
							s_c6<='0';
						end if;
					else
						--Não há mais comparações
					end if;
					
					--comparação 7
					
					if(s_c6='1') then
						if(s_n4>s_n8) then
							s_sortedn7<=s_n8;
							s_sortedn8<=s_n4;
							s_finish <= '1';
						else
							s_sortedn7<=s_n4;
							s_sortedn8<=s_n8;
							s_finish <= '1';
						end if;
					else
						--Não há mais comparações
					end if;
					
				
				else --Decrescente
					
					--comparação 1
					if(s_n1<s_n5) then
						s_sortedn1<= s_n5;
						s_c1<='1';
					else
						s_sortedn1<= s_n1;
						s_c1<='0';
					end if;
					
					--comparação 2
					if(s_c1='1') then
						if(s_n1<s_n6) then
							s_sortedn2<= s_n6;
							s_c2<="00"; -- 1 e 7
						else
							s_sortedn2<= s_n1;
							s_c2<="01"; -- 2 e 6
						end if;
					else
						if(s_n2<s_n5) then
							s_sortedn2<= s_n5;
							s_c2<="10"; -- 2 e 6
						else
							s_sortedn2<= s_n2;
							s_c2<="11"; -- 3 e 5
						end if;
					end if;
				
					--comparação 3
					if(s_c2="00") then
						if(s_n1<s_n7) then
							s_sortedn3<= s_n7;
							s_c3<="00"; -- 1 e 8
						else
							s_sortedn3<= s_n1;
							s_c3<="01"; -- 2 e 7
						end if;
					elsif((s_c2="01") or (s_c2="10")) then
						if(s_n2<s_n6) then
							s_sortedn3<= s_n6;
							s_c3<="01"; -- 2 e 7
						else
							s_sortedn3<= s_n2;
							s_c3<="10"; -- 3 e 6
						end if;
					else
						if(s_n3<s_n5) then 
							s_sortedn3<= s_n5;
							s_c3<="10"; -- 3 e 6
						else
							s_sortedn3<= s_n3; 
							s_c3<="11"; -- 4 e 5
						end if;
					end if;
					
					--comparação 4
					if(s_c3="00") then	
						if(s_n1<s_n8) then
							s_sortedn4<= s_n8;
							s_sortedn5<= s_n1;
							s_sortedn6<= s_n2;
							s_sortedn7<= s_n3;
							s_sortedn8<= s_n4;
							s_finish <= '1';
							s_c4<="00";
						else
							s_sortedn4<= s_n1; -- 2 e 8
							s_c4<="01";
						end if;
					elsif(s_c3="01") then	
						if(s_n2<s_n7) then
							s_sortedn4<= s_n7; -- 2 e 8
							s_c4<="01";
						else
							s_sortedn4<= s_n2; -- 3 e 7
							s_c4<="10";
						end if;
					elsif(s_c3="10") then	
						if(s_n3<s_n6) then
							s_sortedn4<= s_n6; -- 3 e 7
							s_c4<="10";
						else
							s_sortedn4<= s_n3; -- 4 e 6
							s_c4<="11";
						end if;
					else
						if(s_n4<s_n5) then
							s_sortedn4<= s_n5; -- 4 e 6
							s_c4<="11";
						else
							s_sortedn4<= s_n4;
							s_sortedn5<= s_n5;
							s_sortedn6<= s_n6;
							s_sortedn7<= s_n7;
							s_sortedn8<= s_n8;
							s_finish <= '1';
							s_c4<="00";
						end if;
					end if;
					
					--comparação 5
					if(s_c4="00") then	
					
					--Já não há mais comparações	
					
					elsif(s_c4="01") then	
						if(s_n2<s_n8) then
							s_sortedn5<= s_n8;
							s_sortedn6<= s_n2;
							s_sortedn7<= s_n3;
							s_sortedn8<= s_n4;
							s_finish <= '1';
							s_c5<="01"; 
						else
							s_sortedn5<= s_n2; -- 3 e 8
							s_c5<="10";
						end if;
					elsif(s_c4="10") then	
						if(s_n3<s_n7) then
							s_sortedn5<= s_n7; -- 3 e 8
							s_c5<="10";
						else
							s_sortedn5<= s_n3; -- 4 e 7
							s_c5<="11";
						end if;
					else
						if(s_n4<s_n6) then
							s_sortedn5<= s_n6; -- 4 e 7
							s_c5<="11";
						else
							s_sortedn5<= s_n4;
							s_sortedn6<= s_n6;
							s_sortedn7<= s_n7;
							s_sortedn8<= s_n8;
							s_finish <= '1';
							s_c5<="01";
						end if;
					end if;
					
					--comparação 6
					
					if(s_c5="10") then
						if(s_n3<s_n8) then
							s_sortedn6<=s_n8;
							s_sortedn7<=s_n3;
							s_sortedn8<=s_n4;
							s_finish <= '1';
							s_c6<='0';
						else
							s_sortedn6<=s_n3;
							s_c6<='1';--4 e 8
						end if;
					elsif(s_c5="11") then
						if(s_n4<s_n7)then
							s_sortedn6<=s_n7;
							s_c6<='1';--4 e 8
						else
							s_sortedn6<=s_n4;
							s_sortedn7<=s_n7;
							s_sortedn8<=s_n8;
							s_finish <= '1';
							s_c6<='0';
						end if;
					else
						--Não há mais comparações
					end if;
					
					--comparação 7
					
					if(s_c6='1') then
						if(s_n4<s_n8) then
							s_sortedn7<=s_n8;
							s_sortedn8<=s_n4;
							s_finish <= '1';
						else
							s_sortedn7<=s_n4;
							s_sortedn8<=s_n8;
							s_finish <= '1';
						end if;
					else
						--Não há mais comparações
					end if;
			
				end if;
			end if;
		end if;
	end process;	
					
	finish<= s_finish;
	sortedn1<= std_logic_vector(s_sortedn1);
	sortedn2<= std_logic_vector(s_sortedn2);
	sortedn3<= std_logic_vector(s_sortedn3);
	sortedn4<= std_logic_vector(s_sortedn4);
	sortedn5<= std_logic_vector(s_sortedn5);
	sortedn6<= std_logic_vector(s_sortedn6);
	sortedn7<= std_logic_vector(s_sortedn7);
	sortedn8<= std_logic_vector(s_sortedn8);
end Behavioral;