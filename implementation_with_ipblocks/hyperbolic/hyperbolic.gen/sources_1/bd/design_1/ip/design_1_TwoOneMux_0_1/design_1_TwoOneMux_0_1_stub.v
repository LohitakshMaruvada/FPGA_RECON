// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Nov  8 14:12:26 2024
// Host        : GU603VV running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/lohitaksh/FPGA_project/hyperbolic/hyperbolic.gen/sources_1/bd/design_1/ip/design_1_TwoOneMux_0_1/design_1_TwoOneMux_0_1_stub.v
// Design      : design_1_TwoOneMux_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "TwoOneMux,Vivado 2022.2" *)
module design_1_TwoOneMux_0_1(in1, in2, sel, val)
/* synthesis syn_black_box black_box_pad_pin="in1[15:0],in2[15:0],sel,val[15:0]" */;
  input [15:0]in1;
  input [15:0]in2;
  input sel;
  output [15:0]val;
endmodule
