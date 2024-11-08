// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Nov  8 14:13:12 2024
// Host        : GU603VV running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_2_design_1_wrapper_0_0_sim_netlist.v
// Design      : design_2_design_1_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "design_1.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1
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
  wire [8:0]a;
  wire ap_done;
  wire [8:0]b;
  wire [15:0]c;
  wire [15:0]c_addsub_0_S;
  wire [15:0]c_addsub_1_S;
  wire clk;
  wire [31:0]cordic_0_m_axis_dout_tdata;
  wire sel;
  wire [31:16]splitter_0_cosh;
  wire [15:0]splitter_0_sinh;
  wire [31:0]tanh;
  wire [15:0]xbip_multadd_0_P;
  wire NLW_cordic_0_m_axis_dout_tvalid_UNCONNECTED;
  wire NLW_div_0_ap_idle_UNCONNECTED;
  wire NLW_div_0_ap_ready_UNCONNECTED;
  wire [47:0]NLW_xbip_multadd_0_PCOUT_UNCONNECTED;

  (* X_CORE_INFO = "BitShift,Vivado 2022.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_BitShift_0_0 BitShift_0
       (.sel(sel),
        .shifted(BitShift_0_shifted),
        .unshifted(TwoOneMux_0_out));
  (* X_CORE_INFO = "BitShift,Vivado 2022.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_BitShift_1_0 BitShift_1
       (.sel(sel),
        .shifted(BitShift_1_shifted),
        .unshifted(TwoOneMux_1_val));
  (* X_CORE_INFO = "TwoOneMux,Vivado 2022.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_TwoOneMux_0_0 TwoOneMux_0
       (.in1(splitter_0_cosh),
        .in2(c_addsub_1_S),
        .sel(sel),
        .val(TwoOneMux_0_out));
  (* X_CORE_INFO = "TwoOneMux,Vivado 2022.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_TwoOneMux_0_1 TwoOneMux_1
       (.in1(splitter_0_sinh),
        .in2(c_addsub_0_S),
        .sel(sel),
        .val(TwoOneMux_1_val));
  (* X_CORE_INFO = "c_addsub_v12_0_14,Vivado 2022.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_c_addsub_0_0 c_addsub_0
       (.A(splitter_0_cosh),
        .B(splitter_0_sinh),
        .CE(1'b1),
        .CLK(clk),
        .S(c_addsub_0_S));
  (* X_CORE_INFO = "c_addsub_v12_0_14,Vivado 2022.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_c_addsub_1_0 c_addsub_1
       (.A(c_addsub_0_S),
        .B({1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(clk),
        .S(c_addsub_1_S));
  (* X_CORE_INFO = "cordic_v6_0_18,Vivado 2022.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_cordic_0_0 cordic_0
       (.aclk(clk),
        .m_axis_dout_tdata(cordic_0_m_axis_dout_tdata),
        .m_axis_dout_tvalid(NLW_cordic_0_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_phase_tdata(xbip_multadd_0_P),
        .s_axis_phase_tvalid(1'b0));
  (* X_CORE_INFO = "div,Vivado 2022.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_div_0_0 div_0
       (.a(BitShift_1_shifted),
        .ap_clk(clk),
        .ap_done(ap_done),
        .ap_idle(NLW_div_0_ap_idle_UNCONNECTED),
        .ap_ready(NLW_div_0_ap_ready_UNCONNECTED),
        .ap_return(tanh),
        .ap_rst(1'b0),
        .ap_start(1'b1),
        .b(BitShift_0_shifted));
  (* X_CORE_INFO = "splitter,Vivado 2022.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_splitter_0_0 splitter_0
       (.cosh(splitter_0_cosh),
        .mix(cordic_0_m_axis_dout_tdata),
        .sinh(splitter_0_sinh));
  (* X_CORE_INFO = "xbip_multadd_v3_0_17,Vivado 2022.2" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_xbip_multadd_0_0 xbip_multadd_0
       (.A(a),
        .B(b),
        .C(c),
        .CE(1'b1),
        .CLK(clk),
        .P(xbip_multadd_0_P),
        .PCOUT(NLW_xbip_multadd_0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SUBTRACT(1'b0));
endmodule

(* X_CORE_INFO = "BitShift,Vivado 2022.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_BitShift_0_0
   (sel,
    unshifted,
    shifted);
  input sel;
  input [15:0]unshifted;
  output [31:0]shifted;


endmodule

(* X_CORE_INFO = "BitShift,Vivado 2022.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_BitShift_1_0
   (sel,
    unshifted,
    shifted);
  input sel;
  input [15:0]unshifted;
  output [31:0]shifted;


endmodule

(* X_CORE_INFO = "TwoOneMux,Vivado 2022.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_TwoOneMux_0_0
   (in1,
    in2,
    sel,
    val);
  input [15:0]in1;
  input [15:0]in2;
  input sel;
  output [15:0]val;


endmodule

(* X_CORE_INFO = "TwoOneMux,Vivado 2022.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_TwoOneMux_0_1
   (in1,
    in2,
    sel,
    val);
  input [15:0]in1;
  input [15:0]in2;
  input sel;
  output [15:0]val;


endmodule

(* X_CORE_INFO = "c_addsub_v12_0_14,Vivado 2022.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_c_addsub_0_0
   (A,
    B,
    CLK,
    CE,
    S);
  input [15:0]A;
  input [15:0]B;
  input CLK;
  input CE;
  output [15:0]S;


endmodule

(* X_CORE_INFO = "c_addsub_v12_0_14,Vivado 2022.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_c_addsub_1_0
   (A,
    B,
    CLK,
    CE,
    S);
  input [15:0]A;
  input [15:0]B;
  input CLK;
  input CE;
  output [15:0]S;


endmodule

(* X_CORE_INFO = "cordic_v6_0_18,Vivado 2022.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_cordic_0_0
   (aclk,
    s_axis_phase_tvalid,
    s_axis_phase_tdata,
    m_axis_dout_tvalid,
    m_axis_dout_tdata);
  input aclk;
  input s_axis_phase_tvalid;
  input [15:0]s_axis_phase_tdata;
  output m_axis_dout_tvalid;
  output [31:0]m_axis_dout_tdata;


endmodule

(* X_CORE_INFO = "div,Vivado 2022.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_div_0_0
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    ap_return,
    a,
    b);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [31:0]ap_return;
  input [31:0]a;
  input [31:0]b;


endmodule

(* X_CORE_INFO = "splitter,Vivado 2022.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_splitter_0_0
   (mix,
    sinh,
    cosh);
  input [31:0]mix;
  output [15:0]sinh;
  output [31:16]cosh;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_wrapper
   (ap_done,
    tanh,
    a,
    b,
    c,
    clk,
    sel);
  output ap_done;
  output [31:0]tanh;
  input [8:0]a;
  input [8:0]b;
  input [15:0]c;
  input clk;
  input sel;

  wire [8:0]a;
  wire ap_done;
  wire [8:0]b;
  wire [15:0]c;
  wire clk;
  wire sel;
  wire [31:0]tanh;

  (* HW_HANDOFF = "design_1.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1 design_1_i
       (.a(a),
        .ap_done(ap_done),
        .b(b),
        .c(c),
        .clk(clk),
        .sel(sel),
        .tanh(tanh));
endmodule

(* X_CORE_INFO = "xbip_multadd_v3_0_17,Vivado 2022.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_xbip_multadd_0_0
   (CLK,
    CE,
    SCLR,
    A,
    B,
    C,
    SUBTRACT,
    P,
    PCOUT);
  input CLK;
  input CE;
  input SCLR;
  input [8:0]A;
  input [8:0]B;
  input [15:0]C;
  input SUBTRACT;
  output [15:0]P;
  output [47:0]PCOUT;


endmodule

(* CHECK_LICENSE_TYPE = "design_2_design_1_wrapper_0_0,design_1_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "design_1_wrapper,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input sel;
  output [31:0]tanh;

  wire [8:0]a;
  wire ap_done;
  wire [8:0]b;
  wire [15:0]c;
  wire clk;
  wire sel;
  wire [31:0]tanh;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_wrapper inst
       (.a(a),
        .ap_done(ap_done),
        .b(b),
        .c(c),
        .clk(clk),
        .sel(sel),
        .tanh(tanh));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
