set BIT     {C:/Users/Pavle/Downloads/vlsi_projekat/VLSI_Morse_Kod/output/morse_pynq_ps.bit}
set PS7INIT {C:/Users/Pavle/Downloads/vlsi_projekat/VLSI_Morse_Kod/output/ps7_init.tcl}
set ELF     {C:/Users/Pavle/Downloads/vlsi_projekat/Vitis_Morse_Kod/morse_app/Debug/morse_app.elf}

connect

puts "INFO: Programiram bitstream ($BIT)..."
fpga -file $BIT

puts "INFO: Inicijalizujem PS7 (clock/DDR/MIO) preko ps7_init.tcl..."
targets -set -filter {name =~ "APU*"}
source $PS7INIT
ps7_init
ps7_post_config

puts "INFO: Trazim ARM Cortex-A9 #0 target..."
targets -set -filter {name =~ "ARM*#0"}

puts "INFO: Resetujem PS i ucitavam $ELF..."
rst -processor
dow $ELF

puts "INFO: Pokrecem aplikaciju (con)..."
con

puts "================================================================"
puts "GOTOVO. Otvori serijski terminal (115200 8N1) na odgovarajucem"
puts "COM portu da vidis ispis."
puts "================================================================"