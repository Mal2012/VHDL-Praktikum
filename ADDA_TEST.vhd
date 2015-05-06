--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:33:36 04/29/2015
-- Design Name:   
-- Module Name:   E:/Namisslo_Koegler/HDL_Praktikum/ADDA_TEST.vhd
-- Project Name:  HDL_Praktikum
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ADDA
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
 
ENTITY ADDA_TEST IS
END ADDA_TEST;
 
ARCHITECTURE behavior OF ADDA_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ADDA
    PORT(
         CLK_I : IN  std_logic;
         CLK_48_I : IN  std_logic;
         RESET_I : IN  std_logic;
         ADDATA_L_I : IN  std_logic;
			ADDATA_R_I : IN  std_logic;
         DA_BUS_R_O : IN  std_logic_vector(11 downto 0);
         DA_BUS_L_O : IN  std_logic_vector(11 downto 0);
			ics_o : out std_logic;
			sample_o: out std_logic;
         ADCLK_O : OUT  std_logic;
         ADCS_O : OUT  std_logic;
         DADATA_L_O : OUT  std_logic;
			DADATA_R_O : OUT  std_logic;
         DACS_O : OUT  std_logic;
         AD_BUS_R_O : OUT  std_logic_vector(11 downto 0);
         AD_BUS_L_O : OUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK_I : std_logic := '0';
   signal CLK_48_I : std_logic := '0';
   signal RESET_I : std_logic := '0';
   signal ADDATA_L_I : std_logic := '0';
	signal ADDATA_R_I : std_logic := '0';
   signal DA_BUS_R_O : std_logic_vector(11 downto 0) := (others => '0');
   signal DA_BUS_L_O : std_logic_vector(11 downto 0) := (others => '0');

 	--Outputs
   signal ADCLK_O : std_logic;
   signal ADCS_O : std_logic;
   signal DADATA_R_O : std_logic;
	signal DADATA_L_O : std_logic;
   signal DACS_O : std_logic;
	signal sample_o : std_logic;
	signal ics_o : std_logic;
   signal AD_BUS_R_O : std_logic_vector(11 downto 0);
   signal AD_BUS_L_O : std_logic_vector(11 downto 0);

type word_type is array (1 to 3) of std_logic_vector(15 downto 0);
type wordda_type is array (1 to 3) of std_logic_vector(11 downto 0);
constant word : word_type := ("1010101010100000",
                                "1111100011110000",
                                "1010100011110000");
constant wordda : wordda_type := ("101010101010",
                                "111110001111",
                                "101010001111");							  

   -- Clock period definitions
   constant CLK_I_period : time := 10 ns;
   constant CLK_48_I_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ADDA PORT MAP (
          CLK_I => CLK_I,
          CLK_48_I => CLK_48_I,
          RESET_I => RESET_I,
          ADDATA_L_I => ADDATA_L_I,
			 ADDATA_R_I => ADDATA_R_I,
          DA_BUS_R_O => DA_BUS_R_O,
          DA_BUS_L_O => DA_BUS_L_O,
          ADCLK_O => ADCLK_O,
          ADCS_O => ADCS_O,
			 ics_o => ics_o,
			 sample_o => sample_o,
          DADATA_R_O => DADATA_R_O,
			 DADATA_L_O => DADATA_L_O,
          DACS_O => DACS_O,
          AD_BUS_R_O => AD_BUS_R_O,
          AD_BUS_L_O => AD_BUS_L_O
        );

   -- Clock process definitions
   CLK_I_process :process
   begin
		CLK_I <= '0';
		wait for CLK_I_period/2;
		CLK_I <= '1';
		wait for CLK_I_period/2;
		
   end process;
 
   CLK_48_I_process :process
   begin
		CLK_48_I <= '0';
		wait for CLK_48_I_period/2;
		CLK_48_I <= '1';
		wait for CLK_48_I_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin			
		RESET_I <= '1';
		wait for 10ns;
		RESET_I <= '0';

		
      -- insert stimulus here 
		--wait for 65ns;
		for j in 1 to 3 loop -- 3 Datenpakete
				wait for 30ns;
						DA_BUS_R_O <= wordda(j);
						DA_BUS_L_O <= wordda(j);
				for i in 0 to 15 loop	-- abarbeiten der einzelnen bits
						ADDATA_L_I <= word(j)(i);
						ADDATA_R_I <= word(j)(i); wait for 80ns;
				end loop;
				wait for 290ns;
    end loop;

      wait;
   end process;

END;
