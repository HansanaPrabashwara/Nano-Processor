----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2023 09:55:19 PM
-- Design Name: 
-- Module Name: TB_MUX_8_to_1 - Behavioral
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

entity TB_Mux_8_to_1 is
--  Port ( );
end TB_Mux_8_to_1;

architecture Behavioral of TB_Mux_8_to_1 is

COMPONENT Mux_8_to_1
    PORT(S: IN STD_LOGIC_VECTOR (2 downto 0);
     I: IN STD_LOGIC_VECTOR (7 downto 0);
     EN: IN STD_LOGIC;
     Y: OUT STD_LOGIC);
END COMPONENT;

signal S: STD_LOGIC_VECTOR(2 downto 0);
signal I : STD_LOGIC_VECTOR(7 downto 0);
signal EN: STD_LOGIC;
signal Y: STD_LOGIC;

signal delay : time := 20ns;

begin

UUT: Mux_8_to_1 PORT MAP(
    S => S,
    I => I,
    EN => EN,
    Y => Y
);


process
begin
    EN <= '1'; 
    
    I <= "00000001";
    S <= "000";
    wait for delay;
    
    I <= "11111110";
    S <= "000";
    wait for delay;
   
    
    I <= "00000010";
    S <= "001";
    wait for delay;
    
    I <= "11111101";
    S <= "001";
    wait for delay;
   
        
    I <= "00000100";
    S <= "010";
    wait for delay;
    
    I <= "11111011";
    S <= "010";
    wait for delay;
   
            
    I <= "00001000";
    S <= "011";
    wait for delay;
    
    I <= "11110111";
    S <= "011";
    wait for delay;
    
    
    I <= "00010000";
    S <= "100";
    wait for delay;
    
    I <= "11101111";
    S <= "100";
    wait for delay;

       
    I <= "00100000";
    S <= "101";
    wait for delay;
    
    I <= "11011111";
    S <= "101";
    wait for delay;
    
    
    I <= "01000000";
    S <= "110";
    wait for delay;
    
    I <= "10111111";
    S <= "110";
    wait for delay;
    
    
    I <= "10000000";
    S <= "111";
    wait for delay;
    
    I <= "01111111";
    S <= "111";
    wait for delay;
    
    
    EN <= '0';
    
    
    I <= "00000001";
    S <= "000";
    wait for delay;
    
    I <= "11111110";
    S <= "000";
    wait for delay;
    
    
    I <= "00000010";
    S <= "001";
    wait for delay;
    
    I <= "11111101";
    S <= "001";
    wait for delay;
    
    
    I <= "00000100";
    S <= "010";
    wait for delay;
    
    I <= "11111011";
    S <= "010";
    wait for delay;
    
       
    I <= "00001000";
    S <= "011";
    wait for delay;
    
    I <= "11110111";
    S <= "011";
    wait for delay;
    
    
    I <= "00010000";
    S <= "100";
    wait for delay;
    
    I <= "11101111";
    S <= "100";
    wait for delay;
    
    
    I <= "00100000";
    S <= "101";
    wait for delay;
    
    I <= "11011111";
    S <= "101";
    wait for delay;
    
    I <= "01000000";
    S <= "110";
    wait for delay;
    
    I <= "10111111";
    S <= "110";
    wait for delay;
    
    I <= "10000000";
    S <= "111";
    wait for delay;
    
    I <= "01111111";
    S <= "111";
    wait for delay;

    
    I <= "00000000";
    S <= "000";
    wait for 2*delay;
    
    -- index number = 210483T
    -- Corresponding binary value = 110011011000110011
    -- Last eight bits = 00110011
    
    I <= "00110011";
    EN <= '1';
    
    S <= "000";
    wait for delay;
    S <= "001";
    wait for delay;
    S <= "010";
    wait for delay;
    S <= "011";
    wait for delay;
    S <= "100";
    wait for delay;
    S <= "101";
    wait for delay;
    S <= "110";
    wait for delay;
    S <= "111";
    wait for delay;
    
    EN <= '0';
    
    S <= "000";
    wait for delay;
    S <= "001";
    wait for delay;
    S <= "010";
    wait for delay;
    S <= "011";
    wait for delay;
    S <= "100";
    wait for delay;
    S <= "101";
    wait for delay;
    S <= "110";
    wait for delay;
    S <= "111";
    wait for delay;

    wait;

end process;
end Behavioral;

