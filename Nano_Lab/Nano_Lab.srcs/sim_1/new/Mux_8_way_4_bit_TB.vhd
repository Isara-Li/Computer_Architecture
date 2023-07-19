----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2023 05:39:04 PM
-- Design Name: 
-- Module Name: Mux_8_way_4_bit_TB - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_8_way_4_bit_TB is
--  Port ( );
end Mux_8_way_4_bit_TB;

architecture Behavioral of Mux_8_way_4_bit_TB is
component Mux_8_way_4_bit 
    Port ( R0 : in STD_LOGIC_VECTOR (3 downto 0);
            R1 : in STD_LOGIC_VECTOR (3 downto 0);
            R2 : in STD_LOGIC_VECTOR (3 downto 0);
            R3 : in STD_LOGIC_VECTOR (3 downto 0);
            R4 : in STD_LOGIC_VECTOR (3 downto 0);
            R5 : in STD_LOGIC_VECTOR (3 downto 0);
            R6 : in STD_LOGIC_VECTOR (3 downto 0);
            R7 : in STD_LOGIC_VECTOR (3 downto 0);
           Out_4_bit : out STD_LOGIC_VECTOR (3 downto 0);
           Reg_Sel : in STD_LOGIC_VECTOR (2 downto 0));
end component;

signal R0,R1,R2,R3,R4,R5,R6,R7,Out_4_bit :STD_LOGIC_VECTOR (3 downto 0);
signal Reg_Sel :STD_LOGIC_VECTOR (2 downto 0);
          
begin
uut : Mux_8_way_4_bit 
port map(
R0 => R0,
            R1=> R1,
            R2 => R2,
            R3 => R3,
            R4 => R4,
            R5 => R5,
            R6 => R6,
            R7 => R7,
           Out_4_bit => Out_4_bit,
           Reg_Sel => Reg_Sel);

process
begin
 R0 <= "1001";
 R5 <= "0000";
 Reg_Sel <= "000";
 wait for 100ns;
 R7 <= "1101";
  Reg_Sel <= "111";
  wait for 100ns;
  R7 <= "1101"; 
  Reg_Sel <= "101";
  wait for 100ns;
    
   -- R7 <= "1101";
     --   Reg_Sel <= "100";
     --   wait for 50ns;
   R3 <= "1111";
   Reg_Sel <= "011";
 wait;
 end process;

end Behavioral;
