----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:47:48 01/31/2015 
-- Design Name: 
-- Module Name:    registro_desplaz - Behavioral 
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

entity registro_desplaz is
    Port ( din : in  STD_LOGIC_VECTOR (3 downto 0); --entrada
           clk : in  STD_LOGIC; --reloj
           r : in  STD_LOGIC;   --reset
           l : in  STD_LOGIC;   --load(carga)
           shl : in  STD_LOGIC; --shift left
			  sli : in  STD_LOGIC; --entrada serie
           dout : out  STD_LOGIC_VECTOR (3 downto 0)); --salida
end registro_desplaz;

architecture Behavioral of registro_desplaz is

begin
process(clk)
variable bout: STD_LOGIC_VECTOR (3 downto 0);--Esta variable va a ser local al proceso
begin

if(rising_edge(clk)) then
if r='1' then bout:=(others=>'0');
elsif l='1' then bout:=din;
elsif shl='1' then bout:=bout(2 downto 0) & sli; --se desprecia el bit mas significativo y es reemplazado por el valor sli en el LSB
end if;
end if;

dout<=bout;

end process;
end Behavioral;

