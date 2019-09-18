EESchema Schematic File Version 4
LIBS:nightlight-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 4 10
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
L Sensor_Touch:AT42QT1010-TSHR U401
U 1 1 5D68B5CE
P 5810 3930
F 0 "U401" H 5710 4255 50  0000 R CNN
F 1 "AT42QT1010-TSHR" H 5710 4180 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 5860 3680 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40001946A.pdf" H 6080 4480 50  0001 C CNN
	1    5810 3930
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C402
U 1 1 5D68B7BD
P 6240 4650
F 0 "C402" H 6265 4750 50  0000 L CNN
F 1 "0.1uF" H 6265 4550 50  0000 L CNN
F 2 "" H 6278 4500 50  0001 C CNN
F 3 "~" H 6240 4650 50  0001 C CNN
	1    6240 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0401
U 1 1 5D68BAE9
P 5810 3570
F 0 "#PWR0401" H 5810 3420 50  0001 C CNN
F 1 "+3.3V" H 5810 3710 50  0000 C CNN
F 2 "" H 5810 3570 50  0001 C CNN
F 3 "" H 5810 3570 50  0001 C CNN
	1    5810 3570
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0404
U 1 1 5D68BEC1
P 6240 4500
F 0 "#PWR0404" H 6240 4350 50  0001 C CNN
F 1 "+3.3V" H 6240 4640 50  0000 C CNN
F 2 "" H 6240 4500 50  0001 C CNN
F 3 "" H 6240 4500 50  0001 C CNN
	1    6240 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5810 3570 5810 3630
$Comp
L power:GND #PWR0402
U 1 1 5D68C38D
P 5810 4230
F 0 "#PWR0402" H 5810 3980 50  0001 C CNN
F 1 "GND" H 5810 4080 50  0000 C CNN
F 2 "" H 5810 4230 50  0001 C CNN
F 3 "" H 5810 4230 50  0001 C CNN
	1    5810 4230
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0405
U 1 1 5D68C5F4
P 6240 4800
F 0 "#PWR0405" H 6240 4550 50  0001 C CNN
F 1 "GND" H 6240 4650 50  0000 C CNN
F 2 "" H 6240 4800 50  0001 C CNN
F 3 "" H 6240 4800 50  0001 C CNN
	1    6240 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C401
U 1 1 5D68F9C7
P 4890 4030
F 0 "C401" V 5170 4020 50  0000 C CNN
F 1 "0.1uF" V 5070 4020 50  0000 C CNN
F 2 "" H 4928 3880 50  0001 C CNN
F 3 "~" H 4890 4030 50  0001 C CNN
	1    4890 4030
	0    -1   1    0   
$EndComp
Wire Wire Line
	5410 4030 5040 4030
Wire Wire Line
	5410 3830 4470 3830
Wire Wire Line
	4740 4030 4470 4030
Wire Wire Line
	4470 4030 4470 3830
Connection ~ 4470 3830
Wire Wire Line
	4470 3830 4170 3830
$Comp
L Device:R R401
U 1 1 5D690E46
P 4020 3830
F 0 "R401" V 4100 3830 50  0000 C CNN
F 1 "499" V 4020 3830 50  0000 C CNN
F 2 "" V 3950 3830 50  0001 C CNN
F 3 "~" H 4020 3830 50  0001 C CNN
	1    4020 3830
	0    1    1    0   
$EndComp
Wire Wire Line
	3870 3830 3680 3830
$Comp
L Custom_Library:Cap_Touch SW401
U 1 1 5D691AAA
P 3680 3830
F 0 "SW401" V 3680 4010 50  0000 C CNN
F 1 "Cap_Touch" H 3680 3980 50  0001 C CNN
F 2 "" H 3680 3830 60  0000 C CNN
F 3 "" H 3680 3830 60  0000 C CNN
	1    3680 3830
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0403
U 1 1 5D6923F6
P 6210 3830
F 0 "#PWR0403" H 6210 3680 50  0001 C CNN
F 1 "+3.3V" V 6210 4050 50  0000 C CNN
F 2 "" H 6210 3830 50  0001 C CNN
F 3 "" H 6210 3830 50  0001 C CNN
	1    6210 3830
	0    1    1    0   
$EndComp
$Comp
L Device:R R402
U 1 1 5D69306F
P 6600 4230
F 0 "R402" V 6680 4230 50  0000 C CNN
F 1 "10k" V 6600 4230 50  0000 C CNN
F 2 "" V 6530 4230 50  0001 C CNN
F 3 "~" H 6600 4230 50  0001 C CNN
	1    6600 4230
	1    0    0    -1  
$EndComp
Wire Wire Line
	6210 4030 6600 4030
Wire Wire Line
	6600 4030 6600 4080
$Comp
L power:GND #PWR0406
U 1 1 5D6938D6
P 6600 4380
F 0 "#PWR0406" H 6600 4130 50  0001 C CNN
F 1 "GND" H 6600 4230 50  0000 C CNN
F 2 "" H 6600 4380 50  0001 C CNN
F 3 "" H 6600 4380 50  0001 C CNN
	1    6600 4380
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4030 6800 4030
Connection ~ 6600 4030
Text GLabel 6800 4030 2    50   Output ~ 0
Cap_Touch_Power
$EndSCHEMATC