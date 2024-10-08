----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/28/2023 12:14:12 PM
-- Design Name: 
-- Module Name: PC_3 - Behavioral
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

library UNISIM;
use UNISIM.Vcomponents.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC_3 is
    Port ( D : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           CLR : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (2 downto 0));
end PC_3;

architecture Behavioral of PC_3 is

 component D_FF
    port (
        D : in STD_LOGIC;
        Res: in STD_LOGIC;
        Clk : in STD_LOGIC;
        Q : out STD_LOGIC;
        Qbar : out STD_LOGIC);
    end component;
 
signal D_IN : std_logic_vector(2 downto 0);   

begin

D_IN(0) <= D(0) AND EN ;
D_IN(1) <= D(1) AND EN ;
D_IN(2) <= D(2) AND EN ;

    D_FF0 : D_FF
    port map (
        D => D_IN(0),
        Res => CLR,
        Clk => CLK,
        Q => Q(0));
        
    D_FF1 : D_FF
    port map (
        D => D_IN(1),
        Res => CLR,
        Clk => CLK,
        Q => Q(1));
        
    D_FF2 : D_FF
    port map (
        D => D_IN(2),
        Res => CLR,
        Clk => CLK,
        Q => Q(2));
        


end Behavioral;

