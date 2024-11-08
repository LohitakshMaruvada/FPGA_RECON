set SynModuleInfo {
  {SRCNAME MAC MODELNAME MAC RTLNAME MAC IS_TOP 1
    SUBMODULES {
      {MODELNAME MAC_faddfsub_32ns_32ns_32_7_full_dsp_1 RTLNAME MAC_faddfsub_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME MAC_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME MAC_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME MAC_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME MAC_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME MAC_flow_control_loop_pipe RTLNAME MAC_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME MAC_flow_control_loop_pipe_U}
    }
  }
}
