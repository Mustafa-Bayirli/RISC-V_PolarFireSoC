onerror {resume}
quietly virtual function -install /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreTimer_C0_0/CoreTimer_C0_0 -env /PROC_SUBSYSTEM_tb { sim:/PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreTimer_C0_0/CoreTimer_C0_0/PENABLE == 1 &&  sim:/PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreTimer_C0_0/CoreTimer_C0_0/PSEL == 1 && sim:/PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreTimer_C0_0/CoreTimer_C0_0/PWRITE ==1} virtual_1
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Top Level signals}
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/REF_CLK_0
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/RESETn
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/RX
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/GPIO_OUT
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/TX
add wave -noupdate -divider {MiV Signals}
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/MIV_RV32_C0_0/CLK
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/MIV_RV32_C0_0/RESETN
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/MIV_RV32_C0_0/AHB_HADDR
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/MIV_RV32_C0_0/AHB_HBURST
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/MIV_RV32_C0_0/AHB_HMASTLOCK
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/MIV_RV32_C0_0/AHB_HPROT
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/MIV_RV32_C0_0/AHB_HSIZE
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/MIV_RV32_C0_0/AHB_HTRANS
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/MIV_RV32_C0_0/AHB_HWDATA
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/MIV_RV32_C0_0/AHB_HWRITE
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/MIV_RV32_C0_0/APB_INITIATOR_PADDR
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/MIV_RV32_C0_0/APB_INITIATOR_PWDATA
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/MIV_RV32_C0_0/APB_INITIATOR_PENABLE
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/MIV_RV32_C0_0/APB_INITIATOR_PSELx
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/MIV_RV32_C0_0/APB_INITIATOR_PWRITE
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/MIV_RV32_C0_0/EXT_IRQ
add wave -noupdate -divider {CoreTimer Signals}
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreTimer_C0_0/CoreTimer_C0_0/PCLK
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreTimer_C0_0/CoreTimer_C0_0/PRESETn
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreTimer_C0_0/CoreTimer_C0_0/PENABLE
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreTimer_C0_0/CoreTimer_C0_0/PWRITE
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreTimer_C0_0/CoreTimer_C0_0/PRDATA
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreTimer_C0_0/CoreTimer_C0_0/PSEL
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreTimer_C0_0/CoreTimer_C0_0/PADDR
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreTimer_C0_0/CoreTimer_C0_0/PWDATA
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreTimer_C0_0/CoreTimer_C0_0/Count
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreTimer_C0_0/CoreTimer_C0_0/CtrlReg
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreTimer_C0_0/CoreTimer_C0_0/LoadEn
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreTimer_C0_0/CoreTimer_C0_0/LoadEnReg
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreTimer_C0_0/CoreTimer_C0_0/Load
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreTimer_C0_0/CoreTimer_C0_0/PreScale
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreTimer_C0_0/CoreTimer_C0_0/TIMINT
add wave -noupdate -divider {CoreGPIO Signals}
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreGPIO_C0_0/CoreGPIO_C0_0/PRESETN
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreGPIO_C0_0/CoreGPIO_C0_0/PCLK
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreGPIO_C0_0/CoreGPIO_C0_0/PSEL
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreGPIO_C0_0/CoreGPIO_C0_0/PENABLE
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreGPIO_C0_0/CoreGPIO_C0_0/PWRITE
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreGPIO_C0_0/CoreGPIO_C0_0/PSLVERR
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreGPIO_C0_0/CoreGPIO_C0_0/PREADY
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreGPIO_C0_0/CoreGPIO_C0_0/PADDR
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreGPIO_C0_0/CoreGPIO_C0_0/PWDATA
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreGPIO_C0_0/CoreGPIO_C0_0/PRDATA
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreGPIO_C0_0/CoreGPIO_C0_0/INT
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreGPIO_C0_0/CoreGPIO_C0_0/INT_OR
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreGPIO_C0_0/CoreGPIO_C0_0/GPIO_IN
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreGPIO_C0_0/CoreGPIO_C0_0/GPIO_OUT
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreGPIO_C0_0/CoreGPIO_C0_0/GPIO_OE
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/CoreTimer_C0_0/CoreTimer_C0_0/virtual_1
add wave -noupdate -divider {CoreJTAGDEBUG Signals}
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/COREJTAGDEBUG_C0_0/TCK
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/COREJTAGDEBUG_C0_0/TRSTB
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/COREJTAGDEBUG_C0_0/TDI
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/COREJTAGDEBUG_C0_0/TMS
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/COREJTAGDEBUG_C0_0/TDO
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/COREJTAGDEBUG_C0_0/TGT_TDO_0
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/COREJTAGDEBUG_C0_0/TGT_TCK_0
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/COREJTAGDEBUG_C0_0/TGT_TDI_0
add wave -noupdate /PROC_SUBSYSTEM_tb/PROC_SUBSYSTEM_0/COREJTAGDEBUG_C0_0/TGT_TMS_0
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {347691897 ps} 0} {{Cursor 2} {244893918 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 551
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {525 us}
