library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CONTROL_UNIT is
	port(
		CLK_I : in std_logic;
		RESET_I : in std_logic;
		ADBUS_L_I : in STD_LOGIC_VECTOR (11 downto 0);
		ADBUS_R_I : in STD_LOGIC_VECTOR (11 downto 0);
		MEMBUS_L_I : in STD_LOGIC_VECTOR (11 downto 0);
		MEMBUS_R_I : in STD_LOGIC_VECTOR (11 downto 0);
		SELECT_I : in std_logic_vector(4 downto 0); -- entprellte Eingangsignale der Buttons
		BCD_01_O : out std_logic_vector(4 downto 0); -- Ausgangssteuerleitung zur Ansteuerung der 7-Segment Displays
		BCD_02_O : out std_logic_vector(4 downto 0);
		BCD_03_O : out std_logic_vector(4 downto 0);
		BCD_04_O : out std_logic_vector(4 downto 0); -- 5-Bit Zahlendarstellung für zusätzliche Zeichen
		LED_O : out std_logic_vector(7 downto 0); -- Ausgangsteuerleitung zur Schaltung der 8 LEDs
		DPS_O : out std_logic_vector(3 downto 0); -- Ausgangsteuerleitung zur Ansteuerung der Punkte 
		PLAY_O : out std_logic; -- Ausgangssignal um Abspielmodus zu signalisieren
		REC_O : out std_logic; -- Ausgangssignal um Aufnahmemodus zu signalisieren
		REVERSE_O : out std_logic;	-- Ausgangsignal um Reverse-Abspielmodus zu signalisieren
		DABUS_L_I : out STD_LOGIC_VECTOR (11 downto 0);
		DABUS_R_I : out STD_LOGIC_VECTOR (11 downto 0);
		MEMBUS_L_O : out STD_LOGIC_VECTOR (11 downto 0);
		MEMBUS_R_O : out STD_LOGIC_VECTOR (11 downto 0)
	);
end entity;

architecture CONTROL_UNIT_BEHAVE of CONTROL_UNIT is

type STATES is (IDLE, REC, PLAY, VOLUME, REVERSE, SPEED, AD_L, AD_R); -- Deklaration der States für die Statemachine 
	signal CURRENT_STATE : STATES;
	signal LED_I : std_logic_vector(7 downto 0);
	signal BCD_01_I : std_logic_vector(4 downto 0);
	signal BCD_02_I : std_logic_vector(4 downto 0);
	signal BCD_03_I : std_logic_vector(4 downto 0);
	signal BCD_04_I : std_logic_vector(4 downto 0);
	signal DPS_I : std_logic_vector(3 downto 0);
	signal VOL : std_logic_vector(7 downto 0); -- Internes Signal zur Steuerung der Lautstärke
	signal SPEED_I : std_logic_vector(7 downto 0); -- Internes Signal zur Steuerung der Abspielgeschwindigkeit
	signal PLAY_I : std_logic;
	signal REVERSE_I : std_logic;
	signal REC_I : std_logic;
	begin
	PROC_STATE_MACHINE : process(CLK_I)
		begin
		if(rising_edge(CLK_I)) then
			if(RESET_I = '1') then
				CURRENT_STATE <= IDLE; -- Bei Reset: Wechsel in den IDLE zustand, zurücksetzen von VOL und SPEED, anhalten von PLAY, REC und REVERSE 
				LED_I <= "00000001"; -- Leuchten der Reset LED
				BCD_01_I <= "10100"; -- Darstellung von "r" für Reset auf dem 7 - Segment Display
				BCD_02_I <= "10001"; 
				BCD_03_I <= "10001";
				BCD_04_I <= "10001";
				DPS_I <= "1111"; -- Punkte alle Ausgeschaltet
				VOL <= "00000000";
				SPEED_I <= "00000000";
				REC_I <= '0';
				PLAY_I <= '0';
				REVERSE_I <= '0';

			else
			
				case CURRENT_STATE is 
					when IDLE => -- IDLE Zustand 
						LED_I <= "00000000"; -- Alle LEDs ausgeschaltet
						BCD_01_I <= "01110"; -- Anzeige von "IDLE" auf dem 7 - Segment Display
						BCD_02_I <= "11111";
						BCD_03_I <= "01101";
						BCD_04_I <= "00001";
						DPS_I <= "1111"; -- Alle Punkte Ausgeschaltet
						if(SELECT_I = "10000") then -- Wechsel in den Zustand REC bei Buttondruck nach rechts
						CURRENT_STATE <= REC;
						end if;
						if(SELECT_I = "00100") then -- Wechsel in den Zustand SPEED bei Buttondruck nach links
						CURRENT_STATE <= SPEED;
						end if;
					when REC => -- REC Zustand
						BCD_01_I <= "10001"; -- Anzeige von "REC" auf dem 7 - Segment-Display 
						BCD_02_I <= "01100";
						BCD_03_I <= "01110";
						BCD_04_I <= "10100";
						DPS_I <= "1111"; -- Alle Punkte Ausgeschaltet
					if (SELECT_I = "00001") then -- Starten/Stoppen der Aufnahme bei druck auf den mittleren Button
							REC_I <= NOT REC_I; -- Wechsel des Ausgangssignals REC
							
							LED_I(1) <= NOT LED_I(1); -- Einschalten/Ausschalten der Indikator LED zur Anzeige einer laufenden Aufnahme
						end if;
						if(SELECT_I = "10000") then -- Wechsel in den Zustand PLAY bei Buttondruck nach rechts
							CURRENT_STATE <= PLAY;
					end if;
					if(SELECT_I = "00100") then -- Wechsel in den Zustand IDLE bei Buttondruck nach links
							CURRENT_STATE <= IDLE;
					end if;
					when PLAY => -- PLAY Zustand
						BCD_01_I <= "00100"; -- Anzeige von "PLAY" auf dem 7 - Segment Display
						BCD_02_I <= "01010";
						BCD_03_I <= "11111";
						BCD_04_I <= "10101";
						DPS_I <= "1111"; -- Alle Punkte ausgeschaltet
						
						if (SELECT_I = "00001") then -- Starten/Stoppen der Wiedergabe bei druck auf den mittleren Button
							PLAY_I <= NOT PLAY_I;-- Wechsel des Ausgangssignals PLAY
							LED_I(2) <= NOT LED_I(2); -- Einschalten/Ausschalten der Indikator LED zur Anzeige einer laufenden Wiedergabe
						end if;
						if PLAY_I = '1' then
							
							--DABUS_L_I <= MEMBUS_L_I;
							--DABUS_R_I <= MEMBUS_R_I;
						end if;
						if(SELECT_I = "10000") then -- Wechsel in den Zustand VOL bei Buttondruck nach rechts
							CURRENT_STATE <= VOLUME;
						end if;
						if(SELECT_I = "00100") then -- Wechsel in den Zustand REC bei Buttondruck nach links
							CURRENT_STATE <= REC;
						end if;
					when VOLUME => -- VOL Zustand
						LED_I <= "00000000"; -- Ausschalten aller LEDs
						BCD_01_I <= '0' & VOL(3 downto 0); -- Anzeige der Lautstärke 2-stellig in Hexadezimalschreibweise
						BCD_02_I <= '0' & VOL(7 downto 4);
						BCD_03_I <= "10001";
						BCD_04_I <= "10110";
						DPS_I <= "1111"; -- Alle Punkte ausgeschaltet
						
						if(SELECT_I = "00010") then -- Erhöhen der Lautstärke bei Buttondruck nach oben
							VOL <= std_logic_vector(unsigned(VOL) + 1);
						end if;

						if(SELECT_I = "01000") then -- Verringerung der Lautstärke bei Buttondruck nach unten
							VOL <= std_logic_vector(unsigned(VOL) - 1);
						end if;
						
						if(SELECT_I = "10000") then -- Wechsel in den Zustand REVERSE bei Buttondruck nach rechts
							CURRENT_STATE <= REVERSE;
						end if;
						if(SELECT_I = "00100") then -- Wechsel in den Zustand PLAY bei Buttondruck nach links
							CURRENT_STATE <= PLAY;
						end if;
					when REVERSE => -- REVERSE Zustand
						BCD_01_I <= "10001"; -- Anzeige von "REV" auf dem 7-Segment Display
						BCD_02_I <= "10110";
						BCD_03_I <= "01110";
						BCD_04_I <= "10100";
						DPS_I <= "1111"; -- Alle Punkte ausgeschaltet
						if (SELECT_I = "00001") then -- Starten/Stoppen der umgekehrten Wiedergabe bei druck des mittleren Buttons
							
							REVERSE_I <= NOT REVERSE_I; -- Wechseln des Ausgangsignals REVERSE
							
							LED_I(2) <= NOT LED_I(2); -- Einschalten/Ausschalten der PLAY LED
							LED_I(3) <= NOT LED_I(3);-- Einschalten/Ausschalten der REVERSE LED
						end if;
						if(SELECT_I = "10000") then -- Wechseln in den Zustand SPEED bei einem Buttondruck nach rechts
							CURRENT_STATE <= SPEED;
						end if;
						if(SELECT_I = "00100") then -- Wechseln in den Zustand VOL bei einem Buttondruck nach links
							CURRENT_STATE <= VOLUME;
						end if;
					when SPEED => -- SPEED Zustand
						LED_I <= "00000000"; -- Alle LEDs ausschalten
						BCD_01_I <= '0' & SPEED_I(3 downto 0); -- Anzeige der aktuellen Wiedergabegeschwindigkeit 2-stellig Hexadezimal
						BCD_02_I <= '0' & SPEED_I(7 downto 4);
						BCD_03_I <= "10001";
						BCD_04_I <= "11000";
						DPS_I <= "1111"; -- Alle Punkte ausgeschaltet
						
						if(SELECT_I = "00010") then -- Erhöhen der Geschwindigkeit bei Buttondruck nach oben
							SPEED_I <= std_logic_vector(unsigned(SPEED_I) + 1);
						end if;

						if(SELECT_I = "01000") then -- Verringerung der Geschwindigkeit bei Buttondruck nach unten
							SPEED_I <= std_logic_vector(unsigned(SPEED_I) - 1);
						end if;
					if(SELECT_I = "10000") then -- Wechseln in den IDLE Zustand bei Buttondruck nach rechts
							CURRENT_STATE <= AD_L;
						end if;
						if(SELECT_I = "00100") then -- Wechseln in den REVERSE Zustand bei Buttondruck nach links
							CURRENT_STATE <= REVERSE;
						end if;
						
					when AD_L =>
						BCD_01_I <= '0' & ADBUS_L_I(3 downto 0);
						BCD_02_I <= '0' & ADBUS_L_I(7 downto 4);
						BCD_03_I <= '0' & ADBUS_L_I(11 downto 8);
						BCD_04_I <= "11111";
					   DPS_I <= "1111"; -- Alle Punkte ausgeschaltet
							if(SELECT_I = "10000") then -- Wechseln in den IDLE Zustand bei Buttondruck nach rechts
							CURRENT_STATE <= AD_R;
						end if;
						if(SELECT_I = "00100") then -- Wechseln in den REVERSE Zustand bei Buttondruck nach links
							CURRENT_STATE <= SPEED;
						end if;
						
						when AD_R =>
						BCD_01_I <= '0' & ADBUS_R_I(3 downto 0);
						BCD_02_I <= '0' & ADBUS_R_I(7 downto 4);
						BCD_03_I <= '0' & ADBUS_R_I(11 downto 8);
						BCD_04_I <= "10100";
					   DPS_I <= "1111"; -- Alle Punkte ausgeschaltet
							if(SELECT_I = "10000") then -- Wechseln in den IDLE Zustand bei Buttondruck nach rechts
							CURRENT_STATE <= IDLE;
						end if;
						if(SELECT_I = "00100") then -- Wechseln in den REVERSE Zustand bei Buttondruck nach links
							CURRENT_STATE <= AD_L;
						end if;
					when others =>
						CURRENT_STATE <= IDLE; -- Ausnahmebehandlung --> Wechsel in den IDLE Zustand
				end case;
			end if;
		end if;	
		

	end process;
	
	BCD_01_O <= BCD_01_I; -- Zuweisung der internen Signale auf die Ausgangssignale 
	BCD_02_O <= BCD_02_I;
	BCD_03_O <= BCD_03_I;
	BCD_04_O <= BCD_04_I;
	DPS_O <= DPS_I;
	LED_O <= LED_I;
	PLAY_O <= PLAY_I;
	REC_O <= REC_I;
	REVERSE_O <= REVERSE_I;
	MEMBUS_L_O <= ADBUS_L_I;
	MEMBUS_R_O <= ADBUS_R_I;
	DABUS_L_I <= MEMBUS_L_I when PLAY_I = '1' else ADBUS_L_I;
	DABUS_R_I <= MEMBUS_R_I when PLAY_I = '1' else ADBUS_R_I;

end architecture;