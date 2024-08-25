----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2023 06:31:00 AM
-- Design Name: 
-- Module Name: TB_D_FF - Behavioral
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

entity TB_D_FF is
--  Port ( );
end TB_D_FF;

architecture Behavioral of TB_D_FF is

component D_FF
    port(D, Res, Clk: IN STD_LOGIC;
    Q, Qbar: OUT STD_LOGIC);
end component;

signal D, Res, Clk: STD_LOGIC;
signal Q, Qbar: STD_LOGIC;

begin
UUT: D_FF PORT MAP(
   D => D,
   Res => Res,
   Clk => Clk,
   Q => Q,
   Qbar => Qbar
);

process
begin

    Clk <= '0';
    D <= '0';
    Res <= '0';
    wait for 100ns;
    
    Clk <= '1';
    D <= '0';
    Res <= '0';
    wait for 100ns;
    
    Clk <= '0';
    D <= '0';
    Res <= '1';
    wait for 100ns;
    
    Clk <= '1';
    D <= '0';
    Res <= '1';
    wait for 100ns;
   
    Clk <= '0';
    D <= '1';
    Res <= '0';
    wait for 100ns;
    
    Clk <= '1';
    D <= '1';
    Res <= '0';
    wait for 100ns;
    
    Clk <= '0';
    D <= '1';
    Res <= '1';
    wait for 100ns;
    
    Clk <= '1';
    D <= '1';
    Res <= '1';
    wait for 100ns;
    
    Clk <= '0';
    D <= '0';
    Res <= '0';   
    
    wait;
    
end process;

end Behavioral;
