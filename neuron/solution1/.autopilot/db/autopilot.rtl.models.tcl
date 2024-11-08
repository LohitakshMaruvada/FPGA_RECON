set SynModuleInfo {
  {SRCNAME neuron_Pipeline_VITIS_LOOP_15_1 MODELNAME neuron_Pipeline_VITIS_LOOP_15_1 RTLNAME neuron_neuron_Pipeline_VITIS_LOOP_15_1
    SUBMODULES {
      {MODELNAME neuron_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME neuron_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME neuron_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME neuron_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME neuron_neuron_Pipeline_VITIS_LOOP_15_1_neuron_tanh_in_ROM_AUTO_1R RTLNAME neuron_neuron_Pipeline_VITIS_LOOP_15_1_neuron_tanh_in_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME neuron_flow_control_loop_pipe_sequential_init RTLNAME neuron_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME neuron_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME neuron MODELNAME neuron RTLNAME neuron IS_TOP 1
    SUBMODULES {
      {MODELNAME neuron_faddfsub_32ns_32ns_32_7_full_dsp_1 RTLNAME neuron_faddfsub_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME neuron_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME neuron_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME neuron_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME neuron_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
    }
  }
}
