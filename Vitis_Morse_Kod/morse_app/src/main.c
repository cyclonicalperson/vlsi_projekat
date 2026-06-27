/*
 * main.c - PS (ARM Cortex-A9) bare-metal aplikacija za Morse projekat
 *
 * Ovo je standalone (bez operativnog sistema) Vitis aplikacija koja se
 * pokrece na ARM jezgru Zynq-a (PS strana PYNQ-Z2 plocice). Njen jedini
 * zadatak je:
 *
 *   1) Periodicno (polling) citati AXI GPIO IP preko AXI4-Lite magistrale
 *      - Channel 1 (9 bita, ulaz): bit[8] = uart_data_valid (PL javlja da
 *        ima nov dekodovani karakter), bit[7:0] = uart_ascii_data (sam
 *        ASCII karakter, npr. 'S', 'O', 'S', razmak...)
 *   2) Kada je data_valid==1: ispisati karakter preko PS UART-a (UART1)
 *      koristeci xil_printf - ovo je standardni Zynq stdout, koji je vec
 *      automatski povezan na onboard USB-UART cip (FTDI) na PYNQ-Z2
 *      plocici. Korisnik samo otvori serijski terminal (PuTTY, Tera Term,
 *      `screen`/`minicom` na Linux-u) na odgovarajucem COM/ttyUSB portu,
 *      115200 baud, 8N1.
 *   3) Posle ispisa, pulsirati ACK preko AXI GPIO Channel 2 (1 bit, izlaz)
 *      da PL strana zna da je karakter preuzet i moze osloboditi
 *      data_valid za sledeci karakter (vidi axi_pl_bridge.v u src/).
 *
 * Build: Vitis -> Create Platform Project iz output/morse_pynq_ps.xsa,
 *        zatim Create Application Project -> Templates: "Empty
 *        Application (C)" -> domain: standalone -> ubaciti ovaj main.c
 *        u <app>/src/. AXI GPIO drajver (xgpio) dolazi automatski u BSP.
 */

#include <stdio.h>
#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"
#include "sleep.h"

/* Device ID AXI GPIO IP-a iz block design-a - automatski generisan u
 * xparameters.h od strane Vitis-a na osnovu naziva instance "axi_gpio_0".
 * Ako je u Vivado-u instanca drugacije imenovana, ovaj makro ce imati
 * drugi sufiks - provericu xparameters.h u BSP projektu. */
#define GPIO_DEVICE_ID      XPAR_AXI_GPIO_0_DEVICE_ID

#define GPIO_CHANNEL_DATA   1   /* 9-bitni ulaz iz PL: {data_valid, ascii[7:0]} */
#define GPIO_CHANNEL_ACK    2   /* 1-bitni izlaz ka PL: ps_ack */

#define DATA_VALID_BIT      0x100u   /* bit[8] */
#define ASCII_MASK          0x0FFu   /* bit[7:0] */

static XGpio Gpio;

int main(void)
{
    int status;
    u32 raw_value;
    u8  last_was_valid = 0;

    xil_printf("\r\n=== Morse PS<->PL UART mostobran - pokrenuto ===\r\n");
    xil_printf("Cekam dekodovana slova sa PL strane...\r\n\r\n");

    status = XGpio_Initialize(&Gpio, GPIO_DEVICE_ID);
    if (status != XST_SUCCESS) {
        xil_printf("GRESKA: XGpio_Initialize nije uspeo (status=%d)\r\n", status);
        return XST_FAILURE;
    }

    /* Channel 1 je hardverski fiksiran kao "All Inputs" (vidi
     * build_project_ps.tcl - CONFIG.C_ALL_INPUTS {1}), ali ne smeta da se
     * smer eksplicitno postavi i u softveru, radi citljivosti/portabilnosti
     * (0 = bit je ulaz). */
    XGpio_SetDataDirection(&Gpio, GPIO_CHANNEL_DATA, 0x1FF);
    /* Channel 2 je "All Outputs" (CONFIG.C_ALL_OUTPUTS_2 {1}) - 0 = izlaz */
    XGpio_SetDataDirection(&Gpio, GPIO_CHANNEL_ACK, 0x0);
    XGpio_DiscreteWrite(&Gpio, GPIO_CHANNEL_ACK, 0); /* ack u pocetku nizak */

    while (1) {
        raw_value = XGpio_DiscreteRead(&Gpio, GPIO_CHANNEL_DATA);

        if ((raw_value & DATA_VALID_BIT) && !last_was_valid) {
            u8 ascii_char = (u8)(raw_value & ASCII_MASK);

            /* Ispis na serijski terminal racunara (PS UART1 / USB-UART) */
            if (ascii_char == ' ') {
                xil_printf(" ");
            } else {
                xil_printf("%c", ascii_char);
            }

            /* ACK puls ka PL strani - kratko podigni, pa obori, da
             * axi_pl_bridge.v (preko sinhronizatora) detektuje rastucu
             * ivicu i obori data_valid */
            XGpio_DiscreteWrite(&Gpio, GPIO_CHANNEL_ACK, 1);
            usleep(10); /* nekoliko mikrosekundi je vise nego dovoljno - PL
                           radi na 125MHz, AXI GPIO citanje/upis je sporiji */
            XGpio_DiscreteWrite(&Gpio, GPIO_CHANNEL_ACK, 0);

            last_was_valid = 1;
        } else if (!(raw_value & DATA_VALID_BIT)) {
            last_was_valid = 0;
        }

        /* Mala pauza da se ne zaguši AXI magistrala nepotrebnim
         * uzastopnim citanjima - karakteri stizu na ljudskom tempu
         * kucanja (stotine ms), tako da 1ms polling perioda nije
         * primetna korisniku, a rastereti sistem */
        usleep(1000);
    }

    return XST_SUCCESS; /* nedostizno, beskonacna petlja iznad */
}
