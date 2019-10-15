#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("img_in_TDATA", 32, hls_in, 0, "axis", "in_data", 1),
	Port_Property("img_in_TVALID", 1, hls_in, 0, "axis", "in_vld", 1),
	Port_Property("img_in_TREADY", 1, hls_out, 3, "axis", "in_acc", 1),
	Port_Property("img_in_TKEEP", 4, hls_in, 1, "axis", "in_data", 1),
	Port_Property("img_in_TLAST", 1, hls_in, 2, "axis", "in_data", 1),
	Port_Property("img_in_TUSER", 1, hls_in, 3, "axis", "in_data", 1),
	Port_Property("result_V", 4, hls_out, 4, "ap_vld", "out_data", 1),
	Port_Property("result_V_ap_vld", 1, hls_out, 4, "ap_vld", "out_vld", 1),
	Port_Property("enable_V", 1, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("clear_V", 1, hls_in, 6, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "lenet5";
