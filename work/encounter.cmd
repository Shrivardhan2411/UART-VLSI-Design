#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Thu Apr  2 21:54:29 2026                #
#                                                     #
#######################################################

#@(#)CDS: Encounter v13.10-p003_1 (32bit) 04/17/2013 15:43 (Linux 2.6)
#@(#)CDS: NanoRoute v13.10-p002 NR130329-0035/13_10-UB (database version 2.30, 190.4.1) {superthreading v1.19}
#@(#)CDS: CeltIC v13.10-p007_1 (32bit) 04/10/2013 11:52:21 (Linux 2.6.18-194.el5)
#@(#)CDS: AAE 13.10-p003 (32bit) 04/17/2013 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 13.10-p009_1 (32bit) Apr 10 2013 05:45:06 (Linux 2.6.18-194.el5)
#@(#)CDS: CPE v13.10-p010
#@(#)CDS: IQRC/TQRC 12.1.0-s388 (32bit) Fri Mar 29 14:17:34 PDT 2013 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
save_global Default.globals
set init_gnd_net VSS
set init_lef_file {../library/all.lef ../library/HEAD.lef ../library/tsmc13fsg_8lm_tech.lef ../library/tsmc13fsg_lvl.lef ../library/tsmc13g_m_macros.lef ../library/tsmc13hvt_m_macros.lef}
set init_verilog uart_netlist.v
set init_top_cell uart_top
set init_pwr_net VDD
init_design
set init_gnd_net VSS
set init_lef_file {../library/tsmc13fsg_8lm_tech.lef ../library/tsmc13fsg_lvl.lef ../library/tsmc13g_m_macros.lef ../library/tsmc13hvt_m_macros.lef}
set init_verilog uart_netlist.v
set init_top_cell uart_top
set init_pwr_net VDD
init_design
set init_gnd_net VSS
set init_lef_file {../library/tsmc13fsg_8lm_tech.lef ../library/tsmc13fsg_lvl.lef ../library/tsmc13g_m_macros.lef ../library/tsmc13hvt_m_macros.lef}
set init_verilog uart_netlist.v
set init_top_cell uart_top
set init_pwr_net VDD
init_design
save_global Default.globals
set init_gnd_net VSS
set init_lef_file {../library/tsmc13fsg_8lm_tech.lef ../library/tsmc13fsg_lvl.lef}
set init_verilog uart_netlist.v
set init_top_cell uart_top
set init_pwr_net VDD
init_design
set init_gnd_net VSS
set init_lef_file {../library/tsmc13fsg_8lm_tech.lef ../library/tsmc13fsg_lvl.lef}
set init_verilog uart_netlist.v
set init_top_cell uart_top
set init_pwr_net VDD
init_design
set init_gnd_net VSS
set init_lef_file ../library/tsmc13fsg_8lm_tech.lef
set init_verilog uart_netlist.v
set init_top_cell uart_top
set init_pwr_net VDD
init_design
set init_gnd_net VSS
set init_lef_file {../library/tsmc13fsg_8lm_tech.lef ../library/tsmc13fsg_lvl.lef ../library/tsmc13g_m_macros.lef}
set init_verilog uart_netlist.v
set init_top_cell uart_top
set init_pwr_net VCC
init_design
