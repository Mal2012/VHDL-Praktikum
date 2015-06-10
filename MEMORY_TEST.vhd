--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:35:21 06/10/2015
-- Design Name:   
-- Module Name:   E:/Namislo-Koegler/MEMORY_TEST.vhd
-- Project Name:  HDL_Praktikum
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MEMORY
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
USE ieee.numeric_std.ALL;
 
ENTITY MEMORY_TEST IS
END MEMORY_TEST;
 
ARCHITECTURE behavior OF MEMORY_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MEMORY
    PORT(
         CLK_I : IN  std_logic;
         CLK_48 : IN  std_logic;
         RESET_I : IN  std_logic;
         CE_O : OUT  std_logic;
         OE_O : OUT  std_logic;
         WE_O : OUT  std_logic;
         ADDRESS_O : OUT  std_logic_vector(22 downto 0);
         DATA_O_RAM : INOUT  std_logic_vector(15 downto 0);
         LB_O : OUT  std_logic;
         DATA_I_L : IN  std_logic_vector(11 downto 0);
         DATA_O_CONTROL_L : OUT  std_logic_vector(11 downto 0);
         REC : IN  std_logic;
         PLAY : IN  std_logic;
         UB_O : OUT  std_logic;
         DATA_I_R : IN  std_logic_vector(11 downto 0);
         DATA_O_CONTROL_R : OUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_I : std_logic := '0';
   signal CLK_48 : std_logic := '0';
   signal RESET_I : std_logic := '0';
   signal DATA_I_L : std_logic_vector(11 downto 0) := (others => '0');
   signal REC : std_logic := '0';
   signal PLAY : std_logic := '0';
   signal DATA_I_R : std_logic_vector(11 downto 0) := (others => '0');

	--BiDirs
   signal DATA_O_RAM : std_logic_vector(15 downto 0);

 	--Outputs
   signal CE_O : std_logic;
   signal OE_O : std_logic;
   signal WE_O : std_logic;
   signal ADDRESS_O : std_logic_vector(22 downto 0);
   signal LB_O : std_logic;
   signal DATA_O_CONTROL_L : std_logic_vector(11 downto 0);
   signal UB_O : std_logic;
   signal DATA_O_CONTROL_R : std_logic_vector(11 downto 0);

   -- Clock period definitions
   constant CLK_I_period : time := 10 ns;
   constant CLK_48_period : time := 40 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MEMORY PORT MAP (
          CLK_I => CLK_I,
          CLK_48 => CLK_48,
          RESET_I => RESET_I,
          CE_O => CE_O,
          OE_O => OE_O,
          WE_O => WE_O,
          ADDRESS_O => ADDRESS_O,
          DATA_O_RAM => DATA_O_RAM,
          LB_O => LB_O,
          DATA_I_L => DATA_I_L,
          DATA_O_CONTROL_L => DATA_O_CONTROL_L,
          REC => REC,
          PLAY => PLAY,
          UB_O => UB_O,
          DATA_I_R => DATA_I_R,
          DATA_O_CONTROL_R => DATA_O_CONTROL_R
        );

   -- Clock process definitions
   CLK_I_process :process
   begin
		CLK_I <= '0';
		wait for CLK_I_period/2;
		CLK_I <= '1';
		wait for CLK_I_period/2;
   end process;
 
   CLK_48_process :process
   begin
		CLK_48 <= '0';
		wait for CLK_48_period/2;
		CLK_48 <= '1';
		wait for CLK_48_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		RESET_I <= '1';
      wait for 10 ns;	
		RESET_I <= '0';
		wait for 5 ns;
      wait for CLK_I_period*10;
		
		REC <= '1';
		DATA_I_L <= "111111111111";
		DATA_I_R <= "111111111111";
		wait for CLK_I_period*80;
		DATA_I_L <= "111111011111";
		DATA_I_R <= "111111011111";
		wait for CLK_I_period*82;
		REC <= '0';
		wait for 10 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
