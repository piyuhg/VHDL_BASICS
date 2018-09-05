library ieee;
use ieee.std_logic_1164.all;
Entity XOR_Gate is
	port(A,B : in std_logic;
		C : out std_logic);
end XOR_Gate;
Architecture XOR_DataFlow of XOR_Gate is
	begin
	C <= A xor B;
end XOR_DataFlow;
