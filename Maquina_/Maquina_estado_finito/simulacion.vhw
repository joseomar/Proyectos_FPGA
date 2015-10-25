--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : simulacion.vhw
-- /___/   /\     Timestamp : Mon Feb  9 19:03:31 2015
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: simulacion
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY simulacion IS
END simulacion;

ARCHITECTURE testbench_arch OF simulacion IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT MEF
        PORT (
            x1 : In std_logic;
            clk : In std_logic;
            reset : In std_logic;
            salida : Out std_logic
        );
    END COMPONENT;

    SIGNAL x1 : std_logic := '0';
    SIGNAL clk : std_logic := '0';
    SIGNAL reset : std_logic := '0';
    SIGNAL salida : std_logic := '0';

    constant PERIOD : time := 40 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 100 ns;

    BEGIN
        UUT : MEF
        PORT MAP (
            x1 => x1,
            clk => clk,
            reset => reset,
            salida => salida
        );

        PROCESS    -- clock process for clk
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                clk <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                clk <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                reset <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  145ns
                WAIT FOR 45 ns;
                x1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  225ns
                WAIT FOR 80 ns;
                x1 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  265ns
                WAIT FOR 40 ns;
                reset <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  305ns
                WAIT FOR 40 ns;
                x1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  385ns
                WAIT FOR 80 ns;
                x1 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  465ns
                WAIT FOR 80 ns;
                x1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  545ns
                WAIT FOR 80 ns;
                x1 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  625ns
                WAIT FOR 80 ns;
                x1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  705ns
                WAIT FOR 80 ns;
                x1 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  785ns
                WAIT FOR 80 ns;
                x1 <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  865ns
                WAIT FOR 80 ns;
                x1 <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  945ns
                WAIT FOR 80 ns;
                x1 <= '1';
                -- -------------------------------------
                WAIT FOR 95 ns;

            END PROCESS;

    END testbench_arch;

