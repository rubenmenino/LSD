library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

entity Mux2_1 is
	port (dataIn0 : in std_logic_vector(3 downto 0);
			dataIn1 : in std_logic_vector(2 downto 0);
			dataIn2 : in std_logic_vector(3 downto 0);
			dataIn3 : in std_logic_vector(2 downto 0);
			dataIn4 : in std_logic_vector(3 downto 0);
			dataIn5 : in std_logic_vector(2 downto 0);
			dataIn6 : in std_logic_vector(3 downto 0);
			dataIn7 : in std_logic_vector(2 downto 0);
			sel: in std_logic;
			dataOut0: out std_logic_vector(3 downto 0);
			dataOut1: out std_logic_vector(2 downto 0);
			dataOut2: out std_logic_vector(3 downto 0);
			dataOut3: out std_logic_vector(2 downto 0)); 
end Mux2_1;

architecture BehavProc of Mux2_1 is
begin
	process(sel, dataIn0, dataIn1, dataIn2, dataIn3, dataIn4, dataIn5, dataIn6, dataIn7)
	begin
		if (sel= '0') then
			dataOut0 <= dataIn0;
			dataOut1 <= dataIn1;
			dataOut2 <= dataIn2;
			dataOut3 <= dataIn3;
		elsif (sel='1') then
			dataOut0 <= dataIn4;
			dataOut1 <= dataIn5;
			dataOut2 <= dataIn6;
			dataOut3 <= dataIn7;
		end if;
	end process;	
end BehavProc;