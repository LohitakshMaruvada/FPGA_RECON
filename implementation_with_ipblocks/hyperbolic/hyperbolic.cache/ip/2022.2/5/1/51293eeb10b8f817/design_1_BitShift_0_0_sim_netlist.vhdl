-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Nov  8 14:12:26 2024
-- Host        : GU603VV running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_BitShift_0_0_sim_netlist.vhdl
-- Design      : design_1_BitShift_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BitShift is
  port (
    shifted : out STD_LOGIC_VECTOR ( 16 downto 0 );
    sel : in STD_LOGIC;
    unshifted : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BitShift;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BitShift is
  signal \_carry__0_n_0\ : STD_LOGIC;
  signal \_carry__0_n_1\ : STD_LOGIC;
  signal \_carry__0_n_2\ : STD_LOGIC;
  signal \_carry__0_n_3\ : STD_LOGIC;
  signal \_carry__1_n_0\ : STD_LOGIC;
  signal \_carry__1_n_1\ : STD_LOGIC;
  signal \_carry__1_n_2\ : STD_LOGIC;
  signal \_carry__1_n_3\ : STD_LOGIC;
  signal \_carry__2_n_0\ : STD_LOGIC;
  signal \_carry__2_n_2\ : STD_LOGIC;
  signal \_carry__2_n_3\ : STD_LOGIC;
  signal \_carry_n_0\ : STD_LOGIC;
  signal \_carry_n_1\ : STD_LOGIC;
  signal \_carry_n_2\ : STD_LOGIC;
  signal \_carry_n_3\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal shifted0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \shifted2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \shifted2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \shifted2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \shifted2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \shifted2_carry__0_n_0\ : STD_LOGIC;
  signal \shifted2_carry__0_n_1\ : STD_LOGIC;
  signal \shifted2_carry__0_n_2\ : STD_LOGIC;
  signal \shifted2_carry__0_n_3\ : STD_LOGIC;
  signal \shifted2_carry__0_n_4\ : STD_LOGIC;
  signal \shifted2_carry__0_n_5\ : STD_LOGIC;
  signal \shifted2_carry__0_n_6\ : STD_LOGIC;
  signal \shifted2_carry__0_n_7\ : STD_LOGIC;
  signal \shifted2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \shifted2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \shifted2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \shifted2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \shifted2_carry__1_n_0\ : STD_LOGIC;
  signal \shifted2_carry__1_n_1\ : STD_LOGIC;
  signal \shifted2_carry__1_n_2\ : STD_LOGIC;
  signal \shifted2_carry__1_n_3\ : STD_LOGIC;
  signal \shifted2_carry__1_n_4\ : STD_LOGIC;
  signal \shifted2_carry__1_n_5\ : STD_LOGIC;
  signal \shifted2_carry__1_n_6\ : STD_LOGIC;
  signal \shifted2_carry__1_n_7\ : STD_LOGIC;
  signal \shifted2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \shifted2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \shifted2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \shifted2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \shifted2_carry__2_n_1\ : STD_LOGIC;
  signal \shifted2_carry__2_n_2\ : STD_LOGIC;
  signal \shifted2_carry__2_n_3\ : STD_LOGIC;
  signal \shifted2_carry__2_n_4\ : STD_LOGIC;
  signal \shifted2_carry__2_n_5\ : STD_LOGIC;
  signal \shifted2_carry__2_n_6\ : STD_LOGIC;
  signal \shifted2_carry__2_n_7\ : STD_LOGIC;
  signal shifted2_carry_i_1_n_0 : STD_LOGIC;
  signal shifted2_carry_i_2_n_0 : STD_LOGIC;
  signal shifted2_carry_i_3_n_0 : STD_LOGIC;
  signal shifted2_carry_n_0 : STD_LOGIC;
  signal shifted2_carry_n_1 : STD_LOGIC;
  signal shifted2_carry_n_2 : STD_LOGIC;
  signal shifted2_carry_n_3 : STD_LOGIC;
  signal shifted2_carry_n_4 : STD_LOGIC;
  signal shifted2_carry_n_5 : STD_LOGIC;
  signal shifted2_carry_n_6 : STD_LOGIC;
  signal shifted2_carry_n_7 : STD_LOGIC;
  signal \NLW__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_shifted2_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of shifted2_carry : label is 35;
  attribute ADDER_THRESHOLD of \shifted2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \shifted2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \shifted2_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \shifted[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \shifted[15]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \shifted[16]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \shifted[1]_INST_0\ : label is "soft_lutpair1";
begin
\_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_carry_n_0\,
      CO(2) => \_carry_n_1\,
      CO(1) => \_carry_n_2\,
      CO(0) => \_carry_n_3\,
      CYINIT => p_0_in(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => shifted0(4 downto 1),
      S(3 downto 0) => p_0_in(4 downto 1)
    );
\_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry_n_0\,
      CO(3) => \_carry__0_n_0\,
      CO(2) => \_carry__0_n_1\,
      CO(1) => \_carry__0_n_2\,
      CO(0) => \_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => shifted0(8 downto 5),
      S(3 downto 0) => p_0_in(8 downto 5)
    );
\_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \shifted2_carry__1_n_7\,
      O => p_0_in(8)
    );
\_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \shifted2_carry__0_n_4\,
      O => p_0_in(7)
    );
\_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \shifted2_carry__0_n_5\,
      O => p_0_in(6)
    );
\_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \shifted2_carry__0_n_6\,
      O => p_0_in(5)
    );
\_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__0_n_0\,
      CO(3) => \_carry__1_n_0\,
      CO(2) => \_carry__1_n_1\,
      CO(1) => \_carry__1_n_2\,
      CO(0) => \_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => shifted0(12 downto 9),
      S(3 downto 0) => p_0_in(12 downto 9)
    );
\_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \shifted2_carry__2_n_7\,
      O => p_0_in(12)
    );
\_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \shifted2_carry__1_n_4\,
      O => p_0_in(11)
    );
\_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \shifted2_carry__1_n_5\,
      O => p_0_in(10)
    );
\_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \shifted2_carry__1_n_6\,
      O => p_0_in(9)
    );
\_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__1_n_0\,
      CO(3) => \_carry__2_n_0\,
      CO(2) => \NLW__carry__2_CO_UNCONNECTED\(2),
      CO(1) => \_carry__2_n_2\,
      CO(0) => \_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW__carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => shifted0(15 downto 13),
      S(3) => '1',
      S(2 downto 0) => p_0_in(15 downto 13)
    );
\_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \shifted2_carry__2_n_4\,
      O => p_0_in(15)
    );
\_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \shifted2_carry__2_n_5\,
      O => p_0_in(14)
    );
\_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \shifted2_carry__2_n_6\,
      O => p_0_in(13)
    );
\_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shifted2_carry_n_7,
      O => p_0_in(0)
    );
\_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \shifted2_carry__0_n_7\,
      O => p_0_in(4)
    );
\_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shifted2_carry_n_4,
      O => p_0_in(3)
    );
\_carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shifted2_carry_n_5,
      O => p_0_in(2)
    );
\_carry_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => shifted2_carry_n_6,
      O => p_0_in(1)
    );
shifted2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => shifted2_carry_n_0,
      CO(2) => shifted2_carry_n_1,
      CO(1) => shifted2_carry_n_2,
      CO(0) => shifted2_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => shifted2_carry_n_4,
      O(2) => shifted2_carry_n_5,
      O(1) => shifted2_carry_n_6,
      O(0) => shifted2_carry_n_7,
      S(3) => shifted2_carry_i_1_n_0,
      S(2) => shifted2_carry_i_2_n_0,
      S(1) => shifted2_carry_i_3_n_0,
      S(0) => unshifted(0)
    );
\shifted2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => shifted2_carry_n_0,
      CO(3) => \shifted2_carry__0_n_0\,
      CO(2) => \shifted2_carry__0_n_1\,
      CO(1) => \shifted2_carry__0_n_2\,
      CO(0) => \shifted2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \shifted2_carry__0_n_4\,
      O(2) => \shifted2_carry__0_n_5\,
      O(1) => \shifted2_carry__0_n_6\,
      O(0) => \shifted2_carry__0_n_7\,
      S(3) => \shifted2_carry__0_i_1_n_0\,
      S(2) => \shifted2_carry__0_i_2_n_0\,
      S(1) => \shifted2_carry__0_i_3_n_0\,
      S(0) => \shifted2_carry__0_i_4_n_0\
    );
\shifted2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => unshifted(7),
      O => \shifted2_carry__0_i_1_n_0\
    );
\shifted2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => unshifted(6),
      O => \shifted2_carry__0_i_2_n_0\
    );
\shifted2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => unshifted(5),
      O => \shifted2_carry__0_i_3_n_0\
    );
\shifted2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => unshifted(4),
      O => \shifted2_carry__0_i_4_n_0\
    );
\shifted2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \shifted2_carry__0_n_0\,
      CO(3) => \shifted2_carry__1_n_0\,
      CO(2) => \shifted2_carry__1_n_1\,
      CO(1) => \shifted2_carry__1_n_2\,
      CO(0) => \shifted2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \shifted2_carry__1_n_4\,
      O(2) => \shifted2_carry__1_n_5\,
      O(1) => \shifted2_carry__1_n_6\,
      O(0) => \shifted2_carry__1_n_7\,
      S(3) => \shifted2_carry__1_i_1_n_0\,
      S(2) => \shifted2_carry__1_i_2_n_0\,
      S(1) => \shifted2_carry__1_i_3_n_0\,
      S(0) => \shifted2_carry__1_i_4_n_0\
    );
\shifted2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => unshifted(11),
      O => \shifted2_carry__1_i_1_n_0\
    );
\shifted2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => unshifted(10),
      O => \shifted2_carry__1_i_2_n_0\
    );
\shifted2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => unshifted(9),
      O => \shifted2_carry__1_i_3_n_0\
    );
\shifted2_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => unshifted(8),
      O => \shifted2_carry__1_i_4_n_0\
    );
\shifted2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \shifted2_carry__1_n_0\,
      CO(3) => \NLW_shifted2_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \shifted2_carry__2_n_1\,
      CO(1) => \shifted2_carry__2_n_2\,
      CO(0) => \shifted2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \shifted2_carry__2_n_4\,
      O(2) => \shifted2_carry__2_n_5\,
      O(1) => \shifted2_carry__2_n_6\,
      O(0) => \shifted2_carry__2_n_7\,
      S(3) => \shifted2_carry__2_i_1_n_0\,
      S(2) => \shifted2_carry__2_i_2_n_0\,
      S(1) => \shifted2_carry__2_i_3_n_0\,
      S(0) => \shifted2_carry__2_i_4_n_0\
    );
\shifted2_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => unshifted(15),
      O => \shifted2_carry__2_i_1_n_0\
    );
\shifted2_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => unshifted(14),
      O => \shifted2_carry__2_i_2_n_0\
    );
\shifted2_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => unshifted(13),
      O => \shifted2_carry__2_i_3_n_0\
    );
\shifted2_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => unshifted(12),
      O => \shifted2_carry__2_i_4_n_0\
    );
shifted2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => unshifted(3),
      O => shifted2_carry_i_1_n_0
    );
shifted2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => unshifted(2),
      O => shifted2_carry_i_2_n_0
    );
shifted2_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => unshifted(1),
      O => shifted2_carry_i_3_n_0
    );
\shifted[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => sel,
      I1 => shifted2_carry_n_7,
      I2 => unshifted(15),
      I3 => unshifted(0),
      O => shifted(0)
    );
\shifted[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => sel,
      I1 => shifted0(10),
      I2 => unshifted(15),
      I3 => unshifted(10),
      O => shifted(10)
    );
\shifted[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => sel,
      I1 => shifted0(11),
      I2 => unshifted(15),
      I3 => unshifted(11),
      O => shifted(11)
    );
\shifted[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => sel,
      I1 => shifted0(12),
      I2 => unshifted(15),
      I3 => unshifted(12),
      O => shifted(12)
    );
\shifted[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => sel,
      I1 => shifted0(13),
      I2 => unshifted(15),
      I3 => unshifted(13),
      O => shifted(13)
    );
\shifted[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => sel,
      I1 => shifted0(14),
      I2 => unshifted(15),
      I3 => unshifted(14),
      O => shifted(14)
    );
\shifted[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => sel,
      I1 => unshifted(15),
      I2 => shifted0(15),
      O => shifted(15)
    );
\shifted[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \_carry__2_n_0\,
      I1 => unshifted(15),
      I2 => sel,
      O => shifted(16)
    );
\shifted[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => sel,
      I1 => shifted0(1),
      I2 => unshifted(15),
      I3 => unshifted(1),
      O => shifted(1)
    );
\shifted[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => sel,
      I1 => shifted0(2),
      I2 => unshifted(15),
      I3 => unshifted(2),
      O => shifted(2)
    );
\shifted[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => sel,
      I1 => shifted0(3),
      I2 => unshifted(15),
      I3 => unshifted(3),
      O => shifted(3)
    );
\shifted[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => sel,
      I1 => shifted0(4),
      I2 => unshifted(15),
      I3 => unshifted(4),
      O => shifted(4)
    );
\shifted[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => sel,
      I1 => shifted0(5),
      I2 => unshifted(15),
      I3 => unshifted(5),
      O => shifted(5)
    );
\shifted[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => sel,
      I1 => shifted0(6),
      I2 => unshifted(15),
      I3 => unshifted(6),
      O => shifted(6)
    );
\shifted[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => sel,
      I1 => shifted0(7),
      I2 => unshifted(15),
      I3 => unshifted(7),
      O => shifted(7)
    );
\shifted[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => sel,
      I1 => shifted0(8),
      I2 => unshifted(15),
      I3 => unshifted(8),
      O => shifted(8)
    );
\shifted[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF40"
    )
        port map (
      I0 => sel,
      I1 => shifted0(9),
      I2 => unshifted(15),
      I3 => unshifted(9),
      O => shifted(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    sel : in STD_LOGIC;
    unshifted : in STD_LOGIC_VECTOR ( 15 downto 0 );
    shifted : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_BitShift_0_0,BitShift,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "BitShift,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^shifted\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  shifted(31) <= \^shifted\(31);
  shifted(30) <= \^shifted\(31);
  shifted(29) <= \^shifted\(31);
  shifted(28) <= \^shifted\(31);
  shifted(27) <= \^shifted\(31);
  shifted(26) <= \^shifted\(31);
  shifted(25) <= \^shifted\(31);
  shifted(24) <= \^shifted\(31);
  shifted(23) <= \^shifted\(31);
  shifted(22) <= \^shifted\(31);
  shifted(21) <= \^shifted\(31);
  shifted(20) <= \^shifted\(31);
  shifted(19) <= \^shifted\(31);
  shifted(18) <= \^shifted\(31);
  shifted(17) <= \^shifted\(31);
  shifted(16) <= \^shifted\(31);
  shifted(15 downto 0) <= \^shifted\(15 downto 0);
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_BitShift
     port map (
      sel => sel,
      shifted(16) => \^shifted\(31),
      shifted(15 downto 0) => \^shifted\(15 downto 0),
      unshifted(15 downto 0) => unshifted(15 downto 0)
    );
end STRUCTURE;
