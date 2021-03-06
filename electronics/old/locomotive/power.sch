EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:stm32
LIBS:bcan
LIBS:locomotive-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L R_Small R13
U 1 1 58B1C580
P 6700 4000
F 0 "R13" H 6730 4020 50  0000 L CNN
F 1 "33k2" H 6730 3960 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6700 4000 50  0001 C CNN
F 3 "" H 6700 4000 50  0001 C CNN
	1    6700 4000
	1    0    0    -1  
$EndComp
$Comp
L R_Small R14
U 1 1 58B1C5D4
P 6700 4200
F 0 "R14" H 6730 4220 50  0000 L CNN
F 1 "26k1" H 6730 4160 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6700 4200 50  0001 C CNN
F 3 "" H 6700 4200 50  0001 C CNN
	1    6700 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 58B1C6C8
P 6200 4400
F 0 "#PWR035" H 6200 4150 50  0001 C CNN
F 1 "GND" H 6200 4250 50  0000 C CNN
F 2 "" H 6200 4400 50  0001 C CNN
F 3 "" H 6200 4400 50  0001 C CNN
	1    6200 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 58B1C6E4
P 7000 4400
F 0 "#PWR036" H 7000 4150 50  0001 C CNN
F 1 "GND" H 7000 4250 50  0000 C CNN
F 2 "" H 7000 4400 50  0001 C CNN
F 3 "" H 7000 4400 50  0001 C CNN
	1    7000 4400
	1    0    0    -1  
$EndComp
$Comp
L +2V8 #PWR037
U 1 1 58B1CAFB
P 7300 3800
F 0 "#PWR037" H 7300 3650 50  0001 C CNN
F 1 "+2V8" H 7300 3940 50  0000 C CNN
F 2 "" H 7300 3800 50  0001 C CNN
F 3 "" H 7300 3800 50  0001 C CNN
	1    7300 3800
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR038
U 1 1 58B1CB3C
P 5700 3800
F 0 "#PWR038" H 5700 3650 50  0001 C CNN
F 1 "VCC" H 5700 3950 50  0000 C CNN
F 2 "" H 5700 3800 50  0001 C CNN
F 3 "" H 5700 3800 50  0001 C CNN
	1    5700 3800
	1    0    0    -1  
$EndComp
$Comp
L D_Bridge_+-AA D1
U 1 1 58B1CD4E
P 4600 4100
F 0 "D1" H 4650 4375 50  0000 L CNN
F 1 "CDBHM240L-HF" H 4650 4300 50  0000 L CNN
F 2 "bcan:TO-269AA" H 4600 4100 50  0001 C CNN
F 3 "" H 4600 4100 50  0001 C CNN
	1    4600 4100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR039
U 1 1 58B1D03D
P 4600 4400
F 0 "#PWR039" H 4600 4150 50  0001 C CNN
F 1 "GND" H 4600 4250 50  0000 C CNN
F 2 "" H 4600 4400 50  0001 C CNN
F 3 "" H 4600 4400 50  0001 C CNN
	1    4600 4400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR040
U 1 1 58B1D05A
P 4600 3800
F 0 "#PWR040" H 4600 3650 50  0001 C CNN
F 1 "VCC" H 4600 3950 50  0000 C CNN
F 2 "" H 4600 3800 50  0001 C CNN
F 3 "" H 4600 3800 50  0001 C CNN
	1    4600 3800
	1    0    0    -1  
$EndComp
Text HLabel 4300 4200 3    60   Input ~ 0
RAIL_R
Text HLabel 4900 4200 3    60   Input ~ 0
RAIL_L
Text HLabel 3950 3800 3    60   Output ~ 0
VCC
$Comp
L D_Small D2
U 1 1 58B30738
P 5500 3900
F 0 "D2" H 5450 3980 50  0000 L CNN
F 1 "CUS08F30" H 5350 3820 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-323" V 5500 3900 50  0001 C CNN
F 3 "" V 5500 3900 50  0001 C CNN
	1    5500 3900
	-1   0    0    1   
$EndComp
Text HLabel 3550 3800 3    60   Input ~ 0
5V
$Comp
L +5V #PWR041
U 1 1 58D2A4F8
P 5300 3800
F 0 "#PWR041" H 5300 3650 50  0001 C CNN
F 1 "+5V" H 5300 3940 50  0000 C CNN
F 2 "" H 5300 3800 50  0001 C CNN
F 3 "" H 5300 3800 50  0001 C CNN
	1    5300 3800
	1    0    0    -1  
$EndComp
$Comp
L +2V8 #PWR042
U 1 1 58D2A53C
P 3750 3800
F 0 "#PWR042" H 3750 3650 50  0001 C CNN
F 1 "+2V8" H 3750 3940 50  0000 C CNN
F 2 "" H 3750 3800 50  0001 C CNN
F 3 "" H 3750 3800 50  0001 C CNN
	1    3750 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 58D2A542
P 3750 4400
F 0 "#PWR043" H 3750 4150 50  0001 C CNN
F 1 "GND" H 3750 4250 50  0000 C CNN
F 2 "" H 3750 4400 50  0001 C CNN
F 3 "" H 3750 4400 50  0001 C CNN
	1    3750 4400
	1    0    0    -1  
$EndComp
Text HLabel 3750 3800 3    60   UnSpc ~ 0
2V8
$Comp
L +5V #PWR044
U 1 1 58D2A592
P 3550 3800
F 0 "#PWR044" H 3550 3650 50  0001 C CNN
F 1 "+5V" H 3550 3940 50  0000 C CNN
F 2 "" H 3550 3800 50  0001 C CNN
F 3 "" H 3550 3800 50  0001 C CNN
	1    3550 3800
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR045
U 1 1 58D2A5DE
P 3950 3800
F 0 "#PWR045" H 3950 3650 50  0001 C CNN
F 1 "VCC" H 3950 3950 50  0000 C CNN
F 2 "" H 3950 3800 50  0001 C CNN
F 3 "" H 3950 3800 50  0001 C CNN
	1    3950 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3900 7300 3900
Connection ~ 7300 3900
Wire Wire Line
	5600 3900 5800 3900
Wire Wire Line
	4300 4100 4300 4200
Wire Wire Line
	4900 4100 4900 4200
Wire Wire Line
	7300 3800 7300 4100
Wire Wire Line
	6700 4300 7300 4300
Wire Wire Line
	6700 3900 6700 3900
Connection ~ 6700 3900
Wire Wire Line
	7000 4300 7000 4300
Wire Wire Line
	7000 4300 7000 4400
Connection ~ 7000 4300
Connection ~ 5700 3900
Wire Wire Line
	5400 3900 5300 3900
Wire Wire Line
	5300 3800 5300 4100
$Comp
L SPX3819M5 U5
U 1 1 58D6E8A5
P 6200 4000
F 0 "U5" H 5950 4250 60  0000 C CNN
F 1 "SPX3819M5" H 6300 4250 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 6200 4250 60  0001 C CNN
F 3 "" H 6200 4250 60  0001 C CNN
	1    6200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4300 6200 4400
Wire Wire Line
	5700 4100 5800 4100
Wire Wire Line
	5700 3800 5700 4100
Wire Wire Line
	6600 4100 7000 4100
Connection ~ 6700 4100
Text GLabel 3750 4400 1    60   UnSpc ~ 0
GND
$Comp
L C_Small C14
U 1 1 58D3848D
P 7000 4200
F 0 "C14" H 7010 4270 50  0000 L CNN
F 1 "10n" H 7010 4120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7000 4200 50  0001 C CNN
F 3 "" H 7000 4200 50  0001 C CNN
	1    7000 4200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C13
U 1 1 58D38532
P 7300 4200
F 0 "C13" H 7310 4270 50  0000 L CNN
F 1 "2u2" H 7310 4120 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7300 4200 50  0001 C CNN
F 3 "" H 7300 4200 50  0001 C CNN
	1    7300 4200
	1    0    0    -1  
$EndComp
$Comp
L R_Small R12
U 1 1 58D38ED5
P 5300 4200
F 0 "R12" H 5330 4220 50  0000 L CNN
F 1 "10k" H 5330 4160 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 5300 4200 50  0001 C CNN
F 3 "" H 5300 4200 50  0001 C CNN
	1    5300 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR046
U 1 1 58D38F8B
P 5300 4400
F 0 "#PWR046" H 5300 4150 50  0001 C CNN
F 1 "GND" H 5300 4250 50  0000 C CNN
F 2 "" H 5300 4400 50  0001 C CNN
F 3 "" H 5300 4400 50  0001 C CNN
	1    5300 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4300 5300 4400
Connection ~ 5300 3900
$EndSCHEMATC
