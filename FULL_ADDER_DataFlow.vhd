library ieee;
use ieee.std_logic_1164.all;
Entity FA is
	port(A,B, Cin : in std_logic;
		Sum ,Cout : out std_logic);
end FA;
Architecture FA_DataFlow of FA is
	begin
	Sum <= A xor B xor Cin;
	Cout <= (A and B) or (Cin and (A xor B));	
end FA_DataFlow;
