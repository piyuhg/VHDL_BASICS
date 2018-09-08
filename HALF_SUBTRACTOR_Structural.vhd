library ieee;
use ieee.std_logic_1164.all;
Entity HS_S is
	port(A, B : in std_logic;
		Diff, Borr : out std_logic);
end HS_S;
Architecture HS_Structural of HS_S is
	Component XOR_Gate
		port (A, B : in std_logic; C : out std_logic);
	end Component;
	Component AND_Gate
		port (A, B : in std_logic; C : out std_logic);
	end Component;
	Component NOT_Gate
		port (A : in std_logic; C : out std_logic);
	end Component;
	signal s1 : std_logic;
	begin
	XOR1 : XOR_Gate port map(A,B,Diff);
	NOT1 : NOT_Gate port map(A,s1);
	AND1 : AND_Gate port map(s1,B,Borr);
end HS_Structural;
