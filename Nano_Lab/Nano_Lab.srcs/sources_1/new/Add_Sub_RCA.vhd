----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2023 07:59:49 PM
-- Design Name: 
-- Module Name: Add_Sub_RCA - Behavioral
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

entity Add_Sub_RCA is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC;
           S_out : out STD_LOGIC_VECTOR (3 downto 0);
           Overflow : out STD_LOGIC;
           Zero : out STD_LOGIC);
end Add_Sub_RCA;

architecture Behavioral of Add_Sub_RCA is
component FA 
 port ( 
 A: in std_logic; 
 B: in std_logic; 
 C_in: in std_logic; 
 S: out std_logic;  -- selector add/sub
 C_out: out std_logic); 
 end component; 
 
 SIGNAL FA0_S, FA0_C, FA1_S, FA1_C, FA2_S, FA2_C, FA3_S, FA3_C 
 : std_logic;
 signal ctrl_b0,ctrl_b1,ctrl_b2,ctrl_b3 : std_logic;
 signal temp0,temp1,temp2,temp3 : std_logic;

begin

FA_0 : FA 
 port map ( 
 A => A(0), 
 B => ctrl_b0, 
 C_in => S, 
 S => temp0, 
 C_Out => FA0_C); 
 FA_1 : FA 
 port map ( 
 A => A(1), 
 B => ctrl_b1, 
 C_in => FA0_C, 
 S => temp1, 
 C_Out => FA1_C);
FA_2 : FA 
 port map ( 
 A => A(2), 
 B => ctrl_b2, 
 C_in => FA1_C, 
 S => temp2, 
 C_Out => FA2_C); 
 FA_3 : FA 
 port map ( 
 A => A(3), 
 B => ctrl_b3, 
 C_in => FA2_C, 
 S => temp3, 
 C_Out => Overflow); 

ctrl_b0 <= B(0) xor S;
ctrl_b1 <= B(1) xor S;
ctrl_b2 <= B(2) xor S;
ctrl_b3 <= B(3) xor S;

zero <= not(temp0 or temp1 or temp2 or temp3);

S_out(0) <= temp0;
S_out(1) <= temp1;
S_out(2) <= temp2;
S_out(3) <= temp3;

end Behavioral;

