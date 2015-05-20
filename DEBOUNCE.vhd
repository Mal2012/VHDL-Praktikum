library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


use IEEE.NUMERIC_STD.ALL;



entity DEBOUNCE is
    Port ( CLK : in  STD_LOGIC;
			  CLK_400 : in STD_LOGIC; -- CLK 400 zum Entprellen
           RESET : in  STD_LOGIC;
           BUTTON_I : in  STD_LOGIC_VECTOR (4 downto 0); -- Eingehende Button Signale 
			  BUTTON_O : out  STD_LOGIC_VECTOR (4 downto 0) -- Entprellte ausgehende Button Signale
			  );
end DEBOUNCE;


architecture Behavioral of DEBOUNCE is
	type shift_array is array (0 to 4) of std_logic_vector(4 downto 0); -- Schieberegister zum Entprellen 2 Dimensional 
	signal shift : shift_array;
	
begin

process (CLK) 
	begin
	if (rising_edge(CLK)) then
		if RESET = '1' then
			shift <= (others=>(others=>'0'));  -- Reset des Schieberegisters
		else
			BUTTON_O <= "00000"; -- Zuweisung des Ausgangssignals auf 00000, damit Ausgangssignal nur für einen Takt anliegt, Rücksetzen aller Buttonwerte
			for i in 0 to 4 loop -- Schleife um bei jeder steigenden Taktflanke des CLK 400 Signals den Wert des Buttons in das Schieberegister zu übernehmen
				if CLK_400='1' then
					shift(i) <= BUTTON_I(i) & shift(i)(4 downto 1); -- Shift des Schieberegisters um eine Stelle
					if shift(i)="01111" then -- Wenn im Schieberegister 4 mal die 1 und einmal die 0 steht liegt wurde der Button sicher gedrückt und wieder Losgelassen
							BUTTON_O(i) <= '1'; -- Setzen des Ausgangssignals für den entsprechenden Button 
					end if;
				end if;
	
			end loop;
		end if;
	end if;
	end process;
end Behavioral;

