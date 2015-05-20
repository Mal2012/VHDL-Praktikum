
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity ADDA is
    Port ( CLK_I : in  STD_LOGIC;
           CLK_48_I : in STD_LOGIC;
			  RESET_I : in  STD_LOGIC;
			  ADDATA_L_I: in STD_LOGIC; -- Eingangssignal vom AD-Wandler Kanal Links
			  ADDATA_R_I: in STD_LOGIC; -- Eingangssignal vom AD-Wandler Kanal Rechts
			  DA_BUS_R_O: in STD_LOGIC_VECTOR (11 downto 0); -- Eingangsignal vom RAM für den DA-Wandler Kanal Rechts
           DA_BUS_L_O: in STD_LOGIC_VECTOR (11 downto 0); -- Eingangsignal vom RAM für den DA-Wandler Kanal Rechts
			  
			  ics_o: out STD_LOGIC;
			  sample_o: out STD_LOGIC; -- Signal zur Übernahme der gewandelten Daten vom AD-Wandler an den Ausgang AD_BUS_L/R_O
			  ADCLK_O: out STD_LOGIC; -- AD-Wandler CLK - Abtastrate des AD-Wandlers
			  ADCS_O: out STD_LOGIC; -- AD-Wandler CS - Signal zur Anzeige einer laufenden Wandlung/Aufnahme
			  DADATA_L_O: out STD_LOGIC; -- Ausgangssignal für den DA-Wandler Kanal Links
			  DADATA_R_O: out STD_LOGIC; -- Ausgangssignal für den DA-Wandler Kanal Rechts
			  DACS_O: out STD_LOGIC; -- DA Wandler CS - Signal zur Anzeige einer laufenden Wandlung/Wiedergabe 
			  AD_BUS_R_O: out STD_LOGIC_VECTOR (11 downto 0); -- Ausgangssignal vom AD-Wandler zum RAM Kanal Rechts
			  AD_BUS_L_O: out STD_LOGIC_VECTOR (11 downto 0) -- Ausgangssignal vom AD-Wandler zum RAM Kanal Links
			  );
end ADDA;

architecture Behavioral of ADDA is -- Interne Signale
signal adcnt: unsigned (8 downto 0); -- Counter zur Impulserzeugung für den AD-Wandler
signal dacnt: unsigned (8 downto 0); -- Counter zur Impulserzeugung für den DA-Wandler
signal ics, tmp, sample : std_logic; -- Interne Signale für den AD-Wandler
signal daics, datmp : std_logic; -- Interne Signale für den DA-Wandler

signal input_l : std_logic_vector(11 downto 0); -- Schieberegister zur Zwischenspeicherung der Eingehenden Daten von Kanal Links
signal input_l_o : std_logic_vector(11 downto 0); -- Ausgaberegister zur Weiterleitung wenn Eingangssignal fertig gewandelt ist Kanal Links
signal input_r : std_logic_vector(11 downto 0); -- Schieberegister zur Zwischenspeicherung der Eingehenden Daten von Kanal Links
signal input_r_o : std_logic_vector(11 downto 0); -- Ausgaberegister zur Weiterleitung wenn Eingangssignal fertig gewandelt ist Kanal Links
signal output_r : std_logic_vector(11 downto 0); -- Aussgangsregister zur Weiterleitung des Ausgabesignals an den DA-Wandler Kanal Rechts
signal output_l : std_logic_vector(11 downto 0); -- Aussgangsregister zur Weiterleitung des Ausgabesignals an den DA-Wandler Kanal Links
begin

process (CLK_I) begin
	if rising_edge(CLK_I) then
		
		if RESET_I = '1' then -- RESET Zweig, Rücksetzen aller Zählerwerte und Signale
			adcnt <= (others => '0');
			ics <= '0'; 
			tmp <= '0';
			sample <= '0';
			ADCS_O <= '1';
			input_r_o <= (others => '0');
			input_r <= (others => '0');
			input_l <= (others => '0');
			input_l_o <= (others => '0');
		else
			adcnt <= adcnt +1; -- Zählen des AD-Wandler-Counters bis 159 dann Überlauf
			if adcnt = 159 then
				adcnt <= (others => '0');
			end if;
			if 3 < adcnt and adcnt < 132 then -- Im Zählbereich 3 bis 132 ADCS_O auf LOW dh. Wandlung/Aufnahme läuft
				ADCS_O <= '0';
			else
				ADCS_O <= '1'; -- Ansonsten ADCS_O auf HIGH 
			end if;
			if tmp = '0' and adcnt(2) = '1' then
				ics <= '1';
				input_l(0) <= ADDATA_L_I; -- Schreiben des Aktuellen Wertes von Kanal Links ins Schieberegister an Position 0
				input_r(0) <= ADDATA_R_I; -- Schreiben des Aktuellen Wertes von Kanal Links ins Schieberegister an Position 0
				for i in 1 to 11 loop
				input_l(i) <= input_l(i-1); -- Shift des Schieberegisters um eine Stelle Kanal Links
				input_r(i) <= input_r(i-1); -- Shift des Schieberegisters um eine Stelle Kanal Rechts
				end loop;
				
			else
				ics <= '0';
			end if;
			if adcnt = 128 then
				sample <= '1'; -- Ausgabe sample Impuls bei Zählerwert 128
				input_l_o <= input_l; -- Übernahme des Schieberegisters an den Ausgang Kanal Links
				input_r_o <= input_r; -- Übernahme des Schieberegisters an den Ausgang Kanal Rechts
				input_r <= (others => '0'); -- Zurücksetzen des Schieberegisters Kanal Rechts
				input_l <= (others => '0'); -- Zurücksetzen des Schieberegisters Kanal Links
			else 
				sample <= '0';
			end if;
		end if;
		tmp <= adcnt(2);
	end if;
end process;

ADCLK_O <= adcnt(2); -- Weiterleiten der Internen Signale an die entsprechenden Ausgänge
sample_o <= sample;
AD_BUS_R_O <= input_r_o;
AD_BUS_L_O <= input_l_o;
ics_o <= ics;



end Behavioral;



