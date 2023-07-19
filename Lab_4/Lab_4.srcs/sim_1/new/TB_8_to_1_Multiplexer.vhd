----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/23/2023 09:53:33 AM
-- Design Name: 
-- Module Name: TB_8_to_1_Multiplexer - Behavioral
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

entity TB_8_to_1_Multiplexer is
--  Port ( );
end TB_8_to_1_Multiplexer;

architecture Behavioral of TB_8_to_1_Multiplexer is
component Mux_8_to_1
Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC);
 end component;
signal S0,S1,S2 :std_logic;
signal D0,D1,D2,D3,D4,D5,D6,D7 : std_logic;
signal EN :std_logic;
signal Y :std_logic;


begin
uut : Mux_8_to_1 port map(
S(0) => S0,
S(1) => S1,
S(2) => S2,
D(0)=> D0,
D(1)=> D1,
D(2)=> D2,
D(3)=> D3,
D(4)=> D4,
D(5)=> D5,
D(6)=> D6,
D(7)=> D7,
EN => EN,
Y => Y
);
process
begin
S0 <= '1';
S1 <= '1';
S2 <= '1';
EN <= '1';
D0 <= '0';
D1 <= '0';
D2 <= '0';
D3 <= '0';
D4 <= '0';
D5 <= '0';
D6 <= '0';
D7 <= '1';
wait for 100ns;
S0 <= '1';
S1 <= '1';
S2 <= '1';
EN <= '1';
D0 <= '0';
D1 <= '0';
D2 <= '0';
D3 <= '0';
D4 <= '0';
D5 <= '0';
D6 <= '0';
D7 <= '0';
wait for 100ns; -- Case 1

S0 <= '0';
S1 <= '0';
S2 <= '1';
EN <= '1';
D0 <= '0';
D1 <= '0';
D2 <= '0';
D3 <= '0';
D4 <= '1';
D5 <= '0';
D6 <= '0';
D7 <= '0';
wait for 100ns;
S0 <= '0';
S1 <= '0';
S2 <= '1';
EN <= '1';
D0 <= '0';
D1 <= '0';
D2 <= '0';
D3 <= '0';
D4 <= '0';
D5 <= '0';
D6 <= '0';
D7 <= '0';
wait for 100ns; -- Case 2

S0 <= '0';
S1 <= '1';
S2 <= '1';
EN <= '1';
D0 <= '0';
D1 <= '0';
D2 <= '1';
D3 <= '0';
D4 <= '0';
D5 <= '0';
D6 <= '1';
D7 <= '0';
wait for 100ns;
S0 <= '0';
S1 <= '1';
S2 <= '1';
EN <= '1';
D0 <= '0';
D1 <= '0';
D2 <= '1';
D3 <= '0';
D4 <= '0';
D5 <= '0';
D6 <= '0';
D7 <= '0';
wait for 100ns; -- Case 3

S0 <= '0';
S1 <= '1';
S2 <= '0';
EN <= '1';
D0 <= '0';
D1 <= '0';
D2 <= '1';
D3 <= '0';
D4 <= '0';
D5 <= '0';
D6 <= '0';
D7 <= '0';
wait for 100ns;
S0 <= '0';
S1 <= '1';
S2 <= '0';
EN <= '1';
D0 <= '0';
D1 <= '0';
D2 <= '0';
D3 <= '0';
D4 <= '0';
D5 <= '0';
D6 <= '0';
D7 <= '0';
wait for 100ns; -- Case 4
S0 <= '1';
S1 <= '1';
S2 <= '0';
EN <= '1';
D0 <= '0';
D1 <= '0';
D2 <= '0';
D3 <= '1';
D4 <= '0';
D5 <= '0';
D6 <= '0';
D7 <= '0';
wait for 100ns;
S0 <= '1';
S1 <= '1';
S2 <= '0';
EN <= '1';
D0 <= '0';
D1 <= '0';
D2 <= '0';
D3 <= '0';
D4 <= '0';
D5 <= '0';
D6 <= '0';
D7 <= '0';
wait for 100ns; -- Case 5

wait;
end process;

end Behavioral;
