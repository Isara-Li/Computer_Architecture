----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2023 05:10:01 PM
-- Design Name: 
-- Module Name: Mux_2_to_1_3bit_TB - Behavioral
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

entity Mux_2_to_1_3bit_TB is
--  Port ( );
end Mux_2_to_1_3bit_TB;

architecture Behavioral of Mux_2_to_1_3bit_TB is
component Mux_2_to_1_3bit 
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           B : in STD_LOGIC_VECTOR (2 downto 0);
           Jump_Flag : in std_logic;
           C_out : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal A,B,C_out : STD_LOGIC_VECTOR (2 downto 0);
signal Jump_Flag : std_logic;

begin
uut : Mux_2_to_1_3bit
port map(
 A => A,
          B => B,
          Jump_Flag => Jump_Flag,
          C_out => C_out);
          
process
begin
A <= "101";
B <= "000";
Jump_Flag <='0';
wait for 100ns;
A <= "111";
B <= "010";
Jump_Flag <='1';
wait for 100ns;
A <= "111";
B <= "010";
Jump_Flag <='0';
wait for 100ns;

A <= "110";
B <= "110";
Jump_Flag <='1';

wait;

end process;


end Behavioral;
