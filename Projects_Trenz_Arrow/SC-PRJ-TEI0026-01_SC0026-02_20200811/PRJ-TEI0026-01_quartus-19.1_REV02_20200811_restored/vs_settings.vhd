--=============================================================================
-- Company: Trenz Electronic GmbH
--
-- TEI0026 MAX10 U2
--
--
-- Description:
-- Voltage settings
-- For DIP_SW[3...0] = 1111, voltage levels and user LEDs are set by Nios
-- else voltage level and user LEDs are set by DIP switch.
--=============================================================================

library ieee;
	use ieee.std_logic_1164.all;

entity vs_settings is
	port
	(
	-- Input
	-- DIP Switch
		DIP_SW0 		: IN 	STD_LOGIC;
		DIP_SW1 		: IN 	STD_LOGIC;
		DIP_SW2 		: IN 	STD_LOGIC;
		DIP_SW3 		: IN 	STD_LOGIC;
	
	-- NIOS
	-- User LEDs
		LED_USER0_i	: IN STD_LOGIC;
		LED_USER1_i	: IN STD_LOGIC;
		LED_USER2_i	: IN STD_LOGIC;
		LED_USER3_i	: IN STD_LOGIC;
		
	-- DCDC VDD1
		VDD1_VS0_i	: IN STD_LOGIC;
		VDD1_VS1_i	: IN STD_LOGIC;
		VDD1_VS2_i	: IN STD_LOGIC;
		VDD1_EN_i	: IN STD_LOGIC;
		LED_VDD1_i	: IN STD_LOGIC;
	
	-- DCDC VDD2
		VDD2_VS0_i	: IN STD_LOGIC;
		VDD2_VS1_i	: IN STD_LOGIC;
		VDD2_VS2_i	: IN STD_LOGIC;
		VDD2_EN_i	: IN STD_LOGIC;
		VDD2_LLM_i	: IN STD_LOGIC;
		LED_VDD2_i	: IN STD_LOGIC;
		
	-- DCDC VDD3
		VDD3_VS0_i	: IN STD_LOGIC;
		VDD3_VS1_i	: IN STD_LOGIC;
		VDD3_VS2_i	: IN STD_LOGIC;
		VDD3_EN_i	: IN STD_LOGIC;
		LED_VDD3_i	: IN STD_LOGIC;
		

	
	-- Output
	-- User LEDs
		LED_USER0	: OUT STD_LOGIC;
		LED_USER1	: OUT STD_LOGIC;
		LED_USER2	: OUT STD_LOGIC;
		LED_USER3	: OUT STD_LOGIC;
		
	-- DCDC VDD1
		VDD1_VS0		: OUT STD_LOGIC;
		VDD1_VS1		: OUT STD_LOGIC;
		VDD1_VS2	 	: OUT STD_LOGIC;
		VDD1_EN	 	: OUT STD_LOGIC;
		LED_VDD1	 	: OUT STD_LOGIC;
	
	-- DCDC VDD1
		VDD2_VS0		: OUT STD_LOGIC;
		VDD2_VS1		: OUT STD_LOGIC;
		VDD2_VS2	 	: OUT STD_LOGIC;
		VDD2_EN	 	: OUT STD_LOGIC;
		VDD2_LLM	 	: OUT STD_LOGIC;
		LED_VDD2	 	: OUT STD_LOGIC;
	
	-- DCDC VDD3
		VDD3_VS0		: OUT STD_LOGIC;
		VDD3_VS1		: OUT STD_LOGIC;
		VDD3_VS2	 	: OUT STD_LOGIC;
		VDD3_EN	 	: OUT STD_LOGIC;
		LED_VDD3	 	: OUT STD_LOGIC
		
	);
end entity;

architecture behavioural of vs_settings is
	
begin
	
-------------------------------------------------------------------------------------------------------------
	-- DIP Switch VDD Overview
	-- DIP_SW3 DIP_SW2 DIP_SW1 DIP_SW0	VDD3   			VDD2   	VDD1
	--       0       0       0       0	3.3  V			3.3 V		1.50 V
	--       0       0       0       1	2.5  V			3.0 V		1.45 V
	--       0       0       1       0	1.8  V			2.9 V		1.20 V
	--       0       0       1       1	1.5  V			2.6 V		1.15 V
	--       0       1       0       0	1.25 V			2.5 V		1.10 V
	--       0       1       0       1	1.2  V			2.2 V		1.05 V
	--       0       1       1       0	0.8  V			2.1 V		0.8  V
	--       0       1       1       1	EXT (1.35 V)	1.8 V		EXT (1.0 V)
	--
	--       1       0       0       0	3.3 V				2.5 V  	1.50 V
	--       1       0       0       1	3.3 V				2.5 V  	1.20 V
	--       1       0       1       0	3.3 V				2.5 V  	EXT (1.0 V)
	--       1       0       1       1	2.5 V				3.0 V		1.50 V
	--       1       1       0       0	2.5 V				3.0 V		EXT (1.0 V)
	--       1       1       0       1	2.5 V				1.8 V		EXT (1.0 V)
	--       1       1       1       0	2.5 V				1.8 V		0.8  V
	--       1       1       1       1	Nios 				Nios 		Nios
-------------------------------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------------------------------
	-- User LEDs
-------------------------------------------------------------------------------------------------------------
	LED_USER0	<=	LED_USER0_i when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '1' and DIP_SW0 = '1') else DIP_SW0;	
	LED_USER1	<=	LED_USER1_i when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '1' and DIP_SW0 = '1') else DIP_SW1;	
	LED_USER2	<=	LED_USER2_i when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '1' and DIP_SW0 = '1') else DIP_SW2;	
	LED_USER3	<=	LED_USER3_i when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '1' and DIP_SW0 = '1') else DIP_SW3;		
						

-------------------------------------------------------------------------------------------------------------
	-- Nios VDD1
	-- DIP_SW3 DIP_SW2 DIP_SW1 DIP_SW0	VDD		VDD1_VS2	VDD1_VS1	VDD1_VS0
	--       0       0       0       0	1.50 V			 0			 0			 0
	--       0       0       0       1	1.45 V			 0			 0			 1
	--       0       0       1       0	1.20 V			 0			 1			 0
	--       0       0       1       1	1.15 V			 0			 1			 1
	--       0       1       0       0	1.10 V			 1			 0			 0
	--       0       1       0       1	1.05 V			 1			 0			 1
	--       0       1       1       0	0.8  V			 1			 1			 0
	--       0       1       1       1	EXT (1.0 V)		 1			 1			 1
	--
	--       1       0       0       0	1.50 V			 0			 0			 0
	--       1       0       0       1	1.20 V			 0			 1			 0
	--       1       0       1       0	EXT (1.0 V)		 1			 1			 1
	--       1       0       1       1	1.50 V			 0			 0			 0
	--       1       1       0       0	EXT (1.0 V)		 1			 1			 1
	--       1       1       0       1	EXT (1.0 V)		 1			 1			 1
	--       1       1       1       0	0.8  V			 1			 1			 0
	--       1       1       1       1	NIOS			 NIOS		 NIOS 	 NIOS
-------------------------------------------------------------------------------------------------------------
	VDD1_VS0		<=	DIP_SW0	when DIP_SW3 = '0' else												
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '0' and DIP_SW0 = '0') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '0' and DIP_SW0 = '1') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '1' and DIP_SW0 = '0') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '1' and DIP_SW0 = '1') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '0' and DIP_SW0 = '0') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '0' and DIP_SW0 = '1') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '1' and DIP_SW0 = '0') else
						VDD1_VS0_i;
	
	VDD1_VS1		<=	DIP_SW1	when DIP_SW3 = '0' else					
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '0' and DIP_SW0 = '0') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '0' and DIP_SW0 = '1') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '1' and DIP_SW0 = '0') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '1' and DIP_SW0 = '1') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '0' and DIP_SW0 = '0') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '0' and DIP_SW0 = '1') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '1' and DIP_SW0 = '0') else
						VDD1_VS1_i;
						
	VDD1_VS2		<=	DIP_SW2	when DIP_SW3 = '0' else						
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '0' and DIP_SW0 = '0') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '0' and DIP_SW0 = '1') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '1' and DIP_SW0 = '0') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '1' and DIP_SW0 = '1') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '0' and DIP_SW0 = '0') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '0' and DIP_SW0 = '1') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '1' and DIP_SW0 = '0') else
						VDD1_VS2_i;
				
	VDD1_EN		<= VDD1_EN_i	when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '1' and DIP_SW0 = '1') else
						'1';
						
	LED_VDD1		<= LED_VDD1_i	when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '1' and DIP_SW0 = '1') else
						'1';				
						
-------------------------------------------------------------------------------------------------------------						
	-- Nios VDD2
	-- DIP_SW3 DIP_SW2 DIP_SW1 DIP_SW0	VDD		VDD2_VS2	VDD2_VS1	VDD2_VS0
	--       0       0       0       0	1.8 V			 0			 0			 0
	--       0       0       0       1	3.0 V			 0			 0			 1
	--       0       0       1       0	2.9 V			 0			 1			 0
	--       0       0       1       1	2.6 V			 0			 1			 1
	--       0       1       0       0	2.5 V			 1			 0			 0
	--       0       1       0       1	2.2 V			 1			 0			 1
	--       0       1       1       0	2.1 V			 1			 1			 0
	--       0       1       1       1	1.8 V			 1			 1			 1
	--
	--       1       0       0       0	2.5 V			 1			 0			 0
	--       1       0       0       1	2.5 V			 1			 0			 0
	--       1       0       1       0	2.5 V			 1			 0			 0
	--       1       0       1       1	3.0 V			 0			 0			 1
	--       1       1       0       0	3.0 V			 0			 0			 1
	--       1       1       0       1	1.8 V			 0			 0			 0	
	--       1       1       1       0	1.8 V			 0			 0			 0
	--       1       1       1       1	Nios		 Nios	 	 Nios	 	 Nios
-------------------------------------------------------------------------------------------------------------	
	VDD2_VS0		<=	DIP_SW0	when DIP_SW3 = '0' else		
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '0' and DIP_SW0 = '0') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '0' and DIP_SW0 = '1') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '1' and DIP_SW0 = '0') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '1' and DIP_SW0 = '1') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '0' and DIP_SW0 = '0') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '0' and DIP_SW0 = '1') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '1' and DIP_SW0 = '0') else
						VDD2_VS0_i;
	
	VDD2_VS1		<=	DIP_SW1	when DIP_SW3 = '0' else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '0' and DIP_SW0 = '0') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '0' and DIP_SW0 = '1') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '1' and DIP_SW0 = '0') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '1' and DIP_SW0 = '1') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '0' and DIP_SW0 = '0') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '0' and DIP_SW0 = '1') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '1' and DIP_SW0 = '0') else
						VDD2_VS1_i;
						
	VDD2_VS2		<=	DIP_SW2 when DIP_SW3 = '0' else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '0' and DIP_SW0 = '0') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '0' and DIP_SW0 = '1') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '1' and DIP_SW0 = '0') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '1' and DIP_SW0 = '1') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '0' and DIP_SW0 = '0') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '0' and DIP_SW0 = '1') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '1' and DIP_SW0 = '0') else
						VDD2_VS2_i;	
				
	VDD2_EN		<= VDD2_EN_i	when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '1' and DIP_SW0 = '1') else
						'1';
						
	VDD2_LLM		<= VDD2_LLM_i	when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '1' and DIP_SW0 = '1') else
						'0';
						
	LED_VDD2		<= LED_VDD2_i	when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '1' and DIP_SW0 = '1') else
						'1';		

-------------------------------------------------------------------------------------------------------------
	-- Nios VDD3
	-- DIP_SW3 DIP_SW2 DIP_SW1 DIP_SW0	VDD		VDD3_VS2	VDD3_VS1	VDD3_VS0
	--       0       0       0       0	3.3  V			 0			 0			 0
	--       0       0       0       1	2.5  V		 	 0			 0			 1
	--       0       0       1       0	1.8  V			 0			 1			 0
	--       0       0       1       1	1.5  V			 0			 1			 1
	--       0       1       0       0	1.25 V			 1			 0			 0
	--       0       1       0       1	1.2  V	 		 1			 0			 1
	--       0       1       1       0	0.8  V 			 1			 1			 0
	--       0       1       1       1	EXT (1.35 V) 	 1			 1			 1
	--
	--       1       0       0       0	3.3  V			 0			 0			 0
	--       1       0       0       1	3.3  V			 0			 0			 0
	--       1       0       1       0	3.3  V			 0			 0			 0
	--       1       0       1       1	2.5  V		 	 0			 0			 1
	--       1       1       0       0	2.5  V		 	 0			 0			 1
	--       1       1       0       1	2.5  V		 	 0			 0			 1
	--       1       1       1       0	2.5  V		 	 0			 0			 1
	--       1       1       1       1	Nios			Nios		 Nios		 Nios
-------------------------------------------------------------------------------------------------------------	
	VDD3_VS0		<=	DIP_SW0	when DIP_SW3 = '0' else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '0' and DIP_SW0 = '0') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '0' and DIP_SW0 = '1') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '1' and DIP_SW0 = '0') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '1' and DIP_SW0 = '1') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '0' and DIP_SW0 = '0') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '0' and DIP_SW0 = '1') else
						'1' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '1' and DIP_SW0 = '0') else
						VDD3_VS0_i;
	
	VDD3_VS1		<=	DIP_SW1	when DIP_SW3 = '0' else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '0' and DIP_SW0 = '0') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '0' and DIP_SW0 = '1') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '1' and DIP_SW0 = '0') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '1' and DIP_SW0 = '1') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '0' and DIP_SW0 = '0') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '0' and DIP_SW0 = '1') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '1' and DIP_SW0 = '0') else
						VDD3_VS1_i;
						
	VDD3_VS2		<=	DIP_SW2	when DIP_SW3 = '0' else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '0' and DIP_SW0 = '0') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '0' and DIP_SW0 = '1') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '1' and DIP_SW0 = '0') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '0' and DIP_SW1 = '1' and DIP_SW0 = '1') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '0' and DIP_SW0 = '0') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '0' and DIP_SW0 = '1') else
						'0' when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '1' and DIP_SW0 = '0') else
						VDD3_VS2_i;
						
	VDD3_EN		<= VDD3_EN_i	when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '1' and DIP_SW0 = '1') else
						'1';
											
	LED_VDD3		<= LED_VDD3_i	when (DIP_SW3 = '1' and DIP_SW2 = '1' and DIP_SW1 = '1' and DIP_SW0 = '1') else
						'1';
						
	
end architecture;