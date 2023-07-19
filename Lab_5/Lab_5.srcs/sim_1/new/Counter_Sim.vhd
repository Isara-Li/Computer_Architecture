----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/03/2023 04:31:15 AM
-- Design Name: 
-- Module Name: Counter_Sim - Behavioral
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

entity Counter_Sim is
--  Port ( );
end Counter_Sim;

architecture Behavioral of Counter_Sim is
component Counter
Port ( Dir : in STD_LOGIC;
           Res : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal Dir : std_logic;
signal Res : std_logic;
signal Clk : std_logic;
signal Q : std_logic_vector(2 downto 0)  := (others => '0');
constant clk_period : time := 20 ns;


begin
uut : Counter port map(
Dir => Dir,
Res => Res,
Clk => Clk,
Q => Q);
process
begin
        Clk <= '0';
        wait for clk_period/2;
        Clk <= '1';
        wait for clk_period/2;
  end process;
process
begin
  Res <='1';
  wait for 10 ns;
  Dir <='0';
  wait for 30 ns;
  Res <= '0';
  wait for 170 ns;
  Res <= '1';
  wait for 30 ns;
  Res <= '0';
    wait for 170 ns;
    Res <= '1';
    wait for 30 ns;
    Res <= '0';
      wait for 170 ns;
      Res <= '1';
      wait for 30 ns;
       Res <= '0';
wait;
end process;
end Behavioral;
