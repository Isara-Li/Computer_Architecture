----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2023 05:28:59 PM
-- Design Name: 
-- Module Name: Program_Counter_3bit - Behavioral
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

entity Program_Counter_3bit is
    Port ( Data_in : in STD_LOGIC_VECTOR (2 downto 0);
           Memory_Sel : out STD_LOGIC_VECTOR (2 downto 0);
           Clk : in STD_LOGIC;
           Reset : in STD_LOGIC);
end Program_Counter_3bit;

architecture Behavioral of Program_Counter_3bit is

component D_FF
Port ( D : in STD_LOGIC;
           Res : in STD_LOGIC;
           En : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qbar : out STD_LOGIC);
 end component;
 
signal temp0,temp1,temp2 : std_logic;
signal in_temp0,in_temp1,in_temp2 : std_logic;

begin

in_temp0 <= Data_in(0); 
in_temp1 <= Data_in(1);
in_temp2 <= Data_in(2);

D_FF_0 : D_FF
port map(
D => in_temp0,
Res => Reset,
En => '1',
Clk => Clk,
Q => temp0
);

D_FF_1 : D_FF
port map(
D => in_temp1,
Res => Reset,
En => '1',
Clk => Clk,
Q => temp1
);

D_FF_2 : D_FF
port map(
D => in_temp2,
Res => Reset,
En => '1',
Clk => Clk,
Q => temp2
);

Memory_Sel(0) <= temp0;
Memory_Sel(1) <= temp1;
Memory_Sel(2) <= temp2;

end Behavioral;
