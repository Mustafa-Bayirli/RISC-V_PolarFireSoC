open_project -project {C:\Mustafa\Courses&Learning\Microchip_FPGA-SoC_Training\RISC-V_for_PolarFire\Discovery_Mi-V_tutorial\PF_MiV_Tut\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM_fp\PROC_SUBSYSTEM.pro}
enable_device -name {MPFS095T} -enable 1
set_programming_file -name {MPFS095T} -file {C:\Mustafa\Courses&Learning\Microchip_FPGA-SoC_Training\RISC-V_for_PolarFire\Discovery_Mi-V_tutorial\PF_MiV_Tut\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.ppd}
set_programming_action -action {PROGRAM} -name {MPFS095T} 
run_selected_actions
save_project
close_project
