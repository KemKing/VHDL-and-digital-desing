library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.al;
--

-- std_logic_vector signals
-- In VHDL, std_logic_vector is a data type that represents an array of std_logic elements 
-- ( std_logic can take on one of the standard logic values '0', '1', 'Z', 'W', 'L', 'H', '-', or 'U')),
-- where each element can represent a single bit. 
-- This data type is widely used in digital design to model buses, registers, and other multi-bit signals.
signal s1 : std_logic_vector (3 downto 0);
signal s2 : std_logic_vector (3 downto 0);
signal s3 : std_logic_vector (3 downto 0);
signal s4 : std_logic_vector (3 downto 0);
signal s5 : std_logic_vector (3 downto 0);
signal s6 : std_logic_vector (3 downto 0);

-- unsigned signals
-- Unsigned is a predefined data type in VHDL, it is an array of std_logic data type to,
-- but it represents unsigned integer values. It is also commonly used for arithmetic operations but only for non-negative integer values. 
-- Like signed, unsigned supports arithmetic operations, 
-- making it suitable for applications where only positive integer values are expected, such as counters, address registers, or data widths.
signal u1 : unsigned (3 downto 0);
signal u2 : unsigned (3 downto 0);
signal u3 : unsigned (3 downto 0);
signal u4 : unsigned (3 downto 0);
signal u5 : unsigned (3 downto 0);
signal u6 : unsigned (3 downto 0);
signal u7 : unsigned (3 downto 0);

-- FROM STD_LOGIC_VECTOR TO UNSIGNED 
u1 <= unsigned (s1);

-- FROM NATURAL to UNSIGNED
-- 5 is a NATURAL Number
u2 <= to_unsigned(5,4);

-- FROM UNSIGEND TO STD_LOGIC_VECTOR
s2 <= std_logic_vector(u3);

-- FROM NATURAL TO STD_LOGIC_VECTOR
-- 5 is a NATURAL Number
s3 <= std_logic_vector(to_unsigned(5,4));

-- ARITHMETIC OPERATIONS

-- SUM of two unsinged data type
u4 <= u2 + u1;

-- SUM of one unsigned and one NATURAL
u5 <= u2 + 1;

-- SUM of two STD_LOGIC_VECTOR (neet first to convert in unsigned or signed data type, perform the addidion, and then convert the
-- result to the STE_LOGIC_VECTOR data type
s5 <= std_logic_vector( unsigned(s2) + unsigned(s1) );
s6 <= std_logic_vector( unsigned(s2) + 1 );


