/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'nios2' in SOPC Builder design 'QSYS_SC_TEI0026'
 * SOPC Builder design path: S:/daten/_svn_/HW/Customer/Arrow/TEI0026/current/hdl/SC/current/QSYS_SC_TEI0026.sopcinfo
 *
 * Generated: Fri Aug 07 09:41:06 CEST 2020
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00010820
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 100000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0x11
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x00008020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 100000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x11
#define ALT_CPU_NAME "nios2"
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x00008000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00010820
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 100000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0x11
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x00008020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0x11
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x00008000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_UART
#define __ALTERA_NIOS2_GEN2
#define __ALTPLL


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "MAX 10"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/uart"
#define ALT_STDERR_BASE 0x11020
#define ALT_STDERR_DEV uart
#define ALT_STDERR_IS_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_uart"
#define ALT_STDIN "/dev/uart"
#define ALT_STDIN_BASE 0x11020
#define ALT_STDIN_DEV uart
#define ALT_STDIN_IS_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_uart"
#define ALT_STDOUT "/dev/uart"
#define ALT_STDOUT_BASE 0x11020
#define ALT_STDOUT_DEV uart
#define ALT_STDOUT_IS_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_uart"
#define ALT_SYSTEM_NAME "QSYS_SC_TEI0026"


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 32
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * onchip_ram configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_ram altera_avalon_onchip_memory2
#define ONCHIP_RAM_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_RAM_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_RAM_BASE 0x8000
#define ONCHIP_RAM_CONTENTS_INFO ""
#define ONCHIP_RAM_DUAL_PORT 0
#define ONCHIP_RAM_GUI_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_RAM_INIT_CONTENTS_FILE "onchip_ram"
#define ONCHIP_RAM_INIT_MEM_CONTENT 1
#define ONCHIP_RAM_INSTANCE_ID "NONE"
#define ONCHIP_RAM_IRQ -1
#define ONCHIP_RAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_RAM_NAME "/dev/onchip_ram"
#define ONCHIP_RAM_NON_DEFAULT_INIT_FILE_ENABLED 1
#define ONCHIP_RAM_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_RAM_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_RAM_SINGLE_CLOCK_OP 0
#define ONCHIP_RAM_SIZE_MULTIPLE 1
#define ONCHIP_RAM_SIZE_VALUE 32768
#define ONCHIP_RAM_SPAN 32768
#define ONCHIP_RAM_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_RAM_WRITABLE 1


/*
 * pio_in_dip_sw configuration
 *
 */

#define ALT_MODULE_CLASS_pio_in_dip_sw altera_avalon_pio
#define PIO_IN_DIP_SW_BASE 0x110f0
#define PIO_IN_DIP_SW_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_IN_DIP_SW_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_IN_DIP_SW_CAPTURE 0
#define PIO_IN_DIP_SW_DATA_WIDTH 4
#define PIO_IN_DIP_SW_DO_TEST_BENCH_WIRING 0
#define PIO_IN_DIP_SW_DRIVEN_SIM_VALUE 0
#define PIO_IN_DIP_SW_EDGE_TYPE "NONE"
#define PIO_IN_DIP_SW_FREQ 100000000
#define PIO_IN_DIP_SW_HAS_IN 1
#define PIO_IN_DIP_SW_HAS_OUT 0
#define PIO_IN_DIP_SW_HAS_TRI 0
#define PIO_IN_DIP_SW_IRQ -1
#define PIO_IN_DIP_SW_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_IN_DIP_SW_IRQ_TYPE "NONE"
#define PIO_IN_DIP_SW_NAME "/dev/pio_in_dip_sw"
#define PIO_IN_DIP_SW_RESET_VALUE 0
#define PIO_IN_DIP_SW_SPAN 16
#define PIO_IN_DIP_SW_TYPE "altera_avalon_pio"


/*
 * pio_in_usr configuration
 *
 */

#define ALT_MODULE_CLASS_pio_in_usr altera_avalon_pio
#define PIO_IN_USR_BASE 0x11100
#define PIO_IN_USR_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_IN_USR_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_IN_USR_CAPTURE 0
#define PIO_IN_USR_DATA_WIDTH 3
#define PIO_IN_USR_DO_TEST_BENCH_WIRING 0
#define PIO_IN_USR_DRIVEN_SIM_VALUE 0
#define PIO_IN_USR_EDGE_TYPE "NONE"
#define PIO_IN_USR_FREQ 100000000
#define PIO_IN_USR_HAS_IN 1
#define PIO_IN_USR_HAS_OUT 0
#define PIO_IN_USR_HAS_TRI 0
#define PIO_IN_USR_IRQ -1
#define PIO_IN_USR_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_IN_USR_IRQ_TYPE "NONE"
#define PIO_IN_USR_NAME "/dev/pio_in_usr"
#define PIO_IN_USR_RESET_VALUE 0
#define PIO_IN_USR_SPAN 16
#define PIO_IN_USR_TYPE "altera_avalon_pio"


/*
 * pio_out_user_led configuration
 *
 */

#define ALT_MODULE_CLASS_pio_out_user_led altera_avalon_pio
#define PIO_OUT_USER_LED_BASE 0x110b0
#define PIO_OUT_USER_LED_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_OUT_USER_LED_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_OUT_USER_LED_CAPTURE 0
#define PIO_OUT_USER_LED_DATA_WIDTH 4
#define PIO_OUT_USER_LED_DO_TEST_BENCH_WIRING 0
#define PIO_OUT_USER_LED_DRIVEN_SIM_VALUE 0
#define PIO_OUT_USER_LED_EDGE_TYPE "NONE"
#define PIO_OUT_USER_LED_FREQ 100000000
#define PIO_OUT_USER_LED_HAS_IN 0
#define PIO_OUT_USER_LED_HAS_OUT 1
#define PIO_OUT_USER_LED_HAS_TRI 0
#define PIO_OUT_USER_LED_IRQ -1
#define PIO_OUT_USER_LED_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_OUT_USER_LED_IRQ_TYPE "NONE"
#define PIO_OUT_USER_LED_NAME "/dev/pio_out_user_led"
#define PIO_OUT_USER_LED_RESET_VALUE 0
#define PIO_OUT_USER_LED_SPAN 16
#define PIO_OUT_USER_LED_TYPE "altera_avalon_pio"


/*
 * pio_out_vdd1 configuration
 *
 */

#define ALT_MODULE_CLASS_pio_out_vdd1 altera_avalon_pio
#define PIO_OUT_VDD1_BASE 0x110e0
#define PIO_OUT_VDD1_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_OUT_VDD1_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_OUT_VDD1_CAPTURE 0
#define PIO_OUT_VDD1_DATA_WIDTH 5
#define PIO_OUT_VDD1_DO_TEST_BENCH_WIRING 0
#define PIO_OUT_VDD1_DRIVEN_SIM_VALUE 0
#define PIO_OUT_VDD1_EDGE_TYPE "NONE"
#define PIO_OUT_VDD1_FREQ 100000000
#define PIO_OUT_VDD1_HAS_IN 0
#define PIO_OUT_VDD1_HAS_OUT 1
#define PIO_OUT_VDD1_HAS_TRI 0
#define PIO_OUT_VDD1_IRQ -1
#define PIO_OUT_VDD1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_OUT_VDD1_IRQ_TYPE "NONE"
#define PIO_OUT_VDD1_NAME "/dev/pio_out_vdd1"
#define PIO_OUT_VDD1_RESET_VALUE 0
#define PIO_OUT_VDD1_SPAN 16
#define PIO_OUT_VDD1_TYPE "altera_avalon_pio"


/*
 * pio_out_vdd2 configuration
 *
 */

#define ALT_MODULE_CLASS_pio_out_vdd2 altera_avalon_pio
#define PIO_OUT_VDD2_BASE 0x110d0
#define PIO_OUT_VDD2_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_OUT_VDD2_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_OUT_VDD2_CAPTURE 0
#define PIO_OUT_VDD2_DATA_WIDTH 6
#define PIO_OUT_VDD2_DO_TEST_BENCH_WIRING 0
#define PIO_OUT_VDD2_DRIVEN_SIM_VALUE 0
#define PIO_OUT_VDD2_EDGE_TYPE "NONE"
#define PIO_OUT_VDD2_FREQ 100000000
#define PIO_OUT_VDD2_HAS_IN 0
#define PIO_OUT_VDD2_HAS_OUT 1
#define PIO_OUT_VDD2_HAS_TRI 0
#define PIO_OUT_VDD2_IRQ -1
#define PIO_OUT_VDD2_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_OUT_VDD2_IRQ_TYPE "NONE"
#define PIO_OUT_VDD2_NAME "/dev/pio_out_vdd2"
#define PIO_OUT_VDD2_RESET_VALUE 0
#define PIO_OUT_VDD2_SPAN 16
#define PIO_OUT_VDD2_TYPE "altera_avalon_pio"


/*
 * pio_out_vdd3 configuration
 *
 */

#define ALT_MODULE_CLASS_pio_out_vdd3 altera_avalon_pio
#define PIO_OUT_VDD3_BASE 0x110c0
#define PIO_OUT_VDD3_BIT_CLEARING_EDGE_REGISTER 0
#define PIO_OUT_VDD3_BIT_MODIFYING_OUTPUT_REGISTER 0
#define PIO_OUT_VDD3_CAPTURE 0
#define PIO_OUT_VDD3_DATA_WIDTH 5
#define PIO_OUT_VDD3_DO_TEST_BENCH_WIRING 0
#define PIO_OUT_VDD3_DRIVEN_SIM_VALUE 0
#define PIO_OUT_VDD3_EDGE_TYPE "NONE"
#define PIO_OUT_VDD3_FREQ 100000000
#define PIO_OUT_VDD3_HAS_IN 0
#define PIO_OUT_VDD3_HAS_OUT 1
#define PIO_OUT_VDD3_HAS_TRI 0
#define PIO_OUT_VDD3_IRQ -1
#define PIO_OUT_VDD3_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PIO_OUT_VDD3_IRQ_TYPE "NONE"
#define PIO_OUT_VDD3_NAME "/dev/pio_out_vdd3"
#define PIO_OUT_VDD3_RESET_VALUE 0
#define PIO_OUT_VDD3_SPAN 16
#define PIO_OUT_VDD3_TYPE "altera_avalon_pio"


/*
 * pll configuration
 *
 */

#define ALT_MODULE_CLASS_pll altpll
#define PLL_BASE 0x11110
#define PLL_IRQ -1
#define PLL_IRQ_INTERRUPT_CONTROLLER_ID -1
#define PLL_NAME "/dev/pll"
#define PLL_SPAN 16
#define PLL_TYPE "altpll"


/*
 * uart configuration
 *
 */

#define ALT_MODULE_CLASS_uart altera_avalon_uart
#define UART_BASE 0x11020
#define UART_BAUD 115200
#define UART_DATA_BITS 8
#define UART_FIXED_BAUD 1
#define UART_FREQ 100000000
#define UART_IRQ 0
#define UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define UART_NAME "/dev/uart"
#define UART_PARITY 'N'
#define UART_SIM_CHAR_STREAM ""
#define UART_SIM_TRUE_BAUD 0
#define UART_SPAN 32
#define UART_STOP_BITS 1
#define UART_SYNC_REG_DEPTH 2
#define UART_TYPE "altera_avalon_uart"
#define UART_USE_CTS_RTS 0
#define UART_USE_EOP_REGISTER 0

#endif /* __SYSTEM_H_ */
