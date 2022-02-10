library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ControlUnit is
	port( clk: in std_logic;
			reset: in std_logic;
			insert: in std_logic;
			load: in std_logic;
			inc_dec: in std_logic;
			full: in std_logic;
			merge: in std_logic;
			out_user: out std_logic;
			out_load: out std_logic;
			out_inc_dec: out std_logic;
			out_merge: out std_logic;
			out_count: out std_logic);
end ControlUnit;


architecture Behavioral of ControlUnit is
	type fstate is(ini, rand, user, ins, inc, dec, sort);
	signal s_currentstate, s_nextstate: fstate;

begin

	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= ini;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;
	
	comb_proc : process(s_currentstate, full, insert, load, inc_dec, merge)
	begin
		case (s_currentstate) is
		when ini=>
			s_nextState<= ini;
			out_user <= '0';
			out_load <= '0';
			out_inc_dec<= '0';
			out_merge<= '0';
			out_count<= '0';
			if (insert='1') then
				s_nextState<= user;
			elsif(insert='0') then	
				s_nextState<= rand;
			else
				s_nextState<= ini;
			end if;
		
		when rand=>
			s_nextState<= rand;
			out_user <= '0';
			out_load <= '0';
			out_inc_dec<= '0';
			out_merge<= '0';
			out_count <= '0';
			if (load='1') then
				s_nextState<= ins;
			elsif ((not((load='1'))	and (insert='1'))) then
				s_nextState<= user;
			else	
				s_nextState<= rand;
			end if;	

		when user=>
			s_nextState<= user;
			out_user <= '1';
			out_load <= '0';
			out_inc_dec<= '0';
			out_merge<= '0';
			out_count <= '0';
			if (load='1') then
				s_nextState<= ins;
			elsif ((not((load='1'))	and (insert='0'))) then
				s_nextState<= rand;
			else	
				s_nextState<= user;
			end if;	
			
		when ins=>
			s_nextState<= ins;
			out_count<= '1';
			out_load <= '1';
			out_inc_dec<= '0';
			out_merge<= '0';
			if ((full='1') and (inc_dec='1')) then
				s_nextState<= dec;
			elsif ((full='1') and (not(inc_dec='1'))) then
				s_nextState<= inc;
			elsif ((not(full='1')) and (insert='1')) then	
				s_nextState<= user;
			elsif ((not(full='1')) and (not(insert='1'))) then	
				s_nextState<= rand;
			else
				s_nextState<= ins;
			end if;
		
		when inc=>
			s_nextState<= inc;
			out_count<= '0';
			out_load <= '0';
			out_user<= '0';
			out_inc_dec <= '0';
			out_merge<= '0';
			if (merge='1') then
				s_nextState<= sort;
			elsif ((not((merge='1')) and (inc_dec='1'))) then
				s_nextState<= dec;
			else	
				s_nextState<= inc;
			end if;
		
		when dec=>
			s_nextState<= dec;
			out_count<= '0';
			out_load <= '0';
			out_user<= '0';
			out_inc_dec <= '1';
			out_merge<= '0';
			if (merge='1') then
				s_nextState<= sort;
			elsif ((not((merge='1')) and (inc_dec='0'))) then
				s_nextState<= inc;
			else	
				s_nextState<= dec;
			end if;
		
		when sort=>
			s_nextState<= sort;
			out_count<= '0';
			out_load <= '0';
			out_user<= '0';
			out_merge <= '1';
			

		end case;
	end process;	
end Behavioral;