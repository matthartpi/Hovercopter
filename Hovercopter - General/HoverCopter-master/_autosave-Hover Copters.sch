EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Hover Copter"
Date "2021-03-17"
Rev "0.1"
Comp "WWU"
Comment1 "Rob Frohne"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Hover-Copters-rescue:ESP32-DEVKITC-32D-ESP32-DEVKITC-32D U1
U 1 1 60528A5A
P 5450 3300
F 0 "U1" H 5450 4467 50  0000 C CNN
F 1 "ESP32-DEVKITC-32D" H 5450 4376 50  0000 C CNN
F 2 "MODULE_ESP32-DEVKITC-32D" H 5450 3300 50  0001 L BNN
F 3 "https://components101.com/microcontrollers/esp32-devkitc" H 5450 3300 50  0001 L BNN
F 4 "Espressif Systems" H 5450 3300 50  0001 L BNN "MANUFACTURER"
F 5 "4" H 5450 3300 50  0001 L BNN "PARTREV"
F 6 "https://dl.espressif.com/dl/schematics/esp32_devkitc_v4-sch.pdf" H 5450 3300 50  0001 C CNN "Schematic"
	1    5450 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 605294FE
P 8800 4300
F 0 "J3" H 8828 4276 50  0000 L CNN
F 1 "Motor" H 8828 4185 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 8800 4300 50  0001 C CNN
F 3 "~" H 8800 4300 50  0001 C CNN
	1    8800 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PNP_BCE Q2
U 1 1 60529D5D
P 8500 2950
F 0 "Q2" H 8691 2904 50  0000 L CNN
F 1 "D45H11" H 8691 2995 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 8700 3050 50  0001 C CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/ca/ed/25/8e/25/67/40/cf/CD00000942.pdf/files/CD00000942.pdf/jcr:content/translations/en.CD00000942.pdf" H 8500 2950 50  0001 C CNN
	1    8500 2950
	1    0    0    1   
$EndComp
$Comp
L Transistor_BJT:PZT2222A Q1
U 1 1 6052AE5C
P 7750 3300
F 0 "Q1" H 7950 3300 50  0000 L CNN
F 1 "PZT2222A" H 7350 3150 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 7950 3225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 7750 3300 50  0001 L CNN
	1    7750 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6052E232
P 7300 3300
F 0 "R1" V 7093 3300 50  0000 C CNN
F 1 "3.3k" V 7184 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7230 3300 50  0001 C CNN
F 3 "~" H 7300 3300 50  0001 C CNN
	1    7300 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 6052E504
P 8100 2950
F 0 "R2" V 7893 2950 50  0000 C CNN
F 1 "200" V 7984 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8030 2950 50  0001 C CNN
F 3 "~" H 8100 2950 50  0001 C CNN
	1    8100 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 6052F95E
P 9100 3550
F 0 "R5" V 8893 3550 50  0000 C CNN
F 1 "3.3k" V 8984 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9030 3550 50  0001 C CNN
F 3 "~" H 9100 3550 50  0001 C CNN
	1    9100 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 60533B3D
P 9100 4150
F 0 "R6" V 8893 4150 50  0000 C CNN
F 1 "3.3k" V 8984 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9030 4150 50  0001 C CNN
F 3 "~" H 9100 4150 50  0001 C CNN
	1    9100 4150
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 60533F8B
P 9100 2550
F 0 "R4" V 8893 2550 50  0000 C CNN
F 1 "3.3k" V 8984 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9030 2550 50  0001 C CNN
F 3 "~" H 9100 2550 50  0001 C CNN
	1    9100 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 6053428C
P 8600 3800
F 0 "R3" H 8530 3754 50  0000 R CNN
F 1 "0.5" H 8530 3845 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8530 3800 50  0001 C CNN
F 3 "~" H 8600 3800 50  0001 C CNN
	1    8600 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:C C4
U 1 1 60534A12
P 9550 4300
F 0 "C4" H 9665 4346 50  0000 L CNN
F 1 "2.2uF" H 9665 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9588 4150 50  0001 C CNN
F 3 "~" H 9550 4300 50  0001 C CNN
	1    9550 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60534F72
P 9850 3700
F 0 "C3" H 9965 3746 50  0000 L CNN
F 1 "2.2uF" H 9965 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9888 3550 50  0001 C CNN
F 3 "~" H 9850 3700 50  0001 C CNN
	1    9850 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D1
U 1 1 605384B8
P 9650 2550
F 0 "D1" H 9643 2295 50  0000 C CNN
F 1 "150080VS75000" H 9643 2386 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 9650 2550 50  0001 C CNN
F 3 "~" H 9650 2550 50  0001 C CNN
	1    9650 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 60538A92
P 8200 2050
F 0 "C1" H 8315 2096 50  0000 L CNN
F 1 "47uF" H 8315 2005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8238 1900 50  0001 C CNN
F 3 "~" H 8200 2050 50  0001 C CNN
	1    8200 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 605397E1
P 8250 3650
F 0 "C2" H 8365 3696 50  0000 L CNN
F 1 "47nF" H 8365 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8288 3500 50  0001 C CNN
F 3 "~" H 8250 3650 50  0001 C CNN
	1    8250 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 6053A17D
P 9550 4600
F 0 "#PWR011" H 9550 4350 50  0001 C CNN
F 1 "GND" H 9555 4427 50  0000 C CNN
F 2 "" H 9550 4600 50  0001 C CNN
F 3 "" H 9550 4600 50  0001 C CNN
	1    9550 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 6053A2EC
P 8250 3850
F 0 "#PWR08" H 8250 3600 50  0001 C CNN
F 1 "GND" H 8255 3677 50  0000 C CNN
F 2 "" H 8250 3850 50  0001 C CNN
F 3 "" H 8250 3850 50  0001 C CNN
	1    8250 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 6053A734
P 8200 2250
F 0 "#PWR07" H 8200 2000 50  0001 C CNN
F 1 "GND" H 8205 2077 50  0000 C CNN
F 2 "" H 8200 2250 50  0001 C CNN
F 3 "" H 8200 2250 50  0001 C CNN
	1    8200 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6053AA8B
P 7850 3850
F 0 "#PWR05" H 7850 3600 50  0001 C CNN
F 1 "GND" H 7855 3677 50  0000 C CNN
F 2 "" H 7850 3850 50  0001 C CNN
F 3 "" H 7850 3850 50  0001 C CNN
	1    7850 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 6053AEB2
P 8600 4600
F 0 "#PWR09" H 8600 4350 50  0001 C CNN
F 1 "GND" H 8605 4427 50  0000 C CNN
F 2 "" H 8600 4600 50  0001 C CNN
F 3 "" H 8600 4600 50  0001 C CNN
	1    8600 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 6053B2C1
P 9900 2650
F 0 "#PWR012" H 9900 2400 50  0001 C CNN
F 1 "GND" H 9905 2477 50  0000 C CNN
F 2 "" H 9900 2650 50  0001 C CNN
F 3 "" H 9900 2650 50  0001 C CNN
	1    9900 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 6053B644
P 9850 3900
F 0 "#PWR010" H 9850 3650 50  0001 C CNN
F 1 "GND" H 9855 3727 50  0000 C CNN
F 2 "" H 9850 3900 50  0001 C CNN
F 3 "" H 9850 3900 50  0001 C CNN
	1    9850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3850 7850 3500
Wire Wire Line
	7850 2950 7950 2950
Wire Wire Line
	7850 3100 7850 2950
Wire Wire Line
	7450 3300 7550 3300
Wire Wire Line
	8200 1900 8600 1900
Wire Wire Line
	8600 3150 8600 3550
Wire Wire Line
	8950 3550 8600 3550
Connection ~ 8600 3550
Wire Wire Line
	8600 3550 8600 3650
Wire Wire Line
	8950 4150 8600 4150
Wire Wire Line
	8600 4150 8600 3950
Wire Wire Line
	9250 4150 9350 4150
Wire Wire Line
	8600 4600 8600 4400
Wire Wire Line
	9550 4450 9550 4600
Wire Wire Line
	8600 4150 8600 4300
Connection ~ 8600 4150
Wire Wire Line
	8600 2550 8600 2750
Wire Wire Line
	9250 2550 9500 2550
Wire Wire Line
	9900 2550 9900 2650
Wire Wire Line
	9800 2550 9900 2550
Wire Wire Line
	8250 2950 8300 2950
Wire Wire Line
	8250 3500 8250 3100
Connection ~ 8250 2950
Wire Wire Line
	8250 3850 8250 3800
Wire Wire Line
	8200 2200 8200 2250
Wire Wire Line
	9850 3850 9850 3900
$Comp
L Connector:Conn_01x03_Female J1
U 1 1 60550D2C
P 3900 3300
F 0 "J1" H 3792 3585 50  0000 C CNN
F 1 "Angle POT" H 3792 3494 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3900 3300 50  0001 C CNN
F 3 "~" H 3900 3300 50  0001 C CNN
	1    3900 3300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6055465F
P 4250 3450
F 0 "#PWR01" H 4250 3200 50  0001 C CNN
F 1 "GND" H 4350 3450 50  0000 C CNN
F 2 "" H 4250 3450 50  0001 C CNN
F 3 "" H 4250 3450 50  0001 C CNN
	1    4250 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 60555726
P 6500 2400
F 0 "#PWR03" H 6500 2150 50  0001 C CNN
F 1 "GND" H 6505 2227 50  0000 C CNN
F 2 "" H 6500 2400 50  0001 C CNN
F 3 "" H 6500 2400 50  0001 C CNN
	1    6500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2400 6500 2400
$Comp
L power:GND #PWR04
U 1 1 60557E65
P 6500 3000
F 0 "#PWR04" H 6500 2750 50  0001 C CNN
F 1 "GND" H 6505 2827 50  0000 C CNN
F 2 "" H 6500 3000 50  0001 C CNN
F 3 "" H 6500 3000 50  0001 C CNN
	1    6500 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3000 6500 3000
Wire Wire Line
	4100 3200 4650 3200
Wire Wire Line
	4100 3300 4650 3300
Wire Wire Line
	6250 3300 7150 3300
$Comp
L Connector:Barrel_Jack J2
U 1 1 6055F4A7
P 7600 2000
F 0 "J2" H 7657 2325 50  0000 C CNN
F 1 "+5V_IN" H 7657 2234 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 7650 1960 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/cui-devices/PJ-002A/96962" H 7650 1960 50  0001 C CNN
	1    7600 2000
	1    0    0    -1  
$EndComp
Connection ~ 8200 1900
Wire Wire Line
	7900 2100 7900 2200
Wire Wire Line
	7900 2200 8200 2200
Connection ~ 8200 2200
$Comp
L power:+5V #PWR06
U 1 1 605623E0
P 9050 1500
F 0 "#PWR06" H 9050 1350 50  0001 C CNN
F 1 "+5V" H 9065 1673 50  0000 C CNN
F 2 "" H 9050 1500 50  0001 C CNN
F 3 "" H 9050 1500 50  0001 C CNN
	1    9050 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 605629B9
P 4400 4200
F 0 "#PWR02" H 4400 4050 50  0001 C CNN
F 1 "+5V" H 4450 4150 50  0000 C CNN
F 2 "" H 4400 4200 50  0001 C CNN
F 3 "" H 4400 4200 50  0001 C CNN
	1    4400 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4200 4550 4200
NoConn ~ 4650 2400
NoConn ~ 4650 2500
NoConn ~ 4650 2600
NoConn ~ 4650 2700
NoConn ~ 4650 2800
NoConn ~ 4650 2900
NoConn ~ 4650 3400
NoConn ~ 4650 3500
NoConn ~ 4650 3700
NoConn ~ 4650 3900
NoConn ~ 4650 4000
NoConn ~ 4650 4100
NoConn ~ 6250 4200
NoConn ~ 6250 4100
NoConn ~ 6250 4000
NoConn ~ 6250 3900
NoConn ~ 6250 3800
NoConn ~ 6250 3400
NoConn ~ 6250 3200
NoConn ~ 6250 3100
NoConn ~ 6250 2900
NoConn ~ 6250 2800
NoConn ~ 6250 2700
NoConn ~ 6250 2600
NoConn ~ 6250 2500
Text Label 4650 3000 2    50   ~ 0
ADC1_4
Text Label 4650 3100 2    50   ~ 0
ADC1_5
Text Label 9850 3550 0    50   ~ 0
ADC1_5
Text Label 10000 4150 0    50   ~ 0
ADC1_4
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6057B277
P 8600 1900
F 0 "#FLG0101" H 8600 1975 50  0001 C CNN
F 1 "PWR_FLAG" H 8600 2073 50  0000 C CNN
F 2 "" H 8600 1900 50  0001 C CNN
F 3 "~" H 8600 1900 50  0001 C CNN
	1    8600 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1900 8200 1900
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6057E5CC
P 7900 2200
F 0 "#FLG0102" H 7900 2275 50  0001 C CNN
F 1 "PWR_FLAG" H 7900 2373 50  0000 C CNN
F 2 "" H 7900 2200 50  0001 C CNN
F 3 "~" H 7900 2200 50  0001 C CNN
	1    7900 2200
	-1   0    0    1   
$EndComp
Connection ~ 7900 2200
NoConn ~ 4650 3600
NoConn ~ 4650 3800
Wire Wire Line
	4100 3400 4250 3400
Wire Wire Line
	4250 3400 4250 3450
$Comp
L power:GND #PWR013
U 1 1 60592824
P 3100 4200
F 0 "#PWR013" H 3100 3950 50  0001 C CNN
F 1 "GND" H 3000 4100 50  0000 C CNN
F 2 "" H 3100 4200 50  0001 C CNN
F 3 "" H 3100 4200 50  0001 C CNN
	1    3100 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4200 3100 4150
Wire Wire Line
	3100 4150 2950 4150
Text Label 3700 3950 0    50   ~ 0
OUT_A
Text Label 3550 4050 0    50   ~ 0
OUT_B
Text Label 6250 3600 0    50   ~ 0
OUT_A
Text Label 6250 3500 0    50   ~ 0
OUT_B
Wire Wire Line
	4550 3850 4550 4200
Wire Wire Line
	2950 3850 4550 3850
Connection ~ 4550 4200
Wire Wire Line
	4550 4200 4650 4200
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 60599DA6
P 9250 1900
F 0 "J5" H 9222 1874 50  0000 R CNN
F 1 "5V or your voltage" H 9222 1783 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9250 1900 50  0001 C CNN
F 3 "~" H 9250 1900 50  0001 C CNN
	1    9250 1900
	-1   0    0    -1  
$EndComp
Connection ~ 8600 2550
Wire Wire Line
	9050 1500 9050 1700
Wire Wire Line
	9050 2000 8600 2000
Wire Wire Line
	8600 2550 8950 2550
Wire Wire Line
	8600 1900 8600 2000
Connection ~ 8600 1900
Connection ~ 8600 2000
Wire Wire Line
	8600 2000 8600 2550
Connection ~ 9550 4150
Wire Wire Line
	9550 4150 10000 4150
Wire Wire Line
	9250 3550 9500 3550
$Comp
L Device:R R8
U 1 1 605B80D3
P 9500 3700
F 0 "R8" H 9430 3654 50  0000 R CNN
F 1 "6.8k" H 9430 3745 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9430 3700 50  0001 C CNN
F 3 "~" H 9500 3700 50  0001 C CNN
	1    9500 3700
	-1   0    0    1   
$EndComp
Connection ~ 9500 3550
Wire Wire Line
	9500 3550 9850 3550
$Comp
L Device:R R7
U 1 1 605B8643
P 9350 4300
F 0 "R7" H 9550 4250 50  0000 R CNN
F 1 "6.8k" H 9600 4350 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9280 4300 50  0001 C CNN
F 3 "~" H 9350 4300 50  0001 C CNN
	1    9350 4300
	-1   0    0    1   
$EndComp
Connection ~ 9350 4150
Wire Wire Line
	9350 4150 9550 4150
$Comp
L power:GND #PWR014
U 1 1 605B8BBF
P 9350 4600
F 0 "#PWR014" H 9350 4350 50  0001 C CNN
F 1 "GND" H 9355 4427 50  0000 C CNN
F 2 "" H 9350 4600 50  0001 C CNN
F 3 "" H 9350 4600 50  0001 C CNN
	1    9350 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 605B8F77
P 9500 3900
F 0 "#PWR015" H 9500 3650 50  0001 C CNN
F 1 "GND" H 9505 3727 50  0000 C CNN
F 2 "" H 9500 3900 50  0001 C CNN
F 3 "" H 9500 3900 50  0001 C CNN
	1    9500 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3850 9500 3900
Wire Wire Line
	9350 4450 9350 4600
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 605BCAA0
P 9050 1700
F 0 "#FLG0103" H 9050 1775 50  0001 C CNN
F 1 "PWR_FLAG" V 9050 1828 50  0000 L CNN
F 2 "" H 9050 1700 50  0001 C CNN
F 3 "~" H 9050 1700 50  0001 C CNN
	1    9050 1700
	0    1    1    0   
$EndComp
Connection ~ 9050 1700
Wire Wire Line
	9050 1700 9050 1900
Text Notes 9350 3400 0    50   ~ 0
Adjust voltage dividers\nif V_CC is raised.
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 605C79AE
P 2750 3950
F 0 "J4" H 2700 4000 50  0000 R CNN
F 1 "Shaft_Angle_Encoder" H 2900 3700 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2750 3950 50  0001 C CNN
F 3 "https://www.te.com/usa-en/products/connectors/pcb-connectors/intersection/mta-100-mta-156-connectors.html?tab=pgp-story" H 2750 3950 50  0001 C CNN
	1    2750 3950
	1    0    0    -1  
$EndComp
NoConn ~ 6250 3700
Text Notes 9450 1950 0    50   ~ 0
Don't populate jumper \nif other than +5V.
$Comp
L Device:R R9
U 1 1 605F83CE
P 8100 3100
F 0 "R9" V 8100 3350 50  0000 C CNN
F 1 "200" V 8200 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8030 3100 50  0001 C CNN
F 3 "~" H 8100 3100 50  0001 C CNN
	1    8100 3100
	0    1    1    0   
$EndComp
Connection ~ 8250 3100
Wire Wire Line
	8250 3100 8250 2950
Wire Wire Line
	7950 3100 7850 3100
Connection ~ 7850 3100
$Comp
L Device:R R11
U 1 1 6061EE96
P 3200 4050
F 0 "R11" V 3300 4100 50  0000 C CNN
F 1 "1k" V 3200 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3130 4050 50  0001 C CNN
F 3 "~" H 3200 4050 50  0001 C CNN
	1    3200 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 6061F604
P 3200 3950
F 0 "R10" V 3150 4150 50  0000 C CNN
F 1 "1k" V 3200 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3130 3950 50  0001 C CNN
F 3 "~" H 3200 3950 50  0001 C CNN
	1    3200 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 60624140
P 3550 4350
F 0 "R12" H 3480 4304 50  0000 R CNN
F 1 "3.3k" H 3480 4395 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3480 4350 50  0001 C CNN
F 3 "~" H 3550 4350 50  0001 C CNN
	1    3550 4350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 60629BD7
P 4000 4350
F 0 "R13" H 3930 4304 50  0000 R CNN
F 1 "3.3k" H 3930 4395 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3930 4350 50  0001 C CNN
F 3 "~" H 4000 4350 50  0001 C CNN
	1    4000 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3350 4050 3550 4050
Wire Wire Line
	3550 4050 3550 4200
Wire Wire Line
	3350 3950 4000 3950
Wire Wire Line
	4000 3950 4000 4200
$Comp
L power:GND #PWR016
U 1 1 606329A8
P 3550 4500
F 0 "#PWR016" H 3550 4250 50  0001 C CNN
F 1 "GND" H 3555 4327 50  0000 C CNN
F 2 "" H 3550 4500 50  0001 C CNN
F 3 "" H 3550 4500 50  0001 C CNN
	1    3550 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 60632F76
P 4000 4500
F 0 "#PWR017" H 4000 4250 50  0001 C CNN
F 1 "GND" H 4005 4327 50  0000 C CNN
F 2 "" H 4000 4500 50  0001 C CNN
F 3 "" H 4000 4500 50  0001 C CNN
	1    4000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3950 3050 3950
Wire Wire Line
	3050 4050 2950 4050
$EndSCHEMATC
