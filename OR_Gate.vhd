library ieee;
use ieee.std_logic_1164.all;
Entity OR_Gate is
	port(A,B : in std_logic;
		C : out std_logic);
end OR_Gate;
Architecture OR_DataFlow of OR_Gate is
	begin
	C <= A or B;
end OR_DataFlow;

