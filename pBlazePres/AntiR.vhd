----------------------------------------------------------------------------------
-- Curso Síntesis de Sistemas Digitales en FPGA
-- ANTIREBOTE 
-- Se controla con una MEF que tiene en cuenta rebotes al pulsar y soltar el botón
-- Se estiman rebotes en un período de aproximadamente 1 mseg
-- Se introduce el parámetro para poder reutilizar el módulo con otras duraciones de rebotes
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AntiR is
    generic (width: integer range 1 to 20);-- parámetro para definir el número de líneas del contador
    Port ( clk,reset : in  STD_LOGIC;
			  Boton : in  STD_LOGIC;
           BotonL : out  STD_LOGIC);
end ;

architecture Behavioral of AntiR is
type estado is (s0,s1,s2,s3,s4);
signal actual:estado;
signal cuenta:std_logic_vector (width - 1 downto 0);-- Adecuar al valor máximo de "cuenta"
-- con 16 bits a 50 MHz llegará a cuenta máxima en aproximadamente 1,3 mseg
-- Definición de una senial cuenta_max para detectar el final de la cuenta
signal cuenta_max: integer range 1 to 100000;-- considerando el tiempo anterior
signal Fin_Cuenta, E_Cuenta: std_logic; 
begin
cuenta_max <= (2 ** width) - 1;-- el valor de la cuenta máxima en función del parámetro
-- MEF1 *** Proceso que determina los cambios de estados
Process (clk, reset)
begin
if reset = '1' then actual <=s0;
elsif clk'event and clk = '1' then
case actual is 
when s0 =>  if Boton ='1' then actual <= s1;end if;
when s1 => actual <= s2;
when s2 => if Fin_Cuenta = '1' then actual <=s3; end if;
when s3 => if Boton = '0' then actual <=s4; end if;
when s4 => if Fin_Cuenta = '1' then actual <=s0; end if;
when others => null;
end case;
end if;
end process;
-- MEF1 *** Proceso que determina las salidas
Process (actual)
begin
case (actual) is
when s0=> BotonL <= '0';E_Cuenta <= '0';
when s1=> BotonL  <= '1';E_Cuenta <= '1';
when s2=> BotonL <= '0';E_Cuenta <= '1';
when s3=> BotonL  <= '0';E_Cuenta <= '0';
when s4=> BotonL  <= '0';E_Cuenta <= '1';
end case;
end process;
-- ********************
-- Temporizador
process (reset, clk)
begin
if reset ='1' then 
cuenta <= (others => '0'); 
elsif clk ='1' and clk'event then
if E_cuenta = '1'  then  cuenta <= cuenta + 1;
end if;
end if;
end process;
-- Para detectar en la MEF el fin de los rebotes al pulsar y también soltar el botón
Fin_cuenta <= '1' when conv_integer (cuenta) = cuenta_max else '0';--Valor final "cuenta" depende del parámetro

-- *********************
end Behavioral;

