################################################################################
# build_ps.tcl  –  XSCT skripta za Vitis 2025.2
#
# Pokretanje (nakon settings64.bat):
#   xsct C:\Users\Pavle\Downloads\VLSI_Morse_Kod\tcl\build_ps.tcl
#
# Sta rešava vs stari build_ps.tcl:
#   1) Kreira NOVU platformu (brišemo staru) bez FSBL domena –
#      FSBL je uzrokovao "get_property expects at least one object" grešku
#      jer standalone_v9_4 traži stdin/stdout IP celiju koja ne postoji
#      u FSBL domenu (ps7_uart_0 vs ps7_uart vs processing_system7).
#   2) fix_build.tcl je pucao jer "-fsbl" u 2025.2 je ambiguous
#      ("-fsbl-elf" ili "-fsbl-target") – izbegavamo ga potpuno.
#   3) Koristimo "-fsbl-elf none" (tačan flag u 2025.2) umesto "-fsbl false".
################################################################################

set WS      {C:/Users/Pavle/Downloads/vlsi_projekat/Vitis_Morse_Kod}
set XSA     {C:/Users/Pavle/Downloads/vlsi_projekat/VLSI_Morse_Kod/output/morse_pynq_ps.xsa}
set MAINC   {C:/Users/Pavle/Downloads/vlsi_projekat/VLSI_Morse_Kod/sdk_app/src/main.c}
set APPNAME {morse_app}
set PLAT    {morse_pynq_ps}

# ── 1. Postavi workspace ─────────────────────────────────────────────────────
setws -switch $WS

# ── 2. Obrisi stari projekat ako postoji (clean slate) ───────────────────────
# Brisanje aplikacije
catch { app remove -name $APPNAME }

# Brisanje platforme
catch { platform remove -name $PLAT }

# Fizičko brisanje foldera (TCL)
if {[file exists "$WS/$APPNAME"]} {
    file delete -force "$WS/$APPNAME"
    puts "INFO: Obrisan stari folder $WS/$APPNAME"
}
if {[file exists "$WS/$PLAT"]} {
    file delete -force "$WS/$PLAT"
    puts "INFO: Obrisan stari folder $WS/$PLAT"
}

# ── 3. Kreiraj novu platformu BEZ FSBL ───────────────────────────────────────
# "-no-boot-bsp" je tacan flag u Vitis 2025.2 da se izbegne FSBL/boot komponente
puts "INFO: Kreiram platformu '$PLAT' bez FSBL..."
platform create -name $PLAT \
    -hw $XSA \
    -proc ps7_cortexa9_0 \
    -os standalone \
    -no-boot-bsp

# ── 3b. DIJAGNOSTIKA: ispisi tacan naziv domena (da znamo sta da aktiviramo) ──
puts "INFO: Domeni u platformi:"
domain list

# ── 4. Postavi stdin/stdout na UART koji postoji u XSA ───────────────────────
# Iz diag_uart.tcl smo videli da je UART celija: ps7_uart_0 (IP: ps7_uart)
# Ovo MORA da se uradi pre platform generate, inace standalone_v9_4 puca
domain active {standalone_domain}
bsp config stdin  ps7_uart_0
bsp config stdout ps7_uart_0
bsp write

# ── 5. Generisi platformu (kompajlira BSP, libxil.a, itd.) ──────────────────
puts "INFO: Generisem platformu (BSP kompajlacija – može potrajati ~2-3 min)..."
platform generate

puts "INFO: Platforma OK."

# ── 6. Kreiraj aplikaciju ─────────────────────────────────────────────────────
puts "INFO: Kreiram aplikaciju '$APPNAME'..."
app create -name $APPNAME \
    -platform $PLAT \
    -domain {standalone_domain} \
    -template {Empty Application(C)}

# ── 7. Kopiraj main.c ────────────────────────────────────────────────────────
set src_dir "$WS/$APPNAME/src"

# Obrisi sve .c fajlove iz template-a (mogu biti prazni placeholder-i)
foreach f [glob -nocomplain "$src_dir/*.c"] {
    file delete -force $f
}

file copy -force $MAINC "$src_dir/main.c"
puts "INFO: Kopiran main.c -> $src_dir/main.c"

# ── 8. Build aplikacije ───────────────────────────────────────────────────────
puts "INFO: Build aplikacije (može potrajati ~1-2 min)..."
app build -name $APPNAME

# ── 9. Proveri rezultat ───────────────────────────────────────────────────────
set elf_debug   "$WS/$APPNAME/Debug/$APPNAME.elf"
set elf_release "$WS/$APPNAME/Release/$APPNAME.elf"

puts ""
puts "================================================================"
if {[file exists $elf_debug]} {
    puts "USPEH! ELF fajl: $elf_debug"
} elseif {[file exists $elf_release]} {
    puts "USPEH! ELF fajl: $elf_release"
} else {
    puts "UPOZORENJE: .elf nije nađen na očekivanim putanjama."
    puts "Provjeri: $WS/$APPNAME/"
}
puts "================================================================"
puts ""
puts "Sledeći korak – programiranje ploče:"
puts "  xsct C:\\...\\tcl\\run_ps.tcl"
puts "================================================================"