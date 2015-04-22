library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


use IEEE.NUMERIC_STD.ALL;



entity DEBOUNCE is
    Port ( CLK : in  STD_LOGIC;
			  CLK_400 : in STD_LOGIC;
           RESET : in  STD_LOGIC;
           BUTTON_I : in  STD_LOGIC_VECTOR (4 downto 0);
			  BUTTON_O : out  STD_LOGIC_VECTOR (4 downto 0)
			  );
end DEBOUNCE;


architecture Behavioral of DEBOUNCE is
	type shift_array is array (0 to 4) of std_logic_vector(4 downto 0);
	signal shift : shift_array;
	
begin

process (CLK) 
	begin
	if (rising_edge(CLK)) then
		if RESET = '1' then
			shift <= (others=>(others=>'0'));
		else
			BUTTON_O <= "00000";
			for i in 0 to 4 loop
				if CLK_400='1' then
					shift(i) <= BUTTON_I(i) & shift(i)(4 downto 1);
					if shift(i)="01111" then
							BUTTON_O(i) <= '1';
					end if;
				end if;
	
			end loop;
		end if;
	end if;
	end process;
end Behavioral;

