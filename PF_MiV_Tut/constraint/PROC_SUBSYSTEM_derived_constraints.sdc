# Microchip Technology Inc.
# Date: 2025-Sep-06 16:23:30
# This file was generated based on the following SDC source files:
#   C:/Mustafa/Courses&Learning/Microchip_FPGA-SoC_Training/RISC-V_for_PolarFire/Discovery_Mi-V_tutorial/PF_MiV_Tut/component/work/PF_CCC_C0/PF_CCC_C0_0/PF_CCC_C0_PF_CCC_C0_0_PF_CCC.sdc
# *** Any modifications to this file will be lost if derived constraints is re-run. ***
#

create_clock -name {REF_CLK_0} -period 20 [ get_ports { REF_CLK_0 } ]
create_generated_clock -name {PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0} -multiply_by 8 -divide_by 5 -source [ get_pins { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0 } ]
