----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:53:09 06/10/2015 
-- Design Name: 
-- Module Name:    MEMORY - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MEMORY is
    Port ( CLK_I : in STD_LOGIC;
			  CLK_48 : in STD_LOGIC;
			  RESET_I : in STD_LOGIC;
			  CE_O : out  STD_LOGIC;
           OE_O : out  STD_LOGIC;
           WE_O : out  STD_LOGIC;
           ADDRESS_O : out  STD_LOGIC_VECTOR (22 downto 0);
           DATA_O_RAM : inout  STD_LOGIC_VECTOR (15 downto 0);
           LB_O : out  STD_LOGIC;
           DATA_I_L : in  STD_LOGIC_VECTOR (11 downto 0);
           DATA_O_CONTROL_L : out  STD_LOGIC_VECTOR (11 downto 0);
           REC : in  STD_LOGIC;
           PLAY : in  STD_LOGIC;
           UB_O : out  STD_LOGIC;
           DATA_I_R : in  STD_LOGIC_VECTOR (11 downto 0);
           DATA_O_CONTROL_R : out  STD_LOGIC_VECTOR (11 downto 0));
end MEMORY;

architecture Behavioral of MEMORY is

type STATES is (IDLE, WRITE_RAM, READ_RAM); -- Deklaration der States für die Statemachine 
signal CURRENT_STATE : STATES;
signal DATAIR : STD_LOGIC_VECTOR (11 downto 0);
signal DATAIL : STD_LOGIC_VECTOR (11 downto 0);
signal DATAOR : STD_LOGIC_VECTOR (15 downto 0);
signal DATAOL : STD_LOGIC_VECTOR (15 downto 0);
signal ADDRESS_I : unsigned (22 downto 0);
signal ADDRESS_R_I : unsigned (22 downto 0);
signal WCOUNT : unsigned (7 downto 0);
signal WCOUNT_R : unsigned (7 downto 0);
begin


PROC_STATE_MACHINE : process(CLK_I)
		begin
		if(rising_edge(CLK_I)) then
			if(RESET_I = '1') then
				CURRENT_STATE <= IDLE;
				CE_O <= '1';
				OE_O <= '1';
				WE_O <= '1';
				LB_O <= '0';
				UB_O <= '0';
				ADDRESS_O <= (others => '0');
				ADDRESS_I <= (others => '0');
				ADDRESS_R_I <= (others => '0');
				DATA_O_CONTROL_L <= (others => '0');
				DATA_O_CONTROL_R <= (others => '0');
				DATA_O_RAM <= (others => '0');
				WCOUNT <= (others => '0');
				WCOUNT_R <= (others => '0');
			else
			
			case CURRENT_STATE is 
					when IDLE =>
					
						if REC = '1' AND PLAY = '0' AND CLK_48 = '1' then 
							DATAIR <= DATA_I_R;
							DATAIL <= DATA_I_L;
							CURRENT_STATE <= WRITE_RAM;
						end if;
					
						if PLAY = '1' AND REC = '0' AND CLK_48 = '1' then
							WE_O <= '1';
							CURRENT_STATE <= READ_RAM;
						end if;
						
					when WRITE_RAM =>
							if (ADDRESS_I(0) = '0') then
								DATA_O_RAM <= "0000" & DATAIL;
							else
								DATA_O_RAM <= "0000" & DATAIR;
							end if;
							ADDRESS_O <= std_logic_vector(ADDRESS_I);
							
							CE_O <= '0';
							IF (WCOUNT = 1 OR WCOUNT = 82) then
								WE_O <= '0';
							end if;
							
							IF (WCOUNT = 80 OR WCOUNT = 161) then
								CE_O <= '1';
								WE_O <= '1';							
							end if;
							
							WCOUNT <= WCOUNT + 1;
							ADDRESS_I <= ADDRESS_I + 1;
							
							if (WCOUNT = 162) then
								WCOUNT <= (others => '0');
								CURRENT_STATE <= IDLE;
							end if;
							
							
					when READ_RAM =>
							
							ADDRESS_O <= std_logic_vector(ADDRESS_R_I);
							
							CE_O <= '0';
							IF (WCOUNT_R = 0 OR WCOUNT_R = 81) then
								OE_O <= '0';
							end if;
							
							IF (WCOUNT_R = 80 OR WCOUNT_R = 161) then
									
								if (ADDRESS_R_I(0) = '0') then
									DATAOL <= DATA_O_RAM;
								else
									DATAOR <= DATA_O_RAM;
								end if;
								CE_O <= '1';
								OE_O <= '1';
							end if;
							
							WCOUNT_R <= WCOUNT_R + 1;
							ADDRESS_R_I <= ADDRESS_R_I + 1;
							
							if (WCOUNT_R = 162) then
								WCOUNT_R <= (others => '0');
								CURRENT_STATE <= IDLE;
							end if;
					
			end case;
			end if;
			
		end if;

end process;


end Behavioral;

