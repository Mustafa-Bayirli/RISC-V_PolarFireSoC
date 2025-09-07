new_project \
         -name {PROC_SUBSYSTEM} \
         -location {C:\Mustafa\Courses&Learning\Microchip_FPGA-SoC_Training\RISC-V_for_PolarFire\Discovery_Mi-V_tutorial\PF_MiV_Tut\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {MPFS095T} \
         -name {MPFS095T}
enable_device \
         -name {MPFS095T} \
         -enable {TRUE}
save_project
close_project
