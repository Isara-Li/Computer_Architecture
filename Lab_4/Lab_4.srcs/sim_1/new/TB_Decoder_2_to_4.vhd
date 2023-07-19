----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2023 01:52:59 PM
-- Design Name: 
-- Module Name: TB_Decoder_2_to_4 - Behavioral
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

entity TB_Decoder_2_to_4 is
--  Port ( );
end TB_Decoder_2_to_4;

architecture Behavioral of TB_Decoder_2_to_4 is
component Decoder_2_to_4
Port ( I : in STD_LOGIC_VECTOR (1 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (3 downto 0));
 end component;
 
 signal I0,I1 :std_logic;
 signal Y0,Y1,Y2,Y3 : std_logic;
signal EN :std_logic;

begin

uut : Decoder_2_to_4 port map(
I(0) => I0,
I(1) => I1,
Y(0)=> Y0,
Y(1) => Y1,
Y(2) => Y2,
Y(3) => Y3,
EN => EN
);
process
begin
I0 <= '0';
I1 <= '0';
EN <= '0';
wait for 100ns;
I0 <= '0';
I1 <= '1';
EN <= '0';
wait for 100ns;
I0 <= '1';
I1 <= '0';
EN <= '0';
wait for 100ns;
I0 <= '1';
I1 <= '1';
EN <= '0';
wait for 100ns; -- Enable is 0
I0 <= '0';
I1 <= '0';
EN <= '1';
wait for 100ns;
I0 <= '0';
I1 <= '1';
EN <= '1';
wait for 100ns;
I0 <= '1';
I1 <= '0';
EN <= '1';
wait for 100ns;
I0 <= '1';
I1 <= '1';
EN <= '1';
wait for 100ns; --Enable is 1

wait;
end process;
end Behavioral;
