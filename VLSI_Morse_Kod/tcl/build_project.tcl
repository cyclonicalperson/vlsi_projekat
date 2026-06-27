#######################################################################
# Fajl: build_project.tcl
# Opis: Automatska Vivado TCL skripta koja od nule pravi kompletan
#       Vivado projekat za Morse enkoder/dekoder na PYNQ-Z2 plocici.
#
#       Pokrece se iz Vivado TCL konzole (Tools -> Run Tcl Script) ili
#       iz komandne linije:
#           vivado -mode batch -source tcl/build_project.tcl
#
#       Skripta radi sledece:
#         1. Kreira novi Vivado projekat za XC7Z020CLG400-1 (PYNQ-Z2 cip)
#         2. Dodaje sve Verilog source fajlove i XDC constraints
#         3. Postavlja morse_top kao top-level modul
#         4. Pokrece sintezu, implementaciju i generisanje bitstream-a
#         5. Kopira bitstream u output/ folder za programiranje preko
#            Vivado Hardware Manager-a (JTAG)
#######################################################################

# -------------------------------------------------------------------
# Podesive promenljive
# -------------------------------------------------------------------
set proj_name      "morse_pynq"
set part_name      "xc7z020clg400-1" ; # PYNQ-Z2 cip
set board_part     "tul.com.tw:pynq-z2:part0:1.0" ; # PYNQ-Z2 board file (ako je instaliran)

set script_dir     [file dirname [file normalize [info script]]]
set repo_root      [file normalize "$script_dir/.."]
set proj_dir       $repo_root
set src_dir        "$repo_root/src"
set xdc_dir        "$repo_root/constraints"
set output_dir     "$repo_root/output"

file mkdir $output_dir

# -------------------------------------------------------------------
# 1) Kreiranje projekta
# -------------------------------------------------------------------
create_project $proj_name $proj_dir -part $part_name -force

# Pokusaj da postavis board_part (PYNQ-Z2 board files). Nije strogo
# neophodno za cist PL projekat (svi pinovi su rucno definisani u XDC),
# ali ne smeta ako je dostupan.
if {[lsearch -exact [get_board_parts -quiet] $board_part] != -1} {
    set_property board_part $board_part [current_project]
    puts "INFO: Postavljen PYNQ-Z2 board_part: $board_part"
} else {
    puts "INFO: PYNQ-Z2 board file nije pronadjen - nastavljam bez njega."
    puts "Nije neophodno za cist PL projekat, svi pinovi su rucno definisani u XDC."
}

# -------------------------------------------------------------------
# 2) Dodavanje RTL source fajlova (BEZ testbencha - tb_morse_top.v se
#    koristi samo za simulaciju, ne za sintezu)
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
    "$src_dir/morse_top.v" \
]
update_compile_order -fileset sources_1

# Dodavanje XDC constraints
add_files -fileset constrs_1 -norecurse [list "$xdc_dir/pynq_z2.xdc"]

# Postavljanje morse_top kao top-level modula
set_property top morse_top [current_fileset]
update_compile_order -fileset sources_1

# -------------------------------------------------------------------
# 3) Sinteza, implementacija, bitstream
# -------------------------------------------------------------------
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

puts "========================================================================"
puts "USPESNO: Sinteza, implementacija i bitstream generisanje su zavrseni."
puts "========================================================================"

# -------------------------------------------------------------------
# 4) Kopiranje bitstream-a u output/ folder
# -------------------------------------------------------------------
set bit_src "$proj_dir/$proj_name.runs/impl_1/morse_top.bit"
file copy -force $bit_src "$output_dir/morse_pynq.bit"

puts "========================================================================"
puts "Bitstream je spreman u: $output_dir/morse_pynq.bit"
puts ""
puts "Da programiras plocicu:"
puts "  1. Otvori Hardware Manager u Vivado-u (Open Hardware Manager)"
puts "  2. Open Target -> Auto Connect (povezi se preko JTAG-a)"
puts "  3. Program Device -> izaberi morse_pynq.bit -> Program"
puts "========================================================================"
