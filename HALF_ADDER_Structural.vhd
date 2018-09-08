library ieee;
use ieee.std_logic_1164.all;
Entity HA_S is
	port(A, B : in std_logic;
		Sum, Carry : out std_logic);
end HA_S;
Architecture HA_Structural of HA_S is
	Component XOR_Gate
		port (A, B : in std_logic; C : out std_logic);
	end Component;
	Component AND_Gate
		port (A, B : in std_logic; C : out std_logic);
	end Component;
	begin
	XOR1 : XOR_Gate port map(A,B,Sum);
	AND1 : AND_Gate port map(A,B,Carry);
end HA_Structural;
