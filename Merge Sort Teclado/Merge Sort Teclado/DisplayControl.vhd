library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DisplayControl is
	port(clk: in std_logic;
		  reset: in std_logic;
		  show: in std_logic;
		  merge_activated: in std_logic;
		  finish: in std_logic;
		  sel: out std_logic_vector(1 downto 0));
end DisplayControl;


architecture Behavioral of DisplayControl is
	type fstate is(s_hide, s_showlvl1, s_showlvl2, s_showlvl3);
	signal s_currentstate, s_nextstate: fstate;

begin

	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= s_hide;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;
	
	comb_proc : process(s_currentstate, finish, merge_activated, show)
	begin
		case(s_currentstate) is
		when s_hide=>
			s_nextstate<= s_hide;
			sel<="00";
			if ((finish='1')) then
				s_nextstate<= s_showlvl3;
			else
				s_nextstate<= s_hide;
			end if;	
		
		when s_showlvl1=>
			s_nextstate<= s_showlvl1;
			sel<="01";
			if(show='1') then
				s_nextstate<= s_showlvl2;
			else
				s_nextstate<= s_showlvl1;
			end if;	
		
		when s_showlvl2=>
			s_nextstate<= s_showlvl2;
			sel<="10";
			if(show='1') then
				s_nextstate<= s_showlvl3;
			else
				s_nextstate<= s_showlvl2;
			end if;
			
		
		when s_showlvl3=>
			s_nextstate<= s_showlvl3;
			sel<="11";
			if(show='1') then
				s_nextstate<= s_showlvl1;
			else	
				s_nextstate<= s_showlvl3;
			end if;	
			
		end case;
	end process;
end Behavioral;	