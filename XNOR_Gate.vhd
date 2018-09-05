library ieee;
use ieee.std_logic_1164.all;
Entity XNOR_Gate is
	port(A,B : in std_logic;
		C : out std_logic);
end XNOR_Gate;
Architecture XNOR_DataFlow of XNOR_Gate is
	begin
	C <= A xnor B;
end XNOR_DataFlow;
