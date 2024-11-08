set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property PACKAGE_PIN W5 [get_ports clk]

create_clock -period 7.200 -name clk -waveform {0.000 3.600} -add [get_ports clk]

