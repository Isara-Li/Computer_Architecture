----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2023 05:30:26 PM
-- Design Name: 
-- Module Name: Mux_2_to_1_4bit_TB - Behavioral
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

entity Mux_2_to_1_4bit_TB is
--  Port ( );
end Mux_2_to_1_4bit_TB;

architecture Behavioral of Mux_2_to_1_4bit_TB is
component Mux_2_to_1_4bit 
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           Load_Sel : in std_logic;
           C_out : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal A,B,C_out : STD_LOGIC_VECTOR (3 downto 0);
signal Load_Sel : std_logic;

begin
uut : Mux_2_to_1_4bit
port map(
 A => A,
          B => B,
          Load_Sel => Load_Sel,
          C_out => C_out);
          
process
begin
A <= "1010";
B <= "0000";
Load_Sel <='0';
wait for 100ns;
A <= "1110";
B <= "0100";
Load_Sel <='1';
wait for 100ns;
A <= "1010";
B <= "0000";
Load_Sel <='0';
wait;

end process;


end Behavioral;
