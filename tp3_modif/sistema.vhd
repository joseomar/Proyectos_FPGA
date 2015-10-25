----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:27:59 02/15/2015 
-- Design Name: 
-- Module Name:    sistema - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sistema is
    Port ( clk : in  STD_LOGIC;
           p1 : in  STD_LOGIC;
           p2 : in  STD_LOGIC;
           r : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end sistema;

architecture Behavioral of sistema is

component contador 
 Port ( clk : in  STD_LOGIC;
           r : in  STD_LOGIC;
           TC : out  STD_LOGIC);
end component;


component registro 
 Port ( clk : in  STD_LOGIC;
           r : in  STD_LOGIC;
			  l : in  STD_LOGIC;
			  ce : in  STD_LOGIC;
			  rot : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end component;


component MEF_control 
 Port ( r : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           p1 : in  STD_LOGIC;
           p2 : in  STD_LOGIC;
           l : out  STD_LOGIC;
			  rot : out  STD_LOGIC);
end component;
signal l_aux, rot_aux, tc_aux: STD_LOGIC; 
begin

MEF: MEF_control
port map(clk => clk, r => r, p1 => p1, p2 => p2,l => l_aux, rot => rot_aux);


reg: registro
port map(clk => clk, r => r, led => led, l => l_aux, rot => rot_aux, ce => tc_aux);


cuenta: contador
port map(clk => clk, r => r, TC => tc_aux);

end Behavioral;

