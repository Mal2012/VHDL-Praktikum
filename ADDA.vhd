
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity ADDA is
    Port ( CLK_I : in  STD_LOGIC;
           CLK_48_I : in STD_LOGIC;
			  RESET_I : in  STD_LOGIC;
			  ADDATA_L_I: in STD_LOGIC;
			  ADDATA_R_I: in STD_LOGIC;
			  DA_BUS_R_O: in STD_LOGIC_VECTOR (11 downto 0);
           DA_BUS_L_O: in STD_LOGIC_VECTOR (11 downto 0);
			  
			  ics_o: out STD_LOGIC;
			  sample_o: out STD_LOGIC;
			  ADCLK_O: out STD_LOGIC;
			  ADCS_O: out STD_LOGIC;
			  DADATA_L_O: out STD_LOGIC;
			  DADATA_R_O: out STD_LOGIC;
			  DACS_O: out STD_LOGIC;
			  AD_BUS_R_O: out STD_LOGIC_VECTOR (11 downto 0);
			  AD_BUS_L_O: out STD_LOGIC_VECTOR (11 downto 0)
			  );
end ADDA;

architecture Behavioral of ADDA is
signal adcnt: unsigned (8 downto 0);
signal ics, tmp, sample : std_logic;
begin

process (CLK_I) begin
	if rising_edge(CLK_I) then
		
		if RESET_I = '1' then 
			adcnt <= (others => '0');
			ics <= '0'; 
			tmp <= '0';
			sample <= '0';
		else
			adcnt <= adcnt +1;
			if adcnt = 159 then
				adcnt <= (others => '0');
			end if;
			if 5 < adcnt and adcnt < 132 then
				ADCS_O <= '0';
			else
				ADCS_O <= '1';
			end if;
			if tmp = '0' and adcnt(2) = '1' then
				ics <= '1';
			else
				ics <= '0';
			end if;
			if adcnt = 128 then
				sample <= '1';
			else 
				sample <= '0';
			end if;
		end if;
		tmp <= adcnt(2);
	end if;
end process;

ADCLK_O <= adcnt(2);
sample_o <= sample;
ics_o <= ics;
end Behavioral;



