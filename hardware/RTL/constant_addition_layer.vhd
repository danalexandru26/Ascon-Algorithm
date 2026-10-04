----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Bulzan Dan-Alexandru
-- 
-- Create Date: 4/10/2026 10:00:00 PM
-- Design Name: Constant Addition Layer
-- Module Name:
-- Project Name: Ascon Family Algorithms
-- Target Devices: Digilent Arty Z7 
-- Tool Versions: 
-- Description: Constant Addition Operation
-- 
-- Dependencies: package.types
-- 
-- Revision: B0
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

library types;
use types.types.all;

entity constant_addition is port(
    i_state: in matrix(4 downto 0);
    i_round: in integer range 0 to 15;
    o_state: out matrix(4 downto 0)
);
end constant_addition;

architecture RTL of constant_addition is
    begin
    
        o_state(0) <= i_state(0);
        o_state(1) <= i_state(1);
        o_state(2) <= i_state(2) xor rnd_constant(i_round);
        o_state(3) <= i_state(3);      
        o_state(4) <= i_state(4);
    
end RTL;