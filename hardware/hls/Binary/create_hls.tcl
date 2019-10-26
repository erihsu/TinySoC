open_project Binary
set_top binary
add_files ../src/binary.h
add_files ../src/binary.cpp
add_files -tb ../src/testbench.c -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
open_solution "40M"
set_part {xc7a100tcsg324-1} -tool vivado
create_clock -period 25 -name default
config_rtl  -encoding onehot -reset all  -reset_level high  -vivado_impl_strategy default -vivado_phys_opt place -vivado_synth_design_args {-directive sdx_optimization_effort_high} -vivado_synth_strategy default
source "./Binary/40M/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog
