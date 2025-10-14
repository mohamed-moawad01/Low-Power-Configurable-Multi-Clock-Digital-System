
####################################################################################
# Constraints
# ----------------------------------------------------------------------------
#
# 0. Design Compiler variables
#
# 1. Master Clock Definitions

# 2. Generated Clock Definitions

# 3. Clock Uncertainties

# 4. Clock Latencies 

# 5. Clock Relationships
#
# 6. #set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

#1. Master Clocks
create_clock -name REF_CLK -period 20 [get_ports REF_CLK] 

create_clock -name UART_CLK -period 271.26 [get_ports UART_CLK] 

#2. Generated clocks
create_generated_clock -master_clock REF_CLK -source [get_ports REF_CLK] -name ALU_CLK -divide_by 1 [get_port U_Clock_Gating/GATED_CLK]

create_generated_clock -master_clock UART_CLK -source [get_ports UART_CLK] -name RX_CLK -divide_by 1 [get_port RX_ClkDiv/o_div_clk]

create_generated_clock -master_clock UART_CLK -source [get_ports UART_CLK] -name TX_CLK -divide_by 32 [get_port TX_ClkDiv/o_div_clk]

# 3. Clock Uncertainties
set_clock_uncertainty -setup 0.2 [get_clocks "REF_CLK UART_CLK ALU_CLK RX_CLK TX_CLK"]

set_clock_uncertainty -hold 0.1 [get_clocks "REF_CLK UART_CLK ALU_CLK RX_CLK TX_CLK"]

# 4. Clock Latencies 
set_clock_latency 0 [get_clocks "REF_CLK UART_CLK"]

# 5.clock transition 
set_clock_transition 0.05 [get_clocks "REF_CLK UART_CLK"]

set_dont_touch_network [get_clocks "REF_CLK UART_CLK ALU_CLK RX_CLK TX_CLK"]

################################################################
set S_CLK_NAME "scan_clk"
set S_CLK_PER 100
set S_CLK_SETUP_SKEW 0.025
set S_CLK_HOLD_SKEW 0.01
set S_CLK_LAT 0
set S_CLK_RISE 0.05
set S_CLK_FALL 0.05

create_clock -period $S_CLK_PER -name $S_CLK_NAME [get_ports "scan_clk"]

set_clock_uncertainty -setup $S_CLK_SETUP_SKEW [get_clocks $S_CLK_NAME]

set_clock_uncertainty -hold $S_CLK_HOLD_SKEW [get_clocks $S_CLK_NAME]

set_clock_transition $S_CLK_RISE [get_clocks $S_CLK_NAME]

set_clock_latency 0 [get_clocks $S_CLK_NAME]

set_dont_touch_network [get_clocks $S_CLK_NAME]


####################################################################################
           #########################################################
             #### Section 2 : Clocks Relationship ####
           #########################################################
####################################################################################
set_clock_groups -asynchronous -group [get_clocks "UART_CLK RX_CLK TX_CLK"] -group [get_clocks "ALU_CLK REF_CLK"] -group [get_clocks $S_CLK_NAME]


####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################
set in_delay [expr 0.2 * 271.26]

set out_delay_1 [expr 0.2 * 271.26]

set out_delay_2 [expr $in_delay * 32]

set_input_delay $in_delay -clock RX_CLK [get_ports UART_RX_IN]

set_output_delay $out_delay_1 -clock RX_CLK [get_ports "parity_error framing_error"]

set_output_delay $out_delay_2 -clock TX_CLK [get_ports "UART_TX_O"]

##########################################################################################
set S_in_delay  [expr 0.2*$S_CLK_PER]
set S_out_delay [expr 0.2*$S_CLK_PER]
set_input_delay $S_in_delay -clock $S_CLK_NAME [get_ports "SI SE test_mode"]
set_output_delay $S_out_delay -clock $S_CLK_NAME [get_ports "SO"]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_ports "UART_RX_IN SI SE test_mode"]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################
set_load 0.1 [get_ports "parity_error framing_error UART_TX_O SO"]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################
set_case_analysis 1 [get_ports test_mode]

####################################################################################
           #########################################################
                  #### Section 8 : premapped cells ####
           #########################################################
####################################################################################


####################################################################################

