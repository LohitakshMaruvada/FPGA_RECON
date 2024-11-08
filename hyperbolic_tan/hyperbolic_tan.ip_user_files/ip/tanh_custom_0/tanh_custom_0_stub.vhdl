-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Mon Nov  4 00:33:04 2024
-- Host        : LAPTOP-HO0MVFJA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/chait/OneDrive/Desktop/FPGA/Project/tanh/hyperbolic_tan/hyperbolic_tan.gen/sources_1/ip/tanh_custom_0/tanh_custom_0_stub.vhdl
-- Design      : tanh_custom_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tanh_custom_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 );
    angle : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end tanh_custom_0;

architecture stub of tanh_custom_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_return[31:0],angle[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "tanh_custom,Vivado 2022.2";
begin
end;
