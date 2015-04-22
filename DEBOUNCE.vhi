
-- VHDL Instantiation Created from source file DEBOUNCE.vhd -- 15:27:55 04/22/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT DEBOUNCE
	PORT(
		CLK : IN std_logic;
		CLK_400 : IN std_logic;
		RESET : IN std_logic;
		BUTTON_I : IN std_logic_vector(4 downto 0);          
		BUTTON_O : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;

	Inst_DEBOUNCE: DEBOUNCE PORT MAP(
		CLK => ,
		CLK_400 => ,
		RESET => ,
		BUTTON_I => ,
		BUTTON_O => 
	);


