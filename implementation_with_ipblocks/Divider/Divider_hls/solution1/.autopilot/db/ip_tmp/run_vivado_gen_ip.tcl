create_project prj -part xc7a35t-cpg236-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/lohitaksh/FPGA_project/Divider/Divider_hls/solution1/syn/verilog/div_sitofp_32ns_32_6_no_dsp_1_ip.tcl"
source "/home/lohitaksh/FPGA_project/Divider/Divider_hls/solution1/syn/verilog/div_fdiv_32ns_32ns_32_16_no_dsp_1_ip.tcl"
