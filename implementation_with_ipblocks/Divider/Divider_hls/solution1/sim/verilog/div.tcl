
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $coutputgroup]
add_wave /apatb_div_top/AESL_inst_div/ap_return -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $cinputgroup]
add_wave /apatb_div_top/AESL_inst_div/b -into $return_group -radix hex
add_wave /apatb_div_top/AESL_inst_div/a -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_div_top/AESL_inst_div/ap_start -into $blocksiggroup
add_wave /apatb_div_top/AESL_inst_div/ap_done -into $blocksiggroup
add_wave /apatb_div_top/AESL_inst_div/ap_idle -into $blocksiggroup
add_wave /apatb_div_top/AESL_inst_div/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_div_top/AESL_inst_div/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_div_top/AESL_inst_div/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_div_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_div_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_div_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_div_top/LENGTH_a -into $tb_portdepth_group -radix hex
add_wave /apatb_div_top/LENGTH_ap_return -into $tb_portdepth_group -radix hex
add_wave /apatb_div_top/LENGTH_b -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcoutputgroup]
add_wave /apatb_div_top/ap_return -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcinputgroup]
add_wave /apatb_div_top/b -into $tb_return_group -radix hex
add_wave /apatb_div_top/a -into $tb_return_group -radix hex
save_wave_config div.wcfg
run all

