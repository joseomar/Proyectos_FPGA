----------------------------------------------------------------------------------
-- Company: DSI / FPGA / UNR
-- Engineer: Síntesis de sistemas digitales en FPGA
-- 
-- Create Date:    15:05:17 05/28/2014 
-- Design Name: 
-- Module Name:    Reg_led - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Registro que guarda el valor entregado por PicoBlaze y que se 
-- muestra en los leds
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Reg_led is
    Port ( clk : in  STD_LOGIC;
           r : in  STD_LOGIC;
           En : in  STD_LOGIC;
           dato : in  STD_LOGIC_VECTOR (7 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end Reg_led;

architecture Behavioral of Reg_led is

begin
process (clk,r)
begin
if r = '1' then led <= (others => '0');
elsif clk'event and clk = '1' then
if En = '1' then led <= dato;
end if; end if;
end process;

end Behavioral;

