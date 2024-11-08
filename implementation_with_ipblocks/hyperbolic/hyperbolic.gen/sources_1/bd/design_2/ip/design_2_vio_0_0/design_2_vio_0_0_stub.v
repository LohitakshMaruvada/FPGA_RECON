// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Nov  8 14:12:35 2024
// Host        : GU603VV running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/lohitaksh/FPGA_project/hyperbolic/hyperbolic.gen/sources_1/bd/design_2/ip/design_2_vio_0_0/design_2_vio_0_0_stub.v
// Design      : design_2_vio_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2022.2" *)
module design_2_vio_0_0(clk, probe_in0, probe_in1, probe_out0, 
  probe_out1, probe_out2, probe_out3)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[31:0],probe_in1[0:0],probe_out0[8:0],probe_out1[8:0],probe_out2[15:0],probe_out3[0:0]" */;
  input clk;
  input [31:0]probe_in0;
  input [0:0]probe_in1;
  output [8:0]probe_out0;
  output [8:0]probe_out1;
  output [15:0]probe_out2;
  output [0:0]probe_out3;
endmodule
