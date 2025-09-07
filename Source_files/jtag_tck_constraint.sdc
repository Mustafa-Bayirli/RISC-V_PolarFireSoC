# May 13, 2024.
# 
# Discovery-kit Mi-V Lab
#
# Constraint for JTAG TCK clock

create_clock -name {TCK} -period 166.67 -waveform {0 83.33 } [ get_ports { TCK } ]

# Constraints for paths crossing between the TCK and system clock clock domains
set_clock_groups -asynchronous -group [ get_clocks { PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0 } ] -group [ get_clocks { TCK } ]
