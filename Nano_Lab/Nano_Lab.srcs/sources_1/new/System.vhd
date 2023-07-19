----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/05/2023 09:26:23 AM
-- Design Name: 
-- Module Name: System - Behavioral
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

entity System is
    Port ( Clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           R7_out : out STD_LOGIC_VECTOR (3 downto 0);
           Seven_Seg_out : out STD_LOGIC_VECTOR (6 downto 0);
           Overflow : out STD_LOGIC;
            Anode : out STD_LOGIC_VECTOR(3 downto 0);
           Zero : out STD_LOGIC);
end System;

architecture Behavioral of System is

component Nano_Processor 
    Port ( Clk : in STD_LOGIC;
        Reset : in STD_LOGIC;
        Overflow :out std_logic;
        R7_out : out std_logic_vector(3 downto 0);
        Zero : out std_logic);
end component;

component SlowClock 
    Port ( ClkIn : in STD_LOGIC;
           ClkOut : out STD_LOGIC);
end component;

component LUT_16_7 
    Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
           data : out STD_LOGIC_VECTOR (6 downto 0));
end component;

signal Slow_Clk, Overflow_temp,Zero_temp : std_logic;
signal R7_out_temp : std_logic_vector(3 downto 0);

begin

SlowClock_Zero :  SlowClock 
    Port map ( ClkIn => clk,
           ClkOut => Slow_Clk);
           
Nano_Processor_Zero : Nano_Processor 
               Port map ( Clk => Slow_Clk,
                   Reset => Reset,
                   Overflow => Overflow_temp,
                   R7_out => R7_out_temp,
                   Zero => Zero_temp);
LUT_16_7_Zero : LUT_16_7 
                       Port map( address => R7_out_temp,
                              data => Seven_Seg_out);

Zero <= Zero_temp;
Overflow <= Overflow_temp;
R7_out <= R7_out_temp;
Anode <= "1110";

end Behavioral;
