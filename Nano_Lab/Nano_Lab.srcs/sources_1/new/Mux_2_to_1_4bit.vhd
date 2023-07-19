----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2023 06:38:01 PM
-- Design Name: 
-- Module Name: Mux_2_to_1_4bit - Behavioral
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

entity Mux_2_to_1_4bit is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C_out : out STD_LOGIC_VECTOR (3 downto 0);
           Load_Sel : in STD_LOGIC);
end Mux_2_to_1_4bit;

architecture Behavioral of Mux_2_to_1_4bit is

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
A => Load_Sel,
Q => C_out(0) );

Mux_2_to_1_One : Mux_2_to_1
port map(
I0 => A(1),
I1 => B(1),
A => Load_Sel,
Q => C_out(1) );

Mux_2_to_1_Two : Mux_2_to_1
port map(
I0 => A(2),
I1 => B(2),
A => Load_Sel,
Q => C_out(2) );

Mux_2_to_1_Three : Mux_2_to_1
port map(
I0 => A(3),
I1 => B(3),
A => Load_Sel,
Q => C_out(3) );

end Behavioral;
