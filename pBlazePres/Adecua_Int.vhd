----------------------------------------------------------------------------------
-- Company: DSI / FCEIA / UNR 
-- Engineer: Síntesis de sistemas digitales en FPGA
-- 
-- Create Date:    19:18:56 05/28/2014 
-- Design Name: 
-- Module Name:    Adecua_Int - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Módulo que adecúa el pedido de interrupción para PBlaze
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

entity Adecua_Int is
    Port ( clk : in  STD_LOGIC;
           r : in  STD_LOGIC;
           Int : in  STD_LOGIC;
           Int_Ack : in  STD_LOGIC;
           Int_Ade : out  STD_LOGIC);
end Adecua_Int;

architecture Behavioral of Adecua_Int is
type estado is (e1,e2,e3);
signal actual: estado;

begin
process (clk,r)-- Adecuación del pedido de interrupción
begin
if r = '1' then actual <= e1; elsif
clk'event and clk = '1' then 
case actual is 
when e1 => if Int = '1' then actual <=e2;end if;
when e2 => if Int_ack = '1' then actual <= e3; end if;
when e3 => if Int = '0' then actual <=e1;	end if;
end case;
end if;
end process;
	
int_Ade <= '1' when actual = e2 else '0'; -- Pedido de interrupción


end Behavioral;

