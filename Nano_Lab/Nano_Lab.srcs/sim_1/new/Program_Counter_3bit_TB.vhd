----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2023 04:01:15 PM
-- Design Name: 
-- Module Name: Program_Counter_3bit_TB - Behavioral
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

entity Program_Counter_3bit_TB is
--  Port ( );
end Program_Counter_3bit_TB;

architecture Behavioral of Program_Counter_3bit_TB is
component Program_Counter_3bit
    Port ( Data_in : in STD_LOGIC_VECTOR (2 downto 0);
           Memory_Sel : out STD_LOGIC_VECTOR (2 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC);
end component;

signal Data_in : STD_LOGIC_VECTOR (2 downto 0);
 signal Memory_Sel :  STD_LOGIC_VECTOR (2 downto 0);
signal  Clk : STD_LOGIC;
signal Reset : STD_LOGIC;

begin
uut : Program_Counter_3bit
port map(
Data_in => Data_in,
Memory_Sel => Memory_Sel,
Clk => Clk,
Reset => Reset);

process 
begin
Clk <= '0';
wait for 15ns;
Clk <= '1';
wait for 15ns;
end process;

process
begin
reset <= '1';
wait for 100ns;
reset <= '0';
Data_in <= "110";
wait for 50ns;
Data_in <= "101";
wait ;
end process;

end Behavioral;
