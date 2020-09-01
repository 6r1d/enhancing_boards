EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MCP4725 breakout board for Arduino"
Date "2020-09-01"
Rev "0.3"
Comp "6r1d"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Analog_DAC:MCP4725xxx-xCH U1
U 1 1 5F3EE7BB
P 5650 1100
F 0 "U1" H 5800 950 50  0000 L CNN
F 1 "MCP4725" H 5700 850 39  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 5650 850 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22039d.pdf" H 5650 1100 50  0001 C CNN
	1    5650 1100
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0101
U 1 1 5F3EF2E3
P 5600 750
F 0 "#PWR0101" H 5600 600 50  0001 C CNN
F 1 "VDD" V 5600 950 50  0000 C CNN
F 2 "" H 5600 750 50  0001 C CNN
F 3 "" H 5600 750 50  0001 C CNN
	1    5600 750 
	0    -1   -1   0   
$EndComp
$Comp
L power:VSS #PWR0102
U 1 1 5F3EFA0D
P 5600 1450
F 0 "#PWR0102" H 5600 1300 50  0001 C CNN
F 1 "VSS" V 5600 1650 50  0000 C CNN
F 2 "" H 5600 1450 50  0001 C CNN
F 3 "" H 5600 1450 50  0001 C CNN
	1    5600 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 1400 5650 1450
$Comp
L Connector_Generic:Conn_01x05 J1
U 1 1 5F3F5A10
P 800 950
F 0 "J1" V 900 950 50  0000 C CNN
F 1 "Conn_01x05" V 900 950 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 800 950 50  0001 C CNN
F 3 "~" H 800 950 50  0001 C CNN
	1    800  950 
	-1   0    0    1   
$EndComp
Text GLabel 1100 750  2    50   Input ~ 0
OUT_0
Text GLabel 6100 1100 2    50   Input ~ 0
OUT_0
$Comp
L Device:C C2
U 1 1 5F3FA5DD
P 3200 1050
F 0 "C2" H 3050 1150 50  0000 L CNN
F 1 "0.1uF" H 3000 850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3238 900 50  0001 C CNN
F 3 "~" H 3200 1050 50  0001 C CNN
	1    3200 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5F3FA9B9
P 3400 1050
F 0 "C1" H 3450 1150 50  0000 L CNN
F 1 "10uF" H 3400 850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3438 900 50  0001 C CNN
F 3 "~" H 3400 1050 50  0001 C CNN
	1    3400 1050
	1    0    0    -1  
$EndComp
Text GLabel 5200 1000 0    50   Input ~ 0
SCL_0
Text GLabel 5200 1100 0    50   Input ~ 0
SDA_0
Text GLabel 1100 950  2    50   Input ~ 0
SCL_0
Text GLabel 1100 850  2    50   Input ~ 0
SDA_0
$Comp
L power:VDD #PWR0107
U 1 1 5F427DEE
P 1100 1050
F 0 "#PWR0107" H 1100 900 50  0001 C CNN
F 1 "VDD" V 1115 1178 50  0000 L CNN
F 2 "" H 1100 1050 50  0001 C CNN
F 3 "" H 1100 1050 50  0001 C CNN
	1    1100 1050
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 900  3300 900 
Wire Wire Line
	3200 1200 3300 1200
Wire Wire Line
	6050 1100 6100 1100
Wire Wire Line
	3300 900  3300 850 
Connection ~ 3300 900 
Wire Wire Line
	3300 900  3400 900 
Wire Wire Line
	3300 1300 3300 1200
Connection ~ 3300 1200
Wire Wire Line
	3300 1200 3400 1200
Wire Wire Line
	1000 1150 1100 1150
Wire Wire Line
	1000 1050 1100 1050
Wire Wire Line
	1000 950  1100 950 
Wire Wire Line
	1000 850  1100 850 
Wire Wire Line
	1000 750  1100 750 
Wire Wire Line
	1850 850  1900 850 
$Comp
L Device:R_US R3
U 1 1 5F48BC92
P 2050 850
F 0 "R3" V 1950 850 50  0000 C CNN
F 1 "10k" V 2150 850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2090 840 50  0001 C CNN
F 3 "~" H 2050 850 50  0001 C CNN
	1    2050 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 850  2300 850 
Wire Wire Line
	2300 850  2300 950 
$Comp
L power:VDD #PWR01
U 1 1 5F48E50C
P 2600 850
F 0 "#PWR01" H 2600 700 50  0001 C CNN
F 1 "VDD" V 2615 978 50  0000 L CNN
F 2 "" H 2600 850 50  0001 C CNN
F 3 "" H 2600 850 50  0001 C CNN
	1    2600 850 
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5F4A1874
P 2400 1150
F 0 "J2" V 2550 1100 50  0000 L CNN
F 1 "Conn_01x03" V 2500 900 50  0001 L CNN
F 2 "Jumper_KiCad_footprints:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm" H 2400 1150 50  0001 C CNN
F 3 "~" H 2400 1150 50  0001 C CNN
	1    2400 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 950  2500 850 
Wire Wire Line
	2500 850  2600 850 
Text GLabel 5200 1200 0    50   Input ~ 0
A0_0
Wire Wire Line
	5200 1200 5250 1200
Text GLabel 2400 900  1    50   Input ~ 0
A0_0
Wire Wire Line
	2400 900  2400 950 
Text Notes 3750 950  0    50   ~ 0
Warning!\nYou only need two pull-up\nresistors per I²C bus,\nnot two per MCP4725 IC.
$Comp
L Device:R_US R1
U 1 1 5F3F98D5
P 4250 1300
F 0 "R1" V 4250 1000 50  0000 L CNN
F 1 "4.7k" V 4350 1250 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4290 1290 50  0001 C CNN
F 3 "~" H 4250 1300 50  0001 C CNN
	1    4250 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 5F3FA1CB
P 4250 1100
F 0 "R2" V 4250 1300 50  0000 L CNN
F 1 "4.7k" V 4150 1000 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4290 1090 50  0001 C CNN
F 3 "~" H 4250 1100 50  0001 C CNN
	1    4250 1100
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR0105
U 1 1 5F413D0A
P 4050 1200
F 0 "#PWR0105" H 4050 1050 50  0001 C CNN
F 1 "VDD" V 4050 1300 50  0000 L CNN
F 2 "" H 4050 1200 50  0001 C CNN
F 3 "" H 4050 1200 50  0001 C CNN
	1    4050 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4400 1300 4450 1300
Wire Wire Line
	4400 1100 4450 1100
Wire Wire Line
	4050 1200 4100 1200
Wire Wire Line
	4100 1200 4100 1100
Wire Wire Line
	4100 1200 4100 1300
Connection ~ 4100 1200
Text Notes 4500 1600 2    50   ~ 0
I²C pullup resistors
Wire Wire Line
	5200 1000 5250 1000
Wire Wire Line
	5200 1100 5250 1100
Text GLabel 4450 1300 2    50   Input ~ 0
SCL_0
Text GLabel 4450 1100 2    50   Input ~ 0
SDA_0
Wire Wire Line
	5650 750  5650 800 
$Comp
L power:VDD #PWR0103
U 1 1 5F51225E
P 3300 850
F 0 "#PWR0103" H 3300 700 50  0001 C CNN
F 1 "VDD" H 3315 1023 50  0000 C CNN
F 2 "" H 3300 850 50  0001 C CNN
F 3 "" H 3300 850 50  0001 C CNN
	1    3300 850 
	1    0    0    -1  
$EndComp
Wire Notes Line
	3700 1650 4850 1650
Wire Notes Line
	4850 600  3700 600 
Wire Notes Line
	4850 600  4850 1650
Wire Notes Line
	3700 600  3700 1650
Wire Notes Line
	2950 600  2950 1650
Wire Notes Line
	2950 1650 3650 1650
Wire Notes Line
	3650 1650 3650 600 
Wire Notes Line
	3650 600  2950 600 
Text Notes 3000 1600 0    50   ~ 0
PWR capacitors
Wire Notes Line
	600  600  600  1650
Wire Notes Line
	600  1650 1500 1650
Wire Notes Line
	1500 1650 1500 600 
Wire Notes Line
	1500 600  600  600 
Wire Wire Line
	5600 1450 5650 1450
Wire Wire Line
	5600 750  5650 750 
Wire Notes Line
	4900 600  6400 600 
Wire Notes Line
	4900 600  4900 1650
Wire Notes Line
	4900 1650 6400 1650
Wire Notes Line
	6400 1650 6400 600 
Text Notes 650  1600 0    50   ~ 0
IO pins
Wire Notes Line
	1550 600  1550 1650
Text Notes 650  1450 0    50   ~ 0
VDD is (+)\nVSS is (-)
$Comp
L power:VSS #PWR0104
U 1 1 5F57D921
P 3300 1300
F 0 "#PWR0104" H 3300 1150 50  0001 C CNN
F 1 "VSS" H 3315 1473 50  0000 C CNN
F 2 "" H 3300 1300 50  0001 C CNN
F 3 "" H 3300 1300 50  0001 C CNN
	1    3300 1300
	-1   0    0    1   
$EndComp
$Comp
L power:VSS #PWR0106
U 1 1 5F57E6F3
P 1100 1150
F 0 "#PWR0106" H 1100 1000 50  0001 C CNN
F 1 "VSS" V 1100 1350 50  0000 C CNN
F 2 "" H 1100 1150 50  0001 C CNN
F 3 "" H 1100 1150 50  0001 C CNN
	1    1100 1150
	0    1    1    0   
$EndComp
$Comp
L power:VSS #PWR0108
U 1 1 5F57F777
P 1850 850
F 0 "#PWR0108" H 1850 700 50  0001 C CNN
F 1 "VSS" V 1850 1050 50  0000 C CNN
F 2 "" H 1850 850 50  0001 C CNN
F 3 "" H 1850 850 50  0001 C CNN
	1    1850 850 
	0    -1   -1   0   
$EndComp
Wire Notes Line
	1550 600  2900 600 
Wire Notes Line
	2900 600  2900 1650
Wire Notes Line
	1550 1650 2900 1650
Text Notes 1600 1600 0    50   ~ 0
I²C addr jumper pad
Text Notes 4950 1600 0    50   ~ 0
MCP4725 IC
$EndSCHEMATC
