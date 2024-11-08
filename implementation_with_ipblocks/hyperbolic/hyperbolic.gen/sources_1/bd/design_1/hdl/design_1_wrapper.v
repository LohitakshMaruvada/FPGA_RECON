//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Fri Nov  8 14:11:33 2024
//Host        : GU603VV running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (a,
    ap_done,
    b,
    c,
    clk,
    sel,
    tanh);
  input [8:0]a;
  output ap_done;
  input [8:0]b;
  input [15:0]c;
  input clk;
  input sel;
  output [31:0]tanh;

  wire [8:0]a;
  wire ap_done;
  wire [8:0]b;
  wire [15:0]c;
  wire clk;
  wire sel;
  wire [31:0]tanh;

  design_1 design_1_i
       (.a(a),
        .ap_done(ap_done),
        .b(b),
        .c(c),
        .clk(clk),
        .sel(sel),
        .tanh(tanh));
endmodule
