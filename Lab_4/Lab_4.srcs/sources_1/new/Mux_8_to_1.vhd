----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/23/2023 09:34:00 AM
-- Design Name: 
-- Module Name: Mux_8_to_1 - Behavioral
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

entity Mux_8_to_1 is
    Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
end Mux_8_to_1;

architecture Behavioral of Mux_8_to_1 is
component Decoder_3_to_8
 port(
 I: in STD_LOGIC_VECTOR;
 EN: in STD_LOGIC;
 Y: out STD_LOGIC_VECTOR );
 end component;

signal I0 : std_logic_vector(2 downto 0);
signal Y0 : std_logic_vector(7 downto 0);
signal en0 : std_logic;
signal temp_0,temp_1,temp_2,temp_3,temp_4,temp_5,temp_6,temp_7 : std_logic;

begin
 
Decode_3_to_8_0 : Decoder_3_to_8
 port map(
 I => I0,
 EN => en0,
 Y => Y0 );

I0 <= S;
en0 <= EN;
temp_0 <= Y0(0) and D(0);
temp_1 <= Y0(1) and D(1);
temp_2 <= Y0(2) and D(2);
temp_3 <= Y0(3) and D(3);
temp_4 <= Y0(4) and D(4);
temp_5 <= Y0(5) and D(5);
temp_6 <= Y0(6) and D(6);
temp_7 <= Y0(7) and D(7);

Y <= temp_0 or temp_1 or temp_2 or temp_3 
     or temp_4 or temp_5 or temp_6 or temp_7 ;

end Behavioral;
