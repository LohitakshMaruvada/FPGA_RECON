vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xbip_utils_v3_0_10
vlib modelsim_lib/msim/axi_utils_v2_0_6
vlib modelsim_lib/msim/xbip_pipe_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vlib modelsim_lib/msim/xbip_bram18k_v3_0_6
vlib modelsim_lib/msim/mult_gen_v12_0_18
vlib modelsim_lib/msim/floating_point_v7_1_15
vlib modelsim_lib/msim/xil_defaultlib

vmap xbip_utils_v3_0_10 modelsim_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 modelsim_lib/msim/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 modelsim_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 modelsim_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 modelsim_lib/msim/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 modelsim_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 modelsim_lib/msim/mult_gen_v12_0_18
vmap floating_point_v7_1_15 modelsim_lib/msim/floating_point_v7_1_15
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xbip_utils_v3_0_10  -93  \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6  -93  \
"../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6  -93  \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4  -93  \
"../../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6  -93  \
"../../../ipstatic/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6  -93  \
"../../../ipstatic/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6  -93  \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_18  -93  \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_15  -93  \
"../../../ipstatic/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_15  -incr -mfcu  \
"../../../ipstatic/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../ipstatic/hdl/verilog/tanh_custom_fadd_32ns_32ns_32_7_full_dsp_1.v" \
"../../../ipstatic/hdl/verilog/tanh_custom_faddfsub_32ns_32ns_32_7_full_dsp_1.v" \
"../../../ipstatic/hdl/verilog/tanh_custom_fcmp_32ns_32ns_1_2_no_dsp_1.v" \
"../../../ipstatic/hdl/verilog/tanh_custom_fdiv_32ns_32ns_32_16_no_dsp_1.v" \
"../../../ipstatic/hdl/verilog/tanh_custom_flow_control_loop_pipe_sequential_init.v" \
"../../../ipstatic/hdl/verilog/tanh_custom_fmul_32ns_32ns_32_4_max_dsp_1.v" \
"../../../ipstatic/hdl/verilog/tanh_custom_tanh_custom_Pipeline_VITIS_LOOP_14_1.v" \
"../../../ipstatic/hdl/verilog/tanh_custom_tanh_custom_Pipeline_VITIS_LOOP_14_1_tanh_custom_tanh_in_ROM_AUTO_1R.v" \
"../../../ipstatic/hdl/verilog/tanh_custom.v" \
"../../../ipstatic/hdl/ip/tanh_custom_faddfsub_32ns_32ns_32_7_full_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/tanh_custom_fadd_32ns_32ns_32_7_full_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/tanh_custom_fcmp_32ns_32ns_1_2_no_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/tanh_custom_fdiv_32ns_32ns_32_16_no_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/tanh_custom_fmul_32ns_32ns_32_4_max_dsp_1_ip.v" \
"../../../../hyperbolic_tan.gen/sources_1/ip/tanh_custom_0/sim/tanh_custom_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

