----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/25/2023 07:08:06 AM
-- Design Name: 
-- Module Name: 3_bit_adder - Behavioral
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

entity adder_3_bit is
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           C_out : out STD_LOGIC_VECTOR (2 downto 0));
end adder_3_bit;

architecture Behavioral of adder_3_bit is
component FA 
 port ( 
 A: in std_logic; 
 B: in std_logic; 
 C_in: in std_logic; 
 S: out std_logic; 
 C_out: out std_logic); 
 end component; 

SIGNAL  FA0_C, FA1_C, Overflow
 : std_logic;
 signal B : STD_LOGIC_VECTOR (2 downto 0);
 
begin

B <= "001"; -- Setting the +1 of the 3 bit adder.
FA_0 : FA 
 port map ( 
 A => A(0), 
 B => B(0), 
 C_in => '0', 
 S => C_out(0), 
 C_Out => FA0_C); 
 FA_1 : FA 
 port map ( 
 A => A(1), 
 B => B(1), 
 C_in => FA0_C, 
 S => C_out(1), 
 C_Out => FA1_C);
FA_2 : FA 
 port map ( 
 A => A(2), 
 B => B(2), 
 C_in => FA1_C, 
 S => C_out(2), 
 C_Out => Overflow); -- Overflow is neglected.


end Behavioral;
