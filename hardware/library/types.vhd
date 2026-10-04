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

    constant rnd_constant : matrix(15 downto 0) := (
        0 => x"000000000000003c", 1 => x"000000000000002d", 2 => x"000000000000001e", 3 => x"000000000000000f",
        4 => x"00000000000000f0", 5 => x"00000000000000e1", 6 => x"00000000000000d2", 7 => x"00000000000000c3",
        8 => x"00000000000000b4", 9 => x"00000000000000a5", 10 => x"0000000000000096", 11 => x"0000000000000087",
        12 => x"0000000000000078", 13 => x"0000000000000069", 14 => x"000000000000005a", 15 => x"000000000000004b" 
    );
    
    constant sbox_substitution : sbox_matrix(31 downto 0) := (
        0 => x"4", 1 => x"b", 2 => x"1f", 3 => x"14", 4 => x"1a", 5 => x"15", 6 => x"9", 7 => x"2",
        8 => x"1b", 9 => x"5", 10 => x"8", 11 => x"12", 12 => x"1d", 13 => x"3", 14 => x"6", 15 => x"1c",
        16 => x"1e", 17 => x"13", 18 => x"7", 19 => x"e", 20 => x"0", 21 => x"d", 22 => x"11", 23 => x"18",
        24 => x"10", 25 => x"c", 26 => x"1", 27 => x"19", 28 => x"16", 29 => x"a", 30 => x"f", 31 => x"17" 
    );

end package;

