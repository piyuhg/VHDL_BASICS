library ieee;
use ieee.std_logic_1164.all;
Entity FS_S is
	port(A, B, Bin : in std_logic;
		Diff, Bout : out std_logic);
end FS_S;
Architecture FS_Structural of FS_S is
	Component XOR_Gate
		port (A, B : in std_logic; C : out std_logic);
	end Component;
	Component AND_Gate
		port (A, B : in std_logic; C : out std_logic);
	end Component;
	Component OR_Gate
		port (A, B : in std_logic; C : out std_logic);
	end Component;
	Component NOT_Gate
		port (A : in std_logic; C : out std_logic);
	end Component;
	Component XNOR_Gate
		port (A, B : in std_logic; C : out std_logic);
	end Component;
	signal s1,s2,s3,s4,s5 : std_logic ;
	begin
	XOR1 : XOR_Gate port map(A,B,s1);
	XOR2 : XOR_Gate port map(s1,Bin,Diff);
	NOT1 : NOT_Gate port map(A,s2);
	AND1 : AND_Gate port map(s2,B,s3);
	XNOR1 : XNOR_Gate port map(A,B,s4);
	AND2 : AND_Gate port map(Bin,s4,s5);
	OR1  : OR_Gate port map(s3,s5,Bout);
end FS_Structural;
