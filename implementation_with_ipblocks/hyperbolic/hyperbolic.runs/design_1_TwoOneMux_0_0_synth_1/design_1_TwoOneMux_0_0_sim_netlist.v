// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Nov  8 14:12:27 2024
// Host        : GU603VV running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_TwoOneMux_0_0_sim_netlist.v
// Design      : design_1_TwoOneMux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TwoOneMux
   (val,
    in2,
    in1,
    sel);
  output [15:0]val;
  input [15:0]in2;
  input [15:0]in1;
  input sel;

  wire [15:0]in1;
  wire [15:0]in2;
  wire sel;
  wire [15:0]val;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \val[0]_INST_0 
       (.I0(in2[0]),
        .I1(in1[0]),
        .I2(sel),
        .O(val[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \val[10]_INST_0 
       (.I0(in2[10]),
        .I1(in1[10]),
        .I2(sel),
        .O(val[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \val[11]_INST_0 
       (.I0(in2[11]),
        .I1(in1[11]),
        .I2(sel),
        .O(val[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \val[12]_INST_0 
       (.I0(in2[12]),
        .I1(in1[12]),
        .I2(sel),
        .O(val[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \val[13]_INST_0 
       (.I0(in2[13]),
        .I1(in1[13]),
        .I2(sel),
        .O(val[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \val[14]_INST_0 
       (.I0(in2[14]),
        .I1(in1[14]),
        .I2(sel),
        .O(val[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \val[15]_INST_0 
       (.I0(in2[15]),
        .I1(in1[15]),
        .I2(sel),
        .O(val[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \val[1]_INST_0 
       (.I0(in2[1]),
        .I1(in1[1]),
        .I2(sel),
        .O(val[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \val[2]_INST_0 
       (.I0(in2[2]),
        .I1(in1[2]),
        .I2(sel),
        .O(val[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \val[3]_INST_0 
       (.I0(in2[3]),
        .I1(in1[3]),
        .I2(sel),
        .O(val[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \val[4]_INST_0 
       (.I0(in2[4]),
        .I1(in1[4]),
        .I2(sel),
        .O(val[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \val[5]_INST_0 
       (.I0(in2[5]),
        .I1(in1[5]),
        .I2(sel),
        .O(val[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \val[6]_INST_0 
       (.I0(in2[6]),
        .I1(in1[6]),
        .I2(sel),
        .O(val[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \val[7]_INST_0 
       (.I0(in2[7]),
        .I1(in1[7]),
        .I2(sel),
        .O(val[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \val[8]_INST_0 
       (.I0(in2[8]),
        .I1(in1[8]),
        .I2(sel),
        .O(val[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \val[9]_INST_0 
       (.I0(in2[9]),
        .I1(in1[9]),
        .I2(sel),
        .O(val[9]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_TwoOneMux_0_0,TwoOneMux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "TwoOneMux,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (in1,
    in2,
    sel,
    val);
  input [15:0]in1;
  input [15:0]in2;
  input sel;
  output [15:0]val;

  wire [15:0]in1;
  wire [15:0]in2;
  wire sel;
  wire [15:0]val;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TwoOneMux inst
       (.in1(in1),
        .in2(in2),
        .sel(sel),
        .val(val));
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
