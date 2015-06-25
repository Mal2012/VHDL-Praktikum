
-- VHDL Instantiation Created from source file VOLUME_CNT.vhd -- 16:09:53 06/24/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT VOLUME_CNT
	PORT(
		CLK_48 : IN std_logic;
		VOL : IN std_logic_vector(7 downto 0);
		DATA_L : IN std_logic_vector(11 downto 0);
		DATA_R : IN std_logic_vector(11 downto 0);          
		DATA_R_O : OUT std_logic_vector(11 downto 0);
		DATA_L_O : OUT std_logic_vector(11 downto 0)
		);
	END COMPONENT;

	Inst_VOLUME_CNT: VOLUME_CNT PORT MAP(
		CLK_48 => ,
		VOL => ,
		DATA_L => ,
		DATA_R => ,
		DATA_R_O => ,
		DATA_L_O => 
	);


