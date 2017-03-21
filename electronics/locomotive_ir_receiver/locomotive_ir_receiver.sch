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
LIBS:bcan
LIBS:ACRONET
LIBS:locomotive_ir_receiver-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "IR Receiver"
Date "2017-03-21"
Rev "1.0"
Comp "ECE 445"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TSOP57238 U1
U 1 1 58D689A4
P 5800 3600
F 0 "U1" H 5550 3950 60  0000 C CNN
F 1 "TSOP57238" H 5900 3950 60  0000 C CNN
F 2 "bcan:TSOP572xx" H 5750 4050 60  0001 C CNN
F 3 "" H 5750 4050 60  0001 C CNN
	1    5800 3600
	1    0    0    -1  
$EndComp
$Comp
L TSOP57238 U2
U 1 1 58D6939D
P 5800 4500
F 0 "U2" H 5550 4850 60  0000 C CNN
F 1 "TSOP57238" H 5900 4850 60  0000 C CNN
F 2 "bcan:TSOP572xx" H 5750 4950 60  0001 C CNN
F 3 "" H 5750 4950 60  0001 C CNN
	1    5800 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3400 6300 3400
Wire Wire Line
	6300 3400 6300 4800
Wire Wire Line
	6300 3800 6200 3800
Wire Wire Line
	6300 4300 6200 4300
Connection ~ 6300 3800
Wire Wire Line
	6300 4700 6200 4700
Connection ~ 6300 4300
$Comp
L GND #PWR01
U 1 1 58D69413
P 6300 4800
F 0 "#PWR01" H 6300 4550 50  0001 C CNN
F 1 "GND" H 6300 4650 50  0000 C CNN
F 2 "" H 6300 4800 50  0001 C CNN
F 3 "" H 6300 4800 50  0001 C CNN
	1    6300 4800
	1    0    0    -1  
$EndComp
Connection ~ 6300 4700
$Comp
L +2V8 #PWR02
U 1 1 58D69437
P 5300 3300
F 0 "#PWR02" H 5300 3150 50  0001 C CNN
F 1 "+2V8" H 5300 3440 50  0000 C CNN
F 2 "" H 5300 3300 50  0001 C CNN
F 3 "" H 5300 3300 50  0001 C CNN
	1    5300 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3800 5300 3800
Wire Wire Line
	5300 3300 5300 4700
Wire Wire Line
	5300 4700 5400 4700
Connection ~ 5300 3800
Wire Wire Line
	5400 3400 5000 3400
Wire Wire Line
	5400 4300 5000 4300
Text Label 5000 3400 0    60   ~ 0
IR_R
Text Label 5000 4300 0    60   ~ 0
IR_L
$Comp
L CONN_01X04 J1
U 1 1 58D694F5
P 7200 4050
F 0 "J1" H 7200 4300 50  0000 C CNN
F 1 "IR" V 7300 4050 50  0000 C CNN
F 2 "Connectors_JST:JST_GH_SM04B-GHS-TB_04x1.25mm_Angled" H 7200 4050 50  0001 C CNN
F 3 "" H 7200 4050 50  0001 C CNN
	1    7200 4050
	1    0    0    -1  
$EndComp
$Comp
L +2V8 #PWR03
U 1 1 58D695C9
P 6900 3800
F 0 "#PWR03" H 6900 3650 50  0001 C CNN
F 1 "+2V8" H 6900 3940 50  0000 C CNN
F 2 "" H 6900 3800 50  0001 C CNN
F 3 "" H 6900 3800 50  0001 C CNN
	1    6900 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 58D695DD
P 6900 4300
F 0 "#PWR04" H 6900 4050 50  0001 C CNN
F 1 "GND" H 6900 4150 50  0000 C CNN
F 2 "" H 6900 4300 50  0001 C CNN
F 3 "" H 6900 4300 50  0001 C CNN
	1    6900 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3800 6900 3900
Wire Wire Line
	6900 3900 7000 3900
Wire Wire Line
	7000 4200 6900 4200
Wire Wire Line
	6900 4200 6900 4300
Wire Wire Line
	7000 4000 6700 4000
Wire Wire Line
	7000 4100 6700 4100
Text Label 6700 4100 0    60   ~ 0
IR_L
Text Label 6700 4000 0    60   ~ 0
IR_R
$EndSCHEMATC