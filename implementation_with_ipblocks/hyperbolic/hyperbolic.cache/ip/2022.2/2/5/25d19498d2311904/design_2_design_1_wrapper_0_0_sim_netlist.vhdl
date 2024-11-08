-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Nov  8 14:13:12 2024
-- Host        : GU603VV running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_2_design_1_wrapper_0_0_sim_netlist.vhdl
-- Design      : design_2_design_1_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1 is
  port (
    a : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ap_done : out STD_LOGIC;
    b : in STD_LOGIC_VECTOR ( 8 downto 0 );
    c : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    sel : in STD_LOGIC;
    tanh : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1 : entity is "design_1.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1 is
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_BitShift_0_0 is
  port (
    sel : in STD_LOGIC;
    unshifted : in STD_LOGIC_VECTOR ( 15 downto 0 );
    shifted : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_BitShift_0_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_BitShift_1_0 is
  port (
    sel : in STD_LOGIC;
    unshifted : in STD_LOGIC_VECTOR ( 15 downto 0 );
    shifted : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_BitShift_1_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_TwoOneMux_0_0 is
  port (
    in1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel : in STD_LOGIC;
    val : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_TwoOneMux_0_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_TwoOneMux_0_1 is
  port (
    in1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel : in STD_LOGIC;
    val : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_TwoOneMux_0_1;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_c_addsub_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_c_addsub_0_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_c_addsub_1_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_c_addsub_1_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_cordic_0_0 is
  port (
    aclk : in STD_LOGIC;
    s_axis_phase_tvalid : in STD_LOGIC;
    s_axis_phase_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_cordic_0_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_div_0_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 );
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_div_0_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_splitter_0_0 is
  port (
    mix : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sinh : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cosh : out STD_LOGIC_VECTOR ( 31 downto 16 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_splitter_0_0;
  component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_xbip_multadd_0_0 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 8 downto 0 );
    B : in STD_LOGIC_VECTOR ( 8 downto 0 );
    C : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SUBTRACT : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 15 downto 0 );
    PCOUT : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
  end component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_xbip_multadd_0_0;
  signal BitShift_0_shifted : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal BitShift_1_shifted : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TwoOneMux_0_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal TwoOneMux_1_val : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal c_addsub_0_S : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal c_addsub_1_S : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cordic_0_m_axis_dout_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal splitter_0_cosh : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal splitter_0_sinh : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xbip_multadd_0_P : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_cordic_0_m_axis_dout_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_div_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_div_0_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_xbip_multadd_0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of BitShift_0 : label is "BitShift,Vivado 2022.2";
  attribute X_CORE_INFO of BitShift_1 : label is "BitShift,Vivado 2022.2";
  attribute X_CORE_INFO of TwoOneMux_0 : label is "TwoOneMux,Vivado 2022.2";
  attribute X_CORE_INFO of TwoOneMux_1 : label is "TwoOneMux,Vivado 2022.2";
  attribute X_CORE_INFO of c_addsub_0 : label is "c_addsub_v12_0_14,Vivado 2022.2";
  attribute X_CORE_INFO of c_addsub_1 : label is "c_addsub_v12_0_14,Vivado 2022.2";
  attribute X_CORE_INFO of cordic_0 : label is "cordic_v6_0_18,Vivado 2022.2";
  attribute X_CORE_INFO of div_0 : label is "div,Vivado 2022.2";
  attribute X_CORE_INFO of splitter_0 : label is "splitter,Vivado 2022.2";
  attribute X_CORE_INFO of xbip_multadd_0 : label is "xbip_multadd_v3_0_17,Vivado 2022.2";
begin
BitShift_0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_BitShift_0_0
     port map (
      sel => sel,
      shifted(31 downto 0) => BitShift_0_shifted(31 downto 0),
      unshifted(15 downto 0) => TwoOneMux_0_out(15 downto 0)
    );
BitShift_1: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_BitShift_1_0
     port map (
      sel => sel,
      shifted(31 downto 0) => BitShift_1_shifted(31 downto 0),
      unshifted(15 downto 0) => TwoOneMux_1_val(15 downto 0)
    );
TwoOneMux_0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_TwoOneMux_0_0
     port map (
      in1(15 downto 0) => splitter_0_cosh(31 downto 16),
      in2(15 downto 0) => c_addsub_1_S(15 downto 0),
      sel => sel,
      val(15 downto 0) => TwoOneMux_0_out(15 downto 0)
    );
TwoOneMux_1: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_TwoOneMux_0_1
     port map (
      in1(15 downto 0) => splitter_0_sinh(15 downto 0),
      in2(15 downto 0) => c_addsub_0_S(15 downto 0),
      sel => sel,
      val(15 downto 0) => TwoOneMux_1_val(15 downto 0)
    );
c_addsub_0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_c_addsub_0_0
     port map (
      A(15 downto 0) => splitter_0_cosh(31 downto 16),
      B(15 downto 0) => splitter_0_sinh(15 downto 0),
      CE => '1',
      CLK => clk,
      S(15 downto 0) => c_addsub_0_S(15 downto 0)
    );
c_addsub_1: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_c_addsub_1_0
     port map (
      A(15 downto 0) => c_addsub_0_S(15 downto 0),
      B(15 downto 0) => B"0100000000000000",
      CE => '1',
      CLK => clk,
      S(15 downto 0) => c_addsub_1_S(15 downto 0)
    );
cordic_0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_cordic_0_0
     port map (
      aclk => clk,
      m_axis_dout_tdata(31 downto 0) => cordic_0_m_axis_dout_tdata(31 downto 0),
      m_axis_dout_tvalid => NLW_cordic_0_m_axis_dout_tvalid_UNCONNECTED,
      s_axis_phase_tdata(15 downto 0) => xbip_multadd_0_P(15 downto 0),
      s_axis_phase_tvalid => '0'
    );
div_0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_div_0_0
     port map (
      a(31 downto 0) => BitShift_1_shifted(31 downto 0),
      ap_clk => clk,
      ap_done => ap_done,
      ap_idle => NLW_div_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_div_0_ap_ready_UNCONNECTED,
      ap_return(31 downto 0) => tanh(31 downto 0),
      ap_rst => '0',
      ap_start => '1',
      b(31 downto 0) => BitShift_0_shifted(31 downto 0)
    );
splitter_0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_splitter_0_0
     port map (
      cosh(31 downto 16) => splitter_0_cosh(31 downto 16),
      mix(31 downto 0) => cordic_0_m_axis_dout_tdata(31 downto 0),
      sinh(15 downto 0) => splitter_0_sinh(15 downto 0)
    );
xbip_multadd_0: component decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_xbip_multadd_0_0
     port map (
      A(8 downto 0) => a(8 downto 0),
      B(8 downto 0) => b(8 downto 0),
      C(15 downto 0) => c(15 downto 0),
      CE => '1',
      CLK => clk,
      P(15 downto 0) => xbip_multadd_0_P(15 downto 0),
      PCOUT(47 downto 0) => NLW_xbip_multadd_0_PCOUT_UNCONNECTED(47 downto 0),
      SCLR => '0',
      SUBTRACT => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_wrapper is
  port (
    ap_done : out STD_LOGIC;
    tanh : out STD_LOGIC_VECTOR ( 31 downto 0 );
    a : in STD_LOGIC_VECTOR ( 8 downto 0 );
    b : in STD_LOGIC_VECTOR ( 8 downto 0 );
    c : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    sel : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_wrapper is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1_i : label is "design_1.hwdef";
begin
design_1_i: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1
     port map (
      a(8 downto 0) => a(8 downto 0),
      ap_done => ap_done,
      b(8 downto 0) => b(8 downto 0),
      c(15 downto 0) => c(15 downto 0),
      clk => clk,
      sel => sel,
      tanh(31 downto 0) => tanh(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    a : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ap_done : out STD_LOGIC;
    b : in STD_LOGIC_VECTOR ( 8 downto 0 );
    c : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    sel : in STD_LOGIC;
    tanh : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_2_design_1_wrapper_0_0,design_1_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_wrapper,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_wrapper
     port map (
      a(8 downto 0) => a(8 downto 0),
      ap_done => ap_done,
      b(8 downto 0) => b(8 downto 0),
      c(15 downto 0) => c(15 downto 0),
      clk => clk,
      sel => sel,
      tanh(31 downto 0) => tanh(31 downto 0)
    );
end STRUCTURE;
