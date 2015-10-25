////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 9.2i
//  \   \         Application : sch2verilog
//  /   /         Filename : esquematico.vf
// /___/   /\     Timestamp : 02/01/2015 23:36:55
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: sch2verilog -intstyle ise -family spartan3e -w /home/jose/Documentos/Projects_ISE_9_2/Prueba_esquematico_placa/esquematico.sch esquematico.vf
//Design Name: esquematico
//Device: spartan3e
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module esquematico(clk, 
                   D, 
                   Q);

    input clk;
    input D;
   output Q;
   
   
   FD_1 XLXI_1 (.C(clk), 
                .D(D), 
                .Q(Q));
   defparam XLXI_1.INIT = 1'b0;
endmodule
