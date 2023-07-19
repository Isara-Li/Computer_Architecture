----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/01/2023 10:27:08 PM
-- Design Name: 
-- Module Name: Instruction_Decoder_TB - Behavioral
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

entity Instruction_Decoder_TB is
--  Port ( );
end Instruction_Decoder_TB;

architecture Behavioral of Instruction_Decoder_TB is
component Instruction_Decoder
 Port ( Register_en : out STD_LOGIC_VECTOR (2 downto 0);
           Instruction_Bus : in STD_LOGIC_VECTOR (11 downto 0);
            In_Reg_Check : in STD_LOGIC_VECTOR (3 downto 0);
           Load_sel : out STD_LOGIC;
           Jump_Flag : out STD_LOGIC;
            Add_Sub_Sel : out STD_LOGIC;
            Address_to_Jump : out STD_LOGIC_VECTOR (2 downto 0);
           Immediate_val : out STD_LOGIC_VECTOR (3 downto 0);
           Mux_A_En : out STD_LOGIC_VECTOR (2 downto 0);
           Mux_B_En : out STD_LOGIC_VECTOR (2 downto 0));
 end component;
 
 signal Register_en,Address_to_Jump,Mux_A_En,Mux_B_En : STD_LOGIC_VECTOR (2 downto 0);
 signal Instruction_Bus : STD_LOGIC_VECTOR (11 downto 0);
 signal In_Reg_Check,Immediate_val : STD_LOGIC_VECTOR (3 downto 0);
 signal  Load_sel, Jump_Flag, Add_Sub_Sel : STD_LOGIC;

begin
uut : Instruction_Decoder
port map(
Register_en => Register_en,
           Instruction_Bus => Instruction_Bus,
            In_Reg_Check => In_Reg_Check,
           Load_sel => Load_sel,
           Jump_Flag => Jump_Flag,
            Add_Sub_Sel => Add_Sub_Sel,
            Address_to_Jump => Address_to_Jump,
           Immediate_val => Immediate_val,
           Mux_A_En => Mux_A_En,
           Mux_B_En => Mux_B_En);

process
begin
--In_Reg_Check <= "0000";
--wait for 100ns;
Instruction_Bus <= "101010001001";
wait for 100ns;
Instruction_Bus <= "001010110000";
wait for 100ns;
Instruction_Bus <= "010010000000";
wait for 100ns;
In_Reg_Check <= "0111";
Instruction_Bus <= "111100000011"; -- R is not equal to 0
wait for 100ns;
In_Reg_Check <= "0000";
--wait for 100ns;
Instruction_Bus <= "110000000011"; -- R is equal to 0
wait for 100ns;
In_Reg_Check <= "0000";
Instruction_Bus <= "110000000110";
wait;
end process;


end Behavioral;
