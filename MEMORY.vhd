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
			  REVERSE : in  STD_LOGIC;
           UB_O : out  STD_LOGIC;
           DATA_I_R : in  STD_LOGIC_VECTOR (11 downto 0);
           DATA_O_CONTROL_R : out  STD_LOGIC_VECTOR (11 downto 0));
end MEMORY;

architecture Behavioral of MEMORY is

type STATES is (IDLE, WRITE_RAM, READ_RAM, WAIT_WRITE, REVERSE_WAIT); -- Deklaration der States für die Statemachine 
signal CURRENT_STATE : STATES;
signal DATAIR : STD_LOGIC_VECTOR (11 downto 0);
signal DATAIL : STD_LOGIC_VECTOR (11 downto 0);
signal I_DATA_O_RAM : STD_LOGIC_VECTOR (15 downto 0);
signal DATAOR : STD_LOGIC_VECTOR (15 downto 0);
signal DATAOL : STD_LOGIC_VECTOR (15 downto 0);
signal ADDRESS_I : unsigned (22 downto 0);
signal ADDRESS_R_I : unsigned (22 downto 0);
signal WCOUNT : unsigned (7 downto 0);
signal WCOUNT_R : unsigned (7 downto 0);
signal CE_I : STD_LOGIC;
signal WE_I : STD_LOGIC;
signal OE_I : STD_LOGIC;
begin


PROC_STATE_MACHINE : process(CLK_I)
		begin
		if(rising_edge(CLK_I)) then
			if(RESET_I = '1') then
				CURRENT_STATE <= IDLE;
				CE_I <= '1';
				OE_I <= '1';
				WE_I <= '1';
				LB_O <= '0';
				UB_O <= '0';
				ADDRESS_O <= (others => '0');
				ADDRESS_I <= (others => '0');
				ADDRESS_R_I <= (others => '0');
				DATAOL <= (others => '0');
				DATAOR <= (others => '0');
				I_DATA_O_RAM <= (others => 'Z');
				WCOUNT <= (others => '0');
				WCOUNT_R <= (others => '0');
			else
			
			case CURRENT_STATE is 
					when IDLE =>
					
						if REC = '1' AND PLAY = '0' then 
							
							CURRENT_STATE <= WAIT_WRITE;
						end if;
					
						if PLAY = '1' AND REC = '0' AND CLK_48 = '1' AND REVERSE = '0' then
							WE_I <= '1';
	 						CURRENT_STATE <= READ_RAM;
						end if;
					
					
						if REVERSE = '1' AND PLAY = '0'  AND REC = '0' AND CLK_48 = '1' then
							WE_I <= '1';
							ADDRESS_R_I <= ADDRESS_I;
							CURRENT_STATE <= REVERSE_WAIT;
							
						end if;
					
				   when WAIT_WRITE => 
					
						if CLK_48 = '1' then
							DATAIR <= DATA_I_R;
							DATAIL <= DATA_I_L;
							CURRENT_STATE <= WRITE_RAM;
						end if;
						if REC='0' then
							CURRENT_STATE <= IDLE;
						end if;
						
					when WRITE_RAM =>
							
							ADDRESS_O <= std_logic_vector(ADDRESS_I);
							CE_I <= '0';
							
							IF (WCOUNT = 1 OR WCOUNT = 12) then
								WE_I <= '0';
								
							end if;
							
							IF (WCOUNT = 9 OR WCOUNT = 20) then
								ADDRESS_I <= ADDRESS_I + 1;
								CE_I <= '1';
								WE_I <= '1';	
						
							end if;
							if (WE_I = '0' AND CE_I = '0') then
							if (ADDRESS_I(0) = '0') then
								I_DATA_O_RAM <= "0000" & DATAIL;
							else
								I_DATA_O_RAM <= "0000" & DATAIR;
							end if;
							end if;
							WCOUNT <= WCOUNT + 1;
							
							if (WCOUNT = 21) then
								WCOUNT <= (others => '0');
								CURRENT_STATE <= WAIT_WRITE;
							end if;
							
					when REVERSE_WAIT =>
						if CLK_48 = '1' then
							CURRENT_STATE <= READ_RAM;
						end if;
						if REVERSE='0' then
							CURRENT_STATE <= IDLE;
						end if;
					
							
					when READ_RAM =>
							if ADDRESS_R_I > ADDRESS_I AND  REVERSE = '0' then
								ADDRESS_R_I <= (others => '0');
							else 			
								if REVERSE = '1' AND ADDRESS_R_I = "00000000000000000000000" then
									ADDRESS_R_I <= ADDRESS_I;
								end if;
							end if; 
							
							ADDRESS_O <= std_logic_vector(ADDRESS_R_I);
							CE_I <= '0';
							
							IF (WCOUNT_R = 1 OR WCOUNT_R = 10) then
								OE_I <= '0';
							end if;
							
							IF (WCOUNT_R = 9 OR WCOUNT_R = 18) then
								
								if (ADDRESS_R_I(0) = '0') then
									DATAOL <= DATA_O_RAM;
								else
									DATAOR <= DATA_O_RAM;
								end if;
								CE_I <= '1';
								OE_I <= '1';
								if REVERSE = '0' then
								ADDRESS_R_I <= ADDRESS_R_I + 1;	
								else
								ADDRESS_R_I <= ADDRESS_R_I - 1;
								end if;
							end if;
							
							WCOUNT_R <= WCOUNT_R + 1;
							
							
							if (WCOUNT_R = 19) then
								WCOUNT_R <= (others => '0');
								if REVERSE = '1' then
								CURRENT_STATE <= REVERSE_WAIT;
								else
								CURRENT_STATE <= IDLE;
								end if;
							end if;
					
			end case;
			end if;
			
		end if;

end process;
CE_O <= CE_I;
WE_O <= WE_I;
OE_O <= OE_I;
DATA_O_CONTROL_L <= DATAOL(11 downto 0);
DATA_O_CONTROL_R <= DATAOR(11 downto 0);
DATA_O_RAM <= I_DATA_O_RAM when REC = '1' and CURRENT_STATE = WRITE_RAM else (others => 'Z');
end Behavioral;

