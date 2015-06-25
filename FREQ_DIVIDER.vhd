library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FREQ_DIVIDER is
	port(CLK_I : in std_logic;
		 RESET_I : in std_logic;
		 SPEED : in unsigned(11 downto 0);
		 CLK_400_O : out std_logic;
		 CLK_48_O : out std_logic
		 );
end entity;

architecture FREQ_DIVIDER_BEHAVE of FREQ_DIVIDER is

-- Zählervariablen
	signal INT_COUNT_400 : unsigned(6 downto 0) := (others => '0');	-- abgeleitet von 48kHz -> 48000 / 400 = 120 -> 7 Bit
	signal INT_COUNT_48 : unsigned(11 downto 0) := (others => '0'); 	-- 100MHz / 48kHz = 2083 -> 12 Bit sind notwendig
-- Interne signale
	signal INT_400, INT_48 : std_logic;
	begin
	
	
	PROC_CLK_48_O : process(CLK_I)
		begin
		if(rising_edge(CLK_I)) then
			if(RESET_I = '1') then
				INT_COUNT_48 <= (others => '0'); 	-- benutze (others => '0') wegen Spezifität von std_logic und numeric_std Bibliotheken
				INT_48 <= '0';
			else
				INT_48 <= '0';
				INT_COUNT_48 <= INT_COUNT_48 + 1; -- Zähler bis 2082
				if(INT_COUNT_48 = SPEED) then 		-- benutze zahl, statt "zahl" wegen Eigenschaften d. std_logic und numeric_std Bibliotheken
					INT_COUNT_48 <= (others => '0'); -- Zähler überlauf bei 2082 und Ausgabe von 1 für einen Takt auf INT_48
					INT_48 <= '1';
				end if;
			end if;
		end if;
	end process;
	
	PROC_CLK_400_O : process(CLK_I)
		begin
		if(rising_edge(CLK_I)) then
			if(RESET_I = '1') then
				INT_COUNT_400 <= (others => '0');
				INT_400 <= '0';
			else
				INT_400 <= '0';
				if(INT_48 = '1') then
					INT_COUNT_400 <= INT_COUNT_400 + 1;
					if(INT_COUNT_400 = 119) then
						INT_COUNT_400 <= (others => '0');
						INT_400 <= '1';
					end if;
				end if;
			end if;
		end if;
	end process;
	
		
	CLK_48_O <= INT_48; -- Zuweisung interner Signale auf Output Ports
	CLK_400_O <= INT_400;

		
	end architecture;