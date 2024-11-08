// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Nov  8 14:12:33 2024
// Host        : GU603VV running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lohitaksh/FPGA_project/hyperbolic/hyperbolic.gen/sources_1/bd/design_1/ip/design_1_xbip_multadd_0_0/design_1_xbip_multadd_0_0_sim_netlist.v
// Design      : design_1_xbip_multadd_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_xbip_multadd_0_0,xbip_multadd_v3_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_multadd_v3_0_17,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_xbip_multadd_0_0
   (CLK,
    CE,
    SCLR,
    A,
    B,
    C,
    SUBTRACT,
    P,
    PCOUT);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF pcout_intf:p_intf:subtract_intf:pcin_intf:c_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [8:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [8:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [15:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 subtract_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME subtract_intf, LAYERED_METADATA undef" *) input SUBTRACT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 16}" *) output [15:0]P;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 48} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} DATA_WIDTH 48}" *) output [47:0]PCOUT;

  wire [8:0]A;
  wire [8:0]B;
  wire [15:0]C;
  wire CE;
  wire CLK;
  wire [15:0]P;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SUBTRACT;

  (* C_AB_LATENCY = "-1" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "9" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_WIDTH = "9" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "-1" *) 
  (* C_C_TYPE = "0" *) 
  (* C_C_WIDTH = "16" *) 
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_xbip_multadd_0_0_xbip_multadd_v3_0_17 U0
       (.A(A),
        .B(B),
        .C(C),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SUBTRACT(SUBTRACT));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
LNjLiUvGjQo9HBfqDNWWIZbk/V2M439qoJBQl0SYYuDAnD315p1xDbkm+DB5xejn4HMOBc8Uo463
8/lv7uCGaVa1VMHSvdtDepayxwWLxwDdnwUJ6oZXe+IdrT3G+176hKuFBVrjx3Sy9ACiTAZpByRV
bGZepgZ9Y4ket76x2c8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AQgTNXQnH4gbFTTobCrB+Aq9sb/lV39PmSXbTjT5kM1hFpMpvubRy/VI7AYVLi9JEGrZmV5vTmna
jzjZbXu6QffOtWVjunsGDtMIcV+uPC78sK/nX335E8iSJU9AUfRpRxyrxTzAC27ARElTc6Hzs7yi
Y1ERWcHgnbV5+fP6pLmactRPcUom0w9ZmeTbncwZtuHkbEcUTCdA8yjW5nAFxbe7KNOtKu0XO2RE
yaTsgj52KdGJfj3iaF3As6q2NGbzEHM5qLxUoiJse93ze+dyavhyeEGUCxVYVH/nYqW7In6F5SW1
4cERBUOGo6n2sdkIR4E18fI5oCebHELw9acp+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VjU6OXd2yepjjNYzNVzrCsWJ+4WF0zqCZK2sV+cnAttpfm3wKxcRcrLelFDeLtJMcqWyYvPDn09L
R9yE24QHxHM+5/Hz6Ov0YWWeM08iNt9FFLsUzjEL0kJlJxKffF9FfXboR/AU2c4XT5sgWTMWeATb
/RKYcHclPr1CYIa6lks=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GCWjaWAR/eO3SzcnuUcxDMGs4AaGLxbELCzE7wqfyfqAGUZe+/RdOHfladT3v2yJuilAsPyJBtIm
OseRdrwxvxt+GUUfS7IYh79OLQKZoZuYjk68WjJ3RasXSS/17P8dWV8dNcjDsy/PWTPSdWOh0W0V
RQSOT+B3QBaCFpWRQ0VK5YW9uCosqrIpYMoNIIrazx2ee0ln5MLCECXqWgIXpUMvlsF1pFQWL2uD
TOhWZuMD7fY9PgXhz8+Osg/GPljNv3qx6dR4h67QqF2SQHhDfVGoU44s+6T38ORRBR6y8hvs7a8U
mZ+MPpGXq1Bih2rdQtiOEKF3wLu1Df/c6pWWtw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
2dNpfGKleqzDkjrhBmYIF7fWVs6KJQsQ7Ru0oWvmEOBz5v4PfH5kiEcir8OrBWPs2gZ4UOa76kou
6moNHONbfFoo1AvKDIF6IcUPInqLhZ+PkruMvUeUT03+d1aVWaVgnxESVP8rHlRPJsh55+sgGABD
fbr513FPv2ltm+ajk/pjNSVEi3cMj5ugh7eMlWN/5bX9SD/HPIKvrtAsG0jJEUnFfqlXSqWDfeH0
f68UGnyjPV0ThoZ7SvhjAbeZuNk2maCN4sjG04f7V52vB+0C9u3Ob/lvO5RRQZrXtDXUEg4dHHke
riUa+JanzXsmNsvKkC1vYWZjQWkr39ptkB2U4w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I/LAQuH2LZxFxRStrg8puwS8zchgJ+ynfumiHkzPO0VolrnfT87teSOTk+8DxvdYrosIZNUtLLAW
Hpdk0COFsWiofUUI9WUTMUbDoxusYD8GOcFIWJjX33BR2KGFxTMSYxFToH+7bYq0YUrCpag1zJQM
rga2xlXn/K1tKbhRx0dQw70cmfAWFdQ5Vb3+DZjj8+0fxatYSjcCXyVi8zgWCQYKT+uOugvW6Toy
6ezxrQ5I1i/1rdBxhlQYX1apUNGMKQg+PR0WSMZTJBq7oXiJy1chDx3Hsu9BzmRtZioI+08rfhf5
5/64vk4R2bTKeciGGrg/tQ9JZz1mljb2F+hpHQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OGvrQZLXmvvbF71xNhKhIxNlYOSQn9IaiGgEQtrZEKAzaGZEFhQW3HaOKP9tDwC6SWAi08cVnwNa
i3ooGu2LSUjaHV5paqFPCJePlMiC7RvVsiZeoIeMNKSuMQbRXV/V64pjIfbgybi+4tFtsykOtMcz
7HcxjQieR12m6u+j69SJ0XPKTOSFly5NciTSLMqPFeG1ZB5hM+qvWA2sDgI763KIa0hn+Hgspe4w
C6n2vXendOQWYLCX7RyT3WXi263VAnnBVUg3a5HJMsb77JbS55C5umT9/R2Vd4rSBnqNWPUVAEW/
tTzBvBwoODLSNOJfgcjS0kdu1CFdZMAk+utKxA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
l4QE1lFPilOEFiSAgsuCXS+1QqidtfdVsUFWa0TeaUaHconsb/W2wymwOECbHAJeCPSb25qGXF70
zYdKre3QhnhOQmgUJrq6zEQD0vtOR+uIbBTMqqcCrIvLGSr1Pstmy5VHryqwT3cLwFnpNMc6JdnW
YJpIe1cLLXpQzYgI63IbkaFeoG/voXZKlaHLYvsfy3bbFGamhP9d0XFTCmG2rIH+MONK2NDNHk3L
uXxb4kb0BpQTokSBaa7eijFtMzOylL83qm3lwgMLXWJfviEu5IrGZMteRcxS/goms9M6tcppxKpD
cz5SR6qZWSUBV+Sp/iGDo077Jlw1rGcKVYuYEvw75XlC4shhU0cVsePD+gLvSbGxXSYlw1wMrszy
K0aWBxW3UOsfrOJDpQWivxHJBevRk0UvBsAZeQr3PyacVLy0oRa4AoP+qGGewkHXmgh6Ru0m/h5m
YFSVaDzDy5EhT1GTmwu8p5DgLTp+3j4/fOJHlQs0A38no+ow/PeDupxw

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
V3SEz7geqXxZOwMuK075Pek1VaTH0+0T67xFXbEj0R1p1ArWr67rE37zw9mbL/KHzsU9rU6GtSH6
n3YX/RolBs6VVn90TKZmtOQHdR7KLO8rAIzCxujDJyCJ+UY3Dep73U65J0hM+mGdZFyfqJh43tB/
qM0aLpv4ZzuQryvw/K8lE7lxI/+61uVSPy1tbt0eSESsrmwfOLNIuJIXy2ZoEQVyIlMxpduRj/8c
COV8gH6ZzhNYxNIApuRVGB0IBfEyVHdXfmz2Bj9OUNNYMW4AcPAC042DpY2CNtXImwDGkfIXq9LR
9BwWSTQU4u5ksR9f/nerVsVjUdgHP2HtDtTTgg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JUnFEobPhjHiQphoifJFspBcAj9OvWVD/YElPLmB1B2lDThtb9hdUJuHPggd6K6cVBrrmWAejYwz
ga38Efl3ii56/iw/HqeHgNm/9R5TJdJagEdK7cz/kzH1PFnpy5GdKS5nYltnMgh7BCwL1tZt6Xi6
UC270PXfjqdCkJqaa9sS0ZXAVjZ3Ygcft37ymYbOUEPw2Md8yzH8cj7HDV85dhLIN6micGlHX/v+
9l9D4Qlw1wOC6CBMEgDkLAGm0bVzC7IExlbjaT7AV9HL6421TY7sf83s4LKJ8j0jrM3jXEX+ajqM
AbfQKD5WTQs+T8P4DIXSo26Iz47t36ItgXTF3g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iXN3I0/ZwHuv9QT3bmEnr1Nj7aaXMd74BnEOkZOUfksygzfKXhv3Fd4mdjRKuqWhcmVTVxKmmgM9
mkYvo3XSrva5W7YOMZXhOG9ES+fHHmLV3Cw0L0DOA4CGCUM7rBBHKFlPjA4C9+WwiRavJNFE+k7L
o87LUzIOSmGda73RBpupKa+82W50e1bLU17PcRt91iRe8+vCc/Gx7GKrbvn6S0JL/IGQBinO5Zw4
1/jYkwiF8p3TV2SzJFhGdyxMaXY9HwTCNWaXNeAxwXM+DyxYhGaKUeaqAJvxMS27N6nsD0fQq+L4
6arXZozhDnpTrfFmwDUOIDnmkYwJz7EGFiIbiA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12976)
`pragma protect data_block
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
`pragma protect end_protected
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
