library ieee;
use ieee.std_logic_1164.all;
Entity NAND_Gate is
	port(A,B : in std_logic;
		C : out std_logic);
end NAND_Gate;
Architecture NAND_DataFlow of NAND_Gate is
	begin
	C <= A nand B;
end NAND_DataFlow;
