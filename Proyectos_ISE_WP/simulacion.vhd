
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:24:07 01/31/2015
-- Design Name:   compuertita
-- Module Name:   /home/jose/Documentos/Projects_ISE_9_2/Proyectos_ISE_WP/simulacion.vhd
-- Project Name:  Proyectos_ISE_WP
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: compuertita
--
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends 
-- that these types always be used for the top-level I/O of a design in order 
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY simulacion_vhd IS
END simulacion_vhd;

ARCHITECTURE behavior OF simulacion_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT compuertita
	PORT(
		a : IN std_logic;
		b : IN std_logic;          
		c : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL a :  std_logic := '0';
	SIGNAL b :  std_logic := '0';

	--Outputs
	SIGNAL c :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: compuertita PORT MAP(
		a => a,
		b => b,
		c => c
	);

	tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;

		-- Place stimulus here

		wait; -- will wait forever
	END PROCESS;

END;
