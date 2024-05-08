library ieee;
-- ONLY STANDARD PACKAGES SUPPORTED FROM IEEE
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- STANDARD PACKAGES NOT SUPPORTED FROM IEEE
-- use std_logic_arith.all;
-- use std_logic_unsigned.all;
-- use std_logic_signed.all;

-- Although both VHDL standard and 'numerical_std' package define shift functions,
-- they sometimes connot be synthesized automacally. 
-- Is better to do with '&' operator

-------------------------------------------
-- 		SHIFT OPERATION
-------------------------------------------
signal data					: std_logic_vector(7 downto 0);
signal rotate				: std_logic_vector(7 downto 0);
signal logical_shift		: std_logic_vector(7 downto 0);
signal arithmetical_shift	: std_logic_vector(7 downto 0);

-- ROTATE 'DATA' to right 3 bits
rotate <= data(2 downto 0) & data(8 downto 3);

-- LOGICAL RIGHT SHIFT of 3 bists
logical_shift <= "000" & data(8 downto 3);

-- ARITHMETICAL RIGHT SHIFT OF 3 bits
arithmetical_shift <= data (8) & data(8) & data(8) & data(8 downto 3);
