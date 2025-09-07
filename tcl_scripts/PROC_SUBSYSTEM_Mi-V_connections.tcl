# Microsemi Tcl Script
# libero
# Date: January 2, 2024
# Updated for Libero SoC v2023.2 and the PolarFire SoC Discovery kit
#
#
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"MIV_RV32_C0_0:AHBL_M_TARGET" "PF_SRAM_AHBL_AXI_C0_0:AHBSlaveInterface"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"MIV_RV32_C0_0:APB_INITIATOR" "CoreAPB3_C0_0:APB3mmaster"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"CoreAPB3_C0_0:APBmslave0" "CoreUARTapb_C0_0:APB_bif"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"CoreAPB3_C0_0:APBmslave1" "CoreGPIO_C0_0:APB_bif"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"CoreAPB3_C0_0:APBmslave2" "CoreTimer_C0_0:APBslave"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"PFSOC_INIT_MONITOR_C0_0:DEVICE_INIT_DONE" "CORERESET_PF_C0_0:INIT_DONE"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"PFSOC_INIT_MONITOR_C0_0:FABRIC_POR_N" "CORERESET_PF_C0_0:FPGA_POR_N"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"CORERESET_PF_C0_0:PLL_POWERDOWN_B" "PF_CCC_C0_0:PLL_POWERDOWN_N_0"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"PF_CCC_C0_0:PLL_LOCK_0" "CORERESET_PF_C0_0:PLL_LOCK"} 
#sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"PF_CCC_C0_0:REF_CLK_0" "PF_OSC_C0_0:RCOSC_160MHZ_GL"} 
sd_connect_pin_to_port -sd_name {PROC_SUBSYSTEM} -pin_name {PF_CCC_C0_0:REF_CLK_0} -port_name {} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"PF_CCC_C0_0:OUT0_FABCLK_0" "CORERESET_PF_C0_0:CLK"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"PF_CCC_C0_0:OUT0_FABCLK_0" "MIV_RV32_C0_0:CLK"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"PF_CCC_C0_0:OUT0_FABCLK_0" "PF_SRAM_AHBL_AXI_C0_0:HCLK"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"PF_CCC_C0_0:OUT0_FABCLK_0" "CoreUARTapb_C0_0:PCLK"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"PF_CCC_C0_0:OUT0_FABCLK_0" "CoreGPIO_C0_0:PCLK"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"PF_CCC_C0_0:OUT0_FABCLK_0" "CoreTimer_C0_0:PCLK"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"CORERESET_PF_C0_0:FABRIC_RESET_N" "MIV_RV32_C0_0:RESETN"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"CORERESET_PF_C0_0:FABRIC_RESET_N" "PF_SRAM_AHBL_AXI_C0_0:HRESETN"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"CORERESET_PF_C0_0:FABRIC_RESET_N" "CoreUARTapb_C0_0:PRESETN"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"CORERESET_PF_C0_0:FABRIC_RESET_N" "CoreGPIO_C0_0:PRESETN"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"CORERESET_PF_C0_0:FABRIC_RESET_N" "CoreTimer_C0_0:PRESETn"} 
sd_connect_pin_to_port -sd_name {PROC_SUBSYSTEM} -pin_name {COREJTAGDEBUG_C0_0:TCK} -port_name {} 
sd_connect_pin_to_port -sd_name {PROC_SUBSYSTEM} -pin_name {COREJTAGDEBUG_C0_0:TDO} -port_name {} 
sd_connect_pin_to_port -sd_name {PROC_SUBSYSTEM} -pin_name {COREJTAGDEBUG_C0_0:TDI} -port_name {} 
sd_connect_pin_to_port -sd_name {PROC_SUBSYSTEM} -pin_name {COREJTAGDEBUG_C0_0:TMS} -port_name {} 
sd_connect_pin_to_port -sd_name {PROC_SUBSYSTEM} -pin_name {COREJTAGDEBUG_C0_0:TRSTB} -port_name {} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"COREJTAGDEBUG_C0_0:TGT_TCK_0" "MIV_RV32_C0_0:JTAG_TCK"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"COREJTAGDEBUG_C0_0:TGT_TDI_0" "MIV_RV32_C0_0:JTAG_TDI"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"COREJTAGDEBUG_C0_0:TGT_TDO_0" "MIV_RV32_C0_0:JTAG_TDO"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"COREJTAGDEBUG_C0_0:TGT_TMS_0" "MIV_RV32_C0_0:JTAG_TMS"} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"COREJTAGDEBUG_C0_0:TGT_TRSTN_0" "MIV_RV32_C0_0:JTAG_TRSTN"}  
sd_connect_pin_to_port -sd_name {PROC_SUBSYSTEM} -pin_name {CORERESET_PF_C0_0:EXT_RST_N} -port_name {} 
sd_rename_port -sd_name {PROC_SUBSYSTEM} -current_port_name {EXT_RST_N} -new_port_name {RESETn} 
sd_mark_pins_unused -sd_name {PROC_SUBSYSTEM} -pin_names {MIV_RV32_C0_0:TIME_COUNT_OUT} 
sd_mark_pins_unused -sd_name {PROC_SUBSYSTEM} -pin_names {MIV_RV32_C0_0:EXT_RESETN} 
sd_mark_pins_unused -sd_name {PROC_SUBSYSTEM} -pin_names {MIV_RV32_C0_0:JTAG_TDO_DR} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"CoreTimer_C0_0:TIMINT" "MIV_RV32_C0_0:EXT_IRQ"}
sd_mark_pins_unused -sd_name {PROC_SUBSYSTEM} -pin_names {PFSOC_INIT_MONITOR_C0_0:XCVR_INIT_DONE} 
sd_mark_pins_unused -sd_name {PROC_SUBSYSTEM} -pin_names {PFSOC_INIT_MONITOR_C0_0:PCIE_INIT_DONE} 
sd_mark_pins_unused -sd_name {PROC_SUBSYSTEM} -pin_names {PFSOC_INIT_MONITOR_C0_0:USRAM_INIT_DONE} 
sd_mark_pins_unused -sd_name {PROC_SUBSYSTEM} -pin_names {PFSOC_INIT_MONITOR_C0_0:SRAM_INIT_DONE} 
sd_mark_pins_unused -sd_name {PROC_SUBSYSTEM} -pin_names {PFSOC_INIT_MONITOR_C0_0:USRAM_INIT_FROM_SNVM_DONE} 
sd_mark_pins_unused -sd_name {PROC_SUBSYSTEM} -pin_names {PFSOC_INIT_MONITOR_C0_0:USRAM_INIT_FROM_UPROM_DONE} 
sd_mark_pins_unused -sd_name {PROC_SUBSYSTEM} -pin_names {PFSOC_INIT_MONITOR_C0_0:USRAM_INIT_FROM_SPI_DONE} 
sd_mark_pins_unused -sd_name {PROC_SUBSYSTEM} -pin_names {PFSOC_INIT_MONITOR_C0_0:SRAM_INIT_FROM_SNVM_DONE} 
sd_mark_pins_unused -sd_name {PROC_SUBSYSTEM} -pin_names {PFSOC_INIT_MONITOR_C0_0:SRAM_INIT_FROM_UPROM_DONE} 
sd_mark_pins_unused -sd_name {PROC_SUBSYSTEM} -pin_names {PFSOC_INIT_MONITOR_C0_0:SRAM_INIT_FROM_SPI_DONE} 
sd_mark_pins_unused -sd_name {PROC_SUBSYSTEM} -pin_names {PFSOC_INIT_MONITOR_C0_0:AUTOCALIB_DONE} 
sd_connect_pins -sd_name {PROC_SUBSYSTEM} -pin_names {"CORERESET_PF_C0_0:BANK_x_VDDI_STATUS" "PFSOC_INIT_MONITOR_C0_0:BANK_0_VDDI_STATUS}

sd_connect_pins_to_constant -sd_name {PROC_SUBSYSTEM} -pin_names {CORERESET_PF_C0_0:BANK_y_VDDI_STATUS} -value {VCC} 
sd_connect_pins_to_constant -sd_name {PROC_SUBSYSTEM} -pin_names {CORERESET_PF_C0_0:FF_US_RESTORE} -value {GND} 
sd_connect_pins_to_constant -sd_name {PROC_SUBSYSTEM} -pin_names {CORERESET_PF_C0_0:SS_BUSY} -value {GND} 
sd_connect_pin_to_port -sd_name {PROC_SUBSYSTEM} -pin_name {CoreUARTapb_C0_0:RX} -port_name {} 
sd_connect_pin_to_port -sd_name {PROC_SUBSYSTEM} -pin_name {CoreUARTapb_C0_0:TX} -port_name {} 
sd_mark_pins_unused -sd_name {PROC_SUBSYSTEM} -pin_names {CoreUARTapb_C0_0:FRAMING_ERR} 
sd_mark_pins_unused -sd_name {PROC_SUBSYSTEM} -pin_names {CoreUARTapb_C0_0:TXRDY} 
sd_mark_pins_unused -sd_name {PROC_SUBSYSTEM} -pin_names {CoreUARTapb_C0_0:RXRDY} 
sd_mark_pins_unused -sd_name {PROC_SUBSYSTEM} -pin_names {CoreUARTapb_C0_0:PARITY_ERR} 
sd_mark_pins_unused -sd_name {PROC_SUBSYSTEM} -pin_names {CoreUARTapb_C0_0:OVERFLOW}
sd_connect_pins_to_constant -sd_name {PROC_SUBSYSTEM} -pin_names {CoreGPIO_C0_0:GPIO_IN} -value {GND} 
sd_mark_pins_unused -sd_name {PROC_SUBSYSTEM} -pin_names {CoreGPIO_C0_0:INT} 
sd_connect_pin_to_port -sd_name {PROC_SUBSYSTEM} -pin_name {CoreGPIO_C0_0:GPIO_OUT} -port_name {} 

