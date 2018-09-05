library ieee;
use ieee.std_logic_1164.all;
Entity NOR_Gate is
	port(A,B : in std_logic;
		C : out std_logic);
end NOR_Gate;
Architecture NOR_DataFlow of NOR_Gate is
	begin
	C <= A nor B;
end NOR_DataFlow;
