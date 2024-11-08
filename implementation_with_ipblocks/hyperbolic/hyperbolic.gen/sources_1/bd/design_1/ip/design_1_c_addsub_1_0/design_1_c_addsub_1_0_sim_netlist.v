// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Nov  8 14:12:34 2024
// Host        : GU603VV running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lohitaksh/FPGA_project/hyperbolic/hyperbolic.gen/sources_1/bd/design_1/ip/design_1_c_addsub_1_0/design_1_c_addsub_1_0_sim_netlist.v
// Design      : design_1_c_addsub_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_addsub_1_0,c_addsub_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_14,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_c_addsub_1_0
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
  design_1_c_addsub_1_0_c_addsub_v12_0_14 U0
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
M0cXy/s1NY6xK84AsWO/0EeMvcLWIOr+dYrzFyvY6oFFu+95DyA4EP2M7aVznz2NSklQi25i79Nv
J3vjCOv/MSxOMZ3lkQD1XwomaYemEfd8dK40bct4CLAlJIiKJn7b6QJcC3CBY1gS+YtH1rIRIgDA
5uaa7kOTfaye95TkHnDd6MnWRAx0kRZTj9IBxrMw3sJ6hYzu1vMcPZYYH6WvP7webbaWzPHeM8cS
9J7P6iCjyY+x8GDaiIriiqjDcB7NnfNbZw9LVeRNjuOpkMgrPaEU09vcuFwQVj+6nO7D2jFkayeU
9UVxoBbU94qcBnxKvA3FvZUh64v+QcIaleUnnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HCsMskOYdcHxqDJ8akbofgaF9OIhyBPDkvY/mlZms/0AxR9WRWGK05XrYJ1eyM0wt11QJUg+yOBL
J/Y9bzpww2Wvej3tXdqVeL5o0CVVE++99sRQh4qmp0eKlLfIWvDlWRmr7YhY/jkkxNDjAHu8rGPL
WhcSjxfUJ7Bsd8xTyv1xafWAAkI8SLZ66g4E8dAn17wty3NJG01v8bbBrZGo6yNRhRQHdZFtJFqD
stUh5AoV630WYR+YJV+2vxQ6xDQNcUEm0fvfDiKWw0iG6q3Tbk2hZmEz5SloU0ZMKQ0bhhmodK6q
VKt+4HXswaJUJBoOUvtDVTUw7rHp4GcgvtO5ng==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15360)
`pragma protect data_block
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
+3rcQjRJc1LtSMhroJpS+zeU34LZMKrBZE8Q
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
