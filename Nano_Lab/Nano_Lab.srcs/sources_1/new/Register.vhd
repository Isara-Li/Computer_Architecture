----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2023 12:43:34 PM
-- Design Name: 
-- Module Name: Register - Behavioral
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

entity Register_4bit is
    Port ( Data_in : in STD_LOGIC_VECTOR (3 downto 0);
           Clk : in STD_LOGIC;
           En : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Data_out : out STD_LOGIC_VECTOR (3 downto 0));
end Register_4bit;

architecture Behavioral of Register_4bit is

component D_FF
 Port ( D : in STD_LOGIC;
          Res : in STD_LOGIC;
          En : in STD_LOGIC;
          Clk : in STD_LOGIC;
          Q : out STD_LOGIC;
          Qbar : out STD_LOGIC);
  end component;
begin
D_FF_0 : D_FF
port map(
D => Data_in(0),
En => En,
Res => Reset,
Clk => Clk,
Q => Data_out(0)
);

D_FF_1 : D_FF
port map(
D => Data_in(1),
En => En,
Res => Reset,
Clk => Clk,
Q => Data_out(1)
);

D_FF_2 : D_FF
port map(
D => Data_in(2),
En => En,
Res => Reset,
Clk => Clk,
Q => Data_out(2)
);

D_FF_3 : D_FF
port map(
D => Data_in(3),
En => En,
Res => Reset,
Clk => Clk,
Q => Data_out(3)
);


end Behavioral;
