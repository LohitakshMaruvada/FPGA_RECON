//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Fri Nov  8 14:11:33 2024
//Host        : GU603VV running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=13,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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

  wire [31:0]BitShift_0_shifted;
  wire [31:0]BitShift_1_shifted;
  wire [15:0]TwoOneMux_0_out;
  wire [15:0]TwoOneMux_1_val;
  wire [8:0]a_1;
  wire [8:0]b_1;
  wire [15:0]c_1;
  wire [15:0]c_addsub_0_S;
  wire [15:0]c_addsub_1_S;
  wire clk_1;
  wire [31:0]cordic_0_m_axis_dout_tdata;
  wire div_0_ap_done;
  wire [31:0]div_0_ap_return;
  wire sel_1;
  wire [31:16]splitter_0_cosh;
  wire [15:0]splitter_0_sinh;
  wire [15:0]xbip_multadd_0_P;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [15:0]xlconstant_2_dout;

  assign a_1 = a[8:0];
  assign ap_done = div_0_ap_done;
  assign b_1 = b[8:0];
  assign c_1 = c[15:0];
  assign clk_1 = clk;
  assign sel_1 = sel;
  assign tanh[31:0] = div_0_ap_return;
  design_1_BitShift_0_0 BitShift_0
       (.sel(sel_1),
        .shifted(BitShift_0_shifted),
        .unshifted(TwoOneMux_0_out));
  design_1_BitShift_1_0 BitShift_1
       (.sel(sel_1),
        .shifted(BitShift_1_shifted),
        .unshifted(TwoOneMux_1_val));
  design_1_TwoOneMux_0_0 TwoOneMux_0
       (.in1(splitter_0_cosh),
        .in2(c_addsub_1_S),
        .sel(sel_1),
        .val(TwoOneMux_0_out));
  design_1_TwoOneMux_0_1 TwoOneMux_1
       (.in1(splitter_0_sinh),
        .in2(c_addsub_0_S),
        .sel(sel_1),
        .val(TwoOneMux_1_val));
  design_1_c_addsub_0_0 c_addsub_0
       (.A(splitter_0_cosh),
        .B(splitter_0_sinh),
        .CE(xlconstant_1_dout),
        .CLK(clk_1),
        .S(c_addsub_0_S));
  design_1_c_addsub_1_0 c_addsub_1
       (.A(c_addsub_0_S),
        .B(xlconstant_2_dout),
        .CE(xlconstant_1_dout),
        .CLK(clk_1),
        .S(c_addsub_1_S));
  design_1_cordic_0_0 cordic_0
       (.aclk(clk_1),
        .m_axis_dout_tdata(cordic_0_m_axis_dout_tdata),
        .s_axis_phase_tdata(xbip_multadd_0_P),
        .s_axis_phase_tvalid(1'b0));
  design_1_div_0_0 div_0
       (.a(BitShift_1_shifted),
        .ap_clk(clk_1),
        .ap_done(div_0_ap_done),
        .ap_return(div_0_ap_return),
        .ap_rst(xlconstant_0_dout),
        .ap_start(xlconstant_1_dout),
        .b(BitShift_0_shifted));
  design_1_splitter_0_0 splitter_0
       (.cosh(splitter_0_cosh),
        .mix(cordic_0_m_axis_dout_tdata),
        .sinh(splitter_0_sinh));
  design_1_xbip_multadd_0_0 xbip_multadd_0
       (.A(a_1),
        .B(b_1),
        .C(c_1),
        .CE(xlconstant_1_dout),
        .CLK(clk_1),
        .P(xbip_multadd_0_P),
        .SCLR(xlconstant_0_dout),
        .SUBTRACT(xlconstant_0_dout));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  design_1_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
endmodule
