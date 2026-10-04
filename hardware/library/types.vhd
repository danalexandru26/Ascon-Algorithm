----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Bulzan Dan-Alexandru
-- 
-- Create Date: 4/10/2026 5:0:00 PM
-- Design Name: User Defined Types and Constants
-- Module Name:
-- Project Name: Ascon Family Algorithms
-- Target Devices: Digilent Arty Z7 
-- Tool Versions: 
-- Description: Types and Constants
-- 
-- Dependencies: 
-- 
-- Revision: B0
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package types is
    type matrix is array (natural range <>) of std_logic_vector(63 downto 0);
    type sbox_matrix is array (natural range <>) of std_logic_vector(4 downto 0);
    
    
    constant initial_values : matrix(3 downto 0) := (
        0 => x"00001000808c0001", 1 => x"0000080100cc0002", 2 => x"0000080000cc0003", 3 => x"0000080000cc0004"
    );

    constant rnd_constant : matrix(15 downto 0) := (
        0 => x"000000000000003c", 1 => x"000000000000002d", 2 => x"000000000000001e", 3 => x"000000000000000f",
        4 => x"00000000000000f0", 5 => x"00000000000000e1", 6 => x"00000000000000d2", 7 => x"00000000000000c3",
        8 => x"00000000000000b4", 9 => x"00000000000000a5", 10 => x"0000000000000096", 11 => x"0000000000000087",
        12 => x"0000000000000078", 13 => x"0000000000000069", 14 => x"000000000000005a", 15 => x"000000000000004b" 
    );
    
    constant sbox_substitution : sbox_matrix(31 downto 0) := (
        0 => 5x"4", 1 => 5x"b", 2 => 5x"1f", 3 => 5x"14", 4 => 5x"1a", 5 => 5x"15", 6 => 5x"9", 7 => 5x"2",
        8 => 5x"1b", 9 => 5x"5", 10 => 5x"8", 11 => 5x"12", 12 => 5x"1d", 13 => 5x"3", 14 => 5x"6", 15 => 5x"1c",
        16 => 5x"1e", 17 => 5x"13", 18 => 5x"7", 19 => 5x"e", 20 => 5x"0", 21 => 5x"d", 22 => 5x"11", 23 => 5x"18",
        24 => 5x"10", 25 => 5x"c", 26 => 5x"1", 27 => 5x"19", 28 => 5x"16", 29 => 5x"a", 30 => 5x"f", 31 => 5x"17" 
    );

end package;

