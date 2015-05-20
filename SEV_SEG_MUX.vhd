library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SEV_SEG_MUX is
port(BCD_01_I : in std_logic_vector(4 downto 0); -- Eingangsleitung zur Ansteuerung der 7-Segment-Displays
	 BCD_02_I : in std_logic_vector(4 downto 0);
	 BCD_03_I : in std_logic_vector(4 downto 0);
	 BCD_04_I : in std_logic_vector(4 downto 0); -- 5-Bit Zahlendarstellung für zusätzliche Zeichen
	 DPS_I : in std_logic_vector(3 downto 0); -- Eingangssteuerleitung zur Ansteuerung der Punkte
	 CLK_I : in std_logic; 
	 CLK_400_I : in std_logic;
	 RESET_I : in std_logic;
	 DP_O : out std_logic; -- Ausgangsleitung zur Steuerung der Punkte 
	 ANODE_O : out std_logic_vector(3 downto 0); -- Ausgangsleitung zur Auswahl des 7-Segment-Displays
	 DISPLAY_O : out std_logic_vector(6 downto 0)); -- Ausgangsleitung zur Steuerung des ausgewählten 7-Segment-Displays
end entity;

architecture SEV_SEG_MUX_behave of SEV_SEG_MUX is

	signal INT_COUNT : unsigned(1 downto 0); -- Zählvariable für den Multiplexer (intern)
	signal INT_DSIPLAY : std_logic_vector(6 downto 0);  -- Displaydarstellung (intern)
	signal INT_BCD : std_logic_vector(4 downto 0); -- BCD-Auswahl (intern), auch hier: 5 Bit Zahlendarstellung
	begin

	PROC_COUNT : process(CLK_I) -- Zähler zum Durchschalten durch die Displays, damit ein stabiles Bild entsteht mit 400Hz
		begin
		if(rising_edge(CLK_I)) then
			if(RESET_I = '1') then
				INT_COUNT <= (others => '0');
			else
				if(CLK_400_I = '1') then
					INT_COUNT <= INT_COUNT + 1;
					if(INT_COUNT = 3) then
						INT_COUNT <= (others => '0');
					end if;
				end if;
			end if;
		end if;
	end process;
	
	-- Selektiere die Anodenumschaltung abhängig vom Zählerwert
	with INT_COUNT select
		ANODE_O <= "1110" when "00",
				   "1101" when "01",
				   "1011" when "10",
				   "0111" when others;
					
	-- Selektiere die Anzeige für die Darstellung
	with INT_COUNT select
		INT_BCD <= BCD_01_I when "00",
				   BCD_02_I when "01",
				   BCD_03_I when "10",
				   BCD_04_I when others;
	
	-- Selektiere den Punkt für die Darstellung
	with INT_COUNT select
		DP_O <= DPS_I(0) when "00",
				DPS_I(1) when "01",
				DPS_I(2) when "10",
				DPS_I(3) when others;
					
	-- Selektiere darzustellendes Zeichen 
	with INT_BCD select 
		INT_DSIPLAY <= "1000000" when "00000", -- 0
			   		   "1111001" when "00001", -- 1
					   "0100100" when "00010", -- 2
					   "0110000" when "00011", -- 3
					   "0011001" when "00100", -- 4
					   "0010010" when "00101", -- 5
					   "0000010" when "00110", -- 6
					   "1111000" when "00111", -- 7
					   "0000000" when "01000", -- 8
					   "0010000" when "01001", -- 9
					   "0001000" when "01010", -- A
					   "0000011" when "01011", -- B
					   "1000110" when "01100", -- C
					   "0100001" when "01101", -- D
					   "0000110" when "01110", -- E
					   "0001110" when "01111", -- F
						"1000111" when "11111", -- L
					   "1111111" when "10001", -- " "
					   "0111111" when "10010", -- "-"
					   "1110111" when "10011", -- "_"
					   "0101111" when "10100", -- "r"
					   "0001100" when "10101", -- "P"
					   "1000001" when "10110", -- "V"
					   "0001001" when "10111", -- "X"
					   "0010010" when "11000", -- "S"
					   "0110110" when others;  -- Sonderzeichen
						 
	DISPLAY_O <= INT_DSIPLAY;
	
end architecture;
