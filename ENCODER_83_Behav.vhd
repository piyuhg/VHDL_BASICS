library ieee;
use ieee.std_logic_1164.all;
 
Entity ENCODER_83 is
	port(E : in std_logic; I : in std_logic_vector ( 7 downto 0 ); O : out std_logic_vector (0 to 2));
end ENCODER_83;
Architecture ENCODER_83_Behav of ENCODER_83 is 
begin
	process (E,I) is
	begin
		if (E = '0') then
			case I is
			when "00000001" => O <= "000";
			when "00000010" => O <= "001";
			when "00000100" => O <= "010";
			when "00001000" => O <= "011";
			when "00010000" => O <= "100";
			when "00100000" => O <= "101";
			when "01000000" => O <= "110";
			when "10000000" => O <= "111";
			when others => O <= "UUU";			
			end case;
		else
			O <= "ZZZ";
		end if;
	end process;
end ENCODER_83_Behav;
	
 
