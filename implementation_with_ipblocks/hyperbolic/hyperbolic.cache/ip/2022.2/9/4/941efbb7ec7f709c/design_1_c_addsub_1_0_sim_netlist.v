// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Nov  8 14:12:33 2024
// Host        : GU603VV running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_c_addsub_1_0_sim_netlist.v
// Design      : design_1_c_addsub_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_addsub_1_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 16}" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 16}" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire CE;
  wire CLK;
  wire [15:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_14 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KdkdvVsuosc8qR9X5PxQ/ghTeTrEz4qKVuenhDR9wRSL/BO/mhSwQtiFj74UO0sGv0zvjAntaq/3
l2/v8gOiVKmM666gbk/2UCISA4OFA3FDR9jYmiXdNXb2qHeS1ywQz5n/sTR5iu4KFEfwrl3IXtQw
aEiGegL+CQMaovJsto4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pZCj3qT3VD1SCS5RiZExsqqu16KpMtHXilQL9p5/eBl7qrfQjT1VhFtVbYUusepbChjsCCmCn7hr
72SuHmOmDWG78UARN7MLdO/+sePuyS06ak4nAw5xwjT0g+9970uMWYKvTeeYqoz2i+k+zX60Cuvu
iwBfxWM22DqukHlYzbEFWhNyXIkgJe71p67vGdXBmqu4/2wmlwGApqBxlwR+alwZ9UGHlxNQS4N5
z1wHu3Cp8LwGRjlaXjElcY8RDpvyz5l59ey8ar5HXR9Zqf6e1unE2NdhzHhEGRerRFXoKZppk1HB
6kIEY4EHAWz+HvPcqoP9eoYKDazoAGkJRVP6YA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gLgm7VvY3cNcNvdXvikCQd2nRniE4ae4hePOcAUlPDMoHDzQAD7Ngo12MGFns9JNPcCaUXfAmxL2
JNGojjrDRUWrv8FPV6FOEbDHs96fef8+gqLF4OqLck4kWpKhnJwaJjjzQirvXEzZxP+GsBKnkSp8
ceVlZJwP0F6XRv+RpQA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GeZP242oKQSNuofqDs4oIIXZEufPhRVrlFFeRSLY4VCxhMEMwfPrNXe33xO0zIEBoPW2X9mvUoTY
izdWQEtWImFzjzPCjkSLhEdIMmUBH02Y+Tw3eW5x23T0cK96pmoV2MH8kl99I27MN6stVd977fuB
Mjao5MnSXIGZ/uXGtgfUO9Zjs4/2wGmsI2/lANN2WOL9Sz4xeA8k40c2dNYgxgHoCwx8Ya/RYIZS
Cpuvzq4ZyFSNT/kMXnUmqj75/flpXT3mmyW+frexux3j9PxpKHmxAE9crvDx85rMamGiA4ftl+ac
H0FtL2cBqdlP60x+FjqleWCJoN6AYdxA0YZaeg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
URmEGftuxvv0+tViRUdsFNnPXucZlVDfUQpjjXkpOA38QUzsIL9j1pGGp9doC4jcg/9MD149BTSw
vAG8684a3k+Tx/8sFGl/viK1q8ty9nktEABSahv8Etm5ZJVAzQJT7EaOzrYqyywSwabogvGUmN/7
DE3eOn6+sMCiMl6BLUhYyK39ntTWNFYVPiheclbBb36V1vzMOQl0mvPuS4hDXqba/+qBZXhqeYWK
ceNfwci6SsRRef6hLF/1S+20r2uBxJeYJjyfWGGFEGfxlAOz1MiYUUR/bEHWnbjwIcJTBHQNRdq4
4Ryb+iPuKcsXU/8ApD14i6ScW+VBPWSqnH9w+A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NtQgA3rUKfJt+21sTot44yr4gmte57FoFl8Q/327tsRJeEyNAiwWZaZN2mbo2NFcvyN2GhDw6avJ
NsF1Oxs36P8shoqOOiloWWrdTcyAdMhdk+UjeZgKcNSqd4Js87w/5LVQTwjB2mcBDfe1jrivv+IW
ZRBC8NvlW5z/1wF7+vzXRMziLQYeOkLB0OkpIY+eT5cZXDKuZ+4l0FMPjd+El96JGAEHG7Q0qS3F
OEApYEp8+nSZnragoytq4pkhVJEC22ye0hBhoBClJpszCcg0u+Ugf+mYZsj8BC2uqSY6Hh/gpjjw
enQ7aEYBaUR7GCwQN7fZmNhZYtBkyvNqydRQcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CpIFM8Y8dBmpjtOVnOKcfppEFV+c1cRgsQtewNUe+5apiLDoRCdMyTqoCay7nz+Xagc0OvfZDg/Y
jSTsDjKVcEIyxOfix7iwjKW8Rz+a5wBIatI8wfCo7uLtuucz9otOWWI7BFQ2gn4VdQ73HJJlZMMY
OyEOd33tGjNSjxz3W07knDr1FwTE3BOfhq+Qj2ErnuV1dQbrTb3MiQMTnHaTCwtz6ip0pD6b5G4K
kBRUYe+UNXCMvSfNIN9MPSmolO4MjNwM5gnZZqLcR1hGuzH/Yeb/jPnhsZ7jFvlTT3nsM9JzMRAE
QwlzVuulHKQDS2I96arFosYPYMsalmn6CQW0gg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
qinIxHFISC9r9LS7OKOuYVGM5EBkuuQNV1nDRui+QVNLn2QFCrWPeEClQIlNViKOt8MX9urHvu4e
l2L+eZKw6+St9cW9yUsYu36yoB4LqwG+vKvfR9CW82LGPyMAxdgk/p3n+F0Xp9Y2HaERwWDL99tW
V7cDvLLhyIwz7w4rI0BWWV+KMjXP2F5MNgykzZn7tzV8oY6MxOykFqRdI8DLAdlYGAs90wjJ3x84
S3fHciSox97FYpDi64v31Vb4RmRrwueXcvCc3w8gzjuwg7qraWLMYyPB+mERB2v1htX80PsWWVHE
QXkWiHWYvvrXEykUS04MmLNHpV8ZgBXO/NBEGn7mrITDEswk3u1Yviqy7CW2wLPQBoo5xW+uiu2e
8YZV/E+bAt+P/EH5RsC9alBgtuVKU1s9DaiEH8eUPEgJQ/TXwQW01pg8ECTYgiBS+IQSbld23aq3
goVo0ZMzRu/SA00Jmwt7upvsMkh9Q+2732ahu1FmlSNmyNGB1+bYf782

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T1jqx5hmzZZMhPApzUC1oZLMAkHma8Ki4b2CvLNqxSn+MNWoTPomvQ775DMBEDai/gahYALsohdX
0f/e6LuPqt4zYtyAzmH+nRgOG/tilS1J674KsaHxudAfo4sM3awB/C4Q3VdYsO9FgvPQylnYKSGE
gJ46W+1Y789VQqPbt4dpnprhix6sLlwfww7We6cq2wu4PilFzovejouUBZqNMZHYi4suKcMcenp3
C7QRKloo8IF9yKrhGPcRJLQt2nus3bI0Q3ICxRk13Nrfhh/z4cdm0OGXz42q44snFEVy1lLxPOs7
W9tSe5ag3923oCT4NGGgK/gMTx5qXxFhV2MJUw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OADmG2uked2yb2GQJ7Jr5yCmhFuyVa/LZqk+Kvr5wGWeV1+s1SIMftXVSx2MEVuFXkflt+QfhFl1
eFCSNbVW7CANfgEu82XI0z6wWvxDwXO/vKXlWTCv3yqRv0SJvw2deV57NyM3deIsg/1+wnIHjzTC
z+caji/zWLdiLDcT3NqFAD4f3CJA+vYXDVz6JXVpJJ0rHeEUXu6AxmajS9j6Rd7bIS53LyfRrDKQ
yHAn78DKGxOB4YjU+3OAORGlcoEeDo0GPdnqETOu8cDjCcDy+IbhhPgvota97qC3lAWvXMwVwKxT
nr4Szx7MUklNxhV/ZAenaUTdCRidfYp3UB4/mA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KeeP+TEekWY/DdZFGZ81YoC2gwpkEDPyuzbReSo0xTw7VHwJE7/1k/+JzaMdh/Wb8dOV7WEF2rBP
TJ1GM8UFxxH8qAKgWa1eo2EbBjdphHqLwJp9tMOrFniPCW+uVbUh0O3m0VtJaFGYK67RStuoVqkB
uwZ3RSilnMU3yD2j2oSOP9MvveMy2CTzUMUh/RimHNHGV+MPcWlR1+zkr+w7qM+4SiHxyHDQA0B2
eDa+2syNYfvOy5tXC9xdfNtkVuxqbYbA+RSl7TfvwnJ4z0CnGqyHTLp33i5VisdKLMYuwPM89ww4
/Ard38U5puGl3zDBJOooXAb9kvd2cZVgMn6bgA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15280)
`pragma protect data_block
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
LLuMWQ==
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
