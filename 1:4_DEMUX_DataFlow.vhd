library ieee;
use ieee.std_logic_1164.all;
Entity DEMUX14_D is
	port( Y : in std_logic ; S : in std_logic_vector (1 downto 0);
		I : out std_logic_vector (3 downto 0));
end DEMUX14_D;
Architecture DEMUX_14_DataFlow of DEMUX14_D is
begin
	I(0) <= Y and (not S(1)) and (not S(0));
	I(1) <= Y and (not S(1)) and S(0);
	I(2) <= Y and S(1) and (not S(0));
	I(3) <= Y and S(1) and S(0);
	
end DEMUX_14_DataFlow;
