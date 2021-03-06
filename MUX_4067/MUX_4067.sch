EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "16-pin analog / digital multiplexor breakout board"
Date "2020-09-01"
Rev "0.2"
Comp "6r1d"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:CD74HC4067SM U1
U 1 1 5F3F31DD
P 2550 2000
F 0 "U1" V 2500 1950 50  0000 C CNN
F 1 "CD74HC4067SM" V 2600 1950 50  0000 C CNN
F 2 "Package_SO:SSOP-24_5.3x8.2mm_P0.65mm" H 3600 1000 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4067.pdf" H 2200 2850 50  0001 C CNN
	1    2550 2000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 5F3F39F6
P 2550 950
F 0 "#PWR0101" H 2550 800 50  0001 C CNN
F 1 "VCC" H 2565 1123 50  0000 C CNN
F 2 "" H 2550 950 50  0001 C CNN
F 3 "" H 2550 950 50  0001 C CNN
	1    2550 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 950  2550 1000
$Comp
L power:GND #PWR0102
U 1 1 5F3F6232
P 2550 3150
F 0 "#PWR0102" H 2550 2900 50  0001 C CNN
F 1 "GND" H 2555 2977 50  0000 C CNN
F 2 "" H 2550 3150 50  0001 C CNN
F 3 "" H 2550 3150 50  0001 C CNN
	1    2550 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3100 2550 3150
$Comp
L Connector_Generic:Conn_01x16 J2
U 1 1 5F3F7113
P 3350 2000
F 0 "J2" V 3500 1950 50  0000 L CNN
F 1 "Conn_01x16" V 3450 1900 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 3350 2000 50  0001 C CNN
F 3 "~" H 3350 2000 50  0001 C CNN
	1    3350 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1300 3150 1300
Wire Wire Line
	3050 1400 3150 1400
Wire Wire Line
	3050 1500 3150 1500
Wire Wire Line
	3050 1600 3150 1600
Wire Wire Line
	3050 1700 3150 1700
Wire Wire Line
	3050 2800 3150 2800
Wire Wire Line
	3150 2700 3050 2700
Wire Wire Line
	3050 2600 3150 2600
Wire Wire Line
	3050 2500 3150 2500
Wire Wire Line
	3050 2400 3150 2400
Wire Wire Line
	3050 2300 3150 2300
Wire Wire Line
	3150 2200 3050 2200
Wire Wire Line
	3050 2100 3150 2100
Wire Wire Line
	3050 2000 3150 2000
Wire Wire Line
	3050 1900 3150 1900
Wire Wire Line
	3050 1800 3150 1800
Text GLabel 2000 1500 0    50   Input ~ 0
COM
Text GLabel 2000 2600 0    50   Input ~ 0
EN
Wire Wire Line
	2000 2600 2050 2600
Wire Wire Line
	2000 1500 2050 1500
Text GLabel 2000 1900 0    50   Input ~ 0
S0
Text GLabel 2000 2000 0    50   Input ~ 0
S1
Text GLabel 2000 2100 0    50   Input ~ 0
S2
Text GLabel 2000 2200 0    50   Input ~ 0
S3
Wire Wire Line
	2000 1900 2050 1900
Wire Wire Line
	2000 2000 2050 2000
Wire Wire Line
	2000 2100 2050 2100
Wire Wire Line
	2000 2200 2050 2200
$Comp
L Connector_Generic:Conn_01x08 J1
U 1 1 5F4020EA
P 1050 1900
F 0 "J1" V 1200 1850 50  0000 C CNN
F 1 "Conn_01x08" V 1150 1850 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1050 1900 50  0001 C CNN
F 3 "~" H 1050 1900 50  0001 C CNN
	1    1050 1900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5F403AD0
P 1350 2200
F 0 "#PWR0103" H 1350 1950 50  0001 C CNN
F 1 "GND" V 1355 2072 50  0000 R CNN
F 2 "" H 1350 2200 50  0001 C CNN
F 3 "" H 1350 2200 50  0001 C CNN
	1    1350 2200
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR0104
U 1 1 5F40413E
P 1350 2100
F 0 "#PWR0104" H 1350 1950 50  0001 C CNN
F 1 "VCC" V 1365 2228 50  0000 L CNN
F 2 "" H 1350 2100 50  0001 C CNN
F 3 "" H 1350 2100 50  0001 C CNN
	1    1350 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 2100 1350 2100
Wire Wire Line
	1250 2200 1350 2200
Text GLabel 1350 2000 2    50   Input ~ 0
EN
Wire Wire Line
	1250 2000 1350 2000
Text GLabel 1350 1900 2    50   Input ~ 0
S0
Text GLabel 1350 1800 2    50   Input ~ 0
S1
Text GLabel 1350 1700 2    50   Input ~ 0
S2
Text GLabel 1350 1600 2    50   Input ~ 0
S3
Text GLabel 1350 1500 2    50   Input ~ 0
COM
Wire Wire Line
	1250 1900 1350 1900
Wire Wire Line
	1250 1800 1350 1800
Wire Wire Line
	1250 1700 1350 1700
Wire Wire Line
	1250 1600 1350 1600
Wire Wire Line
	1250 1500 1350 1500
$Comp
L Device:R_US R1
U 1 1 5F40AEA9
P 4150 1450
F 0 "R1" H 4218 1496 50  0000 L CNN
F 1 "10k" H 4218 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4190 1440 50  0001 C CNN
F 3 "~" H 4150 1450 50  0001 C CNN
	1    4150 1450
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5F40B248
P 4150 850
F 0 "C1" H 4265 896 50  0000 L CNN
F 1 "0.1uF" H 4265 805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4188 700 50  0001 C CNN
F 3 "~" H 4150 850 50  0001 C CNN
	1    4150 850 
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5F40BF3B
P 4400 850
F 0 "#PWR01" H 4400 700 50  0001 C CNN
F 1 "VCC" H 4415 1023 50  0000 C CNN
F 2 "" H 4400 850 50  0001 C CNN
F 3 "" H 4400 850 50  0001 C CNN
	1    4400 850 
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F40C82F
P 3900 850
F 0 "#PWR02" H 3900 600 50  0001 C CNN
F 1 "GND" H 3905 677 50  0000 C CNN
F 2 "" H 3900 850 50  0001 C CNN
F 3 "" H 3900 850 50  0001 C CNN
	1    3900 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 850  4300 850 
Wire Wire Line
	4000 850  3900 850 
$Comp
L power:GND #PWR03
U 1 1 5F413973
P 3900 1450
F 0 "#PWR03" H 3900 1200 50  0001 C CNN
F 1 "GND" H 3905 1277 50  0000 C CNN
F 2 "" H 3900 1450 50  0001 C CNN
F 3 "" H 3900 1450 50  0001 C CNN
	1    3900 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 1450 3900 1450
Text GLabel 4450 1450 2    50   Input ~ 0
EN
Wire Wire Line
	4450 1450 4300 1450
Wire Notes Line
	1750 3400 3600 3400
Wire Notes Line
	1750 700  3600 700 
Wire Notes Line
	3600 700  3600 3400
Wire Notes Line
	1750 3400 1750 700 
Wire Notes Line
	1700 700  1700 3400
Wire Notes Line
	1700 3400 750  3400
Wire Notes Line
	750  3400 750  700 
Wire Notes Line
	750  700  1700 700 
Text Notes 800  3350 0    50   ~ 0
Inputs
Text Notes 1800 3350 0    50   ~ 0
Mux IC
Text Notes 3700 1850 0    50   ~ 0
Pull-down resistor\nfor Enable pin
Text Notes 3700 1250 0    50   ~ 0
Power input capacitor
Wire Notes Line
	3650 700  4700 700 
Wire Notes Line
	4700 1300 3650 1300
Wire Notes Line
	3650 700  3650 1300
Wire Notes Line
	4700 700  4700 1300
Wire Notes Line
	3650 1350 4700 1350
Wire Notes Line
	4700 1350 4700 1900
Wire Notes Line
	4700 1900 3650 1900
Wire Notes Line
	3650 1900 3650 1350
$EndSCHEMATC
