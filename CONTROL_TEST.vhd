--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:06:10 06/24/2015
-- Design Name:   
-- Module Name:   E:/Namislo_Koegler/CONTROL_TEST.vhd
-- Project Name:  HDL_Praktikum
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CONTROL_UNIT
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY CONTROL_TEST IS
END CONTROL_TEST;
 
ARCHITECTURE behavior OF CONTROL_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CONTROL_UNIT
    PORT(
         CLK_I : IN  std_logic;
         RESET_I : IN  std_logic;
         ADBUS_L_I : IN  std_logic_vector(11 downto 0);
         ADBUS_R_I : IN  std_logic_vector(11 downto 0);
         MEMBUS_L_I : IN  std_logic_vector(11 downto 0);
         MEMBUS_R_I : IN  std_logic_vector(11 downto 0);
         SELECT_I : IN  std_logic_vector(4 downto 0);
         BCD_01_O : OUT  std_logic_vector(4 downto 0);
         BCD_02_O : OUT  std_logic_vector(4 downto 0);
         BCD_03_O : OUT  std_logic_vector(4 downto 0);
         BCD_04_O : OUT  std_logic_vector(4 downto 0);
         LED_O : OUT  std_logic_vector(7 downto 0);
         DPS_O : OUT  std_logic_vector(3 downto 0);
         PLAY_O : OUT  std_logic;
         REC_O : OUT  std_logic;
         REVERSE_O : OUT  std_logic;
         DABUS_L_I : OUT  std_logic_vector(11 downto 0);
         DABUS_R_I : OUT  std_logic_vector(11 downto 0);
         MEMBUS_L_O : OUT  std_logic_vector(11 downto 0);
         MEMBUS_R_O : OUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_I : std_logic := '0';
   signal RESET_I : std_logic := '0';
   signal ADBUS_L_I : std_logic_vector(11 downto 0) := (others => '0');
   signal ADBUS_R_I : std_logic_vector(11 downto 0) := (others => '0');
   signal MEMBUS_L_I : std_logic_vector(11 downto 0) := (others => '0');
   signal MEMBUS_R_I : std_logic_vector(11 downto 0) := (others => '0');
   signal SELECT_I : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal BCD_01_O : std_logic_vector(4 downto 0);
   signal BCD_02_O : std_logic_vector(4 downto 0);
   signal BCD_03_O : std_logic_vector(4 downto 0);
   signal BCD_04_O : std_logic_vector(4 downto 0);
   signal LED_O : std_logic_vector(7 downto 0);
   signal DPS_O : std_logic_vector(3 downto 0);
   signal PLAY_O : std_logic;
   signal REC_O : std_logic;
   signal REVERSE_O : std_logic;
   signal DABUS_L_I : std_logic_vector(11 downto 0);
   signal DABUS_R_I : std_logic_vector(11 downto 0);
   signal MEMBUS_L_O : std_logic_vector(11 downto 0);
   signal MEMBUS_R_O : std_logic_vector(11 downto 0);

   -- Clock period definitions
   constant CLK_I_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CONTROL_UNIT PORT MAP (
          CLK_I => CLK_I,
          RESET_I => RESET_I,
          ADBUS_L_I => ADBUS_L_I,
          ADBUS_R_I => ADBUS_R_I,
          MEMBUS_L_I => MEMBUS_L_I,
          MEMBUS_R_I => MEMBUS_R_I,
          SELECT_I => SELECT_I,
          BCD_01_O => BCD_01_O,
          BCD_02_O => BCD_02_O,
          BCD_03_O => BCD_03_O,
          BCD_04_O => BCD_04_O,
          LED_O => LED_O,
          DPS_O => DPS_O,
          PLAY_O => PLAY_O,
          REC_O => REC_O,
          REVERSE_O => REVERSE_O,
          DABUS_L_I => DABUS_L_I,
          DABUS_R_I => DABUS_R_I,
          MEMBUS_L_O => MEMBUS_L_O,
          MEMBUS_R_O => MEMBUS_R_O
        );

   -- Clock process definitions
   CLK_I_process :process
   begin
		CLK_I <= '0';
		wait for CLK_I_period/2;
		CLK_I <= '1';
		wait for CLK_I_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		RESET_I <= '1';
      wait for 10 ns;	
		RESET_I <= '0';
		wait for 10 ns;
      wait for CLK_I_period*10;
		SELECT_I <= "10000";
		wait for CLK_I_period/2;
		wait for 10 ns;
		SELECT_I <= "00001";
		wait for 30 ns;
		SELECT_I <= "00001";
		wait for 10 ns;
		SELECT_I <= "10000";
		wait for CLK_I_period/2;
		SELECT_I <= "10000";
		wait for CLK_I_period/2;
		SELECT_I <= "10000";
		wait for CLK_I_period*2;
		SELECT_I <= "10000";
      -- insert stimulus here 
		
      wait;
   end process;

END;
