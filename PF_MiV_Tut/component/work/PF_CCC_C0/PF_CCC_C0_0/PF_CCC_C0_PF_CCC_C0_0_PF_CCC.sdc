set_component PF_CCC_C0_PF_CCC_C0_0_PF_CCC
# Microchip Technology Inc.
# Date: 2025-Sep-06 15:14:49
#

# Base clock for PLL #0
create_clock -period 20 [ get_pins { pll_inst_0/REF_CLK_0 } ]
create_generated_clock -multiply_by 8 -divide_by 5 -source [ get_pins { pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { pll_inst_0/OUT0 } ]
