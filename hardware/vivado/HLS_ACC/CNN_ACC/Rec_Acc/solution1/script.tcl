############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Rec_Acc
set_top lenet5
add_files src/Rec_Acc.cpp
add_files src/Rec_Acc.h
open_solution "solution1"
set_part {xc7a100tcsg324-1} -tool vivado
create_clock -period 40 -name default
config_rtl  -encoding onehot -reset control  -reset_level high  -vivado_impl_strategy default -vivado_phys_opt place -vivado_synth_design_args {-directive sdx_optimization_effort_high} -vivado_synth_strategy default
source "./Rec_Acc/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -flow impl -rtl verilog -format ip_catalog
