----------------------------------------------------------------------------------
-- Company:DSI / FCEIA / UNR 
-- Engineer: Síntesis de sistemas digitales en FPGA
-- 
-- Create Date:    15:02:02 05/28/2014 
-- Design Name: 
-- Module Name:    Top_Sistema - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Primer ejemplo con PicoBlaze. 
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
--use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Top_Sistema is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           boton : in  STD_LOGIC;
           Switch : in  STD_LOGIC_VECTOR (3 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end Top_Sistema;

architecture Behavioral of Top_Sistema is

signal Int_L, Ack, Int_PB, WS: std_logic;
signal dato_PB, switch_PB: std_logic_vector(7 downto 0);
component Adecua_Int is
    Port ( clk : in  STD_LOGIC;
           r : in  STD_LOGIC;
           Int : in  STD_LOGIC;
           Int_Ack : in  STD_LOGIC;
           Int_Ade : out  STD_LOGIC);
end component;
component AntiR is
	 generic (width: integer range 1 to 20);
    Port ( clk,reset : in  STD_LOGIC;
			  Boton : in  STD_LOGIC;
           BotonL : out  STD_LOGIC);
end component;

component top_PB is
 Port (      
           port_id : out std_logic_vector(7 downto 0);
           write_strobe : out std_logic;
               out_port : out std_logic_vector(7 downto 0);
            read_strobe : out std_logic;
                in_port : in std_logic_vector(7 downto 0);
              interrupt : in std_logic;
          interrupt_ack : out std_logic;
                  reset : in std_logic;
                    clk : in std_logic);
end component;

component Reg_led is
    Port ( clk : in  STD_LOGIC;
           r : in  STD_LOGIC;
           En : in  STD_LOGIC;
           dato : in  STD_LOGIC_VECTOR (7 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
begin
switch_PB <= (Switch (3)& Switch (3) & Switch (3)& Switch (3) & Switch);
U1:AntiR
generic map (Width => 16)-- se define la cantidad de lineas del contador
-- 16 líneas considerando rebotes de aproximadamente 1 mseg
-- Para simulación reducir el parámetro
port map (clk => clk, reset => reset, boton => boton, botonL => Int_L);

U2:Adecua_Int
port map (clk => clk, r => reset, Int_ack => ack, Int => Int_L, Int_Ade => Int_PB);

U3:top_PB
port map (clk => clk, reset => reset, interrupt_ack => ack,write_strobe => WS, 
in_port => switch_PB,out_port => dato_PB, interrupt => Int_PB);

U4: Reg_led
port map (clk => clk, r => reset, En => WS, dato => dato_PB, led => led);
end Behavioral;

