set_device -family {PolarFireSoC} -die {MPFS095T} -speed {-1}
read_adl {C:\Mustafa\Courses&Learning\Microchip_FPGA-SoC_Training\RISC-V_for_PolarFire\Discovery_Mi-V_tutorial\PF_MiV_Tut\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.adl}
read_afl {C:\Mustafa\Courses&Learning\Microchip_FPGA-SoC_Training\RISC-V_for_PolarFire\Discovery_Mi-V_tutorial\PF_MiV_Tut\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.afl}
map_netlist
read_sdc {C:\Mustafa\Courses&Learning\Microchip_FPGA-SoC_Training\RISC-V_for_PolarFire\Discovery_Mi-V_tutorial\PF_MiV_Tut\constraint\PROC_SUBSYSTEM_derived_constraints.sdc}
read_sdc {C:\Mustafa\Courses&Learning\Microchip_FPGA-SoC_Training\RISC-V_for_PolarFire\Discovery_Mi-V_tutorial\PF_MiV_Tut\constraint\jtag_tck_constraint.sdc}
check_constraints {C:\Mustafa\Courses&Learning\Microchip_FPGA-SoC_Training\RISC-V_for_PolarFire\Discovery_Mi-V_tutorial\PF_MiV_Tut\constraint\placer_sdc_errors.log}
estimate_jitter -report {C:\Mustafa\Courses&Learning\Microchip_FPGA-SoC_Training\RISC-V_for_PolarFire\Discovery_Mi-V_tutorial\PF_MiV_Tut\designer\PROC_SUBSYSTEM\place_and_route_jitter_report.txt}
write_sdc -mode layout {C:\Mustafa\Courses&Learning\Microchip_FPGA-SoC_Training\RISC-V_for_PolarFire\Discovery_Mi-V_tutorial\PF_MiV_Tut\designer\PROC_SUBSYSTEM\place_route.sdc}
