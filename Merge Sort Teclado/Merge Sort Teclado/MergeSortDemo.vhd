library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MergeSortDemo is
	port( SW : in std_logic_vector(1 downto 0);
			KEY: in std_logic_vector(3 downto 0);
			CLOCK_50: in std_logic;
			ps2_clk : inout std_logic;
			ps2_dat : inout std_logic;
			HEX0: out std_logic_vector(6 downto 0);
			HEX1: out std_logic_vector(6 downto 0);
			HEX2: out std_logic_vector(6 downto 0);
			HEX3: out std_logic_vector(6 downto 0);
			HEX4: out std_logic_vector(6 downto 0);
			HEX5: out std_logic_vector(6 downto 0);
			HEX6: out std_logic_vector(6 downto 0);
			HEX7: out std_logic_vector(6 downto 0);
			LEDR: out std_logic_vector(0 downto 0);
			LEDG: out std_logic_vector(1 downto 0));
end MergeSortDemo;

architecture Shell of MergeSortDemo is
	
	signal s_count, s_user, s_load, s_inc_dec, s_merge, s_full, s_lvl2, s_lvl3, s_finish, s_pulseOut0, s_pulseOut1, s_pulseOut2, s_pulseOut3, s_valid_key_code: std_logic;
	signal s_sw0, s_sw1, s_key0, s_key1, s_key2, s_key3: std_logic; 
	signal s_sel: std_logic_vector(1 downto 0);
	signal s_rnd, s_cnt, s_muxOut, s_muxOut1, s_muxOut_0, s_muxOut_1, s_muxOut_2, s_muxOut_3, s_muxOut_4, s_muxOut_5, s_muxOut_6, s_muxOut_7, s_num0, s_num1, s_num2, s_num3, s_num4, s_num5, s_num6, s_num7: std_logic_vector(3 downto 0);
	signal s_num0_m1, s_num1_m1, s_num2_m1, s_num3_m1, s_num4_m1, s_num5_m1, s_num6_m1, s_num7_m1: std_logic_vector(3 downto 0); --merge lvl 1
	signal s_num0_m2, s_num1_m2, s_num2_m2, s_num3_m2, s_num4_m2, s_num5_m2, s_num6_m2, s_num7_m2: std_logic_vector(3 downto 0); --merge lvl 2
	signal s_num0_m3, s_num1_m3, s_num2_m3, s_num3_m3, s_num4_m3, s_num5_m3, s_num6_m3, s_num7_m3: std_logic_vector(3 downto 0); --merge lvl 3
	signal s_key_code: std_logic_vector(7 downto 0);
	
begin
	
	debouncer_0: entity work.debouncer(fancy)
				generic map(CLOCK_FREQUENCY=> 50.0e6,
								INITIAL_LEVEL=> '1')
				port map(clock=> CLOCK_50,
							reset=> s_key3,
							dirty=> KEY(0),
							clean=> open,
							zero_to_one_pulse => s_pulseOut0,
							one_to_zero_pulse=> open);
	
	debouncer_1: entity work.debouncer(fancy)
				generic map(CLOCK_FREQUENCY=> 50.0e6,
								INITIAL_LEVEL=> '1')
				port map(clock=> CLOCK_50,
							reset=> s_key3,
							dirty=> KEY(1),
							clean=> open,
							zero_to_one_pulse => s_pulseOut1,
							one_to_zero_pulse=> open);
	
	debouncer_2: entity work.debouncer(fancy)
				generic map(CLOCK_FREQUENCY=> 50.0e6,
								INITIAL_LEVEL=> '1')
				port map(clock=> CLOCK_50,
							reset=> s_key3,
							dirty=> KEY(2),
							clean=> open,
							zero_to_one_pulse => s_pulseOut2,
							one_to_zero_pulse=> open);
							
	debouncer_3: entity work.debouncer(fancy)
				generic map(CLOCK_FREQUENCY=> 50.0e6,
								INITIAL_LEVEL=> '1')
				port map(clock=> CLOCK_50,
							reset=> s_key3,
							dirty=> KEY(3),
							clean=> open,
							zero_to_one_pulse => s_pulseOut3,
							one_to_zero_pulse=> open);
							
	register_1: entity work.Register1bit(Behavioral)
				port map(clk=> CLOCK_50,
							dataIn=> SW(0),
							dataOut=> s_sw0);
	
	register_2: entity work.Register1bit(Behavioral)
				port map(clk=> CLOCK_50,
							dataIn=> SW(1),
							dataOut=> s_sw1);
							
	register_3: entity work.Register1bit(Behavioral)
				port map(clk=> CLOCK_50,
							dataIn=> s_pulseOut0,
							dataOut=> s_key0);						
	
	register_4: entity work.Register1bit(Behavioral)
				port map(clk=> CLOCK_50,
							dataIn=> s_pulseOut1,
							dataOut=> s_key1);
	
	register_5: entity work.Register1bit(Behavioral)
				port map(clk=> CLOCK_50,
							dataIn=> s_pulseOut2,
							dataOut=> s_key2);	
	
	register_6: entity work.Register1bit(Behavioral)
				port map(clk=> CLOCK_50,
							dataIn=> s_pulseOut3,
							dataOut=> s_key3);	
	
	control_unit: entity work.ControlUnit(Behavioral) -- Unidade de Controlo( Control Path)
				port map(clk=> CLOCK_50,
							reset=> s_key3,
							insert=> s_sw0,
							load=> s_key1,
							inc_dec=> s_sw1,
							merge=> s_key2,
							full=> s_full,
							out_user=> s_user,
							out_load=> s_load,
							out_inc_dec=> s_inc_dec,
							out_merge=> s_merge,
							out_count=> s_count);
	LEDG(1)<= s_full; -- Quando só falta inserir um número
	
	ps2_controller: entity work.ps2_controller(smart)
				generic map( CLOCK_FREQUENCY=> 50.0e6)
				port map(clock=> CLOCK_50,
							reset=> '0',
							ps2_clk=> ps2_clk,
							ps2_dat=> ps2_dat,
							keyboard_detected=> LEDR(0),
							keyboard_leds=> "000",
							key_code=> s_key_code,
							valid_key_code=> s_valid_key_code,
							mouse_detected=> open,
							mouse_delta_x=> open,
							mouse_delta_y=> open,
							mouse_buttons=> open,
							valid_mouse_data=> open);
	
	inserted_count: entity work.InsertedCount(Behavioral) -- Contador que conta os números que foram inseridos
				port map(clk=> CLOCK_50,
							res=> s_key3,
							enable=> s_count,
							isFull=> s_full);
	
	random_generator: entity work.pseudo_random_generator(heavy) -- Gerador aleatório de números
				generic map(N_BITS => 4,
								SEED=> X"0123456789AB")	
				port map( clock=> CLOCK_50,
							 enable=> '1',
							 rnd=> s_rnd);
	
	key_decoder: entity work.KeyDecoder(Behavioral) -- Contador com UP/DOWN que permite ao util. escolher um número
				port map(clock => CLOCK_50,
							reset => s_key3,
							enable=> s_user,
							key_code=> s_key_code,
							valid_key_code=> s_valid_key_code,
							dataOut=> s_cnt);
	
	mux_0: entity work.Mux2_1(Behavioral) -- Seleciona o número random ou inserido pelo utilizador
				port map(sel => s_user,
							dataIn0 => s_rnd,
							dataIn1 => s_cnt,
							dataOut => s_muxOut);
	
	mux_1: entity work.Mux2_1(Behavioral) -- Seleciona se o que vai ser apresentado no HEX7
				port map(sel => s_user,
							dataIn0 => s_muxOut_0,
							dataIn1 => s_cnt,
							dataOut => s_muxOut1);		
	
	shift_register: entity work.ShiftRegister(Behavioral) -- Regista os números inseridos
				port map(clk => CLOCK_50,
							res => s_key3,
							enable=> s_load,
							dataIn=> s_muxOut,
							dataOut0=> s_num0,
							dataOut1=> s_num1,
							dataOut2=> s_num2,
							dataOut3=> s_num3,
							dataOut4=> s_num4,
							dataOut5=> s_num5,
							dataOut6=> s_num6,
							dataOut7=> s_num7);
							
	merge_lvl1_0: entity work.Merge_lvl1(Behavioral) -- Bloco do 1º nível de merge(Merge de 2 blocos de 1 número)
				port map(clk => CLOCK_50,
							res=> s_key3,
							enable=> s_merge,
							inc_dec=> s_inc_dec,
							n1=> s_num0,
							n2=> s_num1,
							sortedn1=> s_num0_m1,
							sortedn2=> s_num1_m1,
							nextlevel=> s_lvl2);
	
	merge_lvl1_1: entity work.Merge_lvl1(Behavioral)
				port map(clk => CLOCK_50,
							res=> s_key3,
							enable=> s_merge,
							inc_dec=> s_inc_dec,
							n1=> s_num2,
							n2=> s_num3,
							sortedn1=> s_num2_m1,
							sortedn2=> s_num3_m1);
		merge_lvl1_2: entity work.Merge_lvl1(Behavioral)
				port map(clk => CLOCK_50,
							res => s_key3,
							enable=> s_merge,
							inc_dec=> s_inc_dec,
							n1=> s_num4,
							n2=> s_num5,
							sortedn1=> s_num4_m1,
							sortedn2=> s_num5_m1);
	
	merge_lvl1_3: entity work.Merge_lvl1(Behavioral)
				port map(clk => CLOCK_50,
							res => s_key3,
							enable=> s_merge,
							inc_dec=> s_inc_dec,
							n1=> s_num6,
							n2=> s_num7,
							sortedn1=> s_num6_m1,
							sortedn2=> s_num7_m1);							
	
	merge_lvl2_0: entity work.Merge_lvl2(Behavioral) -- Bloco do 2º nível de merge(Merge de 2 blocos de 2 números)
				port map(clk => CLOCK_50,
							res => s_key3,
							enable=> s_lvl2,
							inc_dec=> s_inc_dec,
							n1=> s_num0_m1,
							n2=> s_num1_m1,
							n3=> s_num2_m1,
							n4=> s_num3_m1,
							sortedn1=> s_num0_m2,
							sortedn2=> s_num1_m2,
							sortedn3=> s_num2_m2,
							sortedn4=> s_num3_m2,
							nextlevel=> s_lvl3);
	
	merge_lvl2_1: entity work.Merge_lvl2(Behavioral)
				port map(clk => CLOCK_50,
							res => s_key3,
							enable=> s_lvl2,
							inc_dec=> s_inc_dec,
							n1=> s_num4_m1,
							n2=> s_num5_m1,
							n3=> s_num6_m1,
							n4=> s_num7_m1,
							sortedn1=> s_num4_m2,
							sortedn2=> s_num5_m2,
							sortedn3=> s_num6_m2,
							sortedn4=> s_num7_m2);
	
	merge_lvl3: entity work.Merge_lvl3(Behavioral) -- Bloco do 3º nível de merge(Merge de 2 blocos de 4 números)
				port map(clk => CLOCk_50,
							res => s_key3,
							enable=> s_lvl3,
							inc_dec=> s_inc_dec,
							n1=> s_num0_m2,
							n2=> s_num1_m2,
							n3=> s_num2_m2,
							n4=> s_num3_m2,
							n5=> s_num4_m2,
							n6=> s_num5_m2,
							n7=> s_num6_m2,
							n8=> s_num7_m2,
							sortedn1=> s_num0_m3,
							sortedn2=> s_num1_m3,
							sortedn3=> s_num2_m3,
							sortedn4=> s_num3_m3,
							sortedn5=> s_num4_m3,
							sortedn6=> s_num5_m3,
							sortedn7=> s_num6_m3,
							sortedn8=> s_num7_m3,
							finish=> s_finish);
					
			LEDG(0)<= s_finish;		
	
	display_control: entity work.DisplayControl(Behavioral) -- Máquina de estados que controla o que é apresentado nos displays
				port map(clk => CLOCK_50,
							reset=> s_key3,
							show => s_key0,
							merge_activated=> s_merge,
							finish => s_finish,
							sel=> s_sel);
	
	mux_4_1_8: entity work.Mux4_1_8(Behavioral) -- Multiplexer que seleciona o que vai ser apresentado nos displays
				port map(sel=> s_sel,
							dataIn0_0=>s_num0, dataIn0_1=>s_num1, dataIn0_2=>s_num2, dataIn0_3=>s_num3, dataIn0_4=>s_num4, dataIn0_5=>s_num5, dataIn0_6=>s_num6, dataIn0_7=>s_num7,
							dataIn1_0=>s_num0_m1, dataIn1_1=>s_num1_m1, dataIn1_2=>s_num2_m1, dataIn1_3=>s_num3_m1, dataIn1_4=>s_num4_m1, dataIn1_5=>s_num5_m1, dataIn1_6=>s_num6_m1, dataIn1_7=>s_num7_m1,
							dataIn2_0=>s_num0_m2, dataIn2_1=>s_num1_m2, dataIn2_2=>s_num2_m2, dataIn2_3=>s_num3_m2, dataIn2_4=>s_num4_m2, dataIn2_5=>s_num5_m2, dataIn2_6=>s_num6_m2, dataIn2_7=>s_num7_m2,
							dataIn3_0=>s_num0_m3, dataIn3_1=>s_num1_m3, dataIn3_2=>s_num2_m3, dataIn3_3=>s_num3_m3, dataIn3_4=>s_num4_m3, dataIn3_5=>s_num5_m3, dataIn3_6=>s_num6_m3, dataIn3_7=>s_num7_m3,	
							dataOut0=> s_muxOut_0,
							dataOut1=> s_muxOut_1,
							dataOut2=> s_muxOut_2,
							dataOut3=> s_muxOut_3,
							dataOut4=> s_muxOut_4,
							dataOut5=> s_muxOut_5,
							dataOut6=> s_muxOut_6,
							dataOut7=> s_muxOut_7);
	
	--Displays
	display0: entity work.Bin7SegDecoder(Behavioral)
				port map(binInput=> s_muxOut1,
							decOut_n=> HEX7);
							
	display1: entity work.Bin7SegDecoder(Behavioral)
				port map(binInput=> s_muxOut_1,
							decOut_n=> HEX6);
	
	display2: entity work.Bin7SegDecoder(Behavioral)
				port map(binInput=> s_muxOut_2,
							decOut_n=> HEX5);
	
	display3: entity work.Bin7SegDecoder(Behavioral)
				port map(binInput=> s_muxOut_3,
							decOut_n=> HEX4);
							
	display4: entity work.Bin7SegDecoder(Behavioral)
				port map(binInput=> s_muxOut_4,
							decOut_n=> HEX3);

	display5: entity work.Bin7SegDecoder(Behavioral)
				port map(binInput=> s_muxOut_5,
							decOut_n=> HEX2);
	
	display6: entity work.Bin7SegDecoder(Behavioral)
				port map(binInput=> s_muxOut_6,
							decOut_n=> HEX1);
							
	display7: entity work.Bin7SegDecoder(Behavioral)
				port map(binInput=> s_muxOut_7,
							decOut_n=> HEX0);						
							
end Shell;