create_project prj -part xc7a35t-cpg236-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "C:/Users/chait/OneDrive/Desktop/FPGA/Project/MAC/MAC/solution2/syn/verilog/MAC_faddfsub_32ns_32ns_32_7_full_dsp_1_ip.tcl"
source "C:/Users/chait/OneDrive/Desktop/FPGA/Project/MAC/MAC/solution2/syn/verilog/MAC_fcmp_32ns_32ns_1_2_no_dsp_1_ip.tcl"
source "C:/Users/chait/OneDrive/Desktop/FPGA/Project/MAC/MAC/solution2/syn/verilog/MAC_fmul_32ns_32ns_32_4_max_dsp_1_ip.tcl"
