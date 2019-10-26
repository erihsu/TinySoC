############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_unroll "lenet5/L1_1"
set_directive_interface -mode axis -register_mode off "lenet5" img_in
set_directive_unroll "lenet5/L0"
set_directive_interface -mode ap_ctrl_none "lenet5"
set_directive_interface -mode ap_vld "lenet5" result
