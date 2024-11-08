// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Nov  8 14:12:26 2024
// Host        : GU603VV running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lohitaksh/FPGA_project/hyperbolic/hyperbolic.gen/sources_1/bd/design_1/ip/design_1_BitShift_0_0/design_1_BitShift_0_0_sim_netlist.v
// Design      : design_1_BitShift_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_BitShift_0_0,BitShift,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "BitShift,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_BitShift_0_0
   (sel,
    unshifted,
    shifted);
  input sel;
  input [15:0]unshifted;
  output [31:0]shifted;

  wire sel;
  wire [31:0]\^shifted ;
  wire [15:0]unshifted;

  assign shifted[31] = \^shifted [31];
  assign shifted[30] = \^shifted [31];
  assign shifted[29] = \^shifted [31];
  assign shifted[28] = \^shifted [31];
  assign shifted[27] = \^shifted [31];
  assign shifted[26] = \^shifted [31];
  assign shifted[25] = \^shifted [31];
  assign shifted[24] = \^shifted [31];
  assign shifted[23] = \^shifted [31];
  assign shifted[22] = \^shifted [31];
  assign shifted[21] = \^shifted [31];
  assign shifted[20] = \^shifted [31];
  assign shifted[19] = \^shifted [31];
  assign shifted[18] = \^shifted [31];
  assign shifted[17] = \^shifted [31];
  assign shifted[16] = \^shifted [31];
  assign shifted[15:0] = \^shifted [15:0];
  design_1_BitShift_0_0_BitShift inst
       (.sel(sel),
        .shifted({\^shifted [31],\^shifted [15:0]}),
        .unshifted(unshifted));
endmodule

(* ORIG_REF_NAME = "BitShift" *) 
module design_1_BitShift_0_0_BitShift
   (shifted,
    sel,
    unshifted);
  output [16:0]shifted;
  input sel;
  input [15:0]unshifted;

  wire _carry__0_n_0;
  wire _carry__0_n_1;
  wire _carry__0_n_2;
  wire _carry__0_n_3;
  wire _carry__1_n_0;
  wire _carry__1_n_1;
  wire _carry__1_n_2;
  wire _carry__1_n_3;
  wire _carry__2_n_0;
  wire _carry__2_n_2;
  wire _carry__2_n_3;
  wire _carry_n_0;
  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire [15:0]p_0_in;
  wire sel;
  wire [16:0]shifted;
  wire [15:1]shifted0;
  wire shifted2_carry__0_i_1_n_0;
  wire shifted2_carry__0_i_2_n_0;
  wire shifted2_carry__0_i_3_n_0;
  wire shifted2_carry__0_i_4_n_0;
  wire shifted2_carry__0_n_0;
  wire shifted2_carry__0_n_1;
  wire shifted2_carry__0_n_2;
  wire shifted2_carry__0_n_3;
  wire shifted2_carry__0_n_4;
  wire shifted2_carry__0_n_5;
  wire shifted2_carry__0_n_6;
  wire shifted2_carry__0_n_7;
  wire shifted2_carry__1_i_1_n_0;
  wire shifted2_carry__1_i_2_n_0;
  wire shifted2_carry__1_i_3_n_0;
  wire shifted2_carry__1_i_4_n_0;
  wire shifted2_carry__1_n_0;
  wire shifted2_carry__1_n_1;
  wire shifted2_carry__1_n_2;
  wire shifted2_carry__1_n_3;
  wire shifted2_carry__1_n_4;
  wire shifted2_carry__1_n_5;
  wire shifted2_carry__1_n_6;
  wire shifted2_carry__1_n_7;
  wire shifted2_carry__2_i_1_n_0;
  wire shifted2_carry__2_i_2_n_0;
  wire shifted2_carry__2_i_3_n_0;
  wire shifted2_carry__2_i_4_n_0;
  wire shifted2_carry__2_n_1;
  wire shifted2_carry__2_n_2;
  wire shifted2_carry__2_n_3;
  wire shifted2_carry__2_n_4;
  wire shifted2_carry__2_n_5;
  wire shifted2_carry__2_n_6;
  wire shifted2_carry__2_n_7;
  wire shifted2_carry_i_1_n_0;
  wire shifted2_carry_i_2_n_0;
  wire shifted2_carry_i_3_n_0;
  wire shifted2_carry_n_0;
  wire shifted2_carry_n_1;
  wire shifted2_carry_n_2;
  wire shifted2_carry_n_3;
  wire shifted2_carry_n_4;
  wire shifted2_carry_n_5;
  wire shifted2_carry_n_6;
  wire shifted2_carry_n_7;
  wire [15:0]unshifted;
  wire [2:2]NLW__carry__2_CO_UNCONNECTED;
  wire [3:3]NLW__carry__2_O_UNCONNECTED;
  wire [3:3]NLW_shifted2_carry__2_CO_UNCONNECTED;

  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(p_0_in[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(shifted0[4:1]),
        .S(p_0_in[4:1]));
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({_carry__0_n_0,_carry__0_n_1,_carry__0_n_2,_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(shifted0[8:5]),
        .S(p_0_in[8:5]));
  LUT1 #(
    .INIT(2'h1)) 
    _carry__0_i_1
       (.I0(shifted2_carry__1_n_7),
        .O(p_0_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    _carry__0_i_2
       (.I0(shifted2_carry__0_n_4),
        .O(p_0_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    _carry__0_i_3
       (.I0(shifted2_carry__0_n_5),
        .O(p_0_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    _carry__0_i_4
       (.I0(shifted2_carry__0_n_6),
        .O(p_0_in[5]));
  CARRY4 _carry__1
       (.CI(_carry__0_n_0),
        .CO({_carry__1_n_0,_carry__1_n_1,_carry__1_n_2,_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(shifted0[12:9]),
        .S(p_0_in[12:9]));
  LUT1 #(
    .INIT(2'h1)) 
    _carry__1_i_1
       (.I0(shifted2_carry__2_n_7),
        .O(p_0_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    _carry__1_i_2
       (.I0(shifted2_carry__1_n_4),
        .O(p_0_in[11]));
  LUT1 #(
    .INIT(2'h1)) 
    _carry__1_i_3
       (.I0(shifted2_carry__1_n_5),
        .O(p_0_in[10]));
  LUT1 #(
    .INIT(2'h1)) 
    _carry__1_i_4
       (.I0(shifted2_carry__1_n_6),
        .O(p_0_in[9]));
  CARRY4 _carry__2
       (.CI(_carry__1_n_0),
        .CO({_carry__2_n_0,NLW__carry__2_CO_UNCONNECTED[2],_carry__2_n_2,_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW__carry__2_O_UNCONNECTED[3],shifted0[15:13]}),
        .S({1'b1,p_0_in[15:13]}));
  LUT1 #(
    .INIT(2'h1)) 
    _carry__2_i_1
       (.I0(shifted2_carry__2_n_4),
        .O(p_0_in[15]));
  LUT1 #(
    .INIT(2'h1)) 
    _carry__2_i_2
       (.I0(shifted2_carry__2_n_5),
        .O(p_0_in[14]));
  LUT1 #(
    .INIT(2'h1)) 
    _carry__2_i_3
       (.I0(shifted2_carry__2_n_6),
        .O(p_0_in[13]));
  LUT1 #(
    .INIT(2'h1)) 
    _carry_i_1
       (.I0(shifted2_carry_n_7),
        .O(p_0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    _carry_i_2
       (.I0(shifted2_carry__0_n_7),
        .O(p_0_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    _carry_i_3
       (.I0(shifted2_carry_n_4),
        .O(p_0_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    _carry_i_4
       (.I0(shifted2_carry_n_5),
        .O(p_0_in[2]));
  LUT1 #(
    .INIT(2'h1)) 
    _carry_i_5
       (.I0(shifted2_carry_n_6),
        .O(p_0_in[1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 shifted2_carry
       (.CI(1'b0),
        .CO({shifted2_carry_n_0,shifted2_carry_n_1,shifted2_carry_n_2,shifted2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({shifted2_carry_n_4,shifted2_carry_n_5,shifted2_carry_n_6,shifted2_carry_n_7}),
        .S({shifted2_carry_i_1_n_0,shifted2_carry_i_2_n_0,shifted2_carry_i_3_n_0,unshifted[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 shifted2_carry__0
       (.CI(shifted2_carry_n_0),
        .CO({shifted2_carry__0_n_0,shifted2_carry__0_n_1,shifted2_carry__0_n_2,shifted2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({shifted2_carry__0_n_4,shifted2_carry__0_n_5,shifted2_carry__0_n_6,shifted2_carry__0_n_7}),
        .S({shifted2_carry__0_i_1_n_0,shifted2_carry__0_i_2_n_0,shifted2_carry__0_i_3_n_0,shifted2_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    shifted2_carry__0_i_1
       (.I0(unshifted[7]),
        .O(shifted2_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    shifted2_carry__0_i_2
       (.I0(unshifted[6]),
        .O(shifted2_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    shifted2_carry__0_i_3
       (.I0(unshifted[5]),
        .O(shifted2_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    shifted2_carry__0_i_4
       (.I0(unshifted[4]),
        .O(shifted2_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 shifted2_carry__1
       (.CI(shifted2_carry__0_n_0),
        .CO({shifted2_carry__1_n_0,shifted2_carry__1_n_1,shifted2_carry__1_n_2,shifted2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({shifted2_carry__1_n_4,shifted2_carry__1_n_5,shifted2_carry__1_n_6,shifted2_carry__1_n_7}),
        .S({shifted2_carry__1_i_1_n_0,shifted2_carry__1_i_2_n_0,shifted2_carry__1_i_3_n_0,shifted2_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    shifted2_carry__1_i_1
       (.I0(unshifted[11]),
        .O(shifted2_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    shifted2_carry__1_i_2
       (.I0(unshifted[10]),
        .O(shifted2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    shifted2_carry__1_i_3
       (.I0(unshifted[9]),
        .O(shifted2_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    shifted2_carry__1_i_4
       (.I0(unshifted[8]),
        .O(shifted2_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 shifted2_carry__2
       (.CI(shifted2_carry__1_n_0),
        .CO({NLW_shifted2_carry__2_CO_UNCONNECTED[3],shifted2_carry__2_n_1,shifted2_carry__2_n_2,shifted2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({shifted2_carry__2_n_4,shifted2_carry__2_n_5,shifted2_carry__2_n_6,shifted2_carry__2_n_7}),
        .S({shifted2_carry__2_i_1_n_0,shifted2_carry__2_i_2_n_0,shifted2_carry__2_i_3_n_0,shifted2_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    shifted2_carry__2_i_1
       (.I0(unshifted[15]),
        .O(shifted2_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    shifted2_carry__2_i_2
       (.I0(unshifted[14]),
        .O(shifted2_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    shifted2_carry__2_i_3
       (.I0(unshifted[13]),
        .O(shifted2_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    shifted2_carry__2_i_4
       (.I0(unshifted[12]),
        .O(shifted2_carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    shifted2_carry_i_1
       (.I0(unshifted[3]),
        .O(shifted2_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    shifted2_carry_i_2
       (.I0(unshifted[2]),
        .O(shifted2_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    shifted2_carry_i_3
       (.I0(unshifted[1]),
        .O(shifted2_carry_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shifted[0]_INST_0 
       (.I0(sel),
        .I1(shifted2_carry_n_7),
        .I2(unshifted[15]),
        .I3(unshifted[0]),
        .O(shifted[0]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \shifted[10]_INST_0 
       (.I0(sel),
        .I1(shifted0[10]),
        .I2(unshifted[15]),
        .I3(unshifted[10]),
        .O(shifted[10]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \shifted[11]_INST_0 
       (.I0(sel),
        .I1(shifted0[11]),
        .I2(unshifted[15]),
        .I3(unshifted[11]),
        .O(shifted[11]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \shifted[12]_INST_0 
       (.I0(sel),
        .I1(shifted0[12]),
        .I2(unshifted[15]),
        .I3(unshifted[12]),
        .O(shifted[12]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \shifted[13]_INST_0 
       (.I0(sel),
        .I1(shifted0[13]),
        .I2(unshifted[15]),
        .I3(unshifted[13]),
        .O(shifted[13]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \shifted[14]_INST_0 
       (.I0(sel),
        .I1(shifted0[14]),
        .I2(unshifted[15]),
        .I3(unshifted[14]),
        .O(shifted[14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \shifted[15]_INST_0 
       (.I0(sel),
        .I1(unshifted[15]),
        .I2(shifted0[15]),
        .O(shifted[15]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \shifted[16]_INST_0 
       (.I0(_carry__2_n_0),
        .I1(unshifted[15]),
        .I2(sel),
        .O(shifted[16]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEF40)) 
    \shifted[1]_INST_0 
       (.I0(sel),
        .I1(shifted0[1]),
        .I2(unshifted[15]),
        .I3(unshifted[1]),
        .O(shifted[1]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \shifted[2]_INST_0 
       (.I0(sel),
        .I1(shifted0[2]),
        .I2(unshifted[15]),
        .I3(unshifted[2]),
        .O(shifted[2]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \shifted[3]_INST_0 
       (.I0(sel),
        .I1(shifted0[3]),
        .I2(unshifted[15]),
        .I3(unshifted[3]),
        .O(shifted[3]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \shifted[4]_INST_0 
       (.I0(sel),
        .I1(shifted0[4]),
        .I2(unshifted[15]),
        .I3(unshifted[4]),
        .O(shifted[4]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \shifted[5]_INST_0 
       (.I0(sel),
        .I1(shifted0[5]),
        .I2(unshifted[15]),
        .I3(unshifted[5]),
        .O(shifted[5]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \shifted[6]_INST_0 
       (.I0(sel),
        .I1(shifted0[6]),
        .I2(unshifted[15]),
        .I3(unshifted[6]),
        .O(shifted[6]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \shifted[7]_INST_0 
       (.I0(sel),
        .I1(shifted0[7]),
        .I2(unshifted[15]),
        .I3(unshifted[7]),
        .O(shifted[7]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \shifted[8]_INST_0 
       (.I0(sel),
        .I1(shifted0[8]),
        .I2(unshifted[15]),
        .I3(unshifted[8]),
        .O(shifted[8]));
  LUT4 #(
    .INIT(16'hEF40)) 
    \shifted[9]_INST_0 
       (.I0(sel),
        .I1(shifted0[9]),
        .I2(unshifted[15]),
        .I3(unshifted[9]),
        .O(shifted[9]));
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
