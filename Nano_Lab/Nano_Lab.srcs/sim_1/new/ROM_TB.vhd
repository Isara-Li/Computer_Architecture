----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/09/2023 05:30:11 PM
-- Design Name: 
-- Module Name: ROM_TB - Behavioral
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

entity ROM_TB is
--  Port ( );
end ROM_TB;

architecture Behavioral of ROM_TB is
component ROM
    Port ( memorySel : in STD_LOGIC_VECTOR (2 downto 0);
           Instruction_Bus : out STD_LOGIC_VECTOR (11 downto 0));
end component;

signal memorySel : STD_LOGIC_VECTOR (2 downto 0);
signal Instruction_Bus : STD_LOGIC_VECTOR (11 downto 0);
begin

uut : ROM
port map(
memorySel => memorySel,
Instruction_Bus => Instruction_Bus
);

process begin
memorySel <= "101";
wait for 100ns;
memorySel <= "111";
wait for 100ns;
memorySel <= "001";
wait;
end process;
end Behavioral;
