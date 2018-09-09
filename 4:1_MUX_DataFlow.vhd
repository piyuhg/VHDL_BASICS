library ieee;
use ieee.std_logic_1164.all;
Entity MUX41_D is
	port( I : in std_logic_vector (3 downto 0) ; S : in std_logic_vector (1 downto 0);
		Y : out std_logic);
end MUX41_D;
Architecture MUX_41_DataFlow of MUX41_D is
begin
	Y <=	(I(0)and(not S(1))and(not S(0)))or
		(I(1)and(not S(1))and S(0))or
		(I(2)and S(1) and (not S(0)))or
		(I(3)and S(1) and S(0)); 
end MUX_41_DataFlow;
