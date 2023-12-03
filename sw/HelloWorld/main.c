/*
 * Copyright (c) 2023 by Enclustra GmbH, Switzerland.
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy of 
 * this hardware, software, firmware, and associated documentation files (the 
 * "Product"), to deal in the Product without restriction, including without 
 * limitation the rights to use, copy, modify, merge, publish, distribute, 
 * sublicense, and/or sell copies of the Product, and to permit persons to whom the 
 * Product is furnished to do so, subject to the following conditions: 
 * 
 * The above copyright notice and this permission notice shall be included in all 
 * copies or substantial portions of the Product. 
 * 
 * THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
 * INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
 * PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT 
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION 
 * OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
 * PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
 */

// standard
#include <stdio.h>

// Intel related header
#include "hwlib.h"
#include "alt_16550_uart.h"
#include "alt_printf.h"
#include "alt_clock_manager.h"
#include "alt_generalpurpose_io.h"
#include "alt_interrupt.h"
#include "alt_timers.h"
#include "alt_watchdog.h"
#include "socal/socal.h"
#include "socal/hps.h"
#include "socal/alt_rstmgr.h"

static ALT_16550_HANDLE_t uart_handle;

/* enable semihosting with Arm DS by defining an __auto_semihosting symbol 
   will be removed by linker if semihosting is disabled */
int __auto_semihosting;

void AlteraInitSystem(void)
{
    // Disable watchdogs
    alt_wdog_stop(ALT_WDOG0);
    alt_wdog_stop(ALT_WDOG1);
    
    // Initialize OSC1
    alt_clk_clock_enable(ALT_CLK_L4_SP);
    alt_clk_ext_clk_freq_set(ALT_CLK_OSC1, 33000000);

    // Initialize ARM
    alt_int_global_init();
    alt_int_cpu_init();
    alt_int_cpu_enable();
    alt_int_global_enable();

    // Initialize UART
    //Revision 1 modules use UART0
    //alt_16550_init(ALT_16550_DEVICE_SOCFPGA_UART0, 0, 0, &uart_handle);
    alt_16550_init(ALT_16550_DEVICE_SOCFPGA_UART1, 0, 0, &uart_handle);
    alt_16550_line_config_set(&uart_handle, ALT_16550_DATABITS_8, ALT_16550_PARITY_DISABLE, ALT_16550_STOPBITS_1);
    alt_16550_baudrate_set(&uart_handle, ALT_16550_BAUDRATE_115200);
    alt_16550_fifo_enable(&uart_handle);
    alt_16550_enable(&uart_handle);
    alt_16550_int_disable_rx(&uart_handle);
    alt_16550_int_disable_tx(&uart_handle);
}

int main(int argc, char** argv)
{
    // Basic init
    AlteraInitSystem();

    printf("\n");
    printf("Enclustra Hello World Example\n");
    printf("Compiled at: %s %s\n", __DATE__, __TIME__);
    printf("Example completed successfully.\n");
  
    return 0;
}
