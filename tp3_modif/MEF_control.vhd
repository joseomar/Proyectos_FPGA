----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:00:33 02/14/2015 
-- Design Name: 
-- Module Name:    MEF_control - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MEF_control is
    Port ( r : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           p1 : in  STD_LOGIC;
           p2 : in  STD_LOGIC;
           l : out  STD_LOGIC;
			  rot : out  STD_LOGIC);
end MEF_control;

architecture Behavioral of MEF_control is
type estado is (s1,s2,s3);     --Defino tipo de dato enumerado
signal actual:estado;	  			--Defino una instancia del tipo de dato
begin
--********* MEF de control de dos procesos *******************
--******** Proceso 1 que maneja la transici� de estados******
process (clk,r)
begin
if r = '1' then actual <= s1;
elsif rising_edge(clk) then
case actual is
when s1 =>
if p1 ='1' then
actual <= s2;
end if;
when s2 => 
if p1 ='0' and p2 = '1'then
actual <= s3;
end if;
when s3 => 
null;

end case;
end if;
end process;
--***********************************************************
--*Proceso 2 que genera las salidas que dependen del estado * 
process (actual)	 
begin
case actual is
when s1 => rot <= '0';l <= '0';
when s2 => rot <= '1';l <= '0';
when s3 => rot <= '0';l <= '1';
end case;
end process;
-- *** Fin descripci� de la parte de control como una MEF ****
-- *** Parte operativa (Paso de datos)************************

end Behavioral;