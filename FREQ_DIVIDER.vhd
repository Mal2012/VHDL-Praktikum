library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FREQ_DIVIDER is
	port(CLK_I : in std_logic;
		 RESET_I : in std_logic;
		 CLK_400_O : out std_logic;
		 CLK_48_O : out std_logic;
		-- CLK_882_O : out std_logic;
		CLK_20M_SYM_O : out std_logic
		-- CLK_20M_ASY_O : out std_logic
		 );
end entity;

architecture FREQ_DIVIDER_BEHAVE of FREQ_DIVIDER is

-- Zählervariablen
	signal INT_COUNT_400 : unsigned(6 downto 0) := (others => '0');	-- abgeleitet von 48kHz -> 48000 / 400 = 120 -> 7 Bit
	signal INT_COUNT_48 : unsigned(11 downto 0) := (others => '0'); 	-- 100MHz / 48kHz = 2083 -> 12 Bit sind notwendig
	signal INT_COUNT_882 : unsigned(5 downto 0) := (others => '0'); 	-- 100MHz / 882000 = 113 -> 6 Bit
	signal INT_COUNT_20M_SYM : unsigned (2 downto 0) := (others => '0'); 	-- 100MHz / 20 Mhz = 5 -> 3 Bit
	signal INT_COUNT_20M_ASY : unsigned (2 downto 0) := (others => '0'); 	-- 100MHz / 20 Mhz = 5 -> 3 Bit
-- Interne signale
	signal INT_400, INT_48, INT_882, CLK_20M_SYM_O_INT : std_logic;
	begin
	
	PROC_CLK_20M_SYM_O : process (CLK_I)
	begin
		if (rising_edge(CLK_I)) then 
			if(RESET_I = '1') then
				INT_COUNT_20M_SYM <= (others => '0');
				CLK_20M_SYM_O_INT <= '0';
			else
				INT_COUNT_20M_SYM <= INT_COUNT_20M_SYM + 1;
				if(INT_COUNT_20M_SYM = 4) then
					INT_COUNT_20M_SYM <= (others => '0');
					CLK_20M_SYM_O_INT <= not CLK_20M_SYM_O_INT;
				end if;
			end if;
		end if;
	end process;
	
	PROC_CLK_20M_ASY_O : process (CLK_I)
	begin
		if (rising_edge(CLK_I)) then 
			if(RESET_I = '1') then
				INT_COUNT_20M_ASY <= (others => '0');
				--CLK_20M_ASY_O <= '0';
			else
			--	CLK_20M_ASY_O <= '0';
				INT_COUNT_20M_ASY <= INT_COUNT_20M_ASY + 1;
				if(INT_COUNT_20M_ASY = 4) then
					INT_COUNT_20M_ASY <= (others => '0');
					--CLK_20M_ASY_O <= '1';
				end if;
			end if;
		end if;
	end process;
	
	PROC_CLK_48_O : process(CLK_I)
		begin
		if(rising_edge(CLK_I)) then
			if(RESET_I = '1') then
				INT_COUNT_48 <= (others => '0'); 	-- benutze (others => '0') wegen Spezifität von std_logic und numeric_std Bibliotheken
				INT_48 <= '0';
			else
				INT_48 <= '0';
				INT_COUNT_48 <= INT_COUNT_48 + 1;
				if(INT_COUNT_48 = 2082) then 		-- benutze zahl, statt "zahl" wegen Eigenschaften d. std_logic und numeric_std Bibliotheken
					INT_COUNT_48 <= (others => '0');
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
		
	PROC_CLK_882_O : process(CLK_I)
		begin
		if(rising_edge(CLK_I)) then
			if(RESET_I = '1') then
				INT_COUNT_882 <= (others => '0');
				INT_882 <= '0';
			else
				INT_COUNT_882 <= INT_COUNT_882 + 1;
				if(INT_COUNT_882 = 55) then
					INT_COUNT_882 <= (others => '0');
					INT_882 <= not INT_882;
				end if;
			end if;
		end if;
	end process;
		
	CLK_48_O <= INT_48;
	CLK_400_O <= INT_400;
	--CLK_882_O <= INT_882;
	CLK_20M_SYM_O <= CLK_20M_SYM_O_INT;
		
	end architecture;