----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Bulzan Dan-Alexandru
-- 
-- Create Date: 4/10/2026 10:00:00 PM
-- Design Name: Substitution Layer
-- Module Name:
-- Project Name: Ascon Family Algorithms
-- Target Devices: Digilent Arty Z7 
-- Tool Versions: 
-- Description: 5-Bit Substitution Operation
-- 
-- Dependencies: package.numeric_std, package.std_logic_1164, package.types
-- 
-- Revision: B0
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library types;
use types.types.all;

entity bit_substitution is port(
    i_state: in matrix(4 downto 0);
    o_state: out matrix(4 downto 0)
);
end bit_substitution;

architecture RTL of bit_substitution is
    begin
    
    gen_substitution: for i in 0 to 63 generate
        signal look_up : std_logic_vector(4 downto 0);
        begin
            look_up <= i_state(4)(i) & i_state(3)(i) & i_state(2)(i) & i_state(1)(i) & i_state(0)(i);
            
            o_state(4)(i) <= sbox_substitution(to_integer(unsigned(look_up)))(4);
            o_state(3)(i) <= sbox_substitution(to_integer(unsigned(look_up)))(3);
            o_state(2)(i) <= sbox_substitution(to_integer(unsigned(look_up)))(2);
            o_state(1)(i) <= sbox_substitution(to_integer(unsigned(look_up)))(1);
            o_state(0)(i) <= sbox_substitution(to_integer(unsigned(look_up)))(0);
    
    end generate;
    
end RTL;
