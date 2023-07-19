----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/21/2022 07:09:10 AM
-- Design Name: 
-- Module Name: ROMNew - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity ROM is
    Port ( memorySel : in STD_LOGIC_VECTOR (2 downto 0);
           Instruction_Bus : out STD_LOGIC_VECTOR (11 downto 0));
end ROM;

architecture Behavioral of ROM is


type rom_type is array (0 to 7) of std_logic_vector(11 downto 0);
signal instruction_ROM : rom_type := (
     "101110000000", --mov R7 0
     "100010000001", --mov R1 1
     "100100000010", --mov R2 2
     "100110000011", --mov R3 3
     "001110010000", --add R7 R1
     "001110100000", --add R7 R2
     "001110110000", --add R7 R3
     "110000000111"  --JZR R0 7
     ---"000000000000"
    
   
 );

begin
    Instruction_Bus <= instruction_ROM(to_integer(unsigned(memorySel)));

end Behavioral;