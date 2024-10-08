----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2023 06:56:00 PM
-- Design Name: 
-- Module Name: Decoder_1_to_2 - Behavioral
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

entity Decoder_1_to_2 is
    Port ( I : in STD_LOGIC;
           EN : in STD_LOGIC;
           O : out STD_LOGIC_VECTOR (1 downto 0));
end Decoder_1_to_2;

architecture Behavioral of Decoder_1_to_2 is

begin

O(0) <= EN AND (NOT I);
O(1) <= EN AND I;

end Behavioral;
