----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2023 05:05:44 PM
-- Design Name: 
-- Module Name: TB_PC_3 - Behavioral
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

entity TB_PC_3 is
--  Port ( );
end TB_PC_3;

architecture Behavioral of TB_PC_3 is

component PC_3
    Port ( D : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           CLR: in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0));
end component;

signal D : STD_LOGIC_VECTOR (2 downto 0);
signal EN : STD_LOGIC;
signal CLR : STD_LOGIC;
signal CLK : STD_LOGIC;
signal Q : STD_LOGIC_VECTOR (2 downto 0);

signal clock_delay : time := 15ns;

begin
UUT: PC_3
port map(
    D => D,
    EN => EN,
    CLR => CLR,
    CLK => CLK,
    Q => Q
);

process begin
    
    EN <= '0';
    CLK <= '0';
    CLR <= '0';
    
    D <= "000";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "001";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "010";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "011";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "100";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "101";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "110";
    
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    D <= "111";
        
    CLK <= '1';
    EN <= '0';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    CLK <= '1';
    EN <= '1';
    wait for clock_delay;
    CLK <= '0';
    wait for clock_delay;
    
    
    CLR <= '1';
   

    
    wait;
    
end process;


end Behavioral;

