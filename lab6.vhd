-----------------------------------------------------
-- Following code is a Digital Design class lab (#6)
-- replicating a prior lab (#4). Lab #4 used 74LSxx
-- chips to make a 2421 BCD to 8421 BCD translator.
-- We were instructed to use basic_gates.vhd to mimic
-- the 74LSxx chips in our VHDL code. This code
-- implements the design from lab #4, which only
-- consisted of 2-input gates and inverters.
-----------------------------------------------------
-----------------------------------------------------
-- Top level circuit
-----------------------------------------------------
-- Key
--
-- Inputs
-- input(0):	A
-- input(1):	B
-- input(2):	C
-- input(3):	D
--
-- Outputs
-- output(0): W = B*C
-- output(1): X = B*!C + A*!B
-- output(2): Y = !A*C + A*!C
-- output(3): Z = D
-----------------------------------------------------

library ieee;

use work.basic_gates.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab6 is

	port(	input	: in std_logic_vector(0 to 3);			-- input is 4-bit number
		output	: out std_logic_vector(0 to 3)			-- output is 4-bit number
	    );

end lab6;

architecture structure of lab6 is

	signal wire	: std_logic_vector(3 downto 0);				-- temp variables
	signal nots	: std_logic_vector(2 downto 0);				-- inverted signals

begin

  Gate1: NOT_OP port map (A=>input(0), Z=>nots(0));                 -- nots0 = !A
  Gate2: NOT_OP port map (A=>input(1), Z=>nots(1));                 -- nots1 = !B
  Gate3: NOT_OP port map (A=>input(2), Z=>nots(2));                 -- nots2 = !C
  Gate4: AND2_OP port map (A=>input(1), B=>input(2), Z=>output(0)); -- W = B*C
  Gate5: AND2_OP port map (A=>input(1), B=>nots(2), Z=>wire(0));    -- wire0 = B*!C
  Gate6: AND2_OP port map (A=>input(0), B=>nots(1), Z=>wire(1));    -- wire1 = A*!B
  Gate7: OR2_OP port map (A=>wire(0), B=>wire(1), Z=>output(1));    -- X = wire0 + wire1
  Gate8: AND2_OP port map (A=>nots(0), B=>input(2), Z=>wire(2));    -- wire2 = !A*C
  Gate9: AND2_OP port map (A=>input(0), B=>nots(2), Z=>wire(3));    -- wire3 = A*!C
  Gate10: OR2_OP port map (A=>wire(2), B=>wire(3), Z=>output(2));   -- Y = wire2 + wire3
  output(3) <= input(3);                                            -- Z = D

end structure;
