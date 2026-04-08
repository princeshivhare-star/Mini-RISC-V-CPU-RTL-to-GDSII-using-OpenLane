###############################################################################
# Created by write_sdc
# Mon Mar 30 12:10:36 2026
###############################################################################
current_design cpu
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {reset}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[10]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[11]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[12]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[13]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[14]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[15]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[16]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[17]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[18]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[19]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[20]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[21]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[22]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[23]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[24]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[25]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[26]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[27]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[28]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[29]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[30]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[31]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[3]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[4]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[5]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[6]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[7]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[8]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out[9]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {out[31]}]
set_load -pin_load 0.0334 [get_ports {out[30]}]
set_load -pin_load 0.0334 [get_ports {out[29]}]
set_load -pin_load 0.0334 [get_ports {out[28]}]
set_load -pin_load 0.0334 [get_ports {out[27]}]
set_load -pin_load 0.0334 [get_ports {out[26]}]
set_load -pin_load 0.0334 [get_ports {out[25]}]
set_load -pin_load 0.0334 [get_ports {out[24]}]
set_load -pin_load 0.0334 [get_ports {out[23]}]
set_load -pin_load 0.0334 [get_ports {out[22]}]
set_load -pin_load 0.0334 [get_ports {out[21]}]
set_load -pin_load 0.0334 [get_ports {out[20]}]
set_load -pin_load 0.0334 [get_ports {out[19]}]
set_load -pin_load 0.0334 [get_ports {out[18]}]
set_load -pin_load 0.0334 [get_ports {out[17]}]
set_load -pin_load 0.0334 [get_ports {out[16]}]
set_load -pin_load 0.0334 [get_ports {out[15]}]
set_load -pin_load 0.0334 [get_ports {out[14]}]
set_load -pin_load 0.0334 [get_ports {out[13]}]
set_load -pin_load 0.0334 [get_ports {out[12]}]
set_load -pin_load 0.0334 [get_ports {out[11]}]
set_load -pin_load 0.0334 [get_ports {out[10]}]
set_load -pin_load 0.0334 [get_ports {out[9]}]
set_load -pin_load 0.0334 [get_ports {out[8]}]
set_load -pin_load 0.0334 [get_ports {out[7]}]
set_load -pin_load 0.0334 [get_ports {out[6]}]
set_load -pin_load 0.0334 [get_ports {out[5]}]
set_load -pin_load 0.0334 [get_ports {out[4]}]
set_load -pin_load 0.0334 [get_ports {out[3]}]
set_load -pin_load 0.0334 [get_ports {out[2]}]
set_load -pin_load 0.0334 [get_ports {out[1]}]
set_load -pin_load 0.0334 [get_ports {out[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {reset}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_fanout 10.0000 [current_design]
