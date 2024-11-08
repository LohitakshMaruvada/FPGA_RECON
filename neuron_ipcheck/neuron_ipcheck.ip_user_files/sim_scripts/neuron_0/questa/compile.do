vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xbip_utils_v3_0_10
vlib questa_lib/msim/axi_utils_v2_0_6
vlib questa_lib/msim/xbip_pipe_v3_0_6
vlib questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vlib questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vlib questa_lib/msim/xbip_dsp48_multadd_v3_0_6
vlib questa_lib/msim/xbip_bram18k_v3_0_6
vlib questa_lib/msim/mult_gen_v12_0_18
vlib questa_lib/msim/floating_point_v7_1_15
vlib questa_lib/msim/xil_defaultlib

vmap xbip_utils_v3_0_10 questa_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 questa_lib/msim/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 questa_lib/msim/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 questa_lib/msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 questa_lib/msim/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 questa_lib/msim/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 questa_lib/msim/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_18 questa_lib/msim/mult_gen_v12_0_18
vmap floating_point_v7_1_15 questa_lib/msim/floating_point_v7_1_15
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

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
"../../../ipstatic/hdl/verilog/neuron_fadd_32ns_32ns_32_7_full_dsp_1.v" \
"../../../ipstatic/hdl/verilog/neuron_faddfsub_32ns_32ns_32_7_full_dsp_1.v" \
"../../../ipstatic/hdl/verilog/neuron_fcmp_32ns_32ns_1_2_no_dsp_1.v" \
"../../../ipstatic/hdl/verilog/neuron_fdiv_32ns_32ns_32_16_no_dsp_1.v" \
"../../../ipstatic/hdl/verilog/neuron_flow_control_loop_pipe_sequential_init.v" \
"../../../ipstatic/hdl/verilog/neuron_fmul_32ns_32ns_32_4_max_dsp_1.v" \
"../../../ipstatic/hdl/verilog/neuron_neuron_Pipeline_VITIS_LOOP_15_1.v" \
"../../../ipstatic/hdl/verilog/neuron_neuron_Pipeline_VITIS_LOOP_15_1_neuron_tanh_in_ROM_AUTO_1R.v" \
"../../../ipstatic/hdl/verilog/neuron.v" \
"../../../ipstatic/hdl/ip/neuron_faddfsub_32ns_32ns_32_7_full_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/neuron_fadd_32ns_32ns_32_7_full_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/neuron_fcmp_32ns_32ns_1_2_no_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/neuron_fdiv_32ns_32ns_32_16_no_dsp_1_ip.v" \
"../../../ipstatic/hdl/ip/neuron_fmul_32ns_32ns_32_4_max_dsp_1_ip.v" \
"../../../../neuron_ipcheck.gen/sources_1/ip/neuron_0/sim/neuron_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

