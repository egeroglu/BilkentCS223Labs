
## Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]
    set_property IOSTANDARD LVCMOS33 [get_ports clk]
    create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

set_property PACKAGE_PIN V17 [get_ports {rst}]
    set_property IOSTANDARD LVCMOS33 [get_ports {rst}]
set_property PACKAGE_PIN T1 [get_ports {Sb}]
    set_property IOSTANDARD LVCMOS33 [get_ports {Sb}]
set_property PACKAGE_PIN R2 [get_ports {Sa}]
    set_property IOSTANDARD LVCMOS33 [get_ports {Sa}]

set_property PACKAGE_PIN U16 [get_ports {La[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {La[0]}]
set_property PACKAGE_PIN E19 [get_ports {La[1]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {La[1]}]
set_property PACKAGE_PIN U19 [get_ports {La[2]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {La[2]}]
set_property PACKAGE_PIN V19 [get_ports {Lb[0]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {Lb[0]}]
set_property PACKAGE_PIN W18 [get_ports {Lb[1]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {Lb[1]}]
set_property PACKAGE_PIN U15 [get_ports {Lb[2]}]
    set_property IOSTANDARD LVCMOS33 [get_ports {Lb[2]}]