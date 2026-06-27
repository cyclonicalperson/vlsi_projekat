#######################################################################
# Fajl: build_project_ps.tcl
# Opis: Vivado TCL skripta koja pravi PROSIRENU verziju projekta -
#       isti PL Morse enkoder/dekoder (src/morse_top.v i ostali moduli,
#       NEPROMENJENI u svojoj osnovnoj logici) + dodat ZYNQ7 Processing
#       System (ARM Cortex-A9) povezan preko AXI GPIO IP-a.
#
#       PL strana (morse_top.v) dobila je 3 nova porta:
#         - uart_ascii_data[7:0] : dekodovani ASCII karakter (drzan)
#         - uart_data_valid      : 1 = nov karakter ceka PS-a
#         - ps_ack                : ulaz, puls od PS-a da je karakter pokupljen
#       Ovi portovi NISU fizicki FPGA pinovi - povezuju se interno na
#       AXI GPIO IP unutar block design-a (vidi dokumentaciju/PS_PL_AXI_UART.docx
#       za blok dijagram i objasnjenje).
#
#       Originalni "cisti PL" projekat (tcl/build_project.tcl) ostaje
#       netaknut i dalje radi - ovo je ADITIVNA nova skripta/varijanta,
#       ne zamena.
#
#       Pokretanje:
#           vivado -mode batch -source tcl/build_project_ps.tcl
#       ili iz GUI: Tools -> Run Tcl Script
#######################################################################

set proj_name      "morse_pynq_ps"
set part_name       "xc7z020clg400-1" ; # PYNQ-Z2 cip
set board_part      "tul.com.tw:pynq-z2:part0:1.0"
set bd_name         "system"

set script_dir      [file dirname [file normalize [info script]]]
set repo_root       [file normalize "$script_dir/.."]
set proj_dir        "$repo_root/${proj_name}_build"
set src_dir         "$repo_root/src"
set xdc_dir         "$repo_root/constraints"
set output_dir      "$repo_root/output"

file mkdir $output_dir

# -------------------------------------------------------------------
# 1) Kreiranje projekta
# -------------------------------------------------------------------
create_project $proj_name $proj_dir -part $part_name -force

set board_found 0
if {[lsearch -exact [get_board_parts -quiet] $board_part] != -1} {
    set_property board_part $board_part [current_project]
    set board_found 1
    puts "INFO: Postavljen PYNQ-Z2 board_part: $board_part"
} else {
    puts "UPOZORENJE: PYNQ-Z2 board file nije pronadjen u Vivado instalaciji."
    puts "ZYNQ7 PS automatizacija (apply_bd_automation) ce koristiti rucna"
    puts "podesavanja umesto board preset-a. Preporuka: instaliraj PYNQ-Z2"
    puts "board files (https://github.com/cathalmccabe/pynq-z2_board_files)."
}

# -------------------------------------------------------------------
# 2) Dodavanje RTL source fajlova (PL Morse logika, BEZ testbencha)
#    NAPOMENA: morse_top.v ovde je VERZIJA SA NOVIM AXI/PS portovima
#    (uart_ascii_data, uart_data_valid, ps_ack), axi_pl_bridge.v je novi
#    modul koji radi CDC sinhronizaciju ka/od AXI GPIO domena.
# -------------------------------------------------------------------
add_files -norecurse [list \
    "$src_dir/debounce.v" \
    "$src_dir/edge_detect.v" \
    "$src_dir/long_press_detect.v" \
    "$src_dir/morse_decoder_table.v" \
    "$src_dir/morse_fsm.v" \
    "$src_dir/morse_echo.v" \
    "$src_dir/message_buffer.v" \
    "$src_dir/morse_replay.v" \
    "$src_dir/axi_pl_bridge.v" \
    "$src_dir/morse_top.v" \
]
update_compile_order -fileset sources_1

add_files -fileset constrs_1 -norecurse [list "$xdc_dir/pynq_z2.xdc"]

# -------------------------------------------------------------------
# 3) Block design - ZYNQ7 PS + AXI GPIO + morse_top kao RTL modul
# -------------------------------------------------------------------
create_bd_design $bd_name

startgroup
set ps [create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0]
endgroup

# Board/preset automatizacija: ako je board_part dostupan, ovo automatski
# podesava DDR/MIO/UART1 preset za PYNQ-Z2. Ako nije, korisnik treba u
# GUI-ju (Re-customize IP) rucno cekirati "UART 1" pod I/O Peripherals
# (MIO 48/49) i podesiti FCLK_CLK0 na 100 MHz.
if {$board_found} {
    apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 \
        -config {make_external "FIXED_IO, DDR" apply_board_preset "1" Master "Disable" Slave "Disable"} \
        [get_bd_cells processing_system7_0]
} else {
    apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 \
        -config {make_external "FIXED_IO, DDR" apply_board_preset "0" Master "Disable" Slave "Disable"} \
        [get_bd_cells processing_system7_0]
    puts "RUCNO PODESAVANJE POTREBNO: u IP integratoru otvori"
    puts "processing_system7_0 -> Re-customize IP -> MIO Configuration ->"
    puts "I/O Peripherals -> cekiraj 'UART 1', i potvrdi da je FCLK_CLK0 = 100 MHz"
    puts "(Clock Configuration -> PS-PL Configuration -> FCLK_CLK0)."
}

# AXI GPIO - dva kanala:
#   Channel 1 (9 bita, ULAZ u PS)  <- {uart_data_valid, uart_ascii_data[7:0]}
#   Channel 2 (1 bit,  IZLAZ iz PS) -> ps_ack
startgroup
set gpio [create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0]
set_property -dict [list \
    CONFIG.C_GPIO_WIDTH {9} \
    CONFIG.C_ALL_INPUTS {1} \
    CONFIG.C_IS_DUAL {1} \
    CONFIG.C_GPIO2_WIDTH {1} \
    CONFIG.C_ALL_OUTPUTS_2 {1} \
] [get_bd_cells axi_gpio_0]
endgroup

# Automatska AXI interconnect + clock/reset povezivanje PS <-> AXI GPIO
apply_bd_automation -rule xilinx.com:bd_rule:axi4 \
    -config { Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" } \
    [get_bd_intf_pins axi_gpio_0/S_AXI]

# NAPOMENA: FCLK_CLK0 ne zahteva dodatnu board automatizaciju - taj signal
# se koristi direktno kao AXI/PS clock i Vivado ga automatski povezuje
# preko prethodne apply_bd_automation (axi4 rule) komande iznad.

# -------------------------------------------------------------------
# 4) morse_top kao RTL modul u block design-u (NE kao IP - dodaje se
#    direktno postojeci Verilog modul, ostaje 100% citljiv/edit-ovan
#    kao normalan .v fajl u src/, ne paketuje se kao IP)
# -------------------------------------------------------------------
set morse_inst [create_bd_cell -type module -reference morse_top morse_top_0]

# Eksternalizacija "fizickih" FPGA portova morse_top-a (isti pinovi kao
# u cistom-PL projektu - clk, dugmici, LED, RGB). Imena se eksplicitno
# vracaju na originalna (bez "_0" sufiksa) da se postojeci XDC iz
# constraints/pynq_z2.xdc moze koristiti BEZ IZMENA.
# Eksternalizacija "fizickih" FPGA portova morse_top-a (isti pinovi kao
# u cistom-PL projektu - clk, dugmici, LED, RGB). Imena se eksplicitno
# vracaju na originalna (bez "_0" sufiksa) da se postojeci XDC iz
# constraints/pynq_z2.xdc moze koristiti BEZ IZMENA.
#
# NAPOMENA: smer (I/O) se navodi RUCNO/eksplicitno, a ne citanjem
# [get_property DIRECTION [get_bd_pins ...]] - Vivado port koji se
# bukvalno zove "clk" automatski (i ne uvek potpuno) prepoznaje kao
# "clock" bus interface (vidi INFO/WARNING poruke o "Inferred bus
# interface 'clk'" u logu), pa property DIRECTION za njega ume da
# vrati prazan string i create_bd_port onda puca sa
# "Specified direction '' is not correct". Eksplicitna lista izbegava
# ovaj problem u potpunosti.
foreach {pin name dir} {
    clk       clk       I
    button0   button0   I
    button1   button1   I
    button2   button2   I
    button3   button3   I
    led0      led0      O
    led1      led1      O
    led2      led2      O
    led3      led3      O
    rgb_r_n   rgb_r_n   O
    rgb_g_n   rgb_g_n   O
    rgb_b_n   rgb_b_n   O
} {
    set bd_port [create_bd_port -dir $dir $name]
    connect_bd_net [get_bd_pins ${morse_inst}/${pin}] $bd_port
}

# Interno povezivanje AXI GPIO <-> morse_top (NIJE fizicki pin, ostaje
# unutar FPGA-a, ovo JE "AXI komunikacija izmedju PS i PL")
# Interno povezivanje AXI GPIO <-> morse_top (NIJE fizicki pin, ostaje
# unutar FPGA-a, ovo JE "AXI komunikacija izmedju PS i PL").
# uart_ascii_data (8 bita) i uart_data_valid (1 bit) su DVA ODVOJENA
# porta na morse_top-u, pa ih xlconcat IP spaja u jedan 9-bitni signal
# koji ide na gpio_io_i (bit[8]=data_valid, bit[7:0]=ascii_data):
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0
set_property -dict [list CONFIG.NUM_PORTS {2}] [get_bd_cells xlconcat_0]
connect_bd_net [get_bd_pins morse_top_0/uart_ascii_data] [get_bd_pins xlconcat_0/In0]
connect_bd_net [get_bd_pins morse_top_0/uart_data_valid] [get_bd_pins xlconcat_0/In1]
connect_bd_net [get_bd_pins xlconcat_0/dout] [get_bd_pins axi_gpio_0/gpio_io_i]

connect_bd_net [get_bd_pins axi_gpio_0/gpio2_io_o] [get_bd_pins morse_top_0/ps_ack]

regenerate_bd_layout
validate_bd_design
save_bd_design

# -------------------------------------------------------------------
# 5) Wrapper, top-level, sinteza/implementacija/bitstream
# -------------------------------------------------------------------
make_wrapper -files [get_files "$proj_dir/$proj_name.srcs/sources_1/bd/$bd_name/$bd_name.bd"] -top
add_files -norecurse "$proj_dir/$proj_name.gen/sources_1/bd/$bd_name/hdl/${bd_name}_wrapper.v"
update_compile_order -fileset sources_1
set_property top "${bd_name}_wrapper" [current_fileset]
update_compile_order -fileset sources_1

generate_target all [get_files "$proj_dir/$proj_name.srcs/sources_1/bd/$bd_name/$bd_name.bd"]

launch_runs synth_1 -jobs 4
wait_on_run synth_1
if {[get_property PROGRESS [get_runs synth_1]] != "100%"} {
    error "GRESKA: Sinteza nije uspela. Provericu Vivado log za detalje."
}

launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1
if {[get_property PROGRESS [get_runs impl_1]] != "100%"} {
    error "GRESKA: Implementacija/bitstream generisanje nije uspelo."
}

set bit_src "$proj_dir/$proj_name.runs/impl_1/${bd_name}_wrapper.bit"
file copy -force $bit_src "$output_dir/morse_pynq_ps.bit"

# Export hardver (.xsa) za Vitis/SDK - bare-metal C aplikacija (sdk_app/)
# se gradi iz ovog fajla protiv tog hardware platform-a
write_hw_platform -fixed -include_bit -force "$output_dir/morse_pynq_ps.xsa"

puts "========================================================================"
puts "USPESNO: Bitstream je u $output_dir/morse_pynq_ps.bit"
puts "Hardware platforma za Vitis je u $output_dir/morse_pynq_ps.xsa"
puts ""
puts "Sledeci korak: otvoriti Vitis, napraviti 'Platform Project' iz .xsa,"
puts "pa 'Application Project' (Empty Application, standalone domain) i"
puts "ubaciti sdk_app/src/main.c iz ovog repozitorijuma kao izvorni fajl."
puts "========================================================================"
