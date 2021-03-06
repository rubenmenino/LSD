library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

entity Mux4_1_8 is
	port (sel: in std_logic_vector(1 downto 0);
			dataIn0_0: in std_logic_vector(3 downto 0);
			dataIn0_1: in std_logic_vector(3 downto 0);
			dataIn0_2: in std_logic_vector(3 downto 0);
			dataIn0_3: in std_logic_vector(3 downto 0);
			dataIn0_4: in std_logic_vector(3 downto 0);
			dataIn0_5: in std_logic_vector(3 downto 0);
			dataIn0_6: in std_logic_vector(3 downto 0);
			dataIn0_7: in std_logic_vector(3 downto 0);
			dataIn1_0: in std_logic_vector(3 downto 0);
			dataIn1_1: in std_logic_vector(3 downto 0);
			dataIn1_2: in std_logic_vector(3 downto 0);
			dataIn1_3: in std_logic_vector(3 downto 0);
			dataIn1_4: in std_logic_vector(3 downto 0);
			dataIn1_5: in std_logic_vector(3 downto 0);
			dataIn1_6: in std_logic_vector(3 downto 0);
			dataIn1_7: in std_logic_vector(3 downto 0);
			dataIn2_0: in std_logic_vector(3 downto 0);
			dataIn2_1: in std_logic_vector(3 downto 0);
			dataIn2_2: in std_logic_vector(3 downto 0);
			dataIn2_3: in std_logic_vector(3 downto 0);
			dataIn2_4: in std_logic_vector(3 downto 0);
			dataIn2_5: in std_logic_vector(3 downto 0);
			dataIn2_6: in std_logic_vector(3 downto 0);
			dataIn2_7: in std_logic_vector(3 downto 0);
			dataIn3_0: in std_logic_vector(3 downto 0);
			dataIn3_1: in std_logic_vector(3 downto 0);
			dataIn3_2: in std_logic_vector(3 downto 0);
			dataIn3_3: in std_logic_vector(3 downto 0);
			dataIn3_4: in std_logic_vector(3 downto 0);
			dataIn3_5: in std_logic_vector(3 downto 0);
			dataIn3_6: in std_logic_vector(3 downto 0);
			dataIn3_7: in std_logic_vector(3 downto 0);
			dataOut0: out std_logic_vector(3 downto 0);
			dataOut1: out std_logic_vector(3 downto 0);
			dataOut2: out std_logic_vector(3 downto 0);
			dataOut3: out std_logic_vector(3 downto 0);
			dataOut4: out std_logic_vector(3 downto 0);
			dataOut5: out std_logic_vector(3 downto 0);
			dataOut6: out std_logic_vector(3 downto 0);
			dataOut7: out std_logic_vector(3 downto 0)); 
end Mux4_1_8;

architecture Behavioral of Mux4_1_8 is
begin
	process(sel, dataIn0_0, dataIn0_1, dataIn0_2, dataIn0_3, dataIn0_4, dataIn0_5, dataIn0_6, dataIn0_7,  dataIn1_0, dataIn1_1, dataIn1_2, dataIn1_3, dataIn1_4, dataIn1_5, dataIn1_6, dataIn1_7, dataIn2_0, dataIn2_1, dataIn2_2, dataIn2_3, dataIn2_4, dataIn2_5, dataIn2_6, dataIn2_7, dataIn3_0, dataIn3_1, dataIn3_2, dataIn3_3, dataIn3_4, dataIn3_5, dataIn3_6, dataIn3_7)
	begin
		if (sel= "00") then
			dataOut0 <= dataIn0_0;
			dataOut1 <= dataIn0_1;
			dataOut2 <= dataIn0_2;
			dataOut3 <= dataIn0_3;
			dataOut4 <= dataIn0_4;
			dataOut5 <= dataIn0_5;
			dataOut6 <= dataIn0_6;
			dataOut7 <= dataIn0_7;
		elsif (sel="01") then
			dataOut0 <= dataIn1_0;
			dataOut1 <= dataIn1_1;
			dataOut2 <= dataIn1_2;
			dataOut3 <= dataIn1_3;
			dataOut4 <= dataIn1_4;
			dataOut5 <= dataIn1_5;
			dataOut6 <= dataIn1_6;
			dataOut7 <= dataIn1_7;
		elsif (sel="10") then
			dataOut0 <= dataIn2_0;
			dataOut1 <= dataIn2_1;
			dataOut2 <= dataIn2_2;
			dataOut3 <= dataIn2_3;
			dataOut4 <= dataIn2_4;
			dataOut5 <= dataIn2_5;
			dataOut6 <= dataIn2_6;
			dataOut7 <= dataIn2_7;
		else
			dataOut0 <= dataIn3_0;
			dataOut1 <= dataIn3_1;
			dataOut2 <= dataIn3_2;
			dataOut3 <= dataIn3_3;
			dataOut4 <= dataIn3_4;
			dataOut5 <= dataIn3_5;
			dataOut6 <= dataIn3_6;
			dataOut7 <= dataIn3_7;
		end if;
	end process;	
end Behavioral;