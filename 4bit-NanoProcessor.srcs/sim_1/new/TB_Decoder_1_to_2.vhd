----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2023 07:00:38 PM
-- Design Name: 
-- Module Name: TB_Decoder_1_to_2 - Behavioral
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

entity TB_Decoder_1_to_2 is
--  Port ( );
end TB_Decoder_1_to_2;

architecture Behavioral of TB_Decoder_1_to_2 is

component Decoder_1_to_2
    port(
          I : in STD_LOGIC;
          EN : in STD_LOGIC;
          O : out STD_LOGIC_VECTOR (1 downto 0));
end component;


signal I :  STD_LOGIC;
signal EN :  STD_LOGIC;
signal O :  STD_LOGIC_VECTOR (1 downto 0);


begin
UUT : Decoder_1_to_2
port map(
    I => I,
    EN => EN,
    O => O
);

process begin
    EN <= '0';
    
    I <= '0';
    wait for 250ns;
    
    I <= '1';
    wait for 250ns;
    
    EN <= '1';
    
    I <= '0';
    wait for 250ns;
    
    I <= '1';
    wait for 250ns;

end process;

end Behavioral;
