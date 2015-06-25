----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:02:27 06/24/2015 
-- Design Name: 
-- Module Name:    VOLUME_CNT - Behavioral 
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

entity VOLUME_CNT is
    Port ( CLK_48 : in std_logic;
			  VOL : in  unsigned (7 downto 0);
           DATA_L : in  STD_LOGIC_VECTOR (11 downto 0);
           DATA_R : in  STD_LOGIC_VECTOR (11 downto 0);
           DATA_R_O : out  STD_LOGIC_VECTOR (11 downto 0);
           DATA_L_O : out  STD_LOGIC_VECTOR (11 downto 0));
end VOLUME_CNT;

architecture Behavioral of VOLUME_CNT is
signal temp_l, temp_r : std_logic_vector(19 downto 0);
begin
process(CLK_48)
begin
temp_l <= STD_LOGIC_VECTOR(unsigned(DATA_L) * VOL);
temp_r <= STD_LOGIC_VECTOR(unsigned(DATA_R) * VOL);
end process;

DATA_R_O <= temp_r(19 downto 8);
DATA_L_O <= temp_l(19 downto 8);


end Behavioral;

