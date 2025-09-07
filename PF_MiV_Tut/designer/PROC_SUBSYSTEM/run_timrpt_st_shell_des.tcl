set_device \
    -family  PolarFireSoC \
    -die     PA5SOC095T \
    -package fcsg325 \
    -speed   -1 \
    -tempr   {EXT} \
    -voltr   {EXT}
set_def {VOLTAGE} {1.0}
set_def {VCCI_1.2_VOLTR} {EXT}
set_def {VCCI_1.5_VOLTR} {EXT}
set_def {VCCI_1.8_VOLTR} {EXT}
set_def {VCCI_2.5_VOLTR} {EXT}
set_def {VCCI_3.3_VOLTR} {EXT}
set_def USE_CONSTRAINTS_FLOW 1
set_name PROC_SUBSYSTEM
set_workdir {C:\Mustafa\Courses&Learning\Microchip_FPGA-SoC_Training\RISC-V_for_PolarFire\Discovery_Mi-V_tutorial\PF_MiV_Tut\designer\PROC_SUBSYSTEM}
set_design_state post_layout
set_operating_conditions -name slow_lv_lt
set_operating_conditions -name fast_hv_lt
set_operating_conditions -name slow_lv_ht
