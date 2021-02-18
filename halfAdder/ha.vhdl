library ieee;
use ieee.std_logic_1164.all; --standard signal package

entity ha is
	port
	(
		a: in std_ulogic;
		b: in std_ulogic;
		o: out std_ulogic;
		c: out std_ulogic
	);
end ha;

architecture behave of ha is
begin
	o <= a xor b;
	c <= a and b;
end behave;

--To check for possible syntax errors, ghdl -s 'file'
--This syntax checks the file but does not actually compile the file

--Some commands of ghdl and gtkwave to keep in mind:
--To syntax-test the file
--ghdl -s [vhdl_file_name]

--To logic-analyze the file (this also allows you to only write the entity when building the exec)
--ghdl -a [vhdl_file_name]

--To build the executable of the test (elaborate)
--ghdl -e [entity] 

--To run the test and output results to a file
--ghdl -r [entity] --vcd=[any_name].vcd

--To visualize the waves from outputted file
--gtkwave [output_file]