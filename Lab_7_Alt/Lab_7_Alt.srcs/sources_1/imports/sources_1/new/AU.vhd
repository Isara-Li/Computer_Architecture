----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/26/2023 01:20:59 AM
-- Design Name: 
-- Module Name: AU - Behavioral
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

entity AU is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           RegSel : in STD_LOGIC;
           Clk : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           Zero : out STD_LOGIC;
           Carry : out STD_LOGIC);
end AU;

architecture Behavioral of AU is
component slow_clk
    Port ( Clk_in : in STD_LOGIC;
           Clk_out : out STD_LOGIC);
end component;

component RCA_4
     Port ( A0 : in STD_LOGIC;
          A1 : in STD_LOGIC;
          A2 : in STD_LOGIC;
          A3 : in STD_LOGIC;
          B0 : in STD_LOGIC;
          B1 : in STD_LOGIC;
          B2 : in STD_LOGIC;
          B3 : in STD_LOGIC;
          C_in : in STD_LOGIC;
          s0 : out STD_LOGIC;
          s1 : out STD_LOGIC;
          s2 : out STD_LOGIC;
          s3 : out STD_LOGIC;
          C_out : out STD_LOGIC);
end component;

component Reg
    Port ( En : in STD_LOGIC;
           Clk : in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (3 downto 0);
           Q : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal in_clk_out, En_A, En_B : std_logic;
signal Q_A, Q_B, Q_RCA : std_logic_vector(3 downto 0);

begin
Slow_Clk_0 : Slow_Clk
    port map(
    Clk_in => Clk,
    Clk_out => in_clk_out 
    );
Reg_0 : Reg
    port map(
    En => En_A,
    Clk => in_clk_out,
    D => A,
    Q => Q_A
    );
Reg_1 : Reg
        port map(
        En => En_B,
        Clk => in_clk_out,
        D => A,
        Q => Q_B
        );
RCA_4_0 : RCA_4
    port map(
     A0 => Q_A(0),
     A1 => Q_A(1),
     A2 => Q_A(2),
     A3 => Q_A(3),
     B0 => Q_B(0),
     B1 => Q_B(1),
     B2 => Q_B(2),
     B3 => Q_B(3),
     C_in => '0',
     S0 => Q_RCA(0),
     S1 => Q_RCA(1),
     S2 => Q_RCA(2),
     S3 => Q_RCA(3),
     C_out => carry
    );
 
En_A <= RegSel;
En_B <= not(RegSel);
Zero <= not(Q_RCA(0)) and not(Q_RCA(1)) and not(Q_RCA(2)) and not(Q_RCA(3));
S <= Q_RCA;

end Behavioral;
