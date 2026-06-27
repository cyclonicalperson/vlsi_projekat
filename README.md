# Morse kod enkoder/dekoder na FPGA (PYNQ-Z2)

Projekat za predmet **Projektovanje VLSI sistema** — hardverski Morzeov enkoder/dekoder implementiran u Verilogu
za **PYNQ-Z2** razvojnu pločicu (Zynq-7000, `xc7z020clg400-1`)

Pločica nema ugrađen alfanumerički displej, pa se dekodirana poruka
"čita" preko RGB LED echo animacije i 4 obične LED diode — ili, u PS
varijanti projekta, direktno kao tekst na serijskom terminalu računara.

<img width="442" height="415" alt="morse azbuka" src="https://github.com/user-attachments/assets/4e1a2c9a-3788-4310-a6c0-da80e2a76d50" />

## Sadržaj

- [Varijante projekta](#varijante-projekta)
- [Funkcionalnosti](#funkcionalnosti)
- [Mapiranje dugmića](#mapiranje-dugmića)
- [Kako se "čita" dekodirana poruka](#kako-se-čita-dekodirana-poruka)
- [Struktura projekta](#struktura-projekta)
- [Dokumentacija](#dokumentacija)

## Varijante projekta

Projekat postoji u dve nezavisne varijante:

| Varijanta | TCL skripta | Bitstream | Opis |
|-----------|-------------|-----------|------|
| **PL-only** | `tcl/build_project.tcl` | `output/morse_pynq.bit` | Čist FPGA, bez ARM procesora. Poruka se čita samo preko RGB LED animacije |
| **PS+PL** | `tcl/build_project_ps.tcl` | `output/morse_pynq_ps.bit` | ARM procesor (PS) komunicira sa PL-om preko AXI GPIO, dekodovana slova se šalju i na serijski terminal (115200 8N1) |

Obe varijante su potpuno funkcionalne i međusobno nezavisne.
Detalji PS+PL proširenja nalaze se u `dokumentacija/PS_PL_AXI_UART.docx`.

## Funkcionalnosti

- Unos Morzeovih simbola (tačka/crta) preko dugmića, sa debounce logikom
- Automatska detekcija kraja slova i razmaka između reči
- Validacija unete sekvence prema standardnoj ITU Morse tabeli (26 slova i 10 cifara, bez kolizija)
- Interna memorija za do **32 karaktera** cele poruke
- Razlikovanje kratkog i dugog pritiska dugmeta (prag 1.5 s)
- **Live echo** — RGB LED odmah animira upravo otkucano slovo
- **Replay** — dugim pritiskom se cela sačuvana poruka reprodukuje preko
  RGB LED-a, karakter po karakter
- Binarni prikaz broja unetih simbola trenutnog slova na 4 LED diode
- **(PS varijanta)** Dekodovana slova se šalju i na serijski terminal računara preko PS UART-a

## Mapiranje dugmića

| Dugme | Funkcija |
|-------|----------|
| **BTN0** | Tačka (`.`) |
| **BTN1** | Crta (`-`) |
| **BTN2** | Obriši trenutni nedovršeni unos, ako je akumulator već prazan: obriši **celu poruku** |
| **BTN3** | Kratak pritisak: završi slovo / razmak (karakter). **Dug pritisak (≥ 1.5 s): reprodukuj celu otkucanu poruku** preko RGB echo-a, slovo po slovo |

Poruka se čuva u internoj memoriji (do 32 karaktera, uključujući razmake)
dok se pločica ne resetuje ili dok se BTN2 ne pritisne na praznom
akumulatoru.

## Kako se "čita" dekodirana poruka

Pošto PYNQ-Z2 nema ugrađen displej, projekat koristi **RGB LED echo
animaciju** kao vizuelnu potvrdu da je hardver tačno pročitao i
dekodirao unos. Postoje dva nivoa echo-a:

**1) Live echo** (odmah nakon svakog slova) — kratak pritisak BTN3
(enter) odmah pokreće echo samo za upravo otkucano slovo:
- kratak zeleni bljesak za tačku, duži zeleni bljesak za crtu, redom
  kako su simboli uneti;
- ako je akumulator bio prazan (razmak između reči) — jedan kratak
  **plavi** bljesak;
- ako uneta sekvenca nije validna — dodatni **crveni** bljesak na kraju.

**2) Replay cele poruke** (dug pritisak BTN3, ≥ 1.5 s) — pločica pamti
sve otkucane karaktere u internoj memoriji i redom ih reprodukuje preko
RGB LED-a, sa pauzom od 300 ms između slova, na isti način kao live
echo.

Četiri obične LED diode (LD0–LD3) prikazuju binarno trenutni broj
unetih simbola za slovo koje se kuca — potvrda u realnom vremenu da
dugmići registruju pritisak, pre nego što se pritisne ENTER.

**PS varijanta** — pored RGB LED-a, svako potvrđeno slovo se odmah
pojavljuje kao karakter na serijskom terminalu (115200 8N1), a replay
ispisuje celu poruku odjednom.

## Struktura projekta

```
vlsi_projekat/
├── src/                         Verilog RTL fajlovi
│   ├── debounce.v               Debounce dugmića
│   ├── edge_detect.v            Detekcija pritiska (rising edge)
│   ├── long_press_detect.v      Razlikuje kratak/dug pritisak BTN3
│   ├── morse_decoder_table.v    Morse -> ASCII kombinacioni dekoder
│   ├── morse_fsm.v              Glavna FSM (akumulacija simbola, kontrola)
│   ├── morse_echo.v             RGB LED echo animacija jednog karaktera
│   ├── message_buffer.v         Memorija cele poruke (do 32 karaktera)
│   ├── morse_replay.v           Dirigent za replay cele poruke
│   ├── morse_top.v              Top-level modul (PL; proširen sa 3 porta za PS varijantu)
│   ├── axi_pl_bridge.v          [PS varijanta] Latch + CDC sinhronizacija prema AXI GPIO IP
│   └── tb_morse_top.v           Testbench (simulacija)
├── constraints/
│   └── pynq_z2.xdc              Pinovi: takt, dugmići, LED-ovi
├── tcl/
│   ├── build_project.tcl        Automatska Vivado build skripta (PL-only)
│   └── build_project_ps.tcl     [PS varijanta] Vivado skripta: ZYNQ7 PS + AXI GPIO block design
├── sdk_app/
│   └── src/
│       └── main.c               [PS varijanta] Bare-metal C aplikacija za PS (Vitis standalone)
├── output/
│   ├── morse_pynq.bit           Bitstream - PL-only varijanta
│   └── morse_pynq_ps.bit        Bitstream - PS+PL varijanta
├── dokumentacija/
│   ├── PS_PL_AXI_UART.docx      Detaljna dokumentacija PS proširenja (blok dijagram, build, UART)
│   ├── block_diagram.png         Blok dijagram PS+PL sistema
│   └── morse_azbuka.png          ITU Morse tabela
├── morse_pynq.xpr               Vivado projekat (PL-only)
└── morse_pynq.{cache,hw,runs}/  Vivado radni fajlovi (auto-generisani)
```

## Dokumentacija

Osnovna dokumentacija je u ovom README-u. Za detalje PS+PL proširenja
(blok dijagram, AXI handshake protokol, build instrukcije za Vivado i
Vitis, podešavanje serijskog terminala) pogledati
[`dokumentacija/PS_PL_AXI_UART.docx`](dokumentacija/PS_PL_AXI_UART.docx).

### Brzi start — PS+PL varijanta

```bash
# 1. Build hardvera (Vivado batch)
vivado -mode batch -source tcl/build_project_ps.tcl

# 2. Programiranje plocice
#    Vivado Hardware Manager -> Program Device -> output/morse_pynq_ps.bit

# 3. Build i deploy softvera (Vitis Unified IDE ili XSCT)
#    Detalji u dokumentacija/PS_PL_AXI_UART.docx, sekcija 6

# 4. Serijski terminal
#    115200 8N1, COM port (Windows Device Manager) ili /dev/ttyUSB1 (Linux)
#    screen /dev/ttyUSB1 115200
```
