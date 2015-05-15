----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:33:52 02/01/2015 
-- Design Name: 
-- Module Name:    contador - Behavioral 
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

entity contador is
    Port ( din : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           r : in  STD_LOGIC;
           l : in  STD_LOGIC;
           en : in  STD_LOGIC;
           tc : out  STD_LOGIC;
           cuenta : out  STD_LOGIC_VECTOR (7 downto 0));
end contador;

architecture Behavioral of contador is
signal bout: STD_LOGIC_VECTOR (7 downto 0);
begin
process(clk,r)-- se ve que el reset es asincronico
begin
if r='1' then bout<=(others=>'0');
elsif(rising_edge(clk)) then
if l='1'  then bout<=din;
elsif en='1' then bout<=bout+1;
end if;
end if;
end process;
cuenta<=bout;
tc<='1' when bout="11111111" else '0';
end Behavioral;

