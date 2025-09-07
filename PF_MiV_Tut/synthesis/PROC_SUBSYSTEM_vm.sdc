# Written by Synplify Pro version map202309act, Build 395R. Synopsys Run ID: sid1757190315 
# Top Level Design Parameters 

# Clocks 
create_clock -period 20.000 -waveform {0.000 10.000} -name {REF_CLK_0} [get_ports {REF_CLK_0}] 
create_clock -period 166.670 -waveform {0.000 83.330} -name {TCK} [get_ports {TCK}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {COREJTAGDEBUG_Z3|N_2_inferred_clock} [get_pins {COREJTAGDEBUG_C0_0/COREJTAGDEBUG_C0_0/genblk1.genblk1.genblk1.UJTAG_inst/UDRCK}] 

# Virtual Clocks 

# Generated Clocks 
create_generated_clock -name {PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0} -multiply_by {8} -divide_by {5} -source [get_pins {PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/REF_CLK_0}]  [get_pins {PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0}] 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set_clock_groups -asynchronous -group [get_clocks {PF_CCC_C0_0/PF_CCC_C0_0/pll_inst_0/OUT0}] -group [get_clocks {TCK}]
set_clock_groups -asynchronous -group [get_clocks {COREJTAGDEBUG_Z3|N_2_inferred_clock}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

