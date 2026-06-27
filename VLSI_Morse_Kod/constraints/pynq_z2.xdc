## ---------------------------------------------------------------------------
## Sistemski takt - PL-only 125MHz oscilator
## ---------------------------------------------------------------------------
set_property -dict { PACKAGE_PIN H16 IOSTANDARD LVCMOS33 } [get_ports { clk }]
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { clk }]

## ---------------------------------------------------------------------------
## Push Buttons (BTN0 - BTN3)
## ---------------------------------------------------------------------------
set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports { button0 }]; #BTN0 - tacka
set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports { button1 }]; #BTN1 - crta
set_property -dict { PACKAGE_PIN L20   IOSTANDARD LVCMOS33 } [get_ports { button2 }]; #BTN2 - reset
set_property -dict { PACKAGE_PIN L19   IOSTANDARD LVCMOS33 } [get_ports { button3 }]; #BTN3 - enter

## ---------------------------------------------------------------------------
## LED-ovi (LD0 - LD3) - prikaz broja unetih Morse simbola
## ---------------------------------------------------------------------------
set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33 } [get_ports { led0 }]; #LD0
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { led1 }]; #LD1
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { led2 }]; #LD2
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { led3 }]; #LD3

## ---------------------------------------------------------------------------
## RGB LED LD4 - echo animacija Morse koda
## RGB LED je invertovana: 0 pali boju, 1 gasi boju (negacija se radi u
## morse_top.v, ovde se samo mapiraju fizicki pinovi).
## ---------------------------------------------------------------------------
set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { rgb_r_n }]; #LD4_R
set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { rgb_g_n }]; #LD4_G
set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33 } [get_ports { rgb_b_n }]; #LD4_B
