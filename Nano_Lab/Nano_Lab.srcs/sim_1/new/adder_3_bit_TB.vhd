----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/08/2023 10:51:48 AM
-- Design Name: 
-- Module Name: adder_3_bit_TB - Behavioral
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

entity adder_3_bit_TB is
--  Port ( );
end adder_3_bit_TB;

architecture Behavioral of adder_3_bit_TB is

component adder_3_bit 
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           C_out : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal A : STD_LOGIC_VECTOR (2 downto 0);
signal C_out : STD_LOGIC_VECTOR (2 downto 0);

begin
uut : adder_3_bit
port map(
A => A,
C_out => C_out);

process
begin
A <= "110";
wait for 100ns;

A <= "001";
wait for 100 ns;

A<= "101";
wait;
end process;
end Behavioral;
