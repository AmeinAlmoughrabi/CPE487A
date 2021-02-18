library ieee;
use ieee.std_logic_1164.all;

entity ha_tb is --commonly used naming convention by uut (unit under test) followed by _tb when using testbench
end ha_tb;

architecture test of ha_tb is
	component ha
	port
	(
		a: in std_ulogic;
		b: in std_ulogic;
		o: out std_ulogic;
		c: out std_ulogic
	);
	end component; --To make sure these match just verbatim copy these
	
	signal a, b , o, c : std_ulogic;
begin
	half_adder: ha port map (a => a, b => b, o => o, c => c);
	
	process begin --ideally you wanna create sometime of a test that can exhaustively test all of your values
	
	a <= 'X'; --unknown
	b <= 'X';
	wait for 1 ns;
	
	a <= '0'; --zero and zero
	b <= '0';
	wait for 1 ns;
	
	a <= '0'; --zero plus one
	b <= '1';
	wait for 1 ns;
	
	a <= '1'; --one plus zero
	b <= '0';
	wait for 1 ns;
	
	a <= '1'; --one plus one 
	b <= '1';
	wait for 1 ns;
	
	assert false report "Reached end of test";
	wait;
	
	end process;
	
end test;