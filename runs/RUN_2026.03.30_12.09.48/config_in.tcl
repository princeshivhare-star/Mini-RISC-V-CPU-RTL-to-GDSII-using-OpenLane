set ::env(DESIGN_NAME) cpu
set ::env(VERILOG_FILES) "/openlane/designs/risc_v_cpu/src/*.v"

set ::env(SYNTH_KEEP_PORTS) 1
set ::env(SYNTH_NO_FLAT) 1

set ::env(SYNTH_STRATEGY) "DELAY 1"
set ::env(PL_TARGET_DENSITY) 0.4

set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_NET) "clk"

# Floorplan
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 800 800"
set ::env(CORE_AREA) "10 10 790 790"

set ::env(FP_CORE_UTIL) 20
set ::env(PL_TARGET_DENSITY) 0.3

# 🔥 PDN FIX (MAIN FIX)
set ::env(FP_PDN_VPITCH) 20
set ::env(FP_PDN_HPITCH) 20

set ::env(FP_PDN_VOFFSET) 5
set ::env(FP_PDN_HOFFSET) 5

set ::env(FP_PDN_VWIDTH) 3
set ::env(FP_PDN_HWIDTH) 3

set ::env(SYNTH_KEEP_PORTS) 1
set ::env(SYNTH_NO_FLAT) 1

# Optional safety
set ::env(FP_PDN_AUTO_ADJUST) 0
