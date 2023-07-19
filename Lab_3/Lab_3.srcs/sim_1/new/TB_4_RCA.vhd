----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2023 01:53:44 PM
-- Design Name: 
-- Module Name: TB_4_RCA - Behavioral
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

entity TB_4_RCA is
--  Port ( );
end TB_4_RCA;

architecture Behavioral of TB_4_RCA is
component RCA_4
port ( A0,A1,A2,A3,B0,B1,B2,B3,C_in : in STD_LOGIC;
          s0,s1,s2,s3,c_out : out STD_LOGIC);
          end component;
  
  signal A0,A1,A2,A3,B0,B1,B2,B3,C_in : std_logic;
  signal s0,s1,s2,s3,c_out : std_logic;

begin

uut : RCA_4 port map(
A0 => A0,
A1=>A1,
A2=>A2,
A3=>A3,
B0=>B0,
B1=>B1,
B2 => B2,
B3=>B3,
C_in => C_in,
s0=>s0,
s1 => s1,
s2=>s2,
s3=>s3,
c_out=>c_out);
process
begin

c_in <= '0';
A0 <= '0';
A1<='1';
A2<='1';
A3<='1';
B0 <= '1';
B1<='0';
B2<='1';
B3<='0';
WAIT FOR 100 ns;
A0 <= '0';
A1<='1';
A2<='0';
A3<='1';
B0 <= '0';
B1<='0';
B2<='1';
B3<='1';
WAIT FOR 100 ns;
A0 <= '0';
A1<='1';
A2<='0';
A3<='0';
B0 <= '0';
B1<='0';
B2<='0';
B3<='0';
WAIT FOR 100 ns;
A0 <= '1';
A1<='1';
A2<='1';
A3<='0';
B0 <= '0';
B1<='0';
B2<='1';
B3<='0';

WAIT FOR 100 ns;
A0 <= '1';
A1<='0';
A2<='1';
A3<='1';
B0 <= '0';
B1<='1';
B2<='0';
B3<='1';
WAIT FOR 100 ns;

A0 <= '1';
A1<='1';
A2<='1';
A3<='1';
B0 <= '0';
B1<='1';
B2<='1';
B3<='1';
WAIT FOR 100 ns;

A0 <= '1';
A1<='0';
A2<='0';
A3<='1';
B0 <= '0';
B1<='1';
B2<='1';
B3<='1';
WAIT FOR 100 ns;

A0 <= '0';
A1<='0';
A2<='1';
A3<='1';
B0 <= '0';
B1<='1';
B2<='1';
B3<='0';
WAIT FOR 100 ns;
wait;
end process;

end Behavioral;
