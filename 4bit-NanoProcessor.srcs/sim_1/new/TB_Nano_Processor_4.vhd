----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 07:42:11 PM
-- Design Name: 
-- Module Name: TB_Nano_Processor_4 - Behavioral
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

entity TB_Nano_Processor_4 is
--  Port ( );
end TB_Nano_Processor_4;

architecture Behavioral of TB_Nano_Processor_4 is
 component Nano_Processor_4bit is
    Port ( RES : in STD_LOGIC;
           CLK : in STD_LOGIC;
           O : out STD_LOGIC_VECTOR (3 downto 0);
           OVF : out STD_LOGIC;
           Z : out STD_LOGIC);
end component;


signal RES,OVF, Z  : STD_LOGIC;
signal O : STD_LOGIC_VECTOR (3 downto 0);

signal CLK:  std_logic :='0';          

signal delay : time := 10 ns;

begin
UUT : Nano_Processor_4bit
    Port map( RES => RES,
           CLK => CLK,
           O => O,
           OVF => OVF,
           Z => Z);
           

process 
begin 

RES <= '0';

CLK <= not clk;
wait for delay;

end process;


end Behavioral;
