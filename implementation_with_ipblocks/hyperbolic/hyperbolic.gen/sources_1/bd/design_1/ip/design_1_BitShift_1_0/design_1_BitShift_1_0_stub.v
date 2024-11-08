// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Nov  8 14:12:26 2024
// Host        : GU603VV running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/lohitaksh/FPGA_project/hyperbolic/hyperbolic.gen/sources_1/bd/design_1/ip/design_1_BitShift_1_0/design_1_BitShift_1_0_stub.v
// Design      : design_1_BitShift_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "BitShift,Vivado 2022.2" *)
module design_1_BitShift_1_0(sel, unshifted, shifted)
/* synthesis syn_black_box black_box_pad_pin="sel,unshifted[15:0],shifted[31:0]" */;
  input sel;
  input [15:0]unshifted;
  output [31:0]shifted;
endmodule
