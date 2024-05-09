library ieee;
-- ONLY STANDARD PACKAGES SUPPORTED FROM IEEE
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- STANDARD PACKAGES NOT SUPPORTED FROM IEEE
-- use std_logic_arith.all;
-- use std_logic_unsigned.all;
-- use std_logic_signed.all;

-------------------------------------------
-- 		TRI-STATE BUFFER
-------------------------------------------
-- When the output enable is '1', then input is passed to output.
-- On the other hand, when it is '0', the output appears to be an open circuit.
-- The value 'Z' can only be synthesized by a TRI-STATE BUFFER
-- The TRI-STATE BUFFER can only be used for I/O ports that are mapped to the physical
-- pins of the FPGA device

o_output <= r_data when output_enable = '1' else 'Z';

-------------------------------------------
-- 		BIDIRECTIONAL PORT
-------------------------------------------
-- With a TRI-STATE BUFFER is possible to make a BIDIRECTIONAL PORT for better 
-- utilize a physical I/O pin of the FPGA/ASIC
entity biderectional_port is 
	port
		{
			bi_line : inout std_logic;
		}
end entity biderectional_port;

architecture RTL_biderectional_port of biderectional_port is

r_dir	   : std_logic;
r_input  : std_logic;
r_output : std_logic;

begin
--
--

bi_line <= r_output when r_dir = '1' else 'Z';
r_input	<= bi_line;

end architecture RTL_biderectional_port;
