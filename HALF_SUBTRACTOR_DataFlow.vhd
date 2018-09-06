library ieee;
use ieee.std_logic_1164.all;
Entity HS is
	port(A,B : in std_logic;
		Borr, Diff : out std_logic);
end HS;
Architecture HS_DataFlow of HS is
	begin
	Diff <= A xor B;
	Borr <= (not A) and B;	
end HS_DataFlow;
