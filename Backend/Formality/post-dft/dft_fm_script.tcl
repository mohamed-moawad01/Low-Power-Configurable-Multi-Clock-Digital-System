
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

######################### Formality Setup File ###########################

set synopsys_auto_setup true

set_svf "/home/IC/integrated_system_syn/Backend/DFT/SYS_TOP.svf"


set SSLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"


######################### Reference Container ############################

## Read Reference technology libraries
read_db -container r "$SSLIB"

## Read Reference Design Files
set fh_v [open System_v.lst r+]
set rtl_v [read $fh_v]
set designs_v ""
regsub -all "\n" $rtl_v " " designs_v

set fh_sv [open System_sv.lst r+]
set rtl_sv [read $fh_sv]
set designs_sv ""
regsub -all "\n" $rtl_sv " " designs_sv

read_verilog -container r "$designs_v"


read_sverilog -container r "$designs_sv"

## set the top Reference Design 
set_top $top_module

######################## Implementation Container #########################

## Read Implementation technology libraries
read_verilog -netlist -container i "/home/IC/integrated_system_syn/Backend/DFT/netlists/SYS_TOP.v"

## Read Implementation Design Files
read_db -container i "$SSLIB"
 
## set the top Implementation Design
set_top $top_module

############################### Don't verify #################################

# do not verify scan in & scan out ports as a compare point as it is existed only after synthesis and not existed in the RTL

#scan in
set_dont_verify_points -type port r:/WORK/*/SI*
set_dont_verify_points -type port i:/WORK/*/SI*

#scan_out
set_dont_verify_points -type port r:/WORK/*/SO*
set_dont_verify_points -type port i:/WORK/*/SO*
############################### constants #####################################

# all atpg enable(test_mode, scan_enable) are zero during formal compare

#test_mode
set_constant r:/WORK/*/test_mode 0
set_constant i:/WORK/*/test_mode 0

#scan_enable

set_constant r:/WORK/*/SE 0
set_constant i:/WORK/*/SE 0



########################### matching Compare points ##########################

match

################################# verify #####################################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"


start_gui
