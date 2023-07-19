----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2023 09:47:33 PM
-- Design Name: 
-- Module Name: Slow_Clk_Sim - Behavioral
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

entity Slow_Clk_Sim is
--  Port ( );
end Slow_Clk_Sim;

architecture Behavioral of Slow_Clk_Sim is
component Slow_Clk
 Port ( Clk_in : in STD_LOGIC;
          Clk_out : out STD_LOGIC);
end component;

signal Clk_in : std_logic;
signal Clk_out : std_logic;
constant clk_period : time := 50 ns;

begin
uut : Slow_Clk port map(
Clk_in => Clk_in,
Clk_out => Clk_out
);
process
begin
        Clk_in <= '0';
        wait for clk_period/2;
        Clk_in <= '1';
        wait for clk_period/2;
    end process;


end Behavioral;
