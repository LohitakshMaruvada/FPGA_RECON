set SynModuleInfo {
  {SRCNAME tanh_custom_Pipeline_VITIS_LOOP_14_1 MODELNAME tanh_custom_Pipeline_VITIS_LOOP_14_1 RTLNAME tanh_custom_tanh_custom_Pipeline_VITIS_LOOP_14_1
    SUBMODULES {
      {MODELNAME tanh_custom_faddfsub_32ns_32ns_32_7_full_dsp_1 RTLNAME tanh_custom_faddfsub_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME tanh_custom_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME tanh_custom_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME tanh_custom_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME tanh_custom_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME tanh_custom_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME tanh_custom_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME tanh_custom_tanh_custom_Pipeline_VITIS_LOOP_14_1_tanh_custom_tanh_in_ROM_AUTO_1R RTLNAME tanh_custom_tanh_custom_Pipeline_VITIS_LOOP_14_1_tanh_custom_tanh_in_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME tanh_custom_flow_control_loop_pipe_sequential_init RTLNAME tanh_custom_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME tanh_custom_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME tanh_custom MODELNAME tanh_custom RTLNAME tanh_custom IS_TOP 1
    SUBMODULES {
      {MODELNAME tanh_custom_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME tanh_custom_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
    }
  }
}
