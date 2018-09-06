library ieee;
use ieee.std_logic_1164.all;
Entity HA is
	port(A,B : in std_logic;
		Carry, Sum : out std_logic);
end HA;
Architecture HA_DataFlow of HA is
	begin
	Sum <= A xor B;
	Carry <= A and B;	
end HA_DataFlow;
