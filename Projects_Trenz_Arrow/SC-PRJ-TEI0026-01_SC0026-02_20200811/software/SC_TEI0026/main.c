/*/*
 *
 *
 *
 */

#include <stdio.h>
#include <altera_avalon_pio_regs.h>

#include <system.h>

int main()
{
	int dipsw_status=0x00,old_dipsw_status=0xFF;
	int c,vdd1='0',vdd2='0',vdd3='0';
	alt_u8 vdd1_sel=0x00,vdd2_sel=0x00,vdd3_sel=0x00;
	char current_vdd1[20]={"disabled"},current_vdd2[20]={"disabled"},current_vdd3[20]={"disabled"};

	printf("\n\rEnpirion PowerBoard (v1.0) by Arrow Electronics\n\r");

	while(1){
		dipsw_status=IORD_ALTERA_AVALON_PIO_DATA(PIO_IN_DIP_SW_BASE);
		//IOWR_ALTERA_AVALON_PIO_DATA(PIO_OUT_USER_LED_BASE, 0x00);
		if(dipsw_status==0x0F) {
			printf("\n\rCurrent selection:\n\r");
			printf("VDD1 = %s\n\r",current_vdd1);
			printf("VDD2 = %s\n\r",current_vdd2);
			printf("VDD3 = %s\n\n\r",current_vdd3);

			printf("Select Voltage output (a, b, c):\n\r");
			printf("     a: VDD1\n\r");
			printf("     b: VDD2\n\r");
			printf("     c: VDD3\n\n\r");

			c=alt_getchar();
			printf("%c\n\r",c);
			if (IORD_ALTERA_AVALON_PIO_DATA(PIO_IN_DIP_SW_BASE)!=0x0f) goto jmp;

			switch(c){
				case 'a': printf("Select voltage for VDD1:\n\r");
					printf("     0: disable\n\r");
					printf("     1: 1.5V\n\r");
					printf("     2: 1.45V\n\r");
					printf("     3: 1.2V\n\r");
					printf("     4: 1.15V\n\r");
					printf("     5: 1.1V\n\r");
					printf("     6: 1.05V\n\r");
					printf("     7: 0.8V\n\r");
					printf("     8: 1.0V (EXT)\n\r");
					vdd1=alt_getchar();
					printf("%c\n\r",vdd1);
					switch(vdd1){
						case '0': printf("VDD1 disabled\n\r"); 		vdd1_sel=0x00; strcpy (current_vdd1, "disabled\0"); break;
						case '1': printf("VDD1 = 1.5V\n\r"); 		vdd1_sel=0x18; strcpy (current_vdd1, "1.5V\0"); break;
						case '2': printf("VDD1 = 1.45V\n\r"); 		vdd1_sel=0x19; strcpy (current_vdd1, "1.45V\0"); break;
						case '3': printf("VDD1 = 1.2V\n\r"); 		vdd1_sel=0x1A; strcpy (current_vdd1, "1.2V\0"); break;
						case '4': printf("VDD1 = 1.15V\n\r"); 		vdd1_sel=0x1B; strcpy (current_vdd1, "1.15V\0"); break;
						case '5': printf("VDD1 = 1.1V\n\r"); 		vdd1_sel=0x1C; strcpy (current_vdd1, "1.1V\0"); break;
						case '6': printf("VDD1 = 1.05V\n\r"); 		vdd1_sel=0x1D; strcpy (current_vdd1, "1.05V\0"); break;
						case '7': printf("VDD1 = 0.8V\n\r");		vdd1_sel=0x1E; strcpy (current_vdd1, "0.8V\0"); break;
						case '8': printf("VDD1 = 1.0V (EXT)\n\r"); 	vdd1_sel=0x1F; strcpy (current_vdd1, "1.0V (EXT)\0"); break;
						default: printf("\n\rError: VDD1 selection failed\n\n\r"); break;
					}
					IOWR_ALTERA_AVALON_PIO_DATA(PIO_OUT_VDD1_BASE, vdd1_sel);
					break;
				case 'b': printf("Select voltage for VDD2:\n\r");
					printf("     0: disable\n\r");
					printf("     1: 3.3V\n\r");
					printf("     2: 3.0V\n\r");
					printf("     3: 2.9V\n\r");
					printf("     4: 2.6V\n\r");
					printf("     5: 2.5V\n\r");
					printf("     6: 2.2V\n\r");
					printf("     7: 2.1V\n\r");
					printf("     8: 1.8V\n\r");
					vdd2=alt_getchar();
					printf("%c\n\r",vdd2);
					switch(vdd2){
						case '0': printf("VDD2 disabled\n\r"); 	vdd2_sel=0x00; strcpy (current_vdd2, "disabled\0"); break;
						case '1': printf("VDD2 = 3.3V\n\r"); 	vdd2_sel=0x28; strcpy (current_vdd2, "3.3V\0"); break;
						case '2': printf("VDD2 = 3.0V\n\r"); 	vdd2_sel=0x29; strcpy (current_vdd2, "3.0V\0"); break;
						case '3': printf("VDD2 = 2.9V\n\r"); 	vdd2_sel=0x2A; strcpy (current_vdd2, "2.9V\0"); break;
						case '4': printf("VDD2 = 2.6V\n\r"); 	vdd2_sel=0x2B; strcpy (current_vdd2, "2.6V\0"); break;
						case '5': printf("VDD2 = 2.5V\n\r"); 	vdd2_sel=0x2C; strcpy (current_vdd2, "2.5V\0"); break;
						case '6': printf("VDD2 = 2.2V\n\r"); 	vdd2_sel=0x2D; strcpy (current_vdd2, "2.2V\0"); break;
						case '7': printf("VDD2 = 2.1V\n\r"); 	vdd2_sel=0x2E; strcpy (current_vdd2, "2.1V\0"); break;
						case '8': printf("VDD2 = 1.8V\n\r"); 	vdd2_sel=0x2F; strcpy (current_vdd2, "1.8V\0"); break;
						default: printf("\n\rError: VDD2 selection failed\n\n\r"); break;
					}
					IOWR_ALTERA_AVALON_PIO_DATA(PIO_OUT_VDD2_BASE, vdd2_sel);
					break;
				case 'c': printf("Select voltage for VDD3:\n\r");
					printf("     0: disable\n\r");
					printf("     1: 3.3V\n\r");
					printf("     2: 2.5V\n\r");
					printf("     3: 1.8V\n\r");
					printf("     4: 1.5V\n\r");
					printf("     5: 1.25V\n\r");
					printf("     6: 1.2V\n\r");
					printf("     7: 0.8V\n\r");
					printf("     8: 1.35V (EXT)\n\r");
					vdd3=alt_getchar();
					printf("%c\n\r",vdd3);
					switch(vdd3){
						case '0': printf("VDD3 disabled\n\r"); 		vdd3_sel=0x00; strcpy (current_vdd3, "disabled\0"); break;
						case '1': printf("VDD3 = 3.3V\n\r"); 		vdd3_sel=0x18; strcpy (current_vdd3, "3.3V\0"); break;
						case '2': printf("VDD3 = 2.5V\n\r"); 		vdd3_sel=0x19; strcpy (current_vdd3, "2.5V\0"); break;
						case '3': printf("VDD3 = 1.8V\n\r"); 		vdd3_sel=0x1A; strcpy (current_vdd3, "1.8V\0"); break;
						case '4': printf("VDD3 = 1.5V\n\r"); 		vdd3_sel=0x1B; strcpy (current_vdd3, "1.5V\0"); break;
						case '5': printf("VDD3 = 1.25V\n\r"); 		vdd3_sel=0x1C; strcpy (current_vdd3, "1.25V\0"); break;
						case '6': printf("VDD3 = 1.2V\n\r"); 		vdd3_sel=0x1D; strcpy (current_vdd3, "1.2V\0"); break;
						case '7': printf("VDD3 = 0.8V\n\r"); 		vdd3_sel=0x1E; strcpy (current_vdd3, "0.8V\0"); break;
						case '8': printf("VDD3 = 1.35V (EXT)\n\r"); vdd3_sel=0x1F; strcpy (current_vdd3, "1.35V (EXT)\0"); break;
						default: printf("\n\rError: VDD3 selection failed\n\n\r"); break;
					}
					IOWR_ALTERA_AVALON_PIO_DATA(PIO_OUT_VDD3_BASE, vdd3_sel);
					break;
				default: printf("\n\rError: Selection failed\n\n\r");	break;
			}
			jmp: ;
		} else {
			IOWR_ALTERA_AVALON_PIO_DATA(PIO_OUT_VDD1_BASE, 0x00); strcpy (current_vdd1, "disabled\0");
			IOWR_ALTERA_AVALON_PIO_DATA(PIO_OUT_VDD2_BASE, 0x00); strcpy (current_vdd2, "disabled\0");
			IOWR_ALTERA_AVALON_PIO_DATA(PIO_OUT_VDD3_BASE, 0x00); strcpy (current_vdd3, "disabled\0");

			dipsw_status=IORD_ALTERA_AVALON_PIO_DATA(PIO_IN_DIP_SW_BASE);
			if (old_dipsw_status != dipsw_status) {
				switch (dipsw_status){
					case 0x00:  printf("Selected voltages via dip_sw:\n\r     VDD1 1.5V \n\r     VDD2 3.3V\n\r     VDD3 3.3V\n\r"); break;
					case 0x01:  printf("Selected voltages via dip_sw:\n\r     VDD1 1.45V\n\r     VDD2 3.0V\n\r     VDD3 2.5V\n\r"); break;
					case 0x02:  printf("Selected voltages via dip_sw:\n\r     VDD1 1.2V \n\r     VDD2 2.9V\n\r     VDD3 1.8V\n\r"); break;
					case 0x03:  printf("Selected voltages via dip_sw:\n\r     VDD1 1.15V\n\r     VDD2 2.6V\n\r     VDD3 1.5V\n\r"); break;
					case 0x04:  printf("Selected voltages via dip_sw:\n\r     VDD1 1.1V \n\r     VDD2 2.5V\n\r     VDD3 1.25V\n\r"); break;
					case 0x05:  printf("Selected voltages via dip_sw:\n\r     VDD1 1.05V\n\r     VDD2 2.2V\n\r     VDD3 1.2V\n\r"); break;
					case 0x06:  printf("Selected voltages via dip_sw:\n\r     VDD1 0.8V \n\r     VDD2 2.1V\n\r     VDD3 0.8V\n\r"); break;
					case 0x07:  printf("Selected voltages via dip_sw:\n\r     VDD1 1.0V (EXT)\n\r     VDD2 1.8V\n\r     VDD3 1.35V (EXT)\n\r"); break;

					case 0x08:  printf("Selected voltages via dip_sw:\n\r     VDD1 1.5V\n\r     VDD2 2.5V\n\r     VDD3 3.3V\n\r"); break;
					case 0x09:  printf("Selected voltages via dip_sw:\n\r     VDD1 1.2V\n\r     VDD2 2.5V\n\r     VDD3 3.3V\n\r"); break;
					case 0x0A:  printf("Selected voltages via dip_sw:\n\r     VDD1 1.0V (EXT)\n\r     VDD2 2.5V\n\r     VDD3 3.3V\n\r"); break;
					case 0x0B:  printf("Selected voltages via dip_sw:\n\r     VDD1 1.5V\n\r     VDD2 3.0V\n\r     VDD3 2.5V\n\r"); break;
					case 0x0C:  printf("Selected voltages via dip_sw:\n\r     VDD1 1.0V (EXT)\n\r     VDD2 3.0V\n\r     VDD3 2.5V\n\r"); break;
					case 0x0D:  printf("Selected voltages via dip_sw:\n\r     VDD1 1.0V (EXT)\n\r     VDD2 1.8V\n\r     VDD3 2.5V\n\r"); break;
					case 0x0E:  printf("Selected voltages via dip_sw:\n\r     VDD1 0.8V\n\r     VDD2 1.8V\n\r     VDD3 2.5V\n\r"); break;
					case 0x0F:  break;
					default: printf("\n\rError: DIP_SW selection not found\n\n\r"); break;
				}
				old_dipsw_status=dipsw_status;
			}
		}


	}

	return 0;
}

