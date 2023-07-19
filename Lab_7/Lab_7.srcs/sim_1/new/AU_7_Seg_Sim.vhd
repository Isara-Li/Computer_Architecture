----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/05/2023 09:47:39 AM
-- Design Name: 
-- Module Name: AU_7_Seg_Sim - Behavioral
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

entity AU_7_Seg_Sim is
--  Port ( );
end AU_7_Seg_Sim;

architecture Behavioral of AU_7_Seg_Sim is

component AU_7_seg
 Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
          Clk : in STD_LOGIC;
          RegSel : in STD_LOGIC;
          S_LED : out STD_LOGIC_VECTOR (3 downto 0);
          S_7Seg : out STD_LOGIC_VECTOR (6 downto 0);
          Carry : out STD_LOGIC;
          Zero : out STD_LOGIC);
end component;

signal A,S_LED : STD_LOGIC_VECTOR (3 downto 0) := "0000";
signal RegSel,Clk,Zero,Carry : std_logic := '0';
signal S_7Seg : STD_LOGIC_VECTOR (6 downto 0);
begin
UUT : AU_7_seg
Port map(
A => A,
S_LED => S_LED,
S_7Seg => S_7Seg,
RegSel => RegSel,
Clk => Clk,
Zero => Zero,
Carry => Carry
);

process
begin 
    Clk <= not(Clk);
    wait for 2ns;
end process;

process 
begin
    A <= "1111";
    RegSel <= '1';
    wait for 100 ns;
    RegSel <= '0';
    A <= "0010";
    wait for 100 ns;
     A <= "0100";
       RegSel <= '1';
       wait for 100 ns;
       RegSel <= '0';
       A <= "0010";
       wait for 100 ns;
        A <= "0100";
          RegSel <= '1';
          wait for 100 ns;
          RegSel <= '0';
          A <= "0011";
          wait for 100 ns;
    wait;
    
end process;
end Behavioral;
