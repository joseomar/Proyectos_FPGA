----------------------------------------------------------------------------------
-- Company: ANPCyT
-- Engineer: Chelotti Jose
-- 
-- Create Date:    19:20:08 02/09/2015 
-- Design Name: 
-- Module Name:    anti_R - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Modulo anti rebotes de 5 estados
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

entity anti_R is
    Port ( P : in  STD_LOGIC;
           PL : out  STD_LOGIC;
           Reset : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end anti_R;

architecture Behavioral of anti_R is
TYPE estado IS (s0,s1,s2,s3,s4);--Defino mi tipo de dato enumerado
SIGNAL actual:estado;
SIGNAL cuenta: std_logic_vector(7 downto 0);
SIGNAL fin_cuenta, e_cuenta: std_logic;  
begin
--MEF 1--proceso que determina los cambios de estados internos
process (clk,reset)
begin
if reset='1' then actual<=s0;
elsif rising_edge(clk) then
	case actual is
		when s0 => if P='1' then actual<=s1;end if;
		when s1 => actual<=s2;
		when s2 => if fin_cuenta='1' then actual<=s3; end if;
		when s3 => if P='0' then actual<=s4;end if;
		when s4 => if fin_cuenta='1' then actual<=s0;end if;
		when others => null;
	end case;
end if;
end process;

--MEF2--Proceso que determina las salidas
process(actual)
begin
case actual is 
	when s0 => PL<='0'; e_cuenta<='0';
	when s1 => PL<='1'; e_cuenta<='1';
	when s2 => PL<='0'; e_cuenta<='1';
	when s3 => PL<='0'; e_cuenta<='0';
	when s4 => PL<='0'; e_cuenta<='1';
end case;
end process;

--Temporizador
process(reset,clk)
begin
if reset='1' then
cuenta<=(others=>'0');
elsif rising_edge(clk)then
if e_cuenta='1' then
cuenta<=cuenta+1;
end if;
end if;
end process;

fin_cuenta<='1' when cuenta="11111111" else '0';
end Behavioral;

