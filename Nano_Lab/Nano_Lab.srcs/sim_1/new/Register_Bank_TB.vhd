----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/04/2023 08:46:51 AM
-- Design Name: 
-- Module Name: Register_Bank_TB - Behavioral
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

entity Register_Bank_TB is
--  Port ( );
end Register_Bank_TB;

architecture Behavioral of Register_Bank_TB is
component Register_Bank_8
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
  end component;
  
  signal Data_in: STD_LOGIC_VECTOR (3 downto 0);
    signal Register_en: STD_LOGIC_VECTOR (2 downto 0);
    signal Reset: STD_LOGIC;
    signal Clk: STD_LOGIC;
    signal R0_out: STD_LOGIC_VECTOR (3 downto 0);
    signal R1_out: STD_LOGIC_VECTOR (3 downto 0);
    signal R2_out: STD_LOGIC_VECTOR (3 downto 0);
    signal R3_out: STD_LOGIC_VECTOR (3 downto 0);
    signal R4_out: STD_LOGIC_VECTOR (3 downto 0);
    signal R5_out: STD_LOGIC_VECTOR (3 downto 0);
    signal R6_out: STD_LOGIC_VECTOR (3 downto 0);
    signal R7_out: STD_LOGIC_VECTOR (3 downto 0);

begin
uut: Register_Bank_8 
port map ( Data_in     => Data_in,
          Register_en => Register_en,
          Reset       => Reset,
          Clk         => Clk,
          R0_out      => R0_out,
          R1_out      => R1_out,
          R2_out      => R2_out,
          R3_out      => R3_out,
          R4_out      => R4_out,
          R5_out      => R5_out,
          R6_out      => R6_out,
          R7_out      => R7_out );
process begin
 Clk <= '0';
       wait for 50ns;
       Clk <= '1';
       wait for 50ns;
   end process;
   
 process begin
 reset <= '0';
 data_in <= "1001";
 Register_en <= "100";
 wait for 100ns;
 data_in <= "1011";
  Register_en <= "101";
  wait for 100ns;
   data_in <= "1111";
    Register_en <= "001";
 wait;
 end process;
end Behavioral;
