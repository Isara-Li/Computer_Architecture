----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2023 03:30:13 PM
-- Design Name: 
-- Module Name: Nano_Processor_TB - Behavioral
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

entity Nano_Processor_TB is
--  Port ( );
end Nano_Processor_TB;

architecture Behavioral of Nano_Processor_TB is

component Nano_Processor 
    Port ( Clk : in STD_LOGIC;
        Reset : in STD_LOGIC;
        Overflow :out std_logic;
        R7_out : out std_logic_vector(3 downto 0);
        Zero : out std_logic);
 end component;
 
 signal Clk,Reset,Overflow,Zero : std_logic;
 signal R7_out : std_logic_vector(3 downto 0);
 
begin

uut : Nano_Processor
port map(
Clk => Clk,
Reset => Reset,
Overflow => Overflow,
Zero => Zero,
R7_out => R7_out);

process 
begin
Clk <= '0';
wait for 25ns;
Clk <= '1';
wait for 25ns;
end process;

process
 begin
Reset <= '1';
wait for 50ns;
Reset <= '0';
wait for 400ns;
Reset <= '1';
wait for 50ns;
Reset <= '0';
wait;
end process;      


end Behavioral;
