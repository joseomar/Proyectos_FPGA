----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:41:36 01/31/2015 
-- Design Name: 
-- Module Name:    elem_RAM - Behavioral 
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

entity elem_RAM is
    Port ( a : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           D : out  STD_LOGIC);
end elem_RAM;

architecture Behavioral of elem_RAM is

begin

process (clk) begin

if (falling_edge(clk)) then D <= a;

end if;

end process;

end Behavioral;

