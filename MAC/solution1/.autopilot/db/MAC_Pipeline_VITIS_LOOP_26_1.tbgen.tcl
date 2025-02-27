set moduleName MAC_Pipeline_VITIS_LOOP_26_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {MAC_Pipeline_VITIS_LOOP_26_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ c float 32 regular  }
	{ b float 32 regular  }
	{ j int 32 regular  }
	{ a float 32 regular  }
	{ z_5_out float 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "c", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "j", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "a", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "z_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ c sc_in sc_lv 32 signal 0 } 
	{ b sc_in sc_lv 32 signal 1 } 
	{ j sc_in sc_lv 32 signal 2 } 
	{ a sc_in sc_lv 32 signal 3 } 
	{ z_5_out sc_out sc_lv 32 signal 4 } 
	{ z_5_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ grp_fu_161_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_161_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_161_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_161_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_165_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_165_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_165_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_165_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_169_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_169_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_169_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_169_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_169_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_173_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_173_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_173_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_173_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_173_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "c", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c", "role": "default" }} , 
 	{ "name": "b", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "default" }} , 
 	{ "name": "j", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "j", "role": "default" }} , 
 	{ "name": "a", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a", "role": "default" }} , 
 	{ "name": "z_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_5_out", "role": "default" }} , 
 	{ "name": "z_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "z_5_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_161_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_161_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_161_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_161_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_161_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_161_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_161_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_161_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_165_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_165_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_165_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_165_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_165_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_165_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_165_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_165_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_169_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_169_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_169_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_169_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_169_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_169_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_169_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_169_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_169_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_169_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_173_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_173_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_173_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_173_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_173_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_173_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_173_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_173_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_173_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_173_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "MAC_Pipeline_VITIS_LOOP_26_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "j", "Type" : "None", "Direction" : "I"},
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_5_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_26_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage5", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage5_subdone", "QuitState" : "ap_ST_fsm_pp0_stage5", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage5_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MAC_Pipeline_VITIS_LOOP_26_1 {
		c {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		j {Type I LastRead 0 FirstWrite -1}
		a {Type I LastRead 0 FirstWrite -1}
		z_5_out {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	c { ap_none {  { c in_data 0 32 } } }
	b { ap_none {  { b in_data 0 32 } } }
	j { ap_none {  { j in_data 0 32 } } }
	a { ap_none {  { a in_data 0 32 } } }
	z_5_out { ap_vld {  { z_5_out out_data 1 32 }  { z_5_out_ap_vld out_vld 1 1 } } }
}
