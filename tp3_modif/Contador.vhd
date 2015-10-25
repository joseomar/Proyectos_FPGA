----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:24:12 02/14/2015 
-- Design Name: 
-- Module Name:    Contador - Behavioral 
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

entity Contador is
    Port ( clk : in  STD_LOGIC;
           r : in  STD_LOGIC;
			  tc: out STD_LOGIC);
end Contador;

architecture Behavioral of Contador is
signal cuenta:STD_LOGIC_VECTOR(23 DOWNTO 0);
begin

process (clk,r)
begin
if r = '1' then cuenta <= (others => '0');
elsif rising_edge(clk) then
cuenta <= cuenta + 1;
end if;
end process;

-- Habilitaci� de funcionamiento del registro que guarda el valor de los leds
tc <= '1' when cuenta = "111111111111111111111111" else '0'; 

end Behavioral;

