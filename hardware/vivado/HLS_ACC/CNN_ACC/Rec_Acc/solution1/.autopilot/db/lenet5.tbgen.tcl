set C_TypeInfoList {{ 
"lenet5" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"img_in": [[],{ "pointer": "0"}] }, {"result": [[],{ "pointer": "1"}] }, {"enable": [[],"2"] }, {"clear": [[],"2"] }],[],""], 
"1": [ "u4", {"typedef": [[[],"3"],""]}], 
"3": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}], 
"2": [ "bit", {"typedef": [[[],"4"],""]}], 
"4": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"0": [ "axis<32>", {"struct": [[],[{"D":[[], {"scalar": { "int": 32}}]}],[{ "data": [[], "5"]},{ "keep": [[], "3"]},{ "last": [[], "4"]},{ "user": [[], "4"]}],""]}], 
"5": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}]
}}
set moduleName lenet5
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {lenet5}
set C_modelType { void 0 }
set C_modelArgList {
	{ img_in_data_V int 32 regular {axi_s 0 volatile  { img_in Data } }  }
	{ img_in_keep_V int 4 regular {axi_s 0 volatile  { img_in Keep } }  }
	{ img_in_last_V int 1 regular {axi_s 0 volatile  { img_in Last } }  }
	{ img_in_user_V int 1 regular {axi_s 0 volatile  { img_in User } }  }
	{ result_V int 4 regular {pointer 1}  }
	{ enable_V int 1 regular  }
	{ clear_V int 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "img_in_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "img_in.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_in_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "img_in.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_in_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "img_in.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "img_in_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "img_in.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "result_V", "interface" : "wire", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "result.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "enable_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "enable.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "clear_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "clear.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ img_in_TDATA sc_in sc_lv 32 signal 0 } 
	{ img_in_TVALID sc_in sc_logic 1 invld 0 } 
	{ img_in_TREADY sc_out sc_logic 1 inacc 3 } 
	{ img_in_TKEEP sc_in sc_lv 4 signal 1 } 
	{ img_in_TLAST sc_in sc_lv 1 signal 2 } 
	{ img_in_TUSER sc_in sc_lv 1 signal 3 } 
	{ result_V sc_out sc_lv 4 signal 4 } 
	{ result_V_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ enable_V sc_in sc_lv 1 signal 5 } 
	{ clear_V sc_in sc_lv 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "img_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_in_data_V", "role": "default" }} , 
 	{ "name": "img_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "img_in_data_V", "role": "default" }} , 
 	{ "name": "img_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "img_in_user_V", "role": "default" }} , 
 	{ "name": "img_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "img_in_keep_V", "role": "default" }} , 
 	{ "name": "img_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_last_V", "role": "default" }} , 
 	{ "name": "img_in_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "img_in_user_V", "role": "default" }} , 
 	{ "name": "result_V", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "result_V", "role": "default" }} , 
 	{ "name": "result_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "result_V", "role": "ap_vld" }} , 
 	{ "name": "enable_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "enable_V", "role": "default" }} , 
 	{ "name": "clear_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "clear_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "lenet5",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "9473",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "img_in_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "img_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_in_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "img_in_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "img_in_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "result_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "enable_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "clear_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	lenet5 {
		img_in_data_V {Type I LastRead 35 FirstWrite -1}
		img_in_keep_V {Type I LastRead 35 FirstWrite -1}
		img_in_last_V {Type I LastRead 35 FirstWrite -1}
		img_in_user_V {Type I LastRead 35 FirstWrite -1}
		result_V {Type O LastRead -1 FirstWrite 36}
		enable_V {Type I LastRead 0 FirstWrite -1}
		clear_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12", "Max" : "9473"}
	, {"Name" : "Interval", "Min" : "13", "Max" : "9474"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	img_in_data_V { axis {  { img_in_TDATA in_data 0 32 }  { img_in_TVALID in_vld 0 1 } } }
	img_in_keep_V { axis {  { img_in_TKEEP in_data 0 4 } } }
	img_in_last_V { axis {  { img_in_TLAST in_data 0 1 } } }
	img_in_user_V { axis {  { img_in_TREADY in_acc 1 1 }  { img_in_TUSER in_data 0 1 } } }
	result_V { ap_vld {  { result_V out_data 1 4 }  { result_V_ap_vld out_vld 1 1 } } }
	enable_V { ap_none {  { enable_V in_data 0 1 } } }
	clear_V { ap_none {  { clear_V in_data 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
