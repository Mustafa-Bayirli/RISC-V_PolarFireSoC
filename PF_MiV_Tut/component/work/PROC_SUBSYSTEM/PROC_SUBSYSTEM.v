//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Sep  6 15:47:37 2025
// Version: 2025.1 2025.1.0.14
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// PROC_SUBSYSTEM
module PROC_SUBSYSTEM(
    // Inputs
    REF_CLK_0,
    RESETn,
    RX,
    TCK,
    TDI,
    TMS,
    TRSTB,
    // Outputs
    GPIO_OUT,
    TDO,
    TX
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        REF_CLK_0;
input        RESETn;
input        RX;
input        TCK;
input        TDI;
input        TMS;
input        TRSTB;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [3:0] GPIO_OUT;
output       TDO;
output       TX;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CoreAPB3_C0_0_APBmslave0_PENABLE;
wire          CoreAPB3_C0_0_APBmslave0_PREADY;
wire          CoreAPB3_C0_0_APBmslave0_PSELx;
wire          CoreAPB3_C0_0_APBmslave0_PSLVERR;
wire          CoreAPB3_C0_0_APBmslave0_PWRITE;
wire   [31:0] CoreAPB3_C0_0_APBmslave1_PRDATA;
wire          CoreAPB3_C0_0_APBmslave1_PREADY;
wire          CoreAPB3_C0_0_APBmslave1_PSELx;
wire          CoreAPB3_C0_0_APBmslave1_PSLVERR;
wire   [31:0] CoreAPB3_C0_0_APBmslave2_PRDATA;
wire          CoreAPB3_C0_0_APBmslave2_PSELx;
wire          COREJTAGDEBUG_C0_0_TGT_TCK_0;
wire          COREJTAGDEBUG_C0_0_TGT_TDI_0;
wire          COREJTAGDEBUG_C0_0_TGT_TMS_0;
wire          COREJTAGDEBUG_C0_0_TGT_TRSTN_0;
wire          CORERESET_PF_C0_0_FABRIC_RESET_N;
wire          CORERESET_PF_C0_0_PLL_POWERDOWN_B;
wire          CoreTimer_C0_0_TIMINT;
wire   [3:0]  GPIO_OUT_net_0;
wire   [31:0] MIV_RV32_C0_0_AHBL_M_TARGET_HADDR;
wire   [2:0]  MIV_RV32_C0_0_AHBL_M_TARGET_HBURST;
wire          MIV_RV32_C0_0_AHBL_M_TARGET_HMASTLOCK;
wire   [3:0]  MIV_RV32_C0_0_AHBL_M_TARGET_HPROT;
wire   [31:0] MIV_RV32_C0_0_AHBL_M_TARGET_HRDATA;
wire          MIV_RV32_C0_0_AHBL_M_TARGET_HREADYOUT;
wire          MIV_RV32_C0_0_AHBL_M_TARGET_HSELx;
wire   [2:0]  MIV_RV32_C0_0_AHBL_M_TARGET_HSIZE;
wire   [1:0]  MIV_RV32_C0_0_AHBL_M_TARGET_HTRANS;
wire   [31:0] MIV_RV32_C0_0_AHBL_M_TARGET_HWDATA;
wire          MIV_RV32_C0_0_AHBL_M_TARGET_HWRITE;
wire   [31:0] MIV_RV32_C0_0_APB_INITIATOR_PADDR;
wire          MIV_RV32_C0_0_APB_INITIATOR_PENABLE;
wire   [31:0] MIV_RV32_C0_0_APB_INITIATOR_PRDATA;
wire          MIV_RV32_C0_0_APB_INITIATOR_PREADY;
wire          MIV_RV32_C0_0_APB_INITIATOR_PSELx;
wire          MIV_RV32_C0_0_APB_INITIATOR_PSLVERR;
wire   [31:0] MIV_RV32_C0_0_APB_INITIATOR_PWDATA;
wire          MIV_RV32_C0_0_APB_INITIATOR_PWRITE;
wire          MIV_RV32_C0_0_JTAG_TDO;
wire          PF_CCC_C0_0_OUT0_FABCLK_0;
wire          PF_CCC_C0_0_PLL_LOCK_0;
wire          PFSOC_INIT_MONITOR_C0_0_BANK_0_VDDI_STATUS;
wire          PFSOC_INIT_MONITOR_C0_0_DEVICE_INIT_DONE;
wire          PFSOC_INIT_MONITOR_C0_0_FABRIC_POR_N;
wire          REF_CLK_0;
wire          RESETn;
wire          RX;
wire          TCK;
wire          TDI;
wire          TDO_net_0;
wire          TMS;
wire          TRSTB;
wire          TX_net_0;
wire          TDO_net_1;
wire          TX_net_1;
wire   [3:0]  GPIO_OUT_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   [3:0]  GPIO_IN_const_net_0;
wire          VCC_net;
wire          GND_net;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:0] CoreAPB3_C0_0_APBmslave0_PADDR;
wire   [4:0]  CoreAPB3_C0_0_APBmslave0_PADDR_0;
wire   [4:0]  CoreAPB3_C0_0_APBmslave0_PADDR_0_4to0;
wire   [7:0]  CoreAPB3_C0_0_APBmslave0_PADDR_1;
wire   [7:0]  CoreAPB3_C0_0_APBmslave0_PADDR_1_7to0;
wire   [4:2]  CoreAPB3_C0_0_APBmslave0_PADDR_2;
wire   [4:2]  CoreAPB3_C0_0_APBmslave0_PADDR_2_4to2;
wire   [7:0]  CoreAPB3_C0_0_APBmslave0_PRDATA;
wire   [31:0] CoreAPB3_C0_0_APBmslave0_PRDATA_0;
wire   [31:8] CoreAPB3_C0_0_APBmslave0_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_C0_0_APBmslave0_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_C0_0_APBmslave0_PWDATA;
wire   [7:0]  CoreAPB3_C0_0_APBmslave0_PWDATA_0;
wire   [7:0]  CoreAPB3_C0_0_APBmslave0_PWDATA_0_7to0;
wire   [1:0]  MIV_RV32_C0_0_AHBL_M_TARGET_HRESP;
wire          MIV_RV32_C0_0_AHBL_M_TARGET_HRESP_0;
wire   [0:0]  MIV_RV32_C0_0_AHBL_M_TARGET_HRESP_0_0to0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GPIO_IN_const_net_0 = 4'h0;
assign VCC_net             = 1'b1;
assign GND_net             = 1'b0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TDO_net_1      = TDO_net_0;
assign TDO            = TDO_net_1;
assign TX_net_1       = TX_net_0;
assign TX             = TX_net_1;
assign GPIO_OUT_net_1 = GPIO_OUT_net_0;
assign GPIO_OUT[3:0]  = GPIO_OUT_net_1;
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign CoreAPB3_C0_0_APBmslave0_PADDR_0 = { CoreAPB3_C0_0_APBmslave0_PADDR_0_4to0 };
assign CoreAPB3_C0_0_APBmslave0_PADDR_0_4to0 = CoreAPB3_C0_0_APBmslave0_PADDR[4:0];
assign CoreAPB3_C0_0_APBmslave0_PADDR_1 = { CoreAPB3_C0_0_APBmslave0_PADDR_1_7to0 };
assign CoreAPB3_C0_0_APBmslave0_PADDR_1_7to0 = CoreAPB3_C0_0_APBmslave0_PADDR[7:0];
assign CoreAPB3_C0_0_APBmslave0_PADDR_2 = { CoreAPB3_C0_0_APBmslave0_PADDR_2_4to2 };
assign CoreAPB3_C0_0_APBmslave0_PADDR_2_4to2 = CoreAPB3_C0_0_APBmslave0_PADDR[4:2];

assign CoreAPB3_C0_0_APBmslave0_PRDATA_0 = { CoreAPB3_C0_0_APBmslave0_PRDATA_0_31to8, CoreAPB3_C0_0_APBmslave0_PRDATA_0_7to0 };
assign CoreAPB3_C0_0_APBmslave0_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_C0_0_APBmslave0_PRDATA_0_7to0 = CoreAPB3_C0_0_APBmslave0_PRDATA[7:0];

assign CoreAPB3_C0_0_APBmslave0_PWDATA_0 = { CoreAPB3_C0_0_APBmslave0_PWDATA_0_7to0 };
assign CoreAPB3_C0_0_APBmslave0_PWDATA_0_7to0 = CoreAPB3_C0_0_APBmslave0_PWDATA[7:0];

assign MIV_RV32_C0_0_AHBL_M_TARGET_HRESP_0 = { MIV_RV32_C0_0_AHBL_M_TARGET_HRESP_0_0to0 };
assign MIV_RV32_C0_0_AHBL_M_TARGET_HRESP_0_0to0 = MIV_RV32_C0_0_AHBL_M_TARGET_HRESP[0:0];

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CoreAPB3_C0
CoreAPB3_C0 CoreAPB3_C0_0(
        // Inputs
        .PADDR     ( MIV_RV32_C0_0_APB_INITIATOR_PADDR ),
        .PSEL      ( MIV_RV32_C0_0_APB_INITIATOR_PSELx ),
        .PENABLE   ( MIV_RV32_C0_0_APB_INITIATOR_PENABLE ),
        .PWRITE    ( MIV_RV32_C0_0_APB_INITIATOR_PWRITE ),
        .PWDATA    ( MIV_RV32_C0_0_APB_INITIATOR_PWDATA ),
        .PRDATAS0  ( CoreAPB3_C0_0_APBmslave0_PRDATA_0 ),
        .PREADYS0  ( CoreAPB3_C0_0_APBmslave0_PREADY ),
        .PSLVERRS0 ( CoreAPB3_C0_0_APBmslave0_PSLVERR ),
        .PRDATAS1  ( CoreAPB3_C0_0_APBmslave1_PRDATA ),
        .PREADYS1  ( CoreAPB3_C0_0_APBmslave1_PREADY ),
        .PSLVERRS1 ( CoreAPB3_C0_0_APBmslave1_PSLVERR ),
        .PRDATAS2  ( CoreAPB3_C0_0_APBmslave2_PRDATA ),
        .PREADYS2  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS2 ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .PRDATA    ( MIV_RV32_C0_0_APB_INITIATOR_PRDATA ),
        .PREADY    ( MIV_RV32_C0_0_APB_INITIATOR_PREADY ),
        .PSLVERR   ( MIV_RV32_C0_0_APB_INITIATOR_PSLVERR ),
        .PADDRS    ( CoreAPB3_C0_0_APBmslave0_PADDR ),
        .PSELS0    ( CoreAPB3_C0_0_APBmslave0_PSELx ),
        .PENABLES  ( CoreAPB3_C0_0_APBmslave0_PENABLE ),
        .PWRITES   ( CoreAPB3_C0_0_APBmslave0_PWRITE ),
        .PWDATAS   ( CoreAPB3_C0_0_APBmslave0_PWDATA ),
        .PSELS1    ( CoreAPB3_C0_0_APBmslave1_PSELx ),
        .PSELS2    ( CoreAPB3_C0_0_APBmslave2_PSELx ) 
        );

//--------CoreGPIO_C0
CoreGPIO_C0 CoreGPIO_C0_0(
        // Inputs
        .PRESETN  ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .PCLK     ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .GPIO_IN  ( GPIO_IN_const_net_0 ),
        .PADDR    ( CoreAPB3_C0_0_APBmslave0_PADDR_1 ),
        .PSEL     ( CoreAPB3_C0_0_APBmslave1_PSELx ),
        .PENABLE  ( CoreAPB3_C0_0_APBmslave0_PENABLE ),
        .PWRITE   ( CoreAPB3_C0_0_APBmslave0_PWRITE ),
        .PWDATA   ( CoreAPB3_C0_0_APBmslave0_PWDATA ),
        // Outputs
        .INT      (  ),
        .GPIO_OUT ( GPIO_OUT_net_0 ),
        .PRDATA   ( CoreAPB3_C0_0_APBmslave1_PRDATA ),
        .PREADY   ( CoreAPB3_C0_0_APBmslave1_PREADY ),
        .PSLVERR  ( CoreAPB3_C0_0_APBmslave1_PSLVERR ) 
        );

//--------COREJTAGDEBUG_C0
COREJTAGDEBUG_C0 COREJTAGDEBUG_C0_0(
        // Inputs
        .TRSTB       ( TRSTB ),
        .TCK         ( TCK ),
        .TMS         ( TMS ),
        .TDI         ( TDI ),
        .TGT_TDO_0   ( MIV_RV32_C0_0_JTAG_TDO ),
        // Outputs
        .TDO         ( TDO_net_0 ),
        .TGT_TCK_0   ( COREJTAGDEBUG_C0_0_TGT_TCK_0 ),
        .TGT_TMS_0   ( COREJTAGDEBUG_C0_0_TGT_TMS_0 ),
        .TGT_TDI_0   ( COREJTAGDEBUG_C0_0_TGT_TDI_0 ),
        .TGT_TRSTN_0 ( COREJTAGDEBUG_C0_0_TGT_TRSTN_0 ) 
        );

//--------CORERESET_PF_C0
CORERESET_PF_C0 CORERESET_PF_C0_0(
        // Inputs
        .CLK                ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .EXT_RST_N          ( RESETn ),
        .BANK_x_VDDI_STATUS ( PFSOC_INIT_MONITOR_C0_0_BANK_0_VDDI_STATUS ),
        .BANK_y_VDDI_STATUS ( VCC_net ),
        .PLL_LOCK           ( PF_CCC_C0_0_PLL_LOCK_0 ),
        .SS_BUSY            ( GND_net ),
        .INIT_DONE          ( PFSOC_INIT_MONITOR_C0_0_DEVICE_INIT_DONE ),
        .FF_US_RESTORE      ( GND_net ),
        .FPGA_POR_N         ( PFSOC_INIT_MONITOR_C0_0_FABRIC_POR_N ),
        // Outputs
        .PLL_POWERDOWN_B    ( CORERESET_PF_C0_0_PLL_POWERDOWN_B ),
        .FABRIC_RESET_N     ( CORERESET_PF_C0_0_FABRIC_RESET_N ) 
        );

//--------CoreTimer_C0
CoreTimer_C0 CoreTimer_C0_0(
        // Inputs
        .PCLK    ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .PRESETn ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .PSEL    ( CoreAPB3_C0_0_APBmslave2_PSELx ),
        .PENABLE ( CoreAPB3_C0_0_APBmslave0_PENABLE ),
        .PADDR   ( CoreAPB3_C0_0_APBmslave0_PADDR_2 ),
        .PWRITE  ( CoreAPB3_C0_0_APBmslave0_PWRITE ),
        .PWDATA  ( CoreAPB3_C0_0_APBmslave0_PWDATA ),
        // Outputs
        .TIMINT  ( CoreTimer_C0_0_TIMINT ),
        .PRDATA  ( CoreAPB3_C0_0_APBmslave2_PRDATA ) 
        );

//--------CoreUARTapb_C0
CoreUARTapb_C0 CoreUARTapb_C0_0(
        // Inputs
        .PCLK        ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .PRESETN     ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .RX          ( RX ),
        .PADDR       ( CoreAPB3_C0_0_APBmslave0_PADDR_0 ),
        .PSEL        ( CoreAPB3_C0_0_APBmslave0_PSELx ),
        .PENABLE     ( CoreAPB3_C0_0_APBmslave0_PENABLE ),
        .PWRITE      ( CoreAPB3_C0_0_APBmslave0_PWRITE ),
        .PWDATA      ( CoreAPB3_C0_0_APBmslave0_PWDATA_0 ),
        // Outputs
        .TXRDY       (  ),
        .RXRDY       (  ),
        .PARITY_ERR  (  ),
        .OVERFLOW    (  ),
        .TX          ( TX_net_0 ),
        .FRAMING_ERR (  ),
        .PRDATA      ( CoreAPB3_C0_0_APBmslave0_PRDATA ),
        .PREADY      ( CoreAPB3_C0_0_APBmslave0_PREADY ),
        .PSLVERR     ( CoreAPB3_C0_0_APBmslave0_PSLVERR ) 
        );

//--------MIV_RV32_C0
MIV_RV32_C0 MIV_RV32_C0_0(
        // Inputs
        .CLK            ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .RESETN         ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .APB_PRDATA     ( MIV_RV32_C0_0_APB_INITIATOR_PRDATA ),
        .APB_PREADY     ( MIV_RV32_C0_0_APB_INITIATOR_PREADY ),
        .APB_PSLVERR    ( MIV_RV32_C0_0_APB_INITIATOR_PSLVERR ),
        .AHB_HRDATA     ( MIV_RV32_C0_0_AHBL_M_TARGET_HRDATA ),
        .AHB_HRESP      ( MIV_RV32_C0_0_AHBL_M_TARGET_HRESP_0 ),
        .AHB_HREADY     ( MIV_RV32_C0_0_AHBL_M_TARGET_HREADYOUT ),
        .JTAG_TRSTN     ( COREJTAGDEBUG_C0_0_TGT_TRSTN_0 ),
        .JTAG_TCK       ( COREJTAGDEBUG_C0_0_TGT_TCK_0 ),
        .JTAG_TDI       ( COREJTAGDEBUG_C0_0_TGT_TDI_0 ),
        .JTAG_TMS       ( COREJTAGDEBUG_C0_0_TGT_TMS_0 ),
        .EXT_IRQ        ( CoreTimer_C0_0_TIMINT ),
        // Outputs
        .EXT_RESETN     (  ),
        .TIME_COUNT_OUT (  ),
        .APB_PADDR      ( MIV_RV32_C0_0_APB_INITIATOR_PADDR ),
        .APB_PENABLE    ( MIV_RV32_C0_0_APB_INITIATOR_PENABLE ),
        .APB_PWRITE     ( MIV_RV32_C0_0_APB_INITIATOR_PWRITE ),
        .APB_PWDATA     ( MIV_RV32_C0_0_APB_INITIATOR_PWDATA ),
        .APB_PSEL       ( MIV_RV32_C0_0_APB_INITIATOR_PSELx ),
        .AHB_HADDR      ( MIV_RV32_C0_0_AHBL_M_TARGET_HADDR ),
        .AHB_HTRANS     ( MIV_RV32_C0_0_AHBL_M_TARGET_HTRANS ),
        .AHB_HWRITE     ( MIV_RV32_C0_0_AHBL_M_TARGET_HWRITE ),
        .AHB_HSIZE      ( MIV_RV32_C0_0_AHBL_M_TARGET_HSIZE ),
        .AHB_HBURST     ( MIV_RV32_C0_0_AHBL_M_TARGET_HBURST ),
        .AHB_HPROT      ( MIV_RV32_C0_0_AHBL_M_TARGET_HPROT ),
        .AHB_HWDATA     ( MIV_RV32_C0_0_AHBL_M_TARGET_HWDATA ),
        .AHB_HMASTLOCK  ( MIV_RV32_C0_0_AHBL_M_TARGET_HMASTLOCK ),
        .AHB_HSEL       ( MIV_RV32_C0_0_AHBL_M_TARGET_HSELx ),
        .JTAG_TDO       ( MIV_RV32_C0_0_JTAG_TDO ),
        .JTAG_TDO_DR    (  ) 
        );

//--------PF_CCC_C0
PF_CCC_C0 PF_CCC_C0_0(
        // Inputs
        .REF_CLK_0         ( REF_CLK_0 ),
        .PLL_POWERDOWN_N_0 ( CORERESET_PF_C0_0_PLL_POWERDOWN_B ),
        // Outputs
        .OUT0_FABCLK_0     ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .PLL_LOCK_0        ( PF_CCC_C0_0_PLL_LOCK_0 ) 
        );

//--------PF_SRAM_AHBL_AXI_C0
PF_SRAM_AHBL_AXI_C0 PF_SRAM_AHBL_AXI_C0_0(
        // Inputs
        .HCLK      ( PF_CCC_C0_0_OUT0_FABCLK_0 ),
        .HRESETN   ( CORERESET_PF_C0_0_FABRIC_RESET_N ),
        .HADDR     ( MIV_RV32_C0_0_AHBL_M_TARGET_HADDR ),
        .HTRANS    ( MIV_RV32_C0_0_AHBL_M_TARGET_HTRANS ),
        .HWRITE    ( MIV_RV32_C0_0_AHBL_M_TARGET_HWRITE ),
        .HSIZE     ( MIV_RV32_C0_0_AHBL_M_TARGET_HSIZE ),
        .HBURST    ( MIV_RV32_C0_0_AHBL_M_TARGET_HBURST ),
        .HWDATA    ( MIV_RV32_C0_0_AHBL_M_TARGET_HWDATA ),
        .HSEL      ( MIV_RV32_C0_0_AHBL_M_TARGET_HSELx ),
        .HREADYIN  ( VCC_net ), // tied to 1'b1 from definition
        // Outputs
        .HRDATA    ( MIV_RV32_C0_0_AHBL_M_TARGET_HRDATA ),
        .HREADYOUT ( MIV_RV32_C0_0_AHBL_M_TARGET_HREADYOUT ),
        .HRESP     ( MIV_RV32_C0_0_AHBL_M_TARGET_HRESP ) 
        );

//--------PFSOC_INIT_MONITOR_C0
PFSOC_INIT_MONITOR_C0 PFSOC_INIT_MONITOR_C0_0(
        // Outputs
        .FABRIC_POR_N               ( PFSOC_INIT_MONITOR_C0_0_FABRIC_POR_N ),
        .PCIE_INIT_DONE             (  ),
        .USRAM_INIT_DONE            (  ),
        .SRAM_INIT_DONE             (  ),
        .DEVICE_INIT_DONE           ( PFSOC_INIT_MONITOR_C0_0_DEVICE_INIT_DONE ),
        .BANK_0_VDDI_STATUS         ( PFSOC_INIT_MONITOR_C0_0_BANK_0_VDDI_STATUS ),
        .XCVR_INIT_DONE             (  ),
        .USRAM_INIT_FROM_SNVM_DONE  (  ),
        .USRAM_INIT_FROM_UPROM_DONE (  ),
        .USRAM_INIT_FROM_SPI_DONE   (  ),
        .SRAM_INIT_FROM_SNVM_DONE   (  ),
        .SRAM_INIT_FROM_UPROM_DONE  (  ),
        .SRAM_INIT_FROM_SPI_DONE    (  ),
        .AUTOCALIB_DONE             (  ) 
        );


endmodule
