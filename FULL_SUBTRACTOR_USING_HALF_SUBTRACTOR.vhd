library ieee;
use ieee.std_logic_1164.all;
Entity FS_HS is
	port(A, B, Bin : in std_logic; Diff, Bout : out std_logic);
end FS_HS;
Architecture FS_HS_Struct of FS_HS is
	component HS is
	port(A,B : in std_logic; Borr, Diff : out std_logic);
	end component;
	component OR_Gate is
	port(A, B : in std_logic; C : out std_logic);
	end Component;
signal d1,b1,b2 : std_logic;
begin
HS1 : HS port map(A, B,d1,b1);
HS2 : HS port map(Bin, d1, Diff, b2);
OR1 : OR_Gate port map(b1, b2, Bout);
end FS_HS_Struct;
