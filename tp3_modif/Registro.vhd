----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:22:14 02/14/2015 
-- Design Name: 
-- Module Name:    Registro - Behavioral 
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

entity Registro is
    Port ( clk : in  STD_LOGIC;
           r : in  STD_LOGIC;
			  l : in  STD_LOGIC;
			  ce : in  STD_LOGIC;
			  rot : in  STD_LOGIC;
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end Registro;

architecture Behavioral of Registro is
signal led_aux: STD_LOGIC_VECTOR (7 downto 0);
begin

process (ce,r)
begin
if r = '1' then led_aux <= (0 => '1',others => '0') ;
elsif rising_edge(ce) then 
if rot = '1' then led_aux <= led_aux (6 downto 0) & led_aux (7);
elsif l = '1' then led_aux <= (others => '1');
end if;
end if;
end process;

--  Salida generada a partir del contenido del registro ***** 
led <= led_aux;

end Behavioral;

