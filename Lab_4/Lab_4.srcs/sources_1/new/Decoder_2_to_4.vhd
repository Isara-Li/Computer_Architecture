----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2023 01:24:11 PM
-- Design Name: 
-- Module Name: Decoder_2_to_4 - Behavioral
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

entity Decoder_2_to_4 is
    Port ( I : in STD_LOGIC_VECTOR (1 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end Decoder_2_to_4;

architecture Behavioral of Decoder_2_to_4 is

signal I0,I1 :std_logic;
signal Y0,Y1,Y2,Y3 : std_logic;

begin
I0 <= I(0);
I1 <= I(1);

Y0 <= not(I0) and not(I1) and EN;
Y1 <= I0 and not(I1) and EN;
Y2 <= not(I0) and I1 and EN;
Y3 <= I0 and I1 and EN;

Y(0) <= Y0;
Y(1) <= Y1;
Y(2) <= Y2;
Y(3) <= Y3;

end Behavioral;
