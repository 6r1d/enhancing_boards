EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "5V PCM5102 interface for Raspberry PI (PLL Operation)"
Date "2020-08-26"
Rev "0.5"
Comp "6r1d"
Comment1 "Attention: board is not tested yet"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Audio:PCM5102 U1
U 1 1 5F48D9D8
P 1600 3900
F 0 "U1" H 1600 3950 50  0000 C CNN
F 1 "PCM5102A" H 1600 3850 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 1550 4650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/pcm5102.pdf" H 1550 4650 50  0001 C CNN
	1    1600 3900
	-1   0    0    1   
$EndComp
Text Notes 550  2050 0    50   ~ 0
I2S and power inputs
$Comp
L Device:R_US R_LED1
U 1 1 5F57708C
P 1450 2250
F 0 "R_LED1" V 1245 2250 50  0001 C CNN
F 1 "1k" V 1550 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1490 2240 50  0001 C CNN
F 3 "~" H 1450 2250 50  0001 C CNN
	1    1450 2250
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5F577C6A
P 1050 2250
F 0 "D1" H 1043 2467 50  0001 C CNN
F 1 "LED" H 1050 2150 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Castellated" H 1050 2250 50  0001 C CNN
F 3 "~" H 1050 2250 50  0001 C CNN
	1    1050 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2250 1300 2250
$Comp
L power:GND #PWR012
U 1 1 5F57AAB1
P 850 2250
F 0 "#PWR012" H 850 2000 50  0001 C CNN
F 1 "GND" V 855 2122 50  0000 R CNN
F 2 "" H 850 2250 50  0001 C CNN
F 3 "" H 850 2250 50  0001 C CNN
	1    850  2250
	0    1    1    0   
$EndComp
Wire Wire Line
	850  2250 900  2250
Wire Wire Line
	1600 2250 1650 2250
Text Notes 550  2500 0    50   ~ 0
Power LED
$Comp
L Device:R_US R_DAC_R1
U 1 1 5F4AEF28
P 3550 4150
F 0 "R_DAC_R1" V 3450 4000 50  0000 C CNN
F 1 "471" V 3450 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3590 4140 50  0001 C CNN
F 3 "~" H 3550 4150 50  0001 C CNN
	1    3550 4150
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R_DAC_L1
U 1 1 5F4AFA6B
P 3550 4700
F 0 "R_DAC_L1" V 3450 4550 50  0000 C CNN
F 1 "471" V 3450 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3590 4690 50  0001 C CNN
F 3 "~" H 3550 4700 50  0001 C CNN
	1    3550 4700
	0    1    1    0   
$EndComp
$Comp
L Device:C C_DAC_R1
U 1 1 5F4B00DF
P 3550 3900
F 0 "C_DAC_R1" V 3700 4100 50  0000 C CNN
F 1 "2.2nF" V 3700 3750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3588 3750 50  0001 C CNN
F 3 "~" H 3550 3900 50  0001 C CNN
	1    3550 3900
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C_DAC_L1
U 1 1 5F4B0871
P 3550 4450
F 0 "C_DAC_L1" V 3400 4250 50  0000 C CNN
F 1 "2.2nF" V 3400 4600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3588 4300 50  0001 C CNN
F 3 "~" H 3550 4450 50  0001 C CNN
	1    3550 4450
	0    1    1    0   
$EndComp
Text GLabel 1050 4200 0    50   Input ~ 0
PCM_OUT_R
Text GLabel 1050 4300 0    50   Input ~ 0
PCM_OUT_L
Wire Wire Line
	1050 4200 1100 4200
Wire Wire Line
	1050 4300 1100 4300
Text GLabel 3300 4150 0    50   Input ~ 0
PCM_OUT_R
Text GLabel 3300 4700 0    50   Input ~ 0
PCM_OUT_L
Wire Wire Line
	3300 4150 3400 4150
Wire Wire Line
	3300 4700 3400 4700
$Comp
L power:GND #PWR09
U 1 1 5F4D28B0
P 3300 3900
F 0 "#PWR09" H 3300 3650 50  0001 C CNN
F 1 "GND" V 3305 3772 50  0000 R CNN
F 2 "" H 3300 3900 50  0001 C CNN
F 3 "" H 3300 3900 50  0001 C CNN
	1    3300 3900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5F4D2F76
P 3300 4450
F 0 "#PWR011" H 3300 4200 50  0001 C CNN
F 1 "GND" V 3305 4322 50  0000 R CNN
F 2 "" H 3300 4450 50  0001 C CNN
F 3 "" H 3300 4450 50  0001 C CNN
	1    3300 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 3900 3300 3900
Wire Wire Line
	3300 4450 3400 4450
Text GLabel 3900 4550 2    50   Input ~ 0
DAC_OUT_L
Text GLabel 3900 4000 2    50   Input ~ 0
DAC_OUT_R
Text GLabel 1050 3700 0    50   Input ~ 0
PCM_CAPM
Text GLabel 1050 4000 0    50   Input ~ 0
PCM_CAPP
Text GLabel 1050 3500 0    50   Input ~ 0
PCM_LDOO
Text GLabel 1050 3400 0    50   Input ~ 0
PCM_VNEG
Wire Wire Line
	1050 3400 1100 3400
Wire Wire Line
	1050 3500 1100 3500
Wire Wire Line
	1050 3700 1100 3700
Wire Wire Line
	1050 4000 1100 4000
Text GLabel 1500 4550 3    50   Input ~ 0
PCM_AVDD
Wire Wire Line
	1500 4500 1500 4550
Text Notes 2750 4900 0    50   ~ 0
PCM5102 outputs
Text GLabel 1600 4550 3    50   Input ~ 0
PCM_DVDD
Text GLabel 1700 4550 3    50   Input ~ 0
PCM_CPVDD
Text GLabel 2150 4300 2    50   Input ~ 0
PCM_LRCK
Text GLabel 2150 4200 2    50   Input ~ 0
PCM_DIN
Text GLabel 2150 4100 2    50   Input ~ 0
PCM_BCK
Text GLabel 2150 4000 2    50   Input ~ 0
PCM_SCK
Wire Wire Line
	2100 4000 2150 4000
Wire Wire Line
	2100 4100 2150 4100
Wire Wire Line
	2100 4200 2150 4200
Wire Wire Line
	2100 4300 2150 4300
Wire Wire Line
	1600 4500 1600 4550
Wire Wire Line
	1700 4500 1700 4550
Text GLabel 2150 3800 2    50   Input ~ 0
PCM_FLT
Text GLabel 2150 3700 2    50   Input ~ 0
PCM_DEMP
Text GLabel 2150 3600 2    50   Input ~ 0
PCM_XSMT
Text GLabel 2150 3500 2    50   Input ~ 0
PCM_FMT
Text GLabel 1700 3150 1    50   Input ~ 0
PCM_CPGND
Text GLabel 1600 3150 1    50   Input ~ 0
PCM_DGND
Text GLabel 1500 3150 1    50   Input ~ 0
PCM_AGND
Wire Wire Line
	1700 3150 1700 3200
Wire Wire Line
	1600 3150 1600 3200
Wire Wire Line
	1500 3150 1500 3200
Wire Wire Line
	2100 3500 2150 3500
Wire Wire Line
	2150 3600 2100 3600
Wire Wire Line
	2100 3700 2150 3700
Wire Wire Line
	2100 3800 2150 3800
Wire Notes Line
	500  5100 2650 5100
Wire Notes Line
	500  5100 500  2600
Wire Notes Line
	500  2600 2650 2600
Wire Notes Line
	2650 5100 2650 2600
Wire Wire Line
	7450 1350 7450 1600
Connection ~ 7450 1350
Connection ~ 7550 1350
Wire Wire Line
	7550 1350 7450 1350
Wire Wire Line
	7450 1100 7450 1350
Wire Wire Line
	7550 1350 7600 1350
$Comp
L power:+3.3VA #PWR0103
U 1 1 5F517C03
P 7600 1350
F 0 "#PWR0103" H 7600 1200 50  0001 C CNN
F 1 "+3.3VA" V 7615 1478 50  0000 L CNN
F 2 "" H 7600 1350 50  0001 C CNN
F 3 "" H 7600 1350 50  0001 C CNN
	1    7600 1350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5F51787E
P 6800 1350
F 0 "#PWR0104" H 6800 1100 50  0001 C CNN
F 1 "GND" V 6805 1222 50  0000 R CNN
F 2 "" H 6800 1350 50  0001 C CNN
F 3 "" H 6800 1350 50  0001 C CNN
	1    6800 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 1350 6850 1600
Connection ~ 6850 1350
Wire Wire Line
	6850 1350 6800 1350
Wire Wire Line
	7300 1600 7450 1600
Wire Wire Line
	6850 1100 6850 1350
Wire Wire Line
	7000 1600 6850 1600
Wire Wire Line
	7300 1100 7450 1100
Wire Wire Line
	7000 1100 6850 1100
$Comp
L Device:C C_AVDD_2
U 1 1 5F50AE51
P 7150 1600
F 0 "C_AVDD_2" V 6898 1600 50  0000 C CNN
F 1 "0.1u" V 6989 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7188 1450 50  0001 C CNN
F 3 "~" H 7150 1600 50  0001 C CNN
	1    7150 1600
	0    1    1    0   
$EndComp
$Comp
L Device:C C_AVDD_1
U 1 1 5F50A947
P 7150 1100
F 0 "C_AVDD_1" V 6898 1100 50  0000 C CNN
F 1 "10u" V 6989 1100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7188 950 50  0001 C CNN
F 3 "~" H 7150 1100 50  0001 C CNN
	1    7150 1100
	0    1    1    0   
$EndComp
$Comp
L Device:C C_LDOO1
U 1 1 5F673479
P 7100 2300
F 0 "C_LDOO1" V 6950 2300 50  0000 C CNN
F 1 "0.1 uF" V 6850 2300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7138 2150 50  0001 C CNN
F 3 "~" H 7100 2300 50  0001 C CNN
	1    7100 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C_DVDD1
U 1 1 5F678D53
P 7100 2900
F 0 "C_DVDD1" V 7250 2900 50  0000 C CNN
F 1 "0.1 uF" V 7350 2900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7138 2750 50  0001 C CNN
F 3 "~" H 7100 2900 50  0001 C CNN
	1    7100 2900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5F68855F
P 7600 2700
F 0 "#PWR0105" H 7600 2450 50  0001 C CNN
F 1 "GND" V 7605 2572 50  0000 R CNN
F 2 "" H 7600 2700 50  0001 C CNN
F 3 "" H 7600 2700 50  0001 C CNN
	1    7600 2700
	0    -1   -1   0   
$EndComp
Text GLabel 6900 2300 0    50   Input ~ 0
PCM_LDOO
Wire Notes Line
	6400 2050 6400 3400
Text GLabel 6900 3000 0    50   Input ~ 0
PCM_DVDD
Text GLabel 7600 2500 2    50   Input ~ 0
PCM_DGND
$Comp
L power:+3.3V #PWR0107
U 1 1 5F6E71AF
P 6900 2800
F 0 "#PWR0107" H 6900 2650 50  0001 C CNN
F 1 "+3.3V" V 6900 3050 50  0000 C CNN
F 2 "" H 6900 2800 50  0001 C CNN
F 3 "" H 6900 2800 50  0001 C CNN
	1    6900 2800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5F7A7EE1
P 4850 2400
F 0 "#PWR0108" H 4850 2150 50  0001 C CNN
F 1 "GND" V 4850 2250 50  0000 R CNN
F 2 "" H 4850 2400 50  0001 C CNN
F 3 "" H 4850 2400 50  0001 C CNN
	1    4850 2400
	0    1    1    0   
$EndComp
Text GLabel 5400 2000 2    50   Input ~ 0
PCM_CPVDD
$Comp
L Device:C C_CPGND1
U 1 1 5F62C688
P 5250 2200
F 0 "C_CPGND1" V 4998 2200 50  0000 C CNN
F 1 "0.1uF" V 5089 2200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5288 2050 50  0001 C CNN
F 3 "~" H 5250 2200 50  0001 C CNN
	1    5250 2200
	1    0    0    -1  
$EndComp
Text GLabel 5400 2400 2    50   Input ~ 0
PCM_CPGND
Text GLabel 5550 900  2    50   Input ~ 0
PCM_CPGND
Text GLabel 5000 900  0    50   Input ~ 0
PCM_VNEG
$Comp
L Device:C C_PCM_VNEG_1
U 1 1 5F64CA50
P 5200 900
F 0 "C_PCM_VNEG_1" V 5450 900 50  0000 C CNN
F 1 "2.2uF" V 5350 900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5238 750 50  0001 C CNN
F 3 "~" H 5200 900 50  0001 C CNN
	1    5200 900 
	0    1    1    0   
$EndComp
Text GLabel 3850 1050 2    50   Input ~ 0
PCM_SCK
$Comp
L Connector_Generic:Conn_01x02 J_SCK1
U 1 1 5F6D0D56
P 3600 1050
F 0 "J_SCK1" V 3700 850 50  0000 L CNN
F 1 "Conn_01x02" H 3350 1150 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3600 1050 50  0001 C CNN
F 3 "~" H 3600 1050 50  0001 C CNN
	1    3600 1050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5F6DBB90
P 3850 950
F 0 "#PWR0109" H 3850 700 50  0001 C CNN
F 1 "GND" V 3855 822 50  0000 R CNN
F 2 "" H 3850 950 50  0001 C CNN
F 3 "" H 3850 950 50  0001 C CNN
	1    3850 950 
	0    -1   -1   0   
$EndComp
Text GLabel 5000 1650 0    50   Input ~ 0
PCM_CAPM
Text GLabel 5500 1650 2    50   Input ~ 0
PCM_CAPP
$Comp
L Device:C C_PCM_CAPS_1
U 1 1 5F7BA7BE
P 5250 1650
F 0 "C_PCM_CAPS_1" V 5100 1400 50  0000 C CNN
F 1 "2.2uF" V 5100 1950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5288 1500 50  0001 C CNN
F 3 "~" H 5250 1650 50  0001 C CNN
	1    5250 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 1650 5100 1650
Text GLabel 3200 3250 0    50   Input ~ 0
PCM_DGND
$Comp
L power:GND #PWR0110
U 1 1 5F6B051B
P 3300 3250
F 0 "#PWR0110" H 3300 3000 50  0001 C CNN
F 1 "GND" V 3300 3100 50  0000 R CNN
F 2 "" H 3300 3250 50  0001 C CNN
F 3 "" H 3300 3250 50  0001 C CNN
	1    3300 3250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 3250 3300 3250
$Comp
L power:+3.3V #PWR0111
U 1 1 5F6BE852
P 3300 3100
F 0 "#PWR0111" H 3300 2950 50  0001 C CNN
F 1 "+3.3V" V 3300 3350 50  0000 C CNN
F 2 "" H 3300 3100 50  0001 C CNN
F 3 "" H 3300 3100 50  0001 C CNN
	1    3300 3100
	0    1    1    0   
$EndComp
Text GLabel 3200 3100 0    50   Input ~ 0
PCM_DVDD
Wire Wire Line
	3300 3100 3200 3100
$Comp
L power:GND #PWR0112
U 1 1 5F7A023C
P 5450 950
F 0 "#PWR0112" H 5450 700 50  0001 C CNN
F 1 "GND" V 5550 950 50  0000 R CNN
F 2 "" H 5450 950 50  0001 C CNN
F 3 "" H 5450 950 50  0001 C CNN
	1    5450 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 900  5050 900 
$Comp
L power:+3.3V #PWR0113
U 1 1 5F7851A4
P 4900 2000
F 0 "#PWR0113" H 4900 1850 50  0001 C CNN
F 1 "+3.3V" V 4900 2250 50  0000 C CNN
F 2 "" H 4900 2000 50  0001 C CNN
F 3 "" H 4900 2000 50  0001 C CNN
	1    4900 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 2000 5250 2000
Wire Wire Line
	4850 2400 5250 2400
Wire Wire Line
	5250 2000 5250 2050
Connection ~ 5250 2000
Wire Wire Line
	5250 2000 5400 2000
Wire Wire Line
	5250 2350 5250 2400
Connection ~ 5250 2400
Wire Wire Line
	5250 2400 5400 2400
$Comp
L Device:R R_LCK_1
U 1 1 5F4AC46B
P 1400 1600
F 0 "R_LCK_1" V 1193 1600 50  0001 C CNN
F 1 "220 / 330" V 1284 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1330 1600 50  0001 C CNN
F 3 "~" H 1400 1600 50  0001 C CNN
	1    1400 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R R_DIN_1
U 1 1 5F4ABD09
P 1400 1400
F 0 "R_DIN_1" V 1193 1400 50  0001 C CNN
F 1 "220 / 330" V 1284 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1330 1400 50  0001 C CNN
F 3 "~" H 1400 1400 50  0001 C CNN
	1    1400 1400
	0    1    1    0   
$EndComp
$Comp
L Device:R R_BCK_1
U 1 1 5F4AB58F
P 1400 1200
F 0 "R_BCK_1" V 1193 1200 50  0001 C CNN
F 1 "220 / 330" V 1284 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1330 1200 50  0001 C CNN
F 3 "~" H 1400 1200 50  0001 C CNN
	1    1400 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R R_SCK_1
U 1 1 5F4A7B3F
P 1400 1000
F 0 "R_SCK_1" V 1193 1000 50  0001 C CNN
F 1 "220 / 330" V 1284 1000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1330 1000 50  0001 C CNN
F 3 "~" H 1400 1000 50  0001 C CNN
	1    1400 1000
	0    1    1    0   
$EndComp
Text GLabel 1650 1600 2    50   Input ~ 0
PCM_LRCK
Text GLabel 1650 1400 2    50   Input ~ 0
PCM_DIN
Text GLabel 1650 1200 2    50   Input ~ 0
PCM_BCK
Text GLabel 1650 1000 2    50   Input ~ 0
PCM_SCK
$Comp
L power:+5V #PWR0102
U 1 1 5F4914C1
P 1250 1900
F 0 "#PWR0102" H 1250 1750 50  0001 C CNN
F 1 "+5V" V 1265 2028 50  0000 L CNN
F 2 "" H 1250 1900 50  0001 C CNN
F 3 "" H 1250 1900 50  0001 C CNN
	1    1250 1900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5F491019
P 1250 1750
F 0 "#PWR0101" H 1250 1500 50  0001 C CNN
F 1 "GND" V 1250 1600 50  0000 R CNN
F 2 "" H 1250 1750 50  0001 C CNN
F 3 "" H 1250 1750 50  0001 C CNN
	1    1250 1750
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 5F48F6EA
P 700 1500
F 0 "J1" H 700 1100 50  0000 C CNN
F 1 "Conn_01x06" H 618 1066 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 700 1500 50  0001 C CNN
F 3 "~" H 700 1500 50  0001 C CNN
	1    700  1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	900  1400 1250 1400
Wire Wire Line
	900  1200 1100 1200
Wire Wire Line
	1100 1200 1100 1000
Wire Wire Line
	1100 1000 1250 1000
Wire Wire Line
	900  1300 1150 1300
Wire Wire Line
	1150 1300 1150 1200
Wire Wire Line
	1150 1200 1250 1200
Wire Wire Line
	900  1500 1150 1500
Wire Wire Line
	1150 1500 1150 1600
Wire Wire Line
	1150 1600 1250 1600
Wire Wire Line
	900  1600 1100 1600
Wire Wire Line
	1100 1600 1100 1750
Wire Wire Line
	1100 1750 1250 1750
Wire Wire Line
	900  1700 1050 1700
Wire Wire Line
	1050 1700 1050 1900
Wire Wire Line
	1050 1900 1250 1900
Wire Wire Line
	1550 1600 1650 1600
Wire Wire Line
	1550 1400 1650 1400
Wire Wire Line
	1550 1200 1650 1200
Wire Wire Line
	1550 1000 1650 1000
Text GLabel 7500 1800 0    50   Input ~ 0
PCM_AVDD
Wire Notes Line
	4500 750  6350 750 
Text GLabel 3200 3400 0    50   Input ~ 0
PCM_AGND
$Comp
L power:GND #PWR0114
U 1 1 5F81B976
P 3300 3400
F 0 "#PWR0114" H 3300 3150 50  0001 C CNN
F 1 "GND" V 3300 3250 50  0000 R CNN
F 2 "" H 3300 3400 50  0001 C CNN
F 3 "" H 3300 3400 50  0001 C CNN
	1    3300 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 3400 3300 3400
Wire Notes Line
	500  2100 2650 2100
Wire Notes Line
	500  750  2650 750 
Wire Wire Line
	7500 1800 7550 1800
Wire Wire Line
	7550 1350 7550 1800
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F52B192
P 2150 1750
F 0 "#FLG0101" H 2150 1825 50  0001 C CNN
F 1 "PWR_FLAG" V 2150 1878 50  0000 L CNN
F 2 "" H 2150 1750 50  0001 C CNN
F 3 "~" H 2150 1750 50  0001 C CNN
	1    2150 1750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5F52BD74
P 2150 1750
F 0 "#PWR0115" H 2150 1500 50  0001 C CNN
F 1 "GND" V 2155 1622 50  0000 R CNN
F 2 "" H 2150 1750 50  0001 C CNN
F 3 "" H 2150 1750 50  0001 C CNN
	1    2150 1750
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 5F52C27B
P 2150 1900
F 0 "#PWR0116" H 2150 1750 50  0001 C CNN
F 1 "+5V" V 2165 2028 50  0000 L CNN
F 2 "" H 2150 1900 50  0001 C CNN
F 3 "" H 2150 1900 50  0001 C CNN
	1    2150 1900
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F52C810
P 2150 1900
F 0 "#FLG0102" H 2150 1975 50  0001 C CNN
F 1 "PWR_FLAG" V 2150 2028 50  0000 L CNN
F 2 "" H 2150 1900 50  0001 C CNN
F 3 "~" H 2150 1900 50  0001 C CNN
	1    2150 1900
	0    -1   -1   0   
$EndComp
Text GLabel 3300 2500 0    50   Input ~ 0
DAC_OUT_R
Text GLabel 3300 2700 0    50   Input ~ 0
DAC_OUT_L
Wire Notes Line
	4450 2300 2700 2300
Wire Wire Line
	3700 4450 3800 4450
Wire Wire Line
	3800 4450 3800 4550
Wire Wire Line
	3800 4700 3700 4700
Wire Wire Line
	3800 4550 3900 4550
Connection ~ 3800 4550
Wire Wire Line
	3800 4550 3800 4700
Wire Wire Line
	3700 3900 3800 3900
Wire Wire Line
	3800 3900 3800 4000
Wire Wire Line
	3800 4150 3700 4150
Wire Wire Line
	3800 4000 3900 4000
Connection ~ 3800 4000
Wire Wire Line
	3800 4000 3800 4150
Text GLabel 3900 2500 2    50   Input ~ 0
AMP_IN_R
Text GLabel 3900 2700 2    50   Input ~ 0
AMP_IN_L
Wire Notes Line
	4450 2250 2700 2250
Text GLabel 3350 1300 0    50   Input ~ 0
PCM_FLT
Text GLabel 3350 1500 0    50   Input ~ 0
PCM_DEMP
Text GLabel 3350 1400 0    50   Input ~ 0
PCM_FMT
$Comp
L power:GND #PWR0117
U 1 1 5F8DBA57
P 3850 1500
F 0 "#PWR0117" H 3850 1250 50  0001 C CNN
F 1 "GND" V 3855 1372 50  0000 R CNN
F 2 "" H 3850 1500 50  0001 C CNN
F 3 "" H 3850 1500 50  0001 C CNN
	1    3850 1500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5F8DBE05
P 3850 1400
F 0 "#PWR0118" H 3850 1150 50  0001 C CNN
F 1 "GND" V 3855 1272 50  0000 R CNN
F 2 "" H 3850 1400 50  0001 C CNN
F 3 "" H 3850 1400 50  0001 C CNN
	1    3850 1400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5F8DC1EB
P 3850 1300
F 0 "#PWR0119" H 3850 1050 50  0001 C CNN
F 1 "GND" V 3855 1172 50  0000 R CNN
F 2 "" H 3850 1300 50  0001 C CNN
F 3 "" H 3850 1300 50  0001 C CNN
	1    3850 1300
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0120
U 1 1 5F8F9ADD
P 3500 2000
F 0 "#PWR0120" H 3500 1850 50  0001 C CNN
F 1 "+3.3V" H 3515 2173 50  0000 C CNN
F 2 "" H 3500 2000 50  0001 C CNN
F 3 "" H 3500 2000 50  0001 C CNN
	1    3500 2000
	0    -1   -1   0   
$EndComp
Text GLabel 3700 2000 2    50   Input ~ 0
PCM_XSMT
$Comp
L Connector_Generic:Conn_01x02 J_XSMT1
U 1 1 5F8FF96B
P 3650 1750
F 0 "J_XSMT1" V 3750 1550 50  0000 L CNN
F 1 "Conn_01x02" V 3613 1830 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3650 1750 50  0001 C CNN
F 3 "~" H 3650 1750 50  0001 C CNN
	1    3650 1750
	0    1    -1   0   
$EndComp
Wire Wire Line
	3700 2000 3650 2000
Wire Wire Line
	3650 2000 3650 1950
Wire Wire Line
	3500 2000 3550 2000
Wire Wire Line
	3550 2000 3550 1950
Wire Notes Line
	2650 2100 2650 750 
Wire Notes Line
	500  2100 500  750 
Wire Notes Line
	500  2150 500  2550
Wire Notes Line
	500  2550 2650 2550
Wire Notes Line
	2650 2550 2650 2150
Wire Notes Line
	2650 2150 500  2150
Wire Notes Line
	8150 3400 9850 3400
Text Notes 8200 2000 0    50   ~ 0
Digital voltage LDO
Text Notes 8200 3350 0    50   ~ 0
Analog voltage LDO
$Comp
L power:+3.3VA #PWR013
U 1 1 5F489C71
P 9350 2400
F 0 "#PWR013" H 9350 2250 50  0001 C CNN
F 1 "+3.3VA" H 9365 2573 50  0000 C CNN
F 2 "" H 9350 2400 50  0001 C CNN
F 3 "" H 9350 2400 50  0001 C CNN
	1    9350 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1250 9350 1300
Wire Wire Line
	9300 1250 9350 1250
Wire Wire Line
	8350 1150 8350 1300
Connection ~ 8350 1150
Connection ~ 8450 1150
Wire Wire Line
	8450 1150 8350 1150
Wire Wire Line
	8350 1050 8350 1150
Wire Wire Line
	9350 1600 9350 1650
$Comp
L power:GND #PWR08
U 1 1 5F51F52C
P 9350 1650
F 0 "#PWR08" H 9350 1400 50  0001 C CNN
F 1 "GND" H 9355 1477 50  0000 C CNN
F 2 "" H 9350 1650 50  0001 C CNN
F 3 "" H 9350 1650 50  0001 C CNN
	1    9350 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1150 9350 1050
Wire Wire Line
	9300 1150 9350 1150
Wire Wire Line
	8350 1600 8350 1650
$Comp
L power:GND #PWR02
U 1 1 5F51F51F
P 8350 1650
F 0 "#PWR02" H 8350 1400 50  0001 C CNN
F 1 "GND" H 8355 1477 50  0000 C CNN
F 2 "" H 8350 1650 50  0001 C CNN
F 3 "" H 8350 1650 50  0001 C CNN
	1    8350 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1250 8450 1150
Wire Wire Line
	8500 1250 8450 1250
Wire Wire Line
	8500 1150 8450 1150
$Comp
L power:+3.3V #PWR07
U 1 1 5F51F512
P 9350 1050
F 0 "#PWR07" H 9350 900 50  0001 C CNN
F 1 "+3.3V" H 9365 1223 50  0000 C CNN
F 2 "" H 9350 1050 50  0001 C CNN
F 3 "" H 9350 1050 50  0001 C CNN
	1    9350 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5F51F508
P 8350 1050
F 0 "#PWR01" H 8350 900 50  0001 C CNN
F 1 "+5V" H 8365 1223 50  0000 C CNN
F 2 "" H 8350 1050 50  0001 C CNN
F 3 "" H 8350 1050 50  0001 C CNN
	1    8350 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1550 8900 1650
$Comp
L power:GND #PWR05
U 1 1 5F51F4FD
P 8900 1650
F 0 "#PWR05" H 8900 1400 50  0001 C CNN
F 1 "GND" H 8905 1477 50  0000 C CNN
F 2 "" H 8900 1650 50  0001 C CNN
F 3 "" H 8900 1650 50  0001 C CNN
	1    8900 1650
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LP2985-3.3 U3
U 1 1 5F51F4F3
P 8900 1250
F 0 "U3" H 8900 1592 50  0000 C CNN
F 1 " TJ9198GSF5-3.3D" H 8900 1501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 8900 1575 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lp2985.pdf" H 8900 1250 50  0001 C CNN
	1    8900 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5F51F4E9
P 9350 1450
F 0 "C9" H 9300 1350 50  0000 C CNN
F 1 "0.01" H 9250 1550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9388 1300 50  0001 C CNN
F 3 "~" H 9350 1450 50  0001 C CNN
	1    9350 1450
	-1   0    0    1   
$EndComp
$Comp
L Device:C C8
U 1 1 5F51F4DF
P 8350 1450
F 0 "C8" H 8300 1350 50  0000 C CNN
F 1 "2.2" H 8250 1550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8388 1300 50  0001 C CNN
F 3 "~" H 8350 1450 50  0001 C CNN
	1    8350 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	9350 2600 9350 2650
Wire Wire Line
	9300 2600 9350 2600
Wire Wire Line
	8350 2500 8350 2650
Connection ~ 8350 2500
Connection ~ 8450 2500
Wire Wire Line
	8450 2500 8350 2500
Wire Wire Line
	8350 2400 8350 2500
Wire Wire Line
	9350 2950 9350 3000
$Comp
L power:GND #PWR010
U 1 1 5F4F6599
P 9350 3000
F 0 "#PWR010" H 9350 2750 50  0001 C CNN
F 1 "GND" H 9355 2827 50  0000 C CNN
F 2 "" H 9350 3000 50  0001 C CNN
F 3 "" H 9350 3000 50  0001 C CNN
	1    9350 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2500 9350 2400
Wire Wire Line
	9300 2500 9350 2500
Wire Wire Line
	8350 2950 8350 3000
$Comp
L power:GND #PWR04
U 1 1 5F4F12A8
P 8350 3000
F 0 "#PWR04" H 8350 2750 50  0001 C CNN
F 1 "GND" H 8355 2827 50  0000 C CNN
F 2 "" H 8350 3000 50  0001 C CNN
F 3 "" H 8350 3000 50  0001 C CNN
	1    8350 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 2600 8450 2500
Wire Wire Line
	8500 2600 8450 2600
Wire Wire Line
	8500 2500 8450 2500
$Comp
L power:+5V #PWR03
U 1 1 5F4E39AE
P 8350 2400
F 0 "#PWR03" H 8350 2250 50  0001 C CNN
F 1 "+5V" H 8365 2573 50  0000 C CNN
F 2 "" H 8350 2400 50  0001 C CNN
F 3 "" H 8350 2400 50  0001 C CNN
	1    8350 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2900 8900 3000
$Comp
L power:GND #PWR06
U 1 1 5F4CAE65
P 8900 3000
F 0 "#PWR06" H 8900 2750 50  0001 C CNN
F 1 "GND" H 8905 2827 50  0000 C CNN
F 2 "" H 8900 3000 50  0001 C CNN
F 3 "" H 8900 3000 50  0001 C CNN
	1    8900 3000
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LP2985-3.3 U2
U 1 1 5F4B8599
P 8900 2600
F 0 "U2" H 8900 2942 50  0000 C CNN
F 1 " TJ9198GSF5-3.3D" H 8900 2851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 8900 2925 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lp2985.pdf" H 8900 2600 50  0001 C CNN
	1    8900 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F4A0FCD
P 9350 2800
F 0 "C6" H 9300 2700 50  0000 C CNN
F 1 "0.01" H 9250 2900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9388 2650 50  0001 C CNN
F 3 "~" H 9350 2800 50  0001 C CNN
	1    9350 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 5F4A05FE
P 8350 2800
F 0 "C5" H 8300 2700 50  0000 C CNN
F 1 "2.2" H 8250 2900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8388 2650 50  0001 C CNN
F 3 "~" H 8350 2800 50  0001 C CNN
	1    8350 2800
	-1   0    0    1   
$EndComp
Text Notes 2750 2200 0    50   ~ 0
Jumpers
Wire Notes Line
	2700 750  4450 750 
Wire Wire Line
	5400 1650 5500 1650
$Comp
L power:+5V #PWR0121
U 1 1 5F8A764E
P 1650 2250
F 0 "#PWR0121" H 1650 2100 50  0001 C CNN
F 1 "+5V" V 1665 2378 50  0000 L CNN
F 2 "" H 1650 2250 50  0001 C CNN
F 3 "" H 1650 2250 50  0001 C CNN
	1    1650 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 2600 7350 2600
Wire Wire Line
	6950 2300 6900 2300
Wire Wire Line
	7600 2500 7500 2500
Wire Wire Line
	7600 2700 7500 2700
Wire Wire Line
	6900 2800 6950 2800
Wire Wire Line
	6950 2800 6950 2900
Wire Wire Line
	6950 3000 6900 3000
Connection ~ 6950 2900
Wire Wire Line
	6950 2900 6950 3000
Wire Wire Line
	7250 2300 7350 2300
Wire Wire Line
	7350 2300 7350 2600
Wire Wire Line
	7350 2600 7350 2900
Wire Wire Line
	7350 2900 7250 2900
Connection ~ 7350 2600
Wire Wire Line
	7500 2500 7500 2600
Connection ~ 7500 2600
Wire Wire Line
	7500 2600 7500 2700
Wire Wire Line
	3850 2500 3900 2500
Wire Wire Line
	3850 2700 3900 2700
Wire Wire Line
	3300 2500 3350 2500
Wire Wire Line
	3300 2700 3350 2700
Wire Wire Line
	3350 2600 3300 2600
Wire Wire Line
	3850 2600 3900 2600
$Comp
L power:GND #PWR0122
U 1 1 5F58C507
P 3300 2600
F 0 "#PWR0122" H 3300 2350 50  0001 C CNN
F 1 "GND" V 3305 2472 50  0000 R CNN
F 2 "" H 3300 2600 50  0001 C CNN
F 3 "" H 3300 2600 50  0001 C CNN
	1    3300 2600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5F58CCF3
P 3900 2600
F 0 "#PWR0123" H 3900 2350 50  0001 C CNN
F 1 "GND" V 3905 2472 50  0000 R CNN
F 2 "" H 3900 2600 50  0001 C CNN
F 3 "" H 3900 2600 50  0001 C CNN
	1    3900 2600
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J_DAC_OUT_1
U 1 1 5F595CFE
P 3550 2600
F 0 "J_DAC_OUT_1" H 3600 2825 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 3600 2826 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 3550 2600 50  0001 C CNN
F 3 "~" H 3550 2600 50  0001 C CNN
	1    3550 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5F4DB952
P 3400 5750
F 0 "#PWR014" H 3400 5500 50  0001 C CNN
F 1 "GND" V 3400 5650 50  0000 R CNN
F 2 "" H 3400 5750 50  0001 C CNN
F 3 "" H 3400 5750 50  0001 C CNN
	1    3400 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 5850 3400 5850
Wire Wire Line
	3250 5650 3400 5650
$Comp
L Connector_Generic:Conn_01x03 J_SND_OUT1
U 1 1 5F4CD4CF
P 3600 5750
F 0 "J_SND_OUT1" V 3700 5550 50  0000 L CNN
F 1 "Conn_01x03" H 3400 5550 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3600 5750 50  0001 C CNN
F 3 "~" H 3600 5750 50  0001 C CNN
	1    3600 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 6000 1000 6050
$Comp
L Device:C C_AL1
U 1 1 5FA121BA
P 3250 7050
F 0 "C_AL1" V 3350 7200 50  0000 C CNN
F 1 "1 uF" V 3350 6850 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3288 6900 50  0001 C CNN
F 3 "~" H 3250 7050 50  0001 C CNN
	1    3250 7050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5F9CFFAE
P 5050 6100
F 0 "#PWR019" H 5050 5850 50  0001 C CNN
F 1 "GND" V 5055 5927 50  0000 C CNN
F 2 "" H 5050 6100 50  0001 C CNN
F 3 "" H 5050 6100 50  0001 C CNN
	1    5050 6100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5000 6100 5050 6100
$Comp
L Device:C C_HPVSS_1
U 1 1 5F9A743A
P 4850 6100
F 0 "C_HPVSS_1" V 4950 6150 50  0000 L CNN
F 1 "1 uF" V 4950 5850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4888 5950 50  0001 C CNN
F 3 "~" H 4850 6100 50  0001 C CNN
	1    4850 6100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1400 6750 1400 6800
Wire Wire Line
	1300 6750 1300 6800
$Comp
L power:GND #PWR018
U 1 1 5F994EF3
P 1400 6800
F 0 "#PWR018" H 1400 6550 50  0001 C CNN
F 1 "GND" V 1405 6627 50  0000 C CNN
F 2 "" H 1400 6800 50  0001 C CNN
F 3 "" H 1400 6800 50  0001 C CNN
	1    1400 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5F9949D8
P 1300 6800
F 0 "#PWR017" H 1300 6550 50  0001 C CNN
F 1 "GND" V 1305 6627 50  0000 C CNN
F 2 "" H 1300 6800 50  0001 C CNN
F 3 "" H 1300 6800 50  0001 C CNN
	1    1300 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5F96DE14
P 950 6000
F 0 "#PWR016" H 950 5750 50  0001 C CNN
F 1 "GND" V 950 5850 50  0000 R CNN
F 2 "" H 950 6000 50  0001 C CNN
F 3 "" H 950 6000 50  0001 C CNN
	1    950  6000
	0    1    1    0   
$EndComp
Text GLabel 3050 7050 0    50   Input ~ 0
AMP_IN_L
$Comp
L power:GND #PWR0124
U 1 1 5F50746D
P 1600 6800
F 0 "#PWR0124" H 1600 6550 50  0001 C CNN
F 1 "GND" V 1605 6627 50  0000 C CNN
F 2 "" H 1600 6800 50  0001 C CNN
F 3 "" H 1600 6800 50  0001 C CNN
	1    1600 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 6750 1600 6800
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J_JMP1
U 1 1 5F5349ED
P 3550 1400
F 0 "J_JMP1" V 3600 1400 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 3600 1626 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 3550 1400 50  0001 C CNN
F 3 "~" H 3550 1400 50  0001 C CNN
	1    3550 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5F575FB3
P 950 6350
F 0 "#PWR0125" H 950 6100 50  0001 C CNN
F 1 "GND" V 950 6200 50  0000 R CNN
F 2 "" H 950 6350 50  0001 C CNN
F 3 "" H 950 6350 50  0001 C CNN
	1    950  6350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5F57647B
P 950 6450
F 0 "#PWR0126" H 950 6200 50  0001 C CNN
F 1 "GND" V 950 6300 50  0000 R CNN
F 2 "" H 950 6450 50  0001 C CNN
F 3 "" H 950 6450 50  0001 C CNN
	1    950  6450
	0    1    1    0   
$EndComp
Wire Wire Line
	950  6350 1000 6350
Wire Wire Line
	1000 6450 950  6450
$Comp
L Amplifier_Audio:TPA6132A2RTE U4
U 1 1 5F96015F
P 1500 6150
F 0 "U4" V 1500 6150 50  0000 C CNN
F 1 "TPA6132A2RTE" V 1600 6150 50  0000 C CNN
F 2 "Package_DFN_QFN:WQFN-16-1EP_3x3mm_P0.5mm_EP1.6x1.6mm_ThermalVias" H 1600 5600 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/tpa6132a2.pdf" H 1200 6700 50  0001 C CNN
	1    1500 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5600 4600 5600
Text GLabel 4550 5600 0    50   Input ~ 0
AMP_CPN1
$Comp
L Device:C CP_P_N1
U 1 1 5F9D2DE1
P 4750 5600
F 0 "CP_P_N1" V 4650 5250 50  0000 L CNN
F 1 "1uF" V 4650 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4788 5450 50  0001 C CNN
F 3 "~" H 4750 5600 50  0001 C CNN
	1    4750 5600
	0    1    1    0   
$EndComp
Text GLabel 4950 5600 2    50   Input ~ 0
AMP_CPP1
Wire Wire Line
	4900 5600 4950 5600
Text GLabel 2050 6350 2    50   Input ~ 0
AMP_CPP1
Text GLabel 2050 6450 2    50   Input ~ 0
AMP_CPN1
Wire Wire Line
	2000 6350 2050 6350
Wire Wire Line
	2000 6450 2050 6450
Text GLabel 950  5850 0    50   Input ~ 0
AMP_INRM
Wire Wire Line
	950  5850 1000 5850
Wire Wire Line
	1000 5700 1000 5750
$Comp
L power:GND #PWR015
U 1 1 5F96E56C
P 950 5700
F 0 "#PWR015" H 950 5450 50  0001 C CNN
F 1 "GND" V 950 5550 50  0000 R CNN
F 2 "" H 950 5700 50  0001 C CNN
F 3 "" H 950 5700 50  0001 C CNN
	1    950  5700
	0    1    1    0   
$EndComp
$Comp
L Device:C C_HPVDD1
U 1 1 5FA2ADD1
P 4850 6700
F 0 "C_HPVDD1" V 4700 7000 50  0000 C CNN
F 1 "2.2 uF" V 4700 6550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4888 6550 50  0001 C CNN
F 3 "~" H 4850 6700 50  0001 C CNN
	1    4850 6700
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C_AR1
U 1 1 5FA0F9C2
P 3250 6800
F 0 "C_AR1" V 3350 6950 50  0000 C CNN
F 1 "1uF" V 3350 6650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3288 6650 50  0001 C CNN
F 3 "~" H 3250 6800 50  0001 C CNN
	1    3250 6800
	0    -1   -1   0   
$EndComp
Text GLabel 3050 6800 0    50   Input ~ 0
AMP_IN_R
Text GLabel 3450 6800 2    50   Input ~ 0
AMP_INRM
Wire Wire Line
	3050 6800 3100 6800
Wire Wire Line
	3400 6800 3450 6800
$Comp
L Device:R R_AMP_EN_2
U 1 1 5F775581
P 3300 6300
F 0 "R_AMP_EN_2" V 3093 6300 50  0001 C CNN
F 1 "220 / 330" V 3184 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3230 6300 50  0001 C CNN
F 3 "~" H 3300 6300 50  0001 C CNN
	1    3300 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	950  6550 1000 6550
$Comp
L power:+5V #PWR0127
U 1 1 5F7860DD
P 4950 6250
F 0 "#PWR0127" H 4950 6100 50  0001 C CNN
F 1 "+5V" V 4950 6450 50  0000 C CNN
F 2 "" H 4950 6250 50  0001 C CNN
F 3 "" H 4950 6250 50  0001 C CNN
	1    4950 6250
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0128
U 1 1 5F79ED4B
P 3500 6300
F 0 "#PWR0128" H 3500 6150 50  0001 C CNN
F 1 "+5V" V 3500 6500 50  0000 C CNN
F 2 "" H 3500 6300 50  0001 C CNN
F 3 "" H 3500 6300 50  0001 C CNN
	1    3500 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 6300 3450 6300
Text Notes 6450 3350 0    50   ~ 0
Caps for digital pwr & LDO
Wire Wire Line
	3050 7050 3100 7050
Text GLabel 3450 7050 2    50   Input ~ 0
AMP_INLM
Text GLabel 950  6200 0    50   Input ~ 0
AMP_INLM
Wire Wire Line
	1000 6200 1000 6150
Wire Wire Line
	3450 7050 3400 7050
Wire Wire Line
	950  5700 1000 5700
Wire Wire Line
	950  6000 1000 6000
$Comp
L Device:C C_AMP_VDD1
U 1 1 5F6952DF
P 4850 6400
F 0 "C_AMP_VDD1" V 4700 6700 50  0000 C CNN
F 1 "2.2 uF" V 4700 6250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4888 6250 50  0001 C CNN
F 3 "~" H 4850 6400 50  0001 C CNN
	1    4850 6400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5F50E39A
P 5050 6400
F 0 "#PWR0106" H 5050 6150 50  0001 C CNN
F 1 "GND" V 5050 6250 50  0000 R CNN
F 2 "" H 5050 6400 50  0001 C CNN
F 3 "" H 5050 6400 50  0001 C CNN
	1    5050 6400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 6400 4700 6400
Wire Notes Line
	6400 750  8100 750 
Wire Notes Line
	2700 3650 2700 4950
Wire Notes Line
	8150 750  8150 2050
Wire Notes Line
	8150 2100 8150 3400
Wire Notes Line
	9850 2100 9850 3400
Wire Notes Line
	8150 2100 9850 2100
Text GLabel 2050 5850 2    50   Input ~ 0
AMP_OUTR
Text GLabel 2050 6050 2    50   Input ~ 0
AMP_OUTL
Text GLabel 3250 5650 0    50   Input ~ 0
AMP_OUTR
Text GLabel 3250 5850 0    50   Input ~ 0
AMP_OUTL
Text GLabel 4650 6100 0    50   Input ~ 0
AMP_HPVSS
Wire Wire Line
	4650 6100 4700 6100
Text GLabel 1600 7100 2    50   Input ~ 0
AMP_HPVSS
Text GLabel 3100 6300 0    50   Input ~ 0
AMP_EN
Wire Wire Line
	3100 6300 3150 6300
Text GLabel 950  6550 0    50   Input ~ 0
AMP_EN
Text GLabel 4600 6400 0    50   Input ~ 0
AMP_VDD
Text GLabel 1350 5500 0    50   Input ~ 0
AMP_VDD
Wire Wire Line
	4650 6400 4600 6400
Connection ~ 4650 6400
Text GLabel 1550 5500 2    50   Input ~ 0
AMP_HPVDD
Text GLabel 4650 6700 0    50   Input ~ 0
AMP_HPVDD
Wire Wire Line
	4700 6700 4650 6700
Wire Wire Line
	1350 5500 1400 5500
Wire Wire Line
	1400 5500 1400 5550
Wire Wire Line
	1500 5550 1500 5500
Wire Wire Line
	1500 5500 1550 5500
Wire Wire Line
	5000 6400 5050 6400
$Comp
L power:GND #PWR0129
U 1 1 5FC370D3
P 5050 6700
F 0 "#PWR0129" H 5050 6450 50  0001 C CNN
F 1 "GND" V 5050 6550 50  0000 R CNN
F 2 "" H 5050 6700 50  0001 C CNN
F 3 "" H 5050 6700 50  0001 C CNN
	1    5050 6700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 6700 5000 6700
Wire Wire Line
	4950 6250 4650 6250
Wire Wire Line
	4650 6250 4650 6400
Wire Wire Line
	1500 7100 1600 7100
Wire Wire Line
	1500 6750 1500 7100
Wire Notes Line
	500  5400 2550 5400
Wire Notes Line
	500  7300 2550 7300
Wire Notes Line
	5500 7050 4000 7050
Wire Wire Line
	2000 5850 2050 5850
Wire Wire Line
	2000 6050 2050 6050
Wire Notes Line
	2600 6550 3950 6550
Wire Notes Line
	3950 5400 2600 5400
Text Notes 2650 6000 0    50   ~ 0
AMP outputs
Wire Notes Line
	2600 6050 3950 6050
Text Notes 2650 6500 0    50   ~ 0
Enable pin with a resistor
Wire Notes Line
	2600 6100 3950 6100
Wire Notes Line
	3950 6050 3950 5400
Wire Notes Line
	2600 6050 2600 5400
Wire Notes Line
	3950 6100 3950 6550
Wire Notes Line
	2600 6100 2600 6550
Text Notes 4050 7000 0    50   ~ 0
Voltage inputs
Wire Notes Line
	4000 7050 4000 5900
Wire Notes Line
	4000 5900 5500 5900
Wire Notes Line
	5500 5850 5500 7000
Text Notes 2650 7250 0    50   ~ 0
Amp input capacitors
Wire Notes Line
	2600 6600 2600 7300
Wire Notes Line
	2600 7300 3950 7300
Wire Notes Line
	3950 7300 3950 6600
Wire Notes Line
	3950 6600 2600 6600
Text Notes 4050 5800 0    50   ~ 0
Charge pump capacitor
Wire Notes Line
	4000 5850 5500 5850
Wire Notes Line
	5500 5800 5500 5350
Wire Notes Line
	5500 5400 4000 5400
Wire Notes Line
	4000 5400 4000 5850
Wire Wire Line
	5450 950  5450 900 
Wire Wire Line
	5450 900  5550 900 
Wire Wire Line
	5350 900  5450 900 
Connection ~ 5450 900 
Wire Wire Line
	3800 950  3850 950 
Wire Wire Line
	3800 1050 3850 1050
Wire Wire Line
	950  6200 1000 6200
Text Notes 550  7250 0    50   ~ 0
TPA6132A2 IC
Wire Notes Line
	2550 5400 2550 7300
Wire Notes Line
	500  5400 500  7300
Text Notes 4550 2800 0    50   ~ 0
Charge pump capacitors
Text Notes 2750 2900 0    50   ~ 0
DAC configuration jumpers
Wire Notes Line
	2700 2300 2700 2950
Wire Notes Line
	2700 2950 4450 2950
Wire Notes Line
	4450 2950 4450 2300
Wire Notes Line
	2700 3600 4450 3600
Wire Notes Line
	4450 3000 2700 3000
Wire Notes Line
	4450 3000 4450 3600
Wire Notes Line
	2700 3000 2700 3600
Text Notes 2750 3550 0    50   ~ 0
DAC power inputs
Text Notes 6450 1950 0    50   ~ 0
DAC power caps
Wire Notes Line
	8100 750  8100 2000
Wire Notes Line
	6400 2000 8100 2000
Wire Notes Line
	6400 750  6400 2000
Text Notes 500  700  0    96   ~ 19
DAC part
Text Notes 500  5350 0    96   ~ 19
AMP part
Wire Notes Line
	8150 750  9850 750 
Wire Notes Line
	9850 750  9850 2050
Wire Notes Line
	9850 2050 8150 2050
Wire Notes Line
	6400 3400 8100 3400
Wire Notes Line
	8100 3400 8100 2050
Wire Notes Line
	6400 2050 8100 2050
Text Notes 550  5050 0    50   ~ 0
DAC chip
Wire Notes Line
	2700 750  2700 2250
Wire Notes Line
	4450 750  4450 2250
Text Notes 4550 1800 0    50   ~ 0
Rail terminals
Text Notes 4550 1300 0    50   ~ 0
-3.3v to ground decoupling terminal
Wire Notes Line
	4500 2850 6350 2850
Wire Notes Line
	4450 3650 4450 4950
Wire Notes Line
	4450 4950 2700 4950
Wire Notes Line
	2700 3650 4450 3650
Text Notes 4550 2550 0    50   ~ 0
VDD and GND
Wire Notes Line
	6350 2850 6350 750 
Wire Notes Line
	4500 2850 4500 750 
$EndSCHEMATC
