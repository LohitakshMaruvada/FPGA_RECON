-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity tanh_custom_tanh_custom_Pipeline_VITIS_LOOP_14_1_tanh_custom_tanh_in_ROM_AUTO_1R is 
    generic(
             DataWidth     : integer := 32; 
             AddressWidth     : integer := 4; 
             AddressRange    : integer := 13
    ); 
    port (
 
          address0        : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0             : in std_logic; 
          q0              : out std_logic_vector(DataWidth-1 downto 0);

          reset               : in std_logic;
          clk                 : in std_logic
    ); 
end entity; 


architecture rtl of tanh_custom_tanh_custom_Pipeline_VITIS_LOOP_14_1_tanh_custom_tanh_in_ROM_AUTO_1R is 
 
signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 

signal mem0 : mem_array := (
    0 => "00111111000011001000101101000100", 1 => "00111110100000101000111101011100", 2 => "00111110000000000000000000000000", 3 => "00111101011111011111001110110110", 
    4 => "00111100111111011111001110110110", 5 => "00111100011101011100001010001111", 6 => "00111011111111111001011100100100", 7 => "00111011011111111001011100100100", 
    8 => "00111010111110010000100101101100", 9 => "00111010011111100100011110011001", 10 => "00111001111110111010100010000010", 11 => "00111001011110111010100010000010", 
    12 => "00000000000000000000000000000000");



begin 

 
memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
 
        if (ce0 = '1') then  
            q0 <= mem0(CONV_INTEGER(address0_tmp)); 
        end if;

end if;
end process;

end rtl;

