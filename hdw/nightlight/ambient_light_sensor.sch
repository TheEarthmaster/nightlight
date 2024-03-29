EESchema Schematic File Version 4
LIBS:nightlight-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 6 10
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
L Sensor_Optical:BPW85A Q601
U 1 1 5D73F219
P 3570 5530
F 0 "Q601" H 3770 5580 50  0000 L CNN
F 1 "BPW85A" H 3770 5480 50  0000 L CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 4050 5390 50  0001 C CNN
F 3 "https://www.vishay.com/docs/81531/bpw85a.pdf" H 3570 5530 50  0001 C CNN
F 4 "BPW85A-ND" H 3570 5530 50  0001 C CNN "Digi-Key PN"
	1    3570 5530
	1    0    0    -1  
$EndComp
$Comp
L Device:R R601
U 1 1 5D740625
P 3670 4590
F 0 "R601" V 3750 4590 50  0000 C CNN
F 1 "10k" V 3670 4590 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3600 4590 50  0001 C CNN
F 3 "~" H 3670 4590 50  0001 C CNN
F 4 "RNCP0603FTD10K0CT-ND" H 3670 4590 50  0001 C CNN "Digi-Key PN"
	1    3670 4590
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0601
U 1 1 5D74150C
P 3670 4220
F 0 "#PWR0601" H 3670 4070 50  0001 C CNN
F 1 "+3.3V" H 3670 4360 50  0000 C CNN
F 2 "" H 3670 4220 50  0001 C CNN
F 3 "" H 3670 4220 50  0001 C CNN
	1    3670 4220
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0602
U 1 1 5D741641
P 3670 6460
F 0 "#PWR0602" H 3670 6210 50  0001 C CNN
F 1 "GND" H 3670 6310 50  0000 C CNN
F 2 "" H 3670 6460 50  0001 C CNN
F 3 "" H 3670 6460 50  0001 C CNN
	1    3670 6460
	1    0    0    -1  
$EndComp
Wire Wire Line
	3670 6460 3670 5730
Wire Wire Line
	3670 5330 3670 5030
Wire Wire Line
	3670 4220 3670 4440
$Comp
L Amplifier_Operational:OPA340NA U601
U 1 1 5D741E4F
P 5250 5130
F 0 "U601" H 5200 5380 50  0000 L CNN
F 1 "OPA340NA" H 5200 5280 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 5150 4930 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa340.pdf" H 5250 5330 50  0001 C CNN
F 4 "296-26275-1-ND" H 5250 5130 50  0001 C CNN "Digi-Key PN"
	1    5250 5130
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0606
U 1 1 5D742C97
P 5150 5590
F 0 "#PWR0606" H 5150 5340 50  0001 C CNN
F 1 "GND" H 5150 5440 50  0000 C CNN
F 2 "" H 5150 5590 50  0001 C CNN
F 3 "" H 5150 5590 50  0001 C CNN
	1    5150 5590
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 5430 5150 5590
$Comp
L power:+3.3V #PWR0605
U 1 1 5D74408C
P 5150 4780
F 0 "#PWR0605" H 5150 4630 50  0001 C CNN
F 1 "+3.3V" H 5150 4920 50  0000 C CNN
F 2 "" H 5150 4780 50  0001 C CNN
F 3 "" H 5150 4780 50  0001 C CNN
	1    5150 4780
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4780 5150 4830
Wire Wire Line
	4950 5030 3670 5030
Connection ~ 3670 5030
Wire Wire Line
	3670 5030 3670 4740
Wire Wire Line
	4950 5230 4790 5230
Wire Wire Line
	4790 5230 4790 5830
Wire Wire Line
	4790 5830 5690 5830
Wire Wire Line
	5690 5830 5690 5130
Wire Wire Line
	5690 5130 5550 5130
$Comp
L Device:C C601
U 1 1 5D744AC7
P 4970 6340
F 0 "C601" H 4995 6440 50  0000 L CNN
F 1 "0.1uF" H 4995 6240 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5008 6190 50  0001 C CNN
F 3 "~" H 4970 6340 50  0001 C CNN
F 4 "1276-1000-1-ND" H 4970 6340 50  0001 C CNN "Digi-Key PN"
	1    4970 6340
	1    0    0    -1  
$EndComp
$Comp
L Device:C C602
U 1 1 5D745772
P 5360 6340
F 0 "C602" H 5385 6440 50  0000 L CNN
F 1 "10nF" H 5385 6240 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5398 6190 50  0001 C CNN
F 3 "~" H 5360 6340 50  0001 C CNN
F 4 "311-1085-1-ND" H 5360 6340 50  0001 C CNN "Digi-Key PN"
	1    5360 6340
	1    0    0    -1  
$EndComp
$Comp
L Device:C C603
U 1 1 5D745B52
P 5740 6330
F 0 "C603" H 5765 6430 50  0000 L CNN
F 1 "1nF" H 5765 6230 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5778 6180 50  0001 C CNN
F 3 "~" H 5740 6330 50  0001 C CNN
F 4 "311-1080-1-ND" H 5740 6330 50  0001 C CNN "Digi-Key PN"
	1    5740 6330
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0603
U 1 1 5D745FD4
P 4970 6140
F 0 "#PWR0603" H 4970 5990 50  0001 C CNN
F 1 "+3.3V" H 4970 6280 50  0000 C CNN
F 2 "" H 4970 6140 50  0001 C CNN
F 3 "" H 4970 6140 50  0001 C CNN
	1    4970 6140
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0607
U 1 1 5D7465E7
P 5360 6150
F 0 "#PWR0607" H 5360 6000 50  0001 C CNN
F 1 "+3.3V" H 5360 6290 50  0000 C CNN
F 2 "" H 5360 6150 50  0001 C CNN
F 3 "" H 5360 6150 50  0001 C CNN
	1    5360 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0609
U 1 1 5D746992
P 5740 6140
F 0 "#PWR0609" H 5740 5990 50  0001 C CNN
F 1 "+3.3V" H 5740 6280 50  0000 C CNN
F 2 "" H 5740 6140 50  0001 C CNN
F 3 "" H 5740 6140 50  0001 C CNN
	1    5740 6140
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0604
U 1 1 5D746C69
P 4970 6570
F 0 "#PWR0604" H 4970 6320 50  0001 C CNN
F 1 "GND" H 4970 6420 50  0000 C CNN
F 2 "" H 4970 6570 50  0001 C CNN
F 3 "" H 4970 6570 50  0001 C CNN
	1    4970 6570
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0608
U 1 1 5D7473A1
P 5360 6570
F 0 "#PWR0608" H 5360 6320 50  0001 C CNN
F 1 "GND" H 5360 6420 50  0000 C CNN
F 2 "" H 5360 6570 50  0001 C CNN
F 3 "" H 5360 6570 50  0001 C CNN
	1    5360 6570
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0610
U 1 1 5D7475A0
P 5740 6560
F 0 "#PWR0610" H 5740 6310 50  0001 C CNN
F 1 "GND" H 5740 6410 50  0000 C CNN
F 2 "" H 5740 6560 50  0001 C CNN
F 3 "" H 5740 6560 50  0001 C CNN
	1    5740 6560
	1    0    0    -1  
$EndComp
Wire Wire Line
	5740 6560 5740 6480
Wire Wire Line
	5360 6570 5360 6490
Wire Wire Line
	4970 6570 4970 6490
Wire Wire Line
	4970 6190 4970 6140
Wire Wire Line
	5360 6190 5360 6150
Wire Wire Line
	5740 6180 5740 6140
$Comp
L Device:R R602
U 1 1 5D74894F
P 6300 5130
F 0 "R602" V 6380 5130 50  0000 C CNN
F 1 "499" V 6300 5130 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6230 5130 50  0001 C CNN
F 3 "~" H 6300 5130 50  0001 C CNN
F 4 "P499HCT-ND" H 6300 5130 50  0001 C CNN "Digi-Key PN"
	1    6300 5130
	0    1    1    0   
$EndComp
$Comp
L Device:C C604
U 1 1 5D74910B
P 6850 5540
F 0 "C604" H 6875 5640 50  0000 L CNN
F 1 "10nF" H 6875 5440 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6888 5390 50  0001 C CNN
F 3 "~" H 6850 5540 50  0001 C CNN
F 4 "311-1085-1-ND" H 6850 5540 50  0001 C CNN "Digi-Key PN"
	1    6850 5540
	1    0    0    -1  
$EndComp
Wire Wire Line
	5690 5130 6150 5130
Connection ~ 5690 5130
Wire Wire Line
	6450 5130 6850 5130
Wire Wire Line
	6850 5130 6850 5390
$Comp
L power:GND #PWR0611
U 1 1 5D749DF0
P 6850 5730
F 0 "#PWR0611" H 6850 5480 50  0001 C CNN
F 1 "GND" H 6850 5580 50  0000 C CNN
F 2 "" H 6850 5730 50  0001 C CNN
F 3 "" H 6850 5730 50  0001 C CNN
	1    6850 5730
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5690 6850 5730
Text GLabel 7050 5130 2    50   Output ~ 0
light_level_adc
Wire Wire Line
	6850 5130 7050 5130
Connection ~ 6850 5130
$EndSCHEMATC
