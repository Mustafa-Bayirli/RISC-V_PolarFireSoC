read_sdc -scenario "place_and_route" -netlist "optimized" -pin_separator "/" -ignore_errors {C:/Mustafa/Courses&Learning/Microchip_FPGA-SoC_Training/RISC-V_for_PolarFire/Discovery_Mi-V_tutorial/PF_MiV_Tut/designer/PROC_SUBSYSTEM/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {C:\Mustafa\Courses&Learning\Microchip_FPGA-SoC_Training\RISC-V_for_PolarFire\Discovery_Mi-V_tutorial\PF_MiV_Tut\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM_layout_combinational_loops.xml}
report -type slack {C:\Mustafa\Courses&Learning\Microchip_FPGA-SoC_Training\RISC-V_for_PolarFire\Discovery_Mi-V_tutorial\PF_MiV_Tut\designer\PROC_SUBSYSTEM\pinslacks.txt}
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {C:\Mustafa\Courses&Learning\Microchip_FPGA-SoC_Training\RISC-V_for_PolarFire\Discovery_Mi-V_tutorial\PF_MiV_Tut\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM_place_and_route_constraint_coverage.xml}]
set reportfile {C:\Mustafa\Courses&Learning\Microchip_FPGA-SoC_Training\RISC-V_for_PolarFire\Discovery_Mi-V_tutorial\PF_MiV_Tut\designer\PROC_SUBSYSTEM\coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp