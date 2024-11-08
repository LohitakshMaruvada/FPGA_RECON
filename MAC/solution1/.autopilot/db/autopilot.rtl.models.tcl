set SynModuleInfo {
  {SRCNAME MAC_Pipeline_VITIS_LOOP_26_1 MODELNAME MAC_Pipeline_VITIS_LOOP_26_1 RTLNAME MAC_MAC_Pipeline_VITIS_LOOP_26_1
    SUBMODULES {
      {MODELNAME MAC_flow_control_loop_pipe_sequential_init RTLNAME MAC_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME MAC_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME MAC_Pipeline_VITIS_LOOP_56_2 MODELNAME MAC_Pipeline_VITIS_LOOP_56_2 RTLNAME MAC_MAC_Pipeline_VITIS_LOOP_56_2
    SUBMODULES {
      {MODELNAME MAC_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME MAC_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME MAC_MAC_Pipeline_VITIS_LOOP_56_2_MAC_tanh_in_ROM_AUTO_1R RTLNAME MAC_MAC_Pipeline_VITIS_LOOP_56_2_MAC_tanh_in_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME MAC MODELNAME MAC RTLNAME MAC IS_TOP 1
    SUBMODULES {
      {MODELNAME MAC_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME MAC_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME MAC_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME MAC_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MAC_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME MAC_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME MAC_faddfsub_32ns_32ns_32_7_full_dsp_1 RTLNAME MAC_faddfsub_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
    }
  }
}
