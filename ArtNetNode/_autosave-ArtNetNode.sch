EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R1
U 1 1 5DC46D07
P 3900 3900
F 0 "R1" V 3693 3900 50  0000 C CNN
F 1 "220" V 3784 3900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3830 3900 50  0001 C CNN
F 3 "~" H 3900 3900 50  0001 C CNN
	1    3900 3900
	0    1    1    0   
$EndComp
$Comp
L project_lib:WiFi_Kit_8 MCU1
U 1 1 5DC4EA0E
P 6300 3300
F 0 "MCU1" H 6300 2485 50  0000 C CNN
F 1 "WiFi_Kit_8" H 6300 2576 50  0000 C CNN
F 2 "ArtNetNode:Heltec_Wifi_Kit_8" H 6450 3950 50  0001 C CNN
F 3 "" H 6450 3950 50  0001 C CNN
	1    6300 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 4300 3650 4300
Wire Wire Line
	4350 3900 4050 3900
Wire Wire Line
	5000 3600 5000 3700
Wire Wire Line
	5250 2850 5800 2850
NoConn ~ 6800 2750
NoConn ~ 6800 2850
NoConn ~ 6800 2950
NoConn ~ 6800 3050
NoConn ~ 6800 3150
NoConn ~ 6800 3250
NoConn ~ 6800 3350
NoConn ~ 6800 3450
NoConn ~ 6800 3650
NoConn ~ 5800 3650
NoConn ~ 5800 3450
NoConn ~ 5800 3350
NoConn ~ 5800 3250
NoConn ~ 5800 3150
NoConn ~ 5800 3050
NoConn ~ 5800 2950
NoConn ~ 5800 2750
Wire Notes Line
	3000 3650 4250 3650
Wire Notes Line
	4250 3650 4250 4700
Wire Notes Line
	4250 4700 3000 4700
Wire Notes Line
	3000 4700 3000 3650
Wire Notes Line
	4300 3550 4300 4600
Wire Notes Line
	4300 4600 5100 4600
Wire Notes Line
	5100 4600 5100 3550
Wire Notes Line
	5100 3500 4300 3500
Wire Notes Line
	5700 4700 7200 4700
Wire Notes Line
	7200 4700 7200 2350
Wire Notes Line
	7200 2350 5700 2350
Wire Notes Line
	5700 2350 5700 4700
Wire Notes Line
	7350 4000 7350 4750
Wire Notes Line
	7350 4750 8350 4750
Wire Notes Line
	8350 4750 8350 4000
Wire Notes Line
	8350 4000 7350 4000
Text Notes 3050 3600 0    50   ~ 0
Connector / Signal Quality
Text Notes 4450 3450 0    50   ~ 0
Optional\nLogic Level\nShifter\n
Text Notes 6400 2300 0    50   ~ 0
MCU
Text Notes 7800 3950 0    50   ~ 0
5V IN
Text Notes 5250 4250 0    50   ~ 0
GND\n
Text Notes 5250 4550 0    50   ~ 0
+5V
Wire Wire Line
	3500 4200 3500 4150
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5DC450C7
P 3300 4300
F 0 "J1" H 3218 3975 50  0000 C CNN
F 1 "Conn_01x03" H 3218 4066 50  0000 C CNN
F 2 "ArtNetNode:GRUNDGEHAEUSE_PTSM_0_5__3_HHI_2_5_THR" H 3300 4300 50  0001 C CNN
F 3 "~" H 3300 4300 50  0001 C CNN
	1    3300 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 4400 3500 4450
Wire Wire Line
	7450 4200 7450 4150
Wire Wire Line
	7450 4450 7450 4400
Wire Wire Line
	4400 3600 4400 4150
Connection ~ 4400 4150
$Comp
L plan44:74AHCT125 U1
U 1 1 5DC484B8
P 4800 3900
F 0 "U1" H 4306 3821 50  0000 R CNN
F 1 "74AHCT125" H 4306 3912 50  0000 R CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 4800 3900 50  0001 C CNN
F 3 "" H 4800 3900 50  0001 C CNN
	1    4800 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 3600 4800 3600
Connection ~ 4800 3600
Wire Wire Line
	4800 3600 5000 3600
Wire Wire Line
	5000 4100 5000 4450
Connection ~ 5000 4450
Wire Wire Line
	5000 4450 5600 4450
Wire Wire Line
	4400 4150 6800 4150
Wire Wire Line
	6800 3850 6800 4150
Connection ~ 6800 4150
Wire Wire Line
	6800 4150 7450 4150
Wire Wire Line
	6800 3750 7100 3750
Wire Wire Line
	7100 3750 7100 4450
Connection ~ 7100 4450
Wire Wire Line
	7100 4450 7450 4450
Wire Wire Line
	3750 3900 3650 3900
Wire Wire Line
	3650 3900 3650 4300
Wire Wire Line
	5250 2850 5250 3900
Wire Wire Line
	3500 4150 3900 4150
Wire Wire Line
	3500 4450 3900 4450
$Comp
L Device:CP C1
U 1 1 5DC690AB
P 3900 4300
F 0 "C1" H 3782 4254 50  0000 R CNN
F 1 "CP" H 3782 4345 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 3938 4150 50  0001 C CNN
F 3 "~" H 3900 4300 50  0001 C CNN
	1    3900 4300
	-1   0    0    1   
$EndComp
Connection ~ 3900 4450
Wire Wire Line
	3900 4450 5000 4450
Connection ~ 3900 4150
Wire Wire Line
	3900 4150 4400 4150
$Comp
L Connector:Barrel_Jack_Switch J2
U 1 1 5DC740E6
P 7750 4300
F 0 "J2" H 7520 4250 50  0000 R CNN
F 1 "Barrel_Jack_Switch" H 7520 4341 50  0000 R CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 7800 4260 50  0001 C CNN
F 3 "~" H 7800 4260 50  0001 C CNN
	1    7750 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	7450 4300 7450 4200
Connection ~ 7450 4200
Wire Wire Line
	5250 2850 4900 2850
Connection ~ 5250 2850
Wire Wire Line
	4350 2850 4350 3900
Connection ~ 4350 3900
Wire Wire Line
	4350 2850 4700 2850
$Comp
L Device:Jumper_NO_Small JP1
U 1 1 5DC7CC19
P 4800 2850
F 0 "JP1" H 4800 3035 50  0000 C CNN
F 1 "Jumper_NO_Small" H 4800 2944 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4800 2850 50  0001 C CNN
F 3 "~" H 4800 2850 50  0001 C CNN
	1    4800 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J4
U 1 1 5DD57026
P 8200 2900
F 0 "J4" H 8280 2892 50  0000 L CNN
F 1 "Conn_01x12" H 8280 2801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 8200 2900 50  0001 C CNN
F 3 "~" H 8200 2900 50  0001 C CNN
	1    8200 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J3
U 1 1 5DD5AB62
P 7450 3000
F 0 "J3" H 7368 2175 50  0000 C CNN
F 1 "Conn_01x12" H 7368 2266 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 7450 3000 50  0001 C CNN
F 3 "~" H 7450 3000 50  0001 C CNN
	1    7450 3000
	-1   0    0    1   
$EndComp
Text Label 6800 2750 0    50   ~ 0
11
Text Label 6800 2850 0    50   ~ 0
8
Text Label 6800 2950 0    50   ~ 0
6
Text Label 6800 3050 0    50   ~ 0
10
Text Label 6800 3150 0    50   ~ 0
12
Text Label 6800 3250 0    50   ~ 0
13
Text Label 6800 3350 0    50   ~ 0
15
Text Label 6800 3450 0    50   ~ 0
16
Text Label 6800 3550 0    50   ~ 0
4
Text Label 6800 3650 0    50   ~ 0
3
Text Label 6800 3750 0    50   ~ 0
2
Text Label 6800 3850 0    50   ~ 0
1
Text Label 5800 2750 2    50   ~ 0
9
Text Label 5800 2850 2    50   ~ 0
14
Text Label 5800 2950 2    50   ~ 0
5
Text Label 5800 3050 2    50   ~ 0
25
Text Label 5800 3150 2    50   ~ 0
26
Text Label 5800 3250 2    50   ~ 0
24
Text Label 5800 3350 2    50   ~ 0
18
Text Label 5800 3450 2    50   ~ 0
17
Text Label 5800 3550 2    50   ~ 0
19
Text Label 5800 3650 2    50   ~ 0
20
Text Label 5800 3750 2    50   ~ 0
21
Text Label 5800 3850 2    50   ~ 0
7
Text Label 8000 2400 2    50   ~ 0
11
Text Label 8000 2500 2    50   ~ 0
8
Text Label 8000 2600 2    50   ~ 0
6
Text Label 8000 2700 2    50   ~ 0
10
Text Label 8000 2800 2    50   ~ 0
12
Text Label 8000 2900 2    50   ~ 0
13
Text Label 8000 3000 2    50   ~ 0
15
Text Label 8000 3100 2    50   ~ 0
16
Text Label 8000 3200 2    50   ~ 0
4
Text Label 8000 3300 2    50   ~ 0
3
Text Label 8000 3400 2    50   ~ 0
2
Text Label 8000 3500 2    50   ~ 0
1
Text Label 7650 2400 0    50   ~ 0
9
Text Label 7650 2500 0    50   ~ 0
14
Text Label 7650 2600 0    50   ~ 0
5
Text Label 7650 2700 0    50   ~ 0
25
Text Label 7650 2800 0    50   ~ 0
26
Text Label 7650 2900 0    50   ~ 0
24
Text Label 7650 3000 0    50   ~ 0
18
Text Label 7650 3100 0    50   ~ 0
17
Text Label 7650 3200 0    50   ~ 0
19
Text Label 7650 3300 0    50   ~ 0
20
Text Label 7650 3400 0    50   ~ 0
21
Text Label 7650 3500 0    50   ~ 0
7
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5DD67206
P 9100 1850
F 0 "H1" H 9200 1899 50  0000 L CNN
F 1 "MountingHole_Pad" H 9200 1808 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 9100 1850 50  0001 C CNN
F 3 "~" H 9100 1850 50  0001 C CNN
	1    9100 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5DD676F1
P 9100 1950
F 0 "#PWR0101" H 9100 1700 50  0001 C CNN
F 1 "GND" H 9105 1777 50  0000 C CNN
F 2 "" H 9100 1950 50  0001 C CNN
F 3 "" H 9100 1950 50  0001 C CNN
	1    9100 1950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5DD69A5A
P 9100 2300
F 0 "H2" H 9200 2349 50  0000 L CNN
F 1 "MountingHole_Pad" H 9200 2258 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 9100 2300 50  0001 C CNN
F 3 "~" H 9100 2300 50  0001 C CNN
	1    9100 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5DD69A60
P 9100 2400
F 0 "#PWR0102" H 9100 2150 50  0001 C CNN
F 1 "GND" H 9105 2227 50  0000 C CNN
F 2 "" H 9100 2400 50  0001 C CNN
F 3 "" H 9100 2400 50  0001 C CNN
	1    9100 2400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5DD6A9C8
P 9100 2750
F 0 "H3" H 9200 2799 50  0000 L CNN
F 1 "MountingHole_Pad" H 9200 2708 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 9100 2750 50  0001 C CNN
F 3 "~" H 9100 2750 50  0001 C CNN
	1    9100 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DD6A9CE
P 9100 2850
F 0 "#PWR0103" H 9100 2600 50  0001 C CNN
F 1 "GND" H 9105 2677 50  0000 C CNN
F 2 "" H 9100 2850 50  0001 C CNN
F 3 "" H 9100 2850 50  0001 C CNN
	1    9100 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DD7A202
P 6800 3550
F 0 "#PWR01" H 6800 3300 50  0001 C CNN
F 1 "GND" V 6805 3422 50  0000 R CNN
F 2 "" H 6800 3550 50  0001 C CNN
F 3 "" H 6800 3550 50  0001 C CNN
	1    6800 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 3750 5600 3750
Wire Wire Line
	5600 3750 5600 4450
Connection ~ 5600 4450
Wire Wire Line
	5600 4450 7100 4450
$Comp
L power:GND #PWR?
U 1 1 5DD6DC76
P 7450 4150
F 0 "#PWR?" H 7450 3900 50  0001 C CNN
F 1 "GND" H 7455 3977 50  0000 C CNN
F 2 "" H 7450 4150 50  0001 C CNN
F 3 "" H 7450 4150 50  0001 C CNN
	1    7450 4150
	-1   0    0    1   
$EndComp
Connection ~ 7450 4150
$EndSCHEMATC
