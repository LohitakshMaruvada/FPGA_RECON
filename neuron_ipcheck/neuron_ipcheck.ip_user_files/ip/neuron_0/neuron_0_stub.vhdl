-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Nov  8 02:56:24 2024
-- Host        : LAPTOP-HO0MVFJA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/chait/OneDrive/Desktop/FPGA/Project/tanh/neuron_ipcheck/neuron_ipcheck.gen/sources_1/ip/neuron_0/neuron_0_stub.vhdl
-- Design      : neuron_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity neuron_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 );
    angle : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end neuron_0;

architecture stub of neuron_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_return[31:0],angle[31:0],sel[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "neuron,Vivado 2022.2";
begin
end;
