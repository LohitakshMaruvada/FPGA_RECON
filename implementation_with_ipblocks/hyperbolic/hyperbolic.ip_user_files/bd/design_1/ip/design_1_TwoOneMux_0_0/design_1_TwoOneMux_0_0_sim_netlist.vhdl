-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Nov  8 14:12:28 2024
-- Host        : GU603VV running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/lohitaksh/FPGA_project/hyperbolic/hyperbolic.gen/sources_1/bd/design_1/ip/design_1_TwoOneMux_0_0/design_1_TwoOneMux_0_0_sim_netlist.vhdl
-- Design      : design_1_TwoOneMux_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_TwoOneMux_0_0_TwoOneMux is
  port (
    val : out STD_LOGIC_VECTOR ( 15 downto 0 );
    in2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_TwoOneMux_0_0_TwoOneMux : entity is "TwoOneMux";
end design_1_TwoOneMux_0_0_TwoOneMux;

architecture STRUCTURE of design_1_TwoOneMux_0_0_TwoOneMux is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \val[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \val[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \val[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \val[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \val[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \val[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \val[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \val[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \val[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \val[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \val[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \val[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \val[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \val[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \val[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \val[9]_INST_0\ : label is "soft_lutpair4";
begin
\val[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2(0),
      I1 => in1(0),
      I2 => sel,
      O => val(0)
    );
\val[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2(10),
      I1 => in1(10),
      I2 => sel,
      O => val(10)
    );
\val[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2(11),
      I1 => in1(11),
      I2 => sel,
      O => val(11)
    );
\val[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2(12),
      I1 => in1(12),
      I2 => sel,
      O => val(12)
    );
\val[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2(13),
      I1 => in1(13),
      I2 => sel,
      O => val(13)
    );
\val[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2(14),
      I1 => in1(14),
      I2 => sel,
      O => val(14)
    );
\val[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2(15),
      I1 => in1(15),
      I2 => sel,
      O => val(15)
    );
\val[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2(1),
      I1 => in1(1),
      I2 => sel,
      O => val(1)
    );
\val[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2(2),
      I1 => in1(2),
      I2 => sel,
      O => val(2)
    );
\val[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2(3),
      I1 => in1(3),
      I2 => sel,
      O => val(3)
    );
\val[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2(4),
      I1 => in1(4),
      I2 => sel,
      O => val(4)
    );
\val[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2(5),
      I1 => in1(5),
      I2 => sel,
      O => val(5)
    );
\val[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2(6),
      I1 => in1(6),
      I2 => sel,
      O => val(6)
    );
\val[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2(7),
      I1 => in1(7),
      I2 => sel,
      O => val(7)
    );
\val[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2(8),
      I1 => in1(8),
      I2 => sel,
      O => val(8)
    );
\val[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2(9),
      I1 => in1(9),
      I2 => sel,
      O => val(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_TwoOneMux_0_0 is
  port (
    in1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel : in STD_LOGIC;
    val : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_TwoOneMux_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_TwoOneMux_0_0 : entity is "design_1_TwoOneMux_0_0,TwoOneMux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_TwoOneMux_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_TwoOneMux_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_TwoOneMux_0_0 : entity is "TwoOneMux,Vivado 2022.2";
end design_1_TwoOneMux_0_0;

architecture STRUCTURE of design_1_TwoOneMux_0_0 is
begin
inst: entity work.design_1_TwoOneMux_0_0_TwoOneMux
     port map (
      in1(15 downto 0) => in1(15 downto 0),
      in2(15 downto 0) => in2(15 downto 0),
      sel => sel,
      val(15 downto 0) => val(15 downto 0)
    );
end STRUCTURE;
