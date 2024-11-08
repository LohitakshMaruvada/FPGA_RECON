// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Nov  8 14:12:32 2024
// Host        : GU603VV running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_xbip_multadd_0_0_sim_netlist.v
// Design      : design_1_xbip_multadd_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_xbip_multadd_0_0,xbip_multadd_v3_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_multadd_v3_0_17,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_multadd_v3_0_17 U0
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
T4VaL06tLnAjhl6syyuk6pvkd3VBhoqHHIA2jSxu96AvU3CL61DccqeoSKz4XM7I1l11a/k0K3Lv
C2rbtOSOrV9EaEHTPdPOl0LHesIozNkNKkwCIPa92jYkBsFJpE+DY5TQdjVmukSAyZ28Rgu/hY5g
FJFyHDvesKSDxBLn7cDZ7YKCVrR5340W3IvQNnq2V9iBTGywmt6BkKIhSN+bbkmgoP+kjwwv9er4
xsCqqfQiKeeHKmz4+jHEVMwVaZhjcQSTy0HLQaSSjdczxNWi4a09KSEMvhDIhVb34TxzGHsGLXy5
hTkcVT/hfTeCSak5XEIntytBRv/XGQK2DsbZvA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
e16y5U5d4cqDFEd4pRhfzYMeX6JhZysDnN1tyXHuwZR2zAYxWE7q68Q/85zzRmTs+wjAT9nWkvWq
1jlDuHs1JqFZH0HNZ4g/dEwex8jj53N8aNtUo/AAXWGKYbfuC1w5GOsSolmTySa+4wVZs0RSd9/G
c8jT6mMZj+JIVuLhv28HKuHL4Xn2S771oAyQ0uNP0gQElhbQKcyKmTh2rYSgplWte2LubkGKxHRe
+iLLf1qlu1ZmAjA2ledhiN998bH8sVennZPJ0wSssiA0/Z45VJ/zRkCcTa13fKy5XqjPYgb5M01u
doQRNnYFe0zac/2DQagit45KpiOBd/SuxkN48Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12864)
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
