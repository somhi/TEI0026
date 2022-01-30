## Generated SDC file "TEI0026.out.sdc"

## Copyright (C) 2019  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and any partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details, at
## https://fpgasoftware.intel.com/eula.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.1.1 Build 646 04/11/2019 SJ Lite Edition"

## DATE    "Tue May 05 09:22:25 2020"

##
## DEVICE  "10M08SAU169C8G"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {altera_reserved_tck} -period 100.000 -waveform { 0.000 50.000 } [get_ports {altera_reserved_tck}]
create_clock -name {CLK12M} -period 83.333 -waveform { 0.000 41.666 } [get_ports {CLK12M}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]} -source [get_pins {inst|pll|sd1|pll7|inclk[0]}] -duty_cycle 50/1 -multiply_by 25 -divide_by 3 -master_clock {CLK12M} [get_pins {inst|pll|sd1|pll7|clk[0]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {CLK12M}] -rise_to [get_clocks {CLK12M}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {CLK12M}] -fall_to [get_clocks {CLK12M}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {CLK12M}] -rise_to [get_clocks {CLK12M}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {CLK12M}] -fall_to [get_clocks {CLK12M}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}] -rise_to [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}] -fall_to [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}] -rise_to [get_clocks {CLK12M}] -setup 0.240  
set_clock_uncertainty -rise_from [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}] -rise_to [get_clocks {CLK12M}] -hold 0.230  
set_clock_uncertainty -rise_from [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}] -fall_to [get_clocks {CLK12M}] -setup 0.240  
set_clock_uncertainty -rise_from [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}] -fall_to [get_clocks {CLK12M}] -hold 0.230  
set_clock_uncertainty -fall_from [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}] -rise_to [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}] -fall_to [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}] -rise_to [get_clocks {CLK12M}] -setup 0.240  
set_clock_uncertainty -fall_from [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}] -rise_to [get_clocks {CLK12M}] -hold 0.230  
set_clock_uncertainty -fall_from [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}] -fall_to [get_clocks {CLK12M}] -setup 0.240  
set_clock_uncertainty -fall_from [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}] -fall_to [get_clocks {CLK12M}] -hold 0.230  
set_clock_uncertainty -rise_from [get_clocks {CLK12M}] -rise_to [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}] -setup 0.230  
set_clock_uncertainty -rise_from [get_clocks {CLK12M}] -rise_to [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}] -hold 0.240  
set_clock_uncertainty -rise_from [get_clocks {CLK12M}] -fall_to [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}] -setup 0.230  
set_clock_uncertainty -rise_from [get_clocks {CLK12M}] -fall_to [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}] -hold 0.240  
set_clock_uncertainty -fall_from [get_clocks {CLK12M}] -rise_to [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}] -setup 0.230  
set_clock_uncertainty -fall_from [get_clocks {CLK12M}] -rise_to [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}] -hold 0.240  
set_clock_uncertainty -fall_from [get_clocks {CLK12M}] -fall_to [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}] -setup 0.230  
set_clock_uncertainty -fall_from [get_clocks {CLK12M}] -fall_to [get_clocks {QSYS_SC_TEI0026:inst|QSYS_SC_TEI0026_pll:pll|QSYS_SC_TEI0026_pll_altpll_bs22:sd1|wire_pll7_clk[0]}] -hold 0.240  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 
set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 
set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 


#**************************************************************
# Set False Path
#**************************************************************

set_false_path -from [get_keepers {*QSYS_SC_TEI0026_nios2_cpu:*|QSYS_SC_TEI0026_nios2_cpu_nios2_oci:the_QSYS_SC_TEI0026_nios2_cpu_nios2_oci|QSYS_SC_TEI0026_nios2_cpu_nios2_oci_break:the_QSYS_SC_TEI0026_nios2_cpu_nios2_oci_break|break_readreg*}] -to [get_keepers {*QSYS_SC_TEI0026_nios2_cpu:*|QSYS_SC_TEI0026_nios2_cpu_nios2_oci:the_QSYS_SC_TEI0026_nios2_cpu_nios2_oci|QSYS_SC_TEI0026_nios2_cpu_debug_slave_wrapper:the_QSYS_SC_TEI0026_nios2_cpu_debug_slave_wrapper|QSYS_SC_TEI0026_nios2_cpu_debug_slave_tck:the_QSYS_SC_TEI0026_nios2_cpu_debug_slave_tck|*sr*}]
set_false_path -from [get_keepers {*QSYS_SC_TEI0026_nios2_cpu:*|QSYS_SC_TEI0026_nios2_cpu_nios2_oci:the_QSYS_SC_TEI0026_nios2_cpu_nios2_oci|QSYS_SC_TEI0026_nios2_cpu_nios2_oci_debug:the_QSYS_SC_TEI0026_nios2_cpu_nios2_oci_debug|*resetlatch}] -to [get_keepers {*QSYS_SC_TEI0026_nios2_cpu:*|QSYS_SC_TEI0026_nios2_cpu_nios2_oci:the_QSYS_SC_TEI0026_nios2_cpu_nios2_oci|QSYS_SC_TEI0026_nios2_cpu_debug_slave_wrapper:the_QSYS_SC_TEI0026_nios2_cpu_debug_slave_wrapper|QSYS_SC_TEI0026_nios2_cpu_debug_slave_tck:the_QSYS_SC_TEI0026_nios2_cpu_debug_slave_tck|*sr[33]}]
set_false_path -from [get_keepers {*QSYS_SC_TEI0026_nios2_cpu:*|QSYS_SC_TEI0026_nios2_cpu_nios2_oci:the_QSYS_SC_TEI0026_nios2_cpu_nios2_oci|QSYS_SC_TEI0026_nios2_cpu_nios2_oci_debug:the_QSYS_SC_TEI0026_nios2_cpu_nios2_oci_debug|monitor_ready}] -to [get_keepers {*QSYS_SC_TEI0026_nios2_cpu:*|QSYS_SC_TEI0026_nios2_cpu_nios2_oci:the_QSYS_SC_TEI0026_nios2_cpu_nios2_oci|QSYS_SC_TEI0026_nios2_cpu_debug_slave_wrapper:the_QSYS_SC_TEI0026_nios2_cpu_debug_slave_wrapper|QSYS_SC_TEI0026_nios2_cpu_debug_slave_tck:the_QSYS_SC_TEI0026_nios2_cpu_debug_slave_tck|*sr[0]}]
set_false_path -from [get_keepers {*QSYS_SC_TEI0026_nios2_cpu:*|QSYS_SC_TEI0026_nios2_cpu_nios2_oci:the_QSYS_SC_TEI0026_nios2_cpu_nios2_oci|QSYS_SC_TEI0026_nios2_cpu_nios2_oci_debug:the_QSYS_SC_TEI0026_nios2_cpu_nios2_oci_debug|monitor_error}] -to [get_keepers {*QSYS_SC_TEI0026_nios2_cpu:*|QSYS_SC_TEI0026_nios2_cpu_nios2_oci:the_QSYS_SC_TEI0026_nios2_cpu_nios2_oci|QSYS_SC_TEI0026_nios2_cpu_debug_slave_wrapper:the_QSYS_SC_TEI0026_nios2_cpu_debug_slave_wrapper|QSYS_SC_TEI0026_nios2_cpu_debug_slave_tck:the_QSYS_SC_TEI0026_nios2_cpu_debug_slave_tck|*sr[34]}]
set_false_path -from [get_keepers {*QSYS_SC_TEI0026_nios2_cpu:*|QSYS_SC_TEI0026_nios2_cpu_nios2_oci:the_QSYS_SC_TEI0026_nios2_cpu_nios2_oci|QSYS_SC_TEI0026_nios2_cpu_nios2_ocimem:the_QSYS_SC_TEI0026_nios2_cpu_nios2_ocimem|*MonDReg*}] -to [get_keepers {*QSYS_SC_TEI0026_nios2_cpu:*|QSYS_SC_TEI0026_nios2_cpu_nios2_oci:the_QSYS_SC_TEI0026_nios2_cpu_nios2_oci|QSYS_SC_TEI0026_nios2_cpu_debug_slave_wrapper:the_QSYS_SC_TEI0026_nios2_cpu_debug_slave_wrapper|QSYS_SC_TEI0026_nios2_cpu_debug_slave_tck:the_QSYS_SC_TEI0026_nios2_cpu_debug_slave_tck|*sr*}]
set_false_path -from [get_keepers {*QSYS_SC_TEI0026_nios2_cpu:*|QSYS_SC_TEI0026_nios2_cpu_nios2_oci:the_QSYS_SC_TEI0026_nios2_cpu_nios2_oci|QSYS_SC_TEI0026_nios2_cpu_debug_slave_wrapper:the_QSYS_SC_TEI0026_nios2_cpu_debug_slave_wrapper|QSYS_SC_TEI0026_nios2_cpu_debug_slave_tck:the_QSYS_SC_TEI0026_nios2_cpu_debug_slave_tck|*sr*}] -to [get_keepers {*QSYS_SC_TEI0026_nios2_cpu:*|QSYS_SC_TEI0026_nios2_cpu_nios2_oci:the_QSYS_SC_TEI0026_nios2_cpu_nios2_oci|QSYS_SC_TEI0026_nios2_cpu_debug_slave_wrapper:the_QSYS_SC_TEI0026_nios2_cpu_debug_slave_wrapper|QSYS_SC_TEI0026_nios2_cpu_debug_slave_sysclk:the_QSYS_SC_TEI0026_nios2_cpu_debug_slave_sysclk|*jdo*}]
set_false_path -from [get_keepers {sld_hub:*|irf_reg*}] -to [get_keepers {*QSYS_SC_TEI0026_nios2_cpu:*|QSYS_SC_TEI0026_nios2_cpu_nios2_oci:the_QSYS_SC_TEI0026_nios2_cpu_nios2_oci|QSYS_SC_TEI0026_nios2_cpu_debug_slave_wrapper:the_QSYS_SC_TEI0026_nios2_cpu_debug_slave_wrapper|QSYS_SC_TEI0026_nios2_cpu_debug_slave_sysclk:the_QSYS_SC_TEI0026_nios2_cpu_debug_slave_sysclk|ir*}]
set_false_path -from [get_keepers {sld_hub:*|sld_shadow_jsm:shadow_jsm|state[1]}] -to [get_keepers {*QSYS_SC_TEI0026_nios2_cpu:*|QSYS_SC_TEI0026_nios2_cpu_nios2_oci:the_QSYS_SC_TEI0026_nios2_cpu_nios2_oci|QSYS_SC_TEI0026_nios2_cpu_nios2_oci_debug:the_QSYS_SC_TEI0026_nios2_cpu_nios2_oci_debug|monitor_go}]
set_false_path -to [get_keepers {*altera_std_synchronizer:*|din_s1}]
set_false_path -to [get_pins -nocase -compatibility_mode {*|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain*|clrn}]


#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************

set_max_delay -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {*altera_avalon_st_clock_crosser:*|out_data_buffer*}] 100.000
set_max_delay -from [get_registers *] -to [get_registers {*altera_avalon_st_clock_crosser:*|altera_std_synchronizer_nocut:*|din_s1}] 100.000


#**************************************************************
# Set Minimum Delay
#**************************************************************

set_min_delay -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {*altera_avalon_st_clock_crosser:*|out_data_buffer*}] -100.000
set_min_delay -from [get_registers *] -to [get_registers {*altera_avalon_st_clock_crosser:*|altera_std_synchronizer_nocut:*|din_s1}] -100.000


#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Net Delay
#**************************************************************

set_net_delay -max 2.000 -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {*altera_avalon_st_clock_crosser:*|out_data_buffer*}]
set_net_delay -max 2.000 -from [get_registers *] -to [get_registers {*altera_avalon_st_clock_crosser:*|altera_std_synchronizer_nocut:*|din_s1}]
