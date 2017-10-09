-----------------------------------------------------
-- Following code is a Digital Design class lab (#6)
-- replicating a prior lab (#4). Lab #4 used 74LSxx
-- chips to make a 8421 BCD to 84-2-1 BCD translator.
-- We were instructed to use basic_gates.vhd to mimic
-- the 74LSxx chips in our VHDL code. This code
-- implements the design from lab #4, which only
-- consisted of 2-input gates and inverters.
-----------------------------------------------------
-----------------------------------------------------
-- Test Bench for Lab 6
-----------------------------------------------------

library ieee;
library std;
library work;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use ieee.std_logic_unsigned.all;
use std.textio.all;
use work.basic_gates.all;

entity lab6_tb is
end;

architecture testbench of lab6_tb is
	signal input_t: std_logic_vector(0 to 3);	-- input is a 4-bit number in 8421 BCD
	signal output_t: std_logic_vector(0 to 3);	-- output is a 4-bit number in 84-2-1 BCD
	
	-- Use lab6 as a component
	component lab6
		port (
			input: in std_logic_vector(0 to 3);
			output: out std_logic_vector(0 to 3)
			);
	end component;
	
begin
	DUT: lab6
		port map ( input=>input_t, output=>output_t );
			
-- Stim pattern
-- Start: 0 ps, End: 1500 ps

process
	begin
	input_t <= "0000";
	wait for 100 ps;
	
	input_t <= "0001";
	wait for 100 ps;
	
	input_t <= "0010";
	wait for 100 ps;

	input_t <= "0011";
	wait for 100 ps;
	
	input_t <= "0100";
	wait for 100 ps;
	
	input_t <= "0101";
	wait for 100 ps;
	
	input_t <= "0110";
	wait for 100 ps;
	
	input_t <= "0111";
	wait for 100 ps;
	
	input_t <= "1000";
	wait for 100 ps;
	
	input_t <= "1001";
	wait for 100 ps;
	
	input_t <= "1010";
	wait for 100 ps;
	
	input_t <= "1011";
	wait for 100 ps;
	
	input_t <= "1100";
	wait for 100 ps;
	
	input_t <= "1101";
	wait for 100 ps;
	
	input_t <= "1110";
	wait for 100 ps;
	
	input_t <= "1111";
	wait;
end process;
end;