--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:49:52 04/22/2015
-- Design Name:   
-- Module Name:   E:/Namisslo_Koegler/HDL_Praktikum/DEBOUNCE_TEST.vhd
-- Project Name:  HDL_Praktikum
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DEBOUNCE
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
 
ENTITY DEBOUNCE_TEST IS
END DEBOUNCE_TEST;
 
ARCHITECTURE behavior OF DEBOUNCE_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DEBOUNCE
    PORT(
         CLK : IN  std_logic;
         CLK_400 : IN  std_logic;
         RESET : IN  std_logic;
         BUTTON_I : IN  std_logic_vector(4 downto 0);
         BUTTON_O : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal CLK_400 : std_logic := '0';
   signal RESET : std_logic := '0';
   signal BUTTON_I : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal BUTTON_O : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
   constant CLK_400_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DEBOUNCE PORT MAP (
          CLK => CLK,
          CLK_400 => CLK_400,
          RESET => RESET,
          BUTTON_I => BUTTON_I,
          BUTTON_O => BUTTON_O
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
   CLK_400_process :process
   begin
		CLK_400 <= '0';
		wait for CLK_400_period/2;
		CLK_400 <= '1';
		wait for CLK_400_period/2;
		BUTTON_I <= "10010";
		wait for CLK_400_period*5;
		BUTTON_I <= "00000";
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;


END;
