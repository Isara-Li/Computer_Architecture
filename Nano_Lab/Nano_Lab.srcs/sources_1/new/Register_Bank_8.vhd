----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2023 12:54:51 PM
-- Design Name: 
-- Module Name: Register_Bank_8 - Behavioral
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

entity Register_Bank_8 is
    Port ( Data_in : in STD_LOGIC_VECTOR (3 downto 0);
           Register_en : in STD_LOGIC_VECTOR (2 downto 0);
           Reset : in STD_LOGIC;
           Clk :  in STD_LOGIC;
           R0_out : out STD_LOGIC_VECTOR (3 downto 0);
           R1_out : out STD_LOGIC_VECTOR (3 downto 0);
           R2_out : out STD_LOGIC_VECTOR (3 downto 0);
           R3_out : out STD_LOGIC_VECTOR (3 downto 0);
           R4_out : out STD_LOGIC_VECTOR (3 downto 0);
           R5_out : out STD_LOGIC_VECTOR (3 downto 0);
           R6_out : out STD_LOGIC_VECTOR (3 downto 0);
           R7_out : out STD_LOGIC_VECTOR (3 downto 0));
end Register_Bank_8;


architecture Behavioral of Register_Bank_8 is

component Decoder_3_to_8
 Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
          EN : in STD_LOGIC;
          Y : out STD_LOGIC_VECTOR (7 downto 0));
 end component;
 
 component Register_4bit 
     Port ( Data_in : in STD_LOGIC_VECTOR (3 downto 0);
            Clk : in STD_LOGIC;
            Reset : in STD_LOGIC;
            En : in STD_LOGIC;
            Data_out : out STD_LOGIC_VECTOR (3 downto 0));
   end component;
   
   signal Y0: std_logic_vector(7 downto 0);
   signal R0_out_temp: std_logic_vector(3 downto 0);
begin

Decoder_3_to_8_0ne : Decoder_3_to_8
port map(
I => Register_en,
EN => '1',
Y => Y0);

Register_4bit_0 : Register_4bit
port map(
Data_in => "0000",
Clk => Clk,
En => Y0(0),
Reset => Reset,
Data_out => R0_out_temp
); 
Register_4bit_1 : Register_4bit
port map(
Data_in => Data_in,
Clk => Clk,
En => Y0(1),
Reset => Reset,
Data_out => R1_out
); 
Register_4bit_2 : Register_4bit
port map(
Data_in => Data_in,
Clk => Clk,
En => Y0(2),
Reset => Reset,
Data_out => R2_out
); 
Register_4bit_3 : Register_4bit
port map(
Data_in => Data_in,
Clk => Clk,
En => Y0(3),
Reset => Reset,
Data_out => R3_out
); 
Register_4bit_4 : Register_4bit
port map(
Data_in => Data_in,
Clk => Clk,
En => Y0(4),
Reset => Reset,
Data_out => R4_out
); 
Register_4bit_5 : Register_4bit
port map(
Data_in => Data_in,
Clk => Clk,
En => Y0(5),
Reset => Reset,
Data_out => R5_out
); 
Register_4bit_6 : Register_4bit
port map(
Data_in => Data_in,
Clk => Clk,
En => Y0(6),
Reset => Reset,
Data_out => R6_out
); 
Register_4bit_7 : Register_4bit
port map(
Data_in => Data_in,
Clk => Clk,
En => Y0(7),
Reset => Reset,
Data_out => R7_out
); 

R0_out <= "0000";

end Behavioral;
 