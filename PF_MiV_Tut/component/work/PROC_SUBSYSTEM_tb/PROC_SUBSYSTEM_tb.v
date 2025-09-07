//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Sep  6 15:59:56 2025
// Version: 2025.1 2025.1.0.14
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// PROC_SUBSYSTEM_tb
module PROC_SUBSYSTEM_tb(
    // Outputs
    GPIO_OUT
);

//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [3:0] GPIO_OUT;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         CLK_GEN_C0_0_CLK;
wire   [3:0] GPIO_OUT_net_0;
wire         RESET_GEN_C0_0_RESET;
wire   [3:0] GPIO_OUT_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire         GND_net;
wire         VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net = 1'b0;
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign GPIO_OUT_net_1 = GPIO_OUT_net_0;
assign GPIO_OUT[3:0]  = GPIO_OUT_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CLK_GEN_C0
CLK_GEN_C0 CLK_GEN_C0_0(
        // Outputs
        .CLK ( CLK_GEN_C0_0_CLK ) 
        );

//--------PROC_SUBSYSTEM
PROC_SUBSYSTEM PROC_SUBSYSTEM_0(
        // Inputs
        .REF_CLK_0 ( CLK_GEN_C0_0_CLK ),
        .TCK       ( GND_net ),
        .TDI       ( GND_net ),
        .TMS       ( GND_net ),
        .TRSTB     ( VCC_net ),
        .RESETn    ( RESET_GEN_C0_0_RESET ),
        .RX        ( GND_net ),
        // Outputs
        .TDO       (  ),
        .TX        (  ),
        .GPIO_OUT  ( GPIO_OUT_net_0 ) 
        );

//--------RESET_GEN_C0
RESET_GEN_C0 RESET_GEN_C0_0(
        // Outputs
        .RESET ( RESET_GEN_C0_0_RESET ) 
        );


endmodule
