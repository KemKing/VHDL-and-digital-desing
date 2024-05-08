library ieee;
-- ONLY STANDARD PACKAGES SUPPORTED FROM IEEE
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- STANDARD PACKAGES NOT SUPPORTED FROM IEEE
-- use std_logic_arith.all;
-- use std_logic_unsigned.all;
-- use std_logic_signed.all;

-------------------------------------------
-- 		CONCATENATION PERATION
-------------------------------------------
-- The same principle applies to unsigned and signed data types as well, naturally, 
-- when dealing with concatenation among themselves, just as described for std_logic_vector.

signal a1: std_logic;
signal a4: std_logic_vector(3 downto 0);
signal b8: std_logic_vector(7 downto 0);
signal c8: std_logic_vector(7 downto 0);
signal d8: std_logic_vector(7 downto 0);

-- concatenate 4 bit with 4 bit for 8 bit in total 
b8 <= a4 & a4;

-- concatenate 1 bit, 1 bit, 4 bit and 2 zero bit for 8 bit in total
c8 <= a1 & a1 & a4 & "00";

-- concatenate 4 bit (of b8) and 4 bit (of c8) for 8 bit in total 
d8 <= b8(3 downto 0) & c8(3 downto 0);
