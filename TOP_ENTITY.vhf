--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : TOP_ENTITY.vhf
-- /___/   /\     Timestamp : 04/22/2015 17:37:32
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/Malcolm/Documents/GitHub/VHDL-Praktikum/TOP_ENTITY.vhf -w C:/Users/Malcolm/Documents/GitHub/VHDL-Praktikum/TOP_ENTITY.sch
--Design Name: TOP_ENTITY
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity TOP_ENTITY is
   port ( btn     : in    std_logic_vector (4 downto 0); 
          clk_I   : in    std_logic; 
          Reset   : in    std_logic; 
          an      : out   std_logic_vector (3 downto 0); 
          clk_400 : out   std_logic; 
          DP      : out   std_logic; 
          Led     : out   std_logic_vector (7 downto 0); 
          seg     : out   std_logic_vector (6 downto 0));
end TOP_ENTITY;

architecture BEHAVIORAL of TOP_ENTITY is
   signal XLXN_1        : std_logic_vector (4 downto 0);
   signal XLXN_2        : std_logic_vector (4 downto 0);
   signal XLXN_3        : std_logic_vector (4 downto 0);
   signal XLXN_4        : std_logic_vector (4 downto 0);
   signal XLXN_6        : std_logic_vector (3 downto 0);
   signal XLXN_15       : std_logic_vector (4 downto 0);
   signal clk_400_DUMMY : std_logic;
   component CONTROL_UNIT
      port ( CLK_I     : in    std_logic; 
             RESET_I   : in    std_logic; 
             SELECT_I  : in    std_logic_vector (4 downto 0); 
             BCD_01_O  : out   std_logic_vector (4 downto 0); 
             BCD_02_O  : out   std_logic_vector (4 downto 0); 
             BCD_03_O  : out   std_logic_vector (4 downto 0); 
             BCD_04_O  : out   std_logic_vector (4 downto 0); 
             LED_O     : out   std_logic_vector (7 downto 0); 
             DPS_O     : out   std_logic_vector (3 downto 0); 
             PLAY_O    : out   std_logic; 
             REC_O     : out   std_logic; 
             REVERSE_O : out   std_logic);
   end component;
   
   component FREQ_DIVIDER
      port ( CLK_I     : in    std_logic; 
             RESET_I   : in    std_logic; 
             CLK_400_O : out   std_logic; 
             CLK_48_O  : out   std_logic);
   end component;
   
   component SEV_SEG_MUX
      port ( CLK_I     : in    std_logic; 
             CLK_400_I : in    std_logic; 
             RESET_I   : in    std_logic; 
             BCD_01_I  : in    std_logic_vector (4 downto 0); 
             BCD_02_I  : in    std_logic_vector (4 downto 0); 
             BCD_03_I  : in    std_logic_vector (4 downto 0); 
             BCD_04_I  : in    std_logic_vector (4 downto 0); 
             DPS_I     : in    std_logic_vector (3 downto 0); 
             DP_O      : out   std_logic; 
             ANODE_O   : out   std_logic_vector (3 downto 0); 
             DISPLAY_O : out   std_logic_vector (6 downto 0));
   end component;
   
   component DEBOUNCE
      port ( CLK      : in    std_logic; 
             CLK_400  : in    std_logic; 
             RESET    : in    std_logic; 
             BUTTON_I : in    std_logic_vector (4 downto 0); 
             BUTTON_O : out   std_logic_vector (4 downto 0));
   end component;
   
begin
   clk_400 <= clk_400_DUMMY;
   XLXI_1 : CONTROL_UNIT
      port map (CLK_I=>clk_I,
                RESET_I=>Reset,
                SELECT_I(4 downto 0)=>XLXN_15(4 downto 0),
                BCD_01_O(4 downto 0)=>XLXN_1(4 downto 0),
                BCD_02_O(4 downto 0)=>XLXN_2(4 downto 0),
                BCD_03_O(4 downto 0)=>XLXN_3(4 downto 0),
                BCD_04_O(4 downto 0)=>XLXN_4(4 downto 0),
                DPS_O(3 downto 0)=>XLXN_6(3 downto 0),
                LED_O(7 downto 0)=>Led(7 downto 0),
                PLAY_O=>open,
                REC_O=>open,
                REVERSE_O=>open);
   
   XLXI_2 : FREQ_DIVIDER
      port map (CLK_I=>clk_I,
                RESET_I=>Reset,
                CLK_48_O=>open,
                CLK_400_O=>clk_400_DUMMY);
   
   XLXI_3 : SEV_SEG_MUX
      port map (BCD_01_I(4 downto 0)=>XLXN_1(4 downto 0),
                BCD_02_I(4 downto 0)=>XLXN_2(4 downto 0),
                BCD_03_I(4 downto 0)=>XLXN_3(4 downto 0),
                BCD_04_I(4 downto 0)=>XLXN_4(4 downto 0),
                CLK_I=>clk_I,
                CLK_400_I=>clk_400_DUMMY,
                DPS_I(3 downto 0)=>XLXN_6(3 downto 0),
                RESET_I=>Reset,
                ANODE_O(3 downto 0)=>an(3 downto 0),
                DISPLAY_O(6 downto 0)=>seg(6 downto 0),
                DP_O=>DP);
   
   XLXI_4 : DEBOUNCE
      port map (BUTTON_I(4 downto 0)=>btn(4 downto 0),
                CLK=>clk_I,
                CLK_400=>clk_400_DUMMY,
                RESET=>Reset,
                BUTTON_O(4 downto 0)=>XLXN_15(4 downto 0));
   
end BEHAVIORAL;


