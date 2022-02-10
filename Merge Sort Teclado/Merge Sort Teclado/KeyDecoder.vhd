library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity KeyDecoder is

	port(clock: in std_logic;
	     reset: in std_logic;
		  enable: in std_logic;
	     key_code: in std_logic_vector(7 downto 0);
		  valid_key_code: in std_logic;
		  dataOut: out std_logic_vector(3 downto 0));
end KeyDecoder;


architecture Behavioral of KeyDecoder is
	
	signal last_key_code: std_logic_vector(7 downto 0);
	signal s_dataOut: std_logic_vector(3 downto 0);

begin
	
	
	process(clock) is
	begin
	if rising_edge(clock) then
      if reset = '1' then
				s_dataOut<="0000";
		else		
			if valid_key_code = '1' and enable='1' then
				last_key_code <= key_code;			
				if key_code = X"16" then if last_key_code = X"F0" then s_dataOut <= "0001";end if;-- 1 key
				elsif key_code = X"1E" then if last_key_code = X"F0" then s_dataOut <= "0010";end if;-- 2 key
				elsif key_code = X"26" then if last_key_code = X"F0" then s_dataOut <= "0011";end if; -- 3 key
				elsif key_code = X"25" then if last_key_code = X"F0" then s_dataOut <= "0100";end if; -- 4 key
				elsif key_code = X"2E" then if last_key_code = X"F0" then s_dataOut <= "0101";end if; -- 5 key
				elsif key_code = X"36" then if last_key_code = X"F0" then s_dataOut <= "0110";end if; -- 6 key
				elsif key_code = X"3D" then if last_key_code = X"F0" then s_dataOut <= "0111";end if; -- 7 key
				elsif key_code = X"3E" then if last_key_code = X"F0" then s_dataOut <= "1000";end if; -- 8 key
				elsif key_code = X"46" then if last_key_code = X"F0" then s_dataOut <= "1001";end if; -- 9 key
				elsif key_code = X"45" then if last_key_code = X"F0" then s_dataOut <= "0000";end if; -- 0 key
				elsif key_code = X"1C" then if last_key_code = X"F0" then s_dataOut <= "1010";end if; -- A key
				elsif key_code = X"32" then if last_key_code = X"F0" then s_dataOut <= "1011";end if; -- B key
				elsif key_code = X"21" then if last_key_code = X"F0" then s_dataOut <= "1100";end if; -- C key
				elsif key_code = X"23" then if last_key_code = X"F0" then s_dataOut <= "1101";end if; -- D key
				elsif key_code = X"24" then if last_key_code = X"F0" then s_dataOut <= "1110";end if; -- E key
				elsif key_code = X"2B" then if last_key_code = X"F0" then s_dataOut <= "1111";end if; -- F key
				else 
				end if;
		  end if;
      end if;
    end if;
  end process;	

  dataOut<= s_dataOut;
end Behavioral;