-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Nov  8 14:12:24 2024
-- Host        : GU603VV running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/lohitaksh/FPGA_project/hyperbolic/hyperbolic.gen/sources_1/bd/design_1/ip/design_1_splitter_0_0/design_1_splitter_0_0_sim_netlist.vhdl
-- Design      : design_1_splitter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_splitter_0_0 is
  port (
    mix : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sinh : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cosh : out STD_LOGIC_VECTOR ( 31 downto 16 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_splitter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_splitter_0_0 : entity is "design_1_splitter_0_0,splitter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_splitter_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_splitter_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_splitter_0_0 : entity is "splitter,Vivado 2022.2";
end design_1_splitter_0_0;

architecture STRUCTURE of design_1_splitter_0_0 is
  signal \^mix\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^mix\(31 downto 0) <= mix(31 downto 0);
  cosh(31 downto 16) <= \^mix\(15 downto 0);
  sinh(15 downto 0) <= \^mix\(31 downto 16);
end STRUCTURE;
