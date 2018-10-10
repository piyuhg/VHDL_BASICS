library ieee;
use ieee.std_logic_1164.all;

Entity DECODER_38 is
	port( E : in std_logic; I : in std_logic_vector (2 downto 0);
		O : out std_logic_vector (0 to 7));
end DECODER_38;
Architecture DECODER_38_Behav of DECODER_38 is
begin
	process(E,I) is
	begin
		if (E = '0' ) then
			case I is
			when "000" => O <= "00000001";
			when "001" => O <= "00000010";
			when "010" => O <= "00000100";
			when "011" => O <= "00001000";
			when "100" => O <= "00010000";
			when "101" => O <= "00100000";
			when "110" => O <= "01000000";
			when "111" => O <= "10000000";
			when others => null;
			end case;
		else
			O <= "00000000";
		end if;
	end process;
end DECODER_38_Behav;	
