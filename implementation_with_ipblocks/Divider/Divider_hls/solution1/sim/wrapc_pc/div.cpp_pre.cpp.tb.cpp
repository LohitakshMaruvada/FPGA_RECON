// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "/home/lohitaksh/FPGA_project/Divider/div.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/home/lohitaksh/FPGA_project/Divider/div.cpp"
# 1 "/home/lohitaksh/FPGA_project/Divider/div.h" 1



float div(int in1, int in2);
# 2 "/home/lohitaksh/FPGA_project/Divider/div.cpp" 2

float div(int a, int b){
 float af = (float)a;
 float bf = (float)b;

 return af/bf;
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
float apatb_div_ir(int, int);
#ifdef __cplusplus
extern "C"
#endif
float div_hw_stub(int a, int b){
float _ret = div(a, b);
return _ret;
}
#ifdef __cplusplus
extern "C"
#endif
float apatb_div_sw(int a, int b){
float _ret = apatb_div_ir(a, b);
return _ret;
}
#endif
# 8 "/home/lohitaksh/FPGA_project/Divider/div.cpp"

