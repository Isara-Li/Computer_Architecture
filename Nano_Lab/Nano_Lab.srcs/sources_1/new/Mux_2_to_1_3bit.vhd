----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/25/2023 07:42:46 AM
-- Design Name: 
-- Module Name: Mux_2_to_1_3bit - Behavioral
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

entity Mux_2_to_1_3bit is
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           B : in STD_LOGIC_VECTOR (2 downto 0);
           Jump_Flag : in std_logic;
           C_out : out STD_LOGIC_VECTOR (2 downto 0));
end Mux_2_to_1_3bit;

architecture Behavioral of Mux_2_to_1_3bit is

component Mux_2_to_1
port(I0 : in STD_LOGIC;
           I1 : in STD_LOGIC;
           A : in STD_LOGIC; 
           Q : out STD_LOGIC);
end component;

begin
Mux_2_to_1_Zero : Mux_2_to_1
port map(
I0 => A(0),
I1 => B(0),
A => Jump_Flag,
Q => C_out(0) );

Mux_2_to_1_One : Mux_2_to_1
port map(
I0 => A(1),
I1 => B(1),
A => Jump_Flag,
Q => C_out(1) );

Mux_2_to_1_Two : Mux_2_to_1
port map(
I0 => A(2),
I1 => B(2),
A => Jump_Flag,
Q => C_out(2) );

end Behavioral;
