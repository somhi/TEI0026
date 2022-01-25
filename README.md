# MAX10 Power Sequencer (Trenz TEI0026) 

![TEI0026](TEI0026.png)

## Features

- Altera MAX10 8kLE FPGA (10M08SAU169C8G) (same FPGA as [MAX1000](https://github.com/SoCFPGA-learning/Max1000))
  - Total logic elements  8,064
  - Total registers	105
  - Total memory bits	387,072 (48 kB) [42 M9k]
  - Embedded Multiplier 9-bit elements	48 
  - Total PLLs	1
  - UFM blocks  1
  - ADC blocks  1

- 1 clock at 12 MHz
- 7 user leds
- 4 DIP switches
- 1 user button
- 2 GPIOS
- Programmer FTDI FT2232H-56Q
- UART Serial Rx/Tx through USB (FT2232H)
- 1 ADC input (3V at 5.5V)
- 1 differential current input
  - Analog DevicesAD8417BRMZ-RL SP Amp Current Sense Amp Single ±2.75V/5.5V 8-Pin MSOP T/R
- Voltage input pin (VIN)
- Voltage output pins (3.3V, 5V, USB_VBUS)
  - 3V3 Intel / Altera  EP5348UI Conv DC-DC 2.5V to 5.5V Step Down Single-Out 0.6V 0.4A 
- 3 regulable output voltages (VDD1/2/3)
  - VDD1 Intel / Altera EP53A7LQI Conv DC-DC 2.4V to 5.5V Step Down Single-Out 0.6V to 5V 1A 
  - VDD2 Intel / Altera EP53A7HQI Conv DC-DC 2.4V to 5.5V Step Down Single-Out 1.8V to 3.3V 1A 
  - VDD3 Intel / Altera EP5388QI  Conv DC-DC 2.4V to 5.5V Step Down Single-Out 0.6V to 5V 0.8A 