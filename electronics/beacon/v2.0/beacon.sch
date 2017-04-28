EESchema Schematic File Version 2
LIBS:beacon-rescue
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
LIBS:bcan
LIBS:beacon-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "IR Beacon Board"
Date "2017-03-21"
Rev "2.0"
Comp "ECE 445"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LED D1
U 1 1 588C319B
P 4100 4850
F 0 "D1" H 4100 4950 50  0000 C CNN
F 1 "IR" H 4100 4750 50  0000 C CNN
F 2 "LEDs:LED_0603" H 4100 4850 50  0001 C CNN
F 3 "" H 4100 4850 50  0000 C CNN
	1    4100 4850
	0    -1   -1   0   
$EndComp
$Comp
L D_Bridge_-AA+ D2
U 1 1 58916D19
P 6100 4600
F 0 "D2" V 6350 4600 50  0000 R CNN
F 1 "BAS4002A" V 5850 4600 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-143" H 6100 4600 50  0001 C CNN
F 3 "" H 6100 4600 50  0000 C CNN
	1    6100 4600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR01
U 1 1 58919FC5
P 7000 5000
F 0 "#PWR01" H 7000 4750 50  0001 C CNN
F 1 "GND" H 7000 4850 50  0000 C CNN
F 2 "" H 7000 5000 50  0000 C CNN
F 3 "" H 7000 5000 50  0000 C CNN
	1    7000 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 58942DD8
P 4400 5900
F 0 "#PWR02" H 4400 5650 50  0001 C CNN
F 1 "GND" H 4400 5750 50  0000 C CNN
F 2 "" H 4400 5900 50  0000 C CNN
F 3 "" H 4400 5900 50  0000 C CNN
	1    4400 5900
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GSD Q1
U 1 1 589435EC
P 4300 5400
F 0 "Q1" H 4500 5450 50  0000 L CNN
F 1 "BSS138" H 4500 5350 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4500 5500 50  0001 C CNN
F 3 "" H 4300 5400 50  0000 C CNN
	1    4300 5400
	-1   0    0    -1  
$EndComp
Text Label 4500 3100 0    60   ~ 0
~RST
$Comp
L TPS70928DBV U2
U 1 1 58AB0B0D
P 7300 4400
F 0 "U2" H 7050 4650 60  0000 C CNN
F 1 "MIC5225-1.8YM5" H 7550 4650 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 7300 4400 60  0001 C CNN
F 3 "" H 7300 4400 60  0001 C CNN
	1    7300 4400
	1    0    0    -1  
$EndComp
Text Notes 4550 4850 0    60   Italic 0
unpopulated
Text Label 5100 5400 2    60   ~ 0
PB0
Text Notes 3650 3550 0    120  ~ 0
Control
Text Notes 5550 5250 0    120  ~ 0
Power
Text Notes 3650 6150 0    120  ~ 0
IR LED
Text Notes 5550 6150 0    120  ~ 0
Connectors
$Comp
L GND #PWR03
U 1 1 58C62B36
P 7300 5900
F 0 "#PWR03" H 7300 5650 50  0001 C CNN
F 1 "GND" H 7300 5750 50  0000 C CNN
F 2 "" H 7300 5900 50  0001 C CNN
F 3 "" H 7300 5900 50  0001 C CNN
	1    7300 5900
	1    0    0    -1  
$EndComp
Text Label 6400 5900 0    60   ~ 0
~RST
Text Label 6500 4600 1    60   ~ 0
RAIL_R
Text Label 5700 4600 1    60   ~ 0
RAIL_L
$Comp
L VCC #PWR04
U 1 1 58D18C7E
P 6700 4200
F 0 "#PWR04" H 6700 4050 50  0001 C CNN
F 1 "VCC" H 6700 4350 50  0000 C CNN
F 2 "" H 6700 4200 50  0001 C CNN
F 3 "" H 6700 4200 50  0001 C CNN
	1    6700 4200
	1    0    0    -1  
$EndComp
Wire Notes Line
	5500 6200 5500 5500
Wire Notes Line
	8200 6200 5500 6200
Wire Notes Line
	8200 5500 8200 6200
Wire Notes Line
	5500 5500 8200 5500
Wire Wire Line
	7700 4300 8000 4300
Wire Notes Line
	5100 4850 4450 4850
Connection ~ 8000 4300
Wire Wire Line
	8000 4200 8000 4500
Connection ~ 4600 5400
Connection ~ 4400 5800
Wire Wire Line
	4200 5600 4200 5800
Wire Wire Line
	4400 5800 4400 5900
Wire Wire Line
	4200 5800 4600 5800
Wire Wire Line
	4600 5800 4600 5700
Wire Wire Line
	4600 5400 4600 5500
Wire Wire Line
	4500 5400 4700 5400
Wire Wire Line
	4200 2800 4200 2600
Connection ~ 4200 5100
Wire Wire Line
	4200 5100 4200 5200
Wire Wire Line
	4100 5100 4300 5100
Wire Wire Line
	4200 4300 4200 4200
Connection ~ 4200 4600
Wire Wire Line
	4200 4600 4200 4500
Wire Wire Line
	4300 4600 4300 4750
Wire Wire Line
	4100 4600 4300 4600
Wire Wire Line
	4100 4700 4100 4600
Wire Wire Line
	4300 5100 4300 4950
Wire Wire Line
	4100 5000 4100 5100
Wire Wire Line
	8000 4900 8000 4700
Connection ~ 6700 4900
Wire Wire Line
	6700 4900 6700 4700
Wire Wire Line
	7000 4900 7000 5000
Connection ~ 7000 4900
Wire Wire Line
	7300 4900 7300 4700
Connection ~ 7300 4900
Wire Wire Line
	6100 4900 8000 4900
Wire Wire Line
	4900 5400 5100 5400
Wire Notes Line
	3600 6200 5300 6200
Wire Notes Line
	3600 3600 3600 2300
Wire Notes Line
	8200 2300 8200 3600
Wire Notes Line
	5500 5300 5500 3800
Wire Notes Line
	5500 3800 8200 3800
Wire Notes Line
	8200 3800 8200 5300
Wire Notes Line
	8200 5300 5500 5300
Wire Notes Line
	5300 6200 5300 3800
Wire Notes Line
	5300 3800 3600 3800
Wire Notes Line
	3600 3800 3600 6200
Wire Notes Line
	3600 2300 8200 2300
Wire Notes Line
	8200 3600 3600 3600
Wire Wire Line
	6100 4300 6900 4300
Wire Wire Line
	6700 4200 6700 4500
Connection ~ 6700 4300
Wire Wire Line
	6600 5900 6400 5900
Wire Wire Line
	6500 4200 6500 4600
Wire Wire Line
	6500 4600 6400 4600
Wire Wire Line
	5700 4200 5700 4600
Wire Wire Line
	5700 4600 5800 4600
Wire Wire Line
	6900 4500 6800 4500
Wire Wire Line
	6800 4500 6800 4300
Connection ~ 6800 4300
$Comp
L C_Small C1
U 1 1 59017D8B
P 6700 4600
F 0 "C1" H 6710 4670 50  0000 L CNN
F 1 "10u" H 6710 4520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6700 4600 50  0001 C CNN
F 3 "" H 6700 4600 50  0001 C CNN
	1    6700 4600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 59017DF4
P 8000 4600
F 0 "C2" H 8010 4670 50  0000 L CNN
F 1 "1u" H 8010 4520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8000 4600 50  0001 C CNN
F 3 "" H 8000 4600 50  0001 C CNN
	1    8000 4600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J1
U 1 1 5901811B
P 5700 4000
F 0 "J1" H 5700 4100 50  0000 C CNN
F 1 "L" V 5800 4000 50  0000 C CNN
F 2 "bcan:Pad_Length10mm_Width3.5mm" H 5700 4000 50  0001 C CNN
F 3 "" H 5700 4000 50  0001 C CNN
	1    5700 4000
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 J2
U 1 1 5901817D
P 6500 4000
F 0 "J2" H 6500 4100 50  0000 C CNN
F 1 "R" V 6600 4000 50  0000 C CNN
F 2 "bcan:Pad_Length10mm_Width3.5mm" H 6500 4000 50  0001 C CNN
F 3 "" H 6500 4000 50  0001 C CNN
	1    6500 4000
	0    -1   -1   0   
$EndComp
$Comp
L +1V8 #PWR05
U 1 1 59018A72
P 4200 2600
F 0 "#PWR05" H 4200 2450 50  0001 C CNN
F 1 "+1V8" H 4200 2740 50  0000 C CNN
F 2 "" H 4200 2600 50  0001 C CNN
F 3 "" H 4200 2600 50  0001 C CNN
	1    4200 2600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 59018AF1
P 4200 2900
F 0 "R1" H 4230 2920 50  0000 L CNN
F 1 "10k" H 4230 2860 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 4200 2900 50  0001 C CNN
F 3 "" H 4200 2900 50  0001 C CNN
	1    4200 2900
	1    0    0    -1  
$EndComp
$Comp
L +1V8 #PWR06
U 1 1 59018E39
P 4200 4200
F 0 "#PWR06" H 4200 4050 50  0001 C CNN
F 1 "+1V8" H 4200 4340 50  0000 C CNN
F 2 "" H 4200 4200 50  0001 C CNN
F 3 "" H 4200 4200 50  0001 C CNN
	1    4200 4200
	1    0    0    -1  
$EndComp
$Comp
L +1V8 #PWR07
U 1 1 59018E74
P 8000 4200
F 0 "#PWR07" H 8000 4050 50  0001 C CNN
F 1 "+1V8" H 8000 4340 50  0000 C CNN
F 2 "" H 8000 4200 50  0001 C CNN
F 3 "" H 8000 4200 50  0001 C CNN
	1    8000 4200
	1    0    0    -1  
$EndComp
$Comp
L ATTINY10-TS U1
U 1 1 590190A0
P 5900 2950
F 0 "U1" H 4900 3350 50  0000 C CNN
F 1 "ATTINY10-TS" H 6750 2550 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H 5900 3200 50  0001 C CIN
F 3 "" H 5900 2950 50  0001 C CNN
	1    5900 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2800 4500 2800
Wire Wire Line
	4700 2900 4500 2900
Wire Wire Line
	4700 3000 4500 3000
$Comp
L +1V8 #PWR08
U 1 1 59029EDF
P 7300 2600
F 0 "#PWR08" H 7300 2450 50  0001 C CNN
F 1 "+1V8" H 7300 2740 50  0000 C CNN
F 2 "" H 7300 2600 50  0001 C CNN
F 3 "" H 7300 2600 50  0001 C CNN
	1    7300 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 59029F1D
P 7300 3300
F 0 "#PWR09" H 7300 3050 50  0001 C CNN
F 1 "GND" H 7300 3150 50  0000 C CNN
F 2 "" H 7300 3300 50  0000 C CNN
F 3 "" H 7300 3300 50  0000 C CNN
	1    7300 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2700 7300 2700
Wire Wire Line
	7300 2700 7300 2600
Wire Wire Line
	7100 3200 7300 3200
Wire Wire Line
	7300 3200 7300 3300
Text Label 4500 2800 0    60   ~ 0
PB0
Text Label 4500 2900 0    60   ~ 0
PB1
Text Label 4500 3000 0    60   ~ 0
PB2
Wire Wire Line
	4700 3100 4200 3100
Wire Wire Line
	4200 3100 4200 3000
$Comp
L CONN_02X03 J3
U 1 1 5902A7CD
P 6850 5800
F 0 "J3" H 6850 6000 50  0000 C CNN
F 1 "TPI" H 6850 5600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm_SMD" H 6850 4600 50  0001 C CNN
F 3 "" H 6850 4600 50  0001 C CNN
	1    6850 5800
	1    0    0    -1  
$EndComp
$Comp
L +1V8 #PWR010
U 1 1 5902AD57
P 7300 5700
F 0 "#PWR010" H 7300 5550 50  0001 C CNN
F 1 "+1V8" H 7300 5840 50  0000 C CNN
F 2 "" H 7300 5700 50  0001 C CNN
F 3 "" H 7300 5700 50  0001 C CNN
	1    7300 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5700 7300 5700
Wire Wire Line
	7100 5900 7300 5900
Wire Wire Line
	6600 5700 6000 5700
Text Label 6000 5700 0    60   ~ 0
TPIDATA
Wire Wire Line
	6600 5800 6000 5800
Text Label 6000 5800 0    60   ~ 0
TPICLK
Wire Wire Line
	7100 5800 7300 5800
Text Label 7300 5800 2    60   ~ 0
PB2
$Comp
L R_Small R3
U 1 1 5902B922
P 4600 5600
F 0 "R3" H 4630 5620 50  0000 L CNN
F 1 "10k" H 4630 5560 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 4600 5600 50  0001 C CNN
F 3 "" H 4600 5600 50  0001 C CNN
	1    4600 5600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 5902B9E8
P 4800 5400
F 0 "R2" H 4830 5420 50  0000 L CNN
F 1 "100" H 4830 5360 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 4800 5400 50  0001 C CNN
F 3 "" H 4800 5400 50  0001 C CNN
	1    4800 5400
	0    1    1    0   
$EndComp
$Comp
L R_Small R5
U 1 1 5902BB8D
P 4300 4850
F 0 "R5" H 4330 4870 50  0000 L CNN
F 1 "R" H 4330 4810 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 4300 4850 50  0001 C CNN
F 3 "" H 4300 4850 50  0001 C CNN
	1    4300 4850
	1    0    0    -1  
$EndComp
$Comp
L R_Small R4
U 1 1 5902BC3D
P 4200 4400
F 0 "R4" H 4230 4420 50  0000 L CNN
F 1 "47" H 4230 4360 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 4200 4400 50  0001 C CNN
F 3 "" H 4200 4400 50  0001 C CNN
	1    4200 4400
	1    0    0    -1  
$EndComp
Text Label 6400 5700 0    60   ~ 0
PB0
Text Label 6400 5800 0    60   ~ 0
PB1
$EndSCHEMATC