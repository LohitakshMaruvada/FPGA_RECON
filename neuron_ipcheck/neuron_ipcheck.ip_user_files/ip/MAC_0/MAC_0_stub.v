// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Nov  8 02:57:01 2024
// Host        : LAPTOP-HO0MVFJA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/chait/OneDrive/Desktop/FPGA/Project/tanh/neuron_ipcheck/neuron_ipcheck.gen/sources_1/ip/MAC_0/MAC_0_stub.v
// Design      : MAC_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "MAC,Vivado 2022.2" *)
module MAC_0(ap_clk, ap_rst, ap_start, ap_done, ap_idle, 
  ap_ready, ap_return, a, b, c, j)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_return[31:0],a[31:0],b[31:0],c[31:0],j[31:0]" */;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [31:0]ap_return;
  input [31:0]a;
  input [31:0]b;
  input [31:0]c;
  input [31:0]j;
endmodule
