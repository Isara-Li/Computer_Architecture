----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/01/2023 10:42:30 AM
-- Design Name: 
-- Module Name: Add_Sub_RCA_TB - Behavioral
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

entity Add_Sub_RCA_TB is
--  Port ( );
end Add_Sub_RCA_TB;

architecture Behavioral of Add_Sub_RCA_TB is
component Add_Sub_RCA
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC;
           S_out : out STD_LOGIC_VECTOR (3 downto 0);
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC);
 end component;

signal A,B,S_out : std_logic_vector(3 downto 0);
signal S,Overflow,Zero : std_logic;

begin
uut : Add_Sub_RCA
port map(
A => A,
B => B,
S_out => S_out,
S => S,
Overflow => Overflow,
Zero => Zero );

process
begin
A(0) <= '0';
A(1) <= '0';
A(2) <= '0';
A(3) <= '1';
B <= "0100";
S <='0';
wait for 100ns;

A(0) <= '0';
A(1) <= '1';
A(2) <= '0';
A(3) <= '1';
B <= "0110";
S <='0';
wait for 100ns;

A(0) <= '1';
A(1) <= '1';
A(2) <= '1';
A(3) <= '1';
B <= "1110";
S <='1'; --negation

wait;
end process;



end Behavioral;
