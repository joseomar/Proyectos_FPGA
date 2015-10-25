----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:18:12 02/09/2015 
-- Design Name: 
-- Module Name:    MEF - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Implementacion del grafo de estado de una de las presentaciones (MEF)
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

entity MEF is
    Port ( x1 : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           salida : out  STD_LOGIC);
end MEF;

architecture Behavioral of MEF is
--Defino mi tipo de dato
TYPE estados IS (s1,s2,s3,s4);
--Creo una señal de mi tipo de dato
SIGNAL estado: estados;
begin
--Voy a dividir la maquina de estados en 2 procesos

process (reset,clk)--Proceso que define la transicion entre estados
begin
if reset='1' then estado<=s1;
elsif rising_edge(clk) then
case estado is
when s1 => if x1='1' then
				estado<=s2; else
				estado<=s3;
				end if;
when s2 => estado<=s4;				
when s3 => estado<=s4;
when s4 => estado<=s1;
end case;
end if;
end process;

process(estado)
begin
case estado is
when s1 => salida<='1';
when s2 => salida<='1';
when s3 => salida<='0';
when s4 => salida<='0';
end case;
end process;
end Behavioral;

