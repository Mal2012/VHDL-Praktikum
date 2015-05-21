--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.4
--  \   \         Application : sch2hdl
--  /   /         Filename : TOP_ENTITY.vhf
-- /___/   /\     Timestamp : 05/20/2015 16:23:48
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/Namislo-Koegler/TOP_ENTITY.vhf -w E:/Namislo-Koegler/TOP_ENTITY.sch
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
   port ( addata_l : in    std_logic; 
          addata_r : in    std_logic; 
          btn      : in    std_logic_vector (4 downto 0); 
          clk_I    : in    std_logic; 
          Reset    : in    std_logic; 
          adclk    : out   std_logic; 
          adcs     : out   std_logic; 
          an       : out   std_logic_vector (3 downto 0); 
          CLK_48   : out   std_logic; 
          clk_400  : out   std_logic; 
          DABUS_L  : out   std_logic_vector (11 downto 0); 
          DABUS_R  : out   std_logic_vector (11 downto 0); 
          daclk    : out   std_logic; 
          dacs     : out   std_logic; 
          dadata_l : out   std_logic; 
          dadata_r : out   std_logic; 
          DP       : out   std_logic; 
          Led      : out   std_logic_vector (7 downto 0); 
          seg      : out   std_logic_vector (6 downto 0));
end TOP_ENTITY;

architecture BEHAVIORAL of TOP_ENTITY is
   signal XLXN_1        : std_logic_vector (4 downto 0);
   signal XLXN_2        : std_logic_vector (4 downto 0);
   signal XLXN_3        : std_logic_vector (4 downto 0);
   signal XLXN_4        : std_logic_vector (4 downto 0);
   signal XLXN_6        : std_logic_vector (3 downto 0);
   signal XLXN_15       : std_logic_vector (4 downto 0);
   signal XLXN_16       : std_logic_vector (11 downto 0);
   signal XLXN_17       : std_logic_vector (11 downto 0);
   signal CLK_48_DUMMY  : std_logic;
   signal DABUS_L_DUMMY : std_logic_vector (11 downto 0);
   signal DABUS_R_DUMMY : std_logic_vector (11 downto 0);
   signal clk_400_DUMMY : std_logic;
   component CONTROL_UNIT
      port ( CLK_I     : in    std_logic; 
             RESET_I   : in    std_logic; 
             ADBUS_L_I : in    std_logic_vector (11 downto 0); 
             ADBUS_R_I : in    std_logic_vector (11 downto 0); 
             SELECT_I  : in    std_logic_vector (4 downto 0); 
             PLAY_O    : out   std_logic; 
             REC_O     : out   std_logic; 
             REVERSE_O : out   std_logic; 
             BCD_01_O  : out   std_logic_vector (4 downto 0); 
             BCD_02_O  : out   std_logic_vector (4 downto 0); 
             BCD_03_O  : out   std_logic_vector (4 downto 0); 
             BCD_04_O  : out   std_logic_vector (4 downto 0); 
             LED_O     : out   std_logic_vector (7 downto 0); 
             DPS_O     : out   std_logic_vector (3 downto 0); 
             DABUS_L_I : out   std_logic_vector (11 downto 0); 
             DABUS_R_I : out   std_logic_vector (11 downto 0));
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
   
   component ADDA
      port ( CLK_I      : in    std_logic; 
             CLK_48_I   : in    std_logic; 
             RESET_I    : in    std_logic; 
             ADDATA_L_I : in    std_logic; 
             ADDATA_R_I : in    std_logic; 
             DA_BUS_R_O : in    std_logic_vector (11 downto 0); 
             DA_BUS_L_O : in    std_logic_vector (11 downto 0); 
             ADCLK_O    : out   std_logic; 
             ADCS_O     : out   std_logic; 
             DADATA_L_O : out   std_logic; 
             DADATA_R_O : out   std_logic; 
             DACLK_O    : out   std_logic; 
             DACS_O     : out   std_logic; 
             AD_BUS_R_O : out   std_logic_vector (11 downto 0); 
             AD_BUS_L_O : out   std_logic_vector (11 downto 0));
   end component;
   
begin
   CLK_48 <= CLK_48_DUMMY;
   clk_400 <= clk_400_DUMMY;
   DABUS_L(11 downto 0) <= DABUS_L_DUMMY(11 downto 0);
   DABUS_R(11 downto 0) <= DABUS_R_DUMMY(11 downto 0);
   XLXI_1 : CONTROL_UNIT
      port map (ADBUS_L_I(11 downto 0)=>XLXN_16(11 downto 0),
                ADBUS_R_I(11 downto 0)=>XLXN_17(11 downto 0),
                CLK_I=>clk_I,
                RESET_I=>Reset,
                SELECT_I(4 downto 0)=>XLXN_15(4 downto 0),
                BCD_01_O(4 downto 0)=>XLXN_1(4 downto 0),
                BCD_02_O(4 downto 0)=>XLXN_2(4 downto 0),
                BCD_03_O(4 downto 0)=>XLXN_3(4 downto 0),
                BCD_04_O(4 downto 0)=>XLXN_4(4 downto 0),
                DABUS_L_I(11 downto 0)=>DABUS_L_DUMMY(11 downto 0),
                DABUS_R_I(11 downto 0)=>DABUS_R_DUMMY(11 downto 0),
                DPS_O(3 downto 0)=>XLXN_6(3 downto 0),
                LED_O(7 downto 0)=>Led(7 downto 0),
                PLAY_O=>open,
                REC_O=>open,
                REVERSE_O=>open);
   
   XLXI_2 : FREQ_DIVIDER
      port map (CLK_I=>clk_I,
                RESET_I=>Reset,
                CLK_48_O=>CLK_48_DUMMY,
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
   
   XLXI_5 : ADDA
      port map (ADDATA_L_I=>addata_l,
                ADDATA_R_I=>addata_r,
                CLK_I=>clk_I,
                CLK_48_I=>CLK_48_DUMMY,
                DA_BUS_L_O(11 downto 0)=>DABUS_L_DUMMY(11 downto 0),
                DA_BUS_R_O(11 downto 0)=>DABUS_R_DUMMY(11 downto 0),
                RESET_I=>Reset,
                ADCLK_O=>adclk,
                ADCS_O=>adcs,
                AD_BUS_L_O(11 downto 0)=>XLXN_16(11 downto 0),
                AD_BUS_R_O(11 downto 0)=>XLXN_17(11 downto 0),
                DACLK_O=>daclk,
                DACS_O=>dacs,
                DADATA_L_O=>dadata_l,
                DADATA_R_O=>dadata_r);
   
end BEHAVIORAL;


