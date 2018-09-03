library ieee;
use ieee.std_logic_1164.all;
Entity NOT_Gate is
	port(A : in std_logic;
		C : out std_logic);
end NOT_Gate;
Architecture NOT_DataFlow of NOT_Gate is
	begin
	C <= not A ;
end NOT_DataFlow;

