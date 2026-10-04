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

    constant rnd_constant : matrix (15 downto 0) := (
        0 => x"000000000000003c", 1 => x"000000000000002d", 2 => x"000000000000001e", 3 => x"000000000000000f",
        4 => x"00000000000000f0", 5 => x"00000000000000e1", 6 => x"00000000000000d2", 7 => x"00000000000000c3",
        8 => x"00000000000000b4", 9 => x"00000000000000a5", 10 => x"0000000000000096", 11 => x"0000000000000087",
        12 => x"0000000000000078", 13 => x"0000000000000069", 14 => x"000000000000005a", 15 => x"000000000000004b" 
    );

end package;

