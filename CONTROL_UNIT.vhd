library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CONTROL_UNIT is
	port(
		CLK_I : in std_logic;
		RESET_I : in std_logic;
		SELECT_I : in std_logic_vector(4 downto 0);
		
		BCD_01_O : out std_logic_vector(4 downto 0);
		BCD_02_O : out std_logic_vector(4 downto 0);
		BCD_03_O : out std_logic_vector(4 downto 0);
		BCD_04_O : out std_logic_vector(4 downto 0); -- 5-Bit Zahlendarstellung für zusätzliche Zeichen
		LED_O : out std_logic_vector(7 downto 0);
		DPS_O : out std_logic_vector(3 downto 0);
		PLAY_O : out std_logic;
		REC_O : out std_logic;
		REVERSE_O : out std_logic--;
		--VOLUME_O : out std_logic_vector(7 downto 0);
		--VOLUME_PULSE_O : out std_logic;
		--SPEED_O : out std_logic_vector(7 downto 0);
		--SPEED_PULSE_O : out std_logic	
	);
end entity;

architecture CONTROL_UNIT_BEHAVE of CONTROL_UNIT is

type STATES is (IDLE, REC, PLAY, VOLUME, REVERSE, SPEED);
	signal CURRENT_STATE : STATES;
	signal LED_I : std_logic_vector(7 downto 0);
	signal BCD_01_I : std_logic_vector(4 downto 0);
	signal BCD_02_I : std_logic_vector(4 downto 0);
	signal BCD_03_I : std_logic_vector(4 downto 0);
	signal BCD_04_I : std_logic_vector(4 downto 0);
	signal DPS_I : std_logic_vector(3 downto 0);
	signal VOL : std_logic_vector(7 downto 0);
	signal SPEED_I : std_logic_vector(7 downto 0);

	begin
	PROC_STATE_MACHINE : process(CLK_I)
		begin
		if(rising_edge(CLK_I)) then
			if(RESET_I = '1') then
				CURRENT_STATE <= IDLE;
				LED_I <= "00000001";
				BCD_01_I <= "10100";
				BCD_02_I <= "10001";
				BCD_03_I <= "10001";
				BCD_04_I <= "10001";
				DPS_I <= "1111";
				VOL <= "00000000";
				SPEED_I <= "00000000";
				REVERSE_O <= '0';
				PLAY_O <= '0';
				REC_O <= '0';

			else
			LED_I <= "00000000";
				case CURRENT_STATE is
					when IDLE =>
						BCD_01_I <= "01110";
						BCD_02_I <= "11111";
						BCD_03_I <= "01101";
						BCD_04_I <= "00001";
						DPS_I <= "1111";
						if(SELECT_I = "10000") then
						CURRENT_STATE <= REC;
						end if;
						if(SELECT_I = "00100") then
						CURRENT_STATE <= SPEED;
						end if;
					when REC =>
						BCD_01_I <= "10001";
						BCD_02_I <= "01100";
						BCD_03_I <= "01110";
						BCD_04_I <= "10100";
						DPS_I <= "1111";
					if (SELECT_I = "00001") then
							REC_O <= '1';
							LED_I <= "00000010";
						end if;
						if(SELECT_I = "10000") then
							CURRENT_STATE <= PLAY;
					end if;
					if(SELECT_I = "00100") then
							CURRENT_STATE <= IDLE;
					end if;
					when PLAY =>
						BCD_01_I <= "00100";
						BCD_02_I <= "01010";
						BCD_03_I <= "11111";
						BCD_04_I <= "10101";
						DPS_I <= "1111";
						if (SELECT_I = "00001") then
							PLAY_O <= '1';
							LED_I <= "00000100";
						end if;
						
						if(SELECT_I = "10000") then
							CURRENT_STATE <= VOLUME;
						end if;
						if(SELECT_I = "00100") then
							CURRENT_STATE <= REC;
						end if;
					when VOLUME =>
						BCD_01_I <= '0' & VOL(3 downto 0);
						BCD_02_I <= '0' & VOL(7 downto 4);
						BCD_03_I <= "10001";
						BCD_04_I <= "10110";
						DPS_I <= "1111";
						
						if(SELECT_I = "00010") then
							VOL <= std_logic_vector(unsigned(VOL) + 1);
						end if;

						if(SELECT_I = "01000") then
							VOL <= std_logic_vector(unsigned(VOL) - 1);
						end if;
						
						if(SELECT_I = "10000") then
							CURRENT_STATE <= REVERSE;
						end if;
						if(SELECT_I = "00100") then
							CURRENT_STATE <= PLAY;
						end if;
					when REVERSE =>
						BCD_01_I <= "10001";
						BCD_02_I <= "10110";
						BCD_03_I <= "01110";
						BCD_04_I <= "10100";
						DPS_I <= "1111";
						if (SELECT_I = "00001") then
							REVERSE_O <= '1';
							LED_I <= "00001100";
						end if;
						if(SELECT_I = "10000") then
							CURRENT_STATE <= SPEED;
						end if;
						if(SELECT_I = "00100") then
							CURRENT_STATE <= VOLUME;
						end if;
					when SPEED =>
						BCD_01_I <= '0' & SPEED_I(3 downto 0);
						BCD_02_I <= '0' & SPEED_I(7 downto 4);
						BCD_03_I <= "10001";
						BCD_04_I <= "11000";
						DPS_I <= "1111";
						
						if(SELECT_I = "00010") then
							SPEED_I <= std_logic_vector(unsigned(SPEED_I) + 1);
						end if;

						if(SELECT_I = "01000") then
							SPEED_I <= std_logic_vector(unsigned(SPEED_I) - 1);
						end if;
					if(SELECT_I = "10000") then
							CURRENT_STATE <= IDLE;
						end if;
						if(SELECT_I = "00100") then
							CURRENT_STATE <= REVERSE;
						end if;
					when others =>
						CURRENT_STATE <= IDLE;
				end case;
			end if;
		end if;
	end process;
	
	BCD_01_O <= BCD_01_I;
	BCD_02_O <= BCD_02_I;
	BCD_03_O <= BCD_03_I;
	BCD_04_O <= BCD_04_I;
	DPS_O <= DPS_I;
	LED_O <= LED_I;
end architecture;