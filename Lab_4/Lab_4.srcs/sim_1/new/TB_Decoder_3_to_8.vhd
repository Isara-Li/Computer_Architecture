----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2023 02:40:59 PM
-- Design Name: 
-- Module Name: TB_Decoder_3_to_8 - Behavioral
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

entity TB_Decoder_3_to_8 is
--  Port ( );
end TB_Decoder_3_to_8;

architecture Behavioral of TB_Decoder_3_to_8 is
component Decoder_3_to_8
Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
 end component;
 
  signal I0,I1,I2 :std_logic;
 signal Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7 : std_logic;
signal EN :std_logic;

 

begin
uut : Decoder_3_to_8 port map(
I(0) => I0,
I(1) => I1,
I(2) => I2,
Y(0)=> Y0,
Y(1) => Y1,
Y(2) => Y2,
Y(3) => Y3,
Y(4)=> Y4,
Y(5)=> Y5,
Y(6)=> Y6,
Y(7)=> Y7,
EN => EN
);
process
begin
I0 <= '1';
I1 <= '1';
I2 <= '1';
EN <= '1';
wait for 100ns;

I0 <= '1';
I1 <= '0';
I2 <= '0';
EN <= '1';
wait for 100ns;

I0 <= '1';
I1 <= '1';
I2 <= '0';
EN <= '1';
wait for 100ns;

I0 <= '0';
I1 <= '1';
I2 <= '0';
EN <= '1';
wait for 100ns;
I0 <= '0';
I1 <= '1';
I2 <= '1';
EN <= '1';
wait for 100ns;
wait;
end process;
end Behavioral;
