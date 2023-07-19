----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2023 09:18:40 PM
-- Design Name: 
-- Module Name: Reg_Bank - Behavioral
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

entity Reg_Bank is
    Port ( Reg_enable : in STD_LOGIC_VECTOR (2 downto 0);
           Clk_Signal : in STD_LOGIC;
           Data_in : in STD_LOGIC_VECTOR (3 downto 0);
           R0_Out : out STD_LOGIC_VECTOR (3 downto 0);
           R1_Out : out STD_LOGIC_VECTOR (3 downto 0);
           R2_Out : out STD_LOGIC_VECTOR (3 downto 0);
           R3_Out : out STD_LOGIC_VECTOR (3 downto 0);
           R4_Out : out STD_LOGIC_VECTOR (3 downto 0);
           R5_Out : out STD_LOGIC_VECTOR (3 downto 0);
           R6_Out : out STD_LOGIC_VECTOR (3 downto 0);
           R7_Out : out STD_LOGIC_VECTOR (3 downto 0));
end Reg_Bank;

architecture Behavioral of Reg_Bank is
component Reg
    Port ( En : in STD_LOGIC;
           Clk : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (3 downto 0);
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;
component Decoder_3_to_8
  Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
          EN : in STD_LOGIC;
          Y : out STD_LOGIC_VECTOR (7 downto 0));
 end component;

signal Y_out : STD_LOGIC_VECTOR (7 downto 0);
begin

Decoder_3_to_8_Zero : Decoder_3_to_8
port map(
I => Reg_enable,
EN => '1',
Y => Y_out
);

Reg_0 : Reg
port map(
En => Y_out(0),
Clk => Clk_Signal,
D => "0000",
Q => R0_out 
);

Reg_1 : Reg
port map(
En => Y_out(1),
Clk => Clk_Signal,
D => Data_in,
Q => R1_out 
);

Reg_2 : Reg
port map(
En => Y_out(2),
Clk => Clk_Signal,
D => Data_in,
Q => R2_out 
);

Reg_3 : Reg
port map(
En => Y_out(3),
Clk => Clk_Signal,
D => Data_in,
Q => R3_out 
);

Reg_4 : Reg
port map(
En => Y_out(4),
Clk => Clk_Signal,
D => Data_in,
Q => R4_out 
);

Reg_5 : Reg
port map(
En => Y_out(5),
Clk => Clk_Signal,
D => Data_in,
Q => R5_out 
);

Reg_6 : Reg
port map(
En => Y_out(6),
Clk => Clk_Signal,
D => Data_in,
Q => R6_out 
);

Reg_7 : Reg
port map(
En => Y_out(7),
Clk => Clk_Signal,
D => Data_in,
Q => R7_out 
);

end Behavioral;
