EESchema Schematic File Version 4
LIBS:nightlight-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 5 6
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
L Custom_Library:LT1618DD U?
U 1 1 5D70BE6A
P 5500 4290
F 0 "U?" H 5500 5290 50  0000 C CNN
F 1 "LT1618DD" H 5500 4290 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-10-1EP_3x3mm_P0.5mm_EP1.65x2.38mm" H 5450 4290 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/1618fas.pdf" H 5450 4290 50  0001 C CNN
F 4 "LT1618EDD#PBF-ND" H 5500 4290 50  0001 C CNN "Digi-Key_PN"
	1    5500 4290
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D70C62A
P 5500 5530
F 0 "#PWR?" H 5500 5280 50  0001 C CNN
F 1 "GND" H 5500 5380 50  0000 C CNN
F 2 "" H 5500 5530 50  0001 C CNN
F 3 "" H 5500 5530 50  0001 C CNN
	1    5500 5530
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5290 5450 5480
Wire Wire Line
	5450 5480 5500 5480
Wire Wire Line
	5500 5480 5500 5530
Wire Wire Line
	5550 5290 5550 5480
Wire Wire Line
	5550 5480 5500 5480
Connection ~ 5500 5480
$Comp
L Device:C C?
U 1 1 5D70D78C
P 6150 5540
F 0 "C?" H 6175 5640 50  0000 L CNN
F 1 "10nF" H 6175 5440 50  0000 L CNN
F 2 "" H 6188 5390 50  0001 C CNN
F 3 "~" H 6150 5540 50  0001 C CNN
	1    6150 5540
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5290 6150 5390
$Comp
L power:GND #PWR?
U 1 1 5D70E38F
P 6150 5920
F 0 "#PWR?" H 6150 5670 50  0001 C CNN
F 1 "GND" H 6150 5770 50  0000 C CNN
F 2 "" H 6150 5920 50  0001 C CNN
F 3 "" H 6150 5920 50  0001 C CNN
	1    6150 5920
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5690 6150 5840
$Comp
L Device:L L?
U 1 1 5D70E7C2
P 5590 2730
F 0 "L?" V 5540 2730 50  0000 C CNN
F 1 "3.3uH" V 5665 2730 50  0000 C CNN
F 2 "" H 5590 2730 50  0001 C CNN
F 3 "~" H 5590 2730 50  0001 C CNN
	1    5590 2730
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D70EA8E
P 4790 2380
F 0 "R?" V 4870 2380 50  0000 C CNN
F 1 ".18" V 4790 2380 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4720 2380 50  0001 C CNN
F 3 "~" H 4790 2380 50  0001 C CNN
F 4 "RL12S.18FCT-ND" H 4790 2380 50  0001 C CNN "Digi-Key PN"
	1    4790 2380
	0    1    1    0   
$EndComp
$Comp
L Diode:MBR0530 D?
U 1 1 5D710AB7
P 6520 2730
F 0 "D?" H 6520 2830 50  0000 C CNN
F 1 "MBR0530" H 6520 2630 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 6520 2555 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 6520 2730 50  0001 C CNN
	1    6520 2730
	-1   0    0    1   
$EndComp
Wire Wire Line
	5740 2730 6110 2730
Wire Wire Line
	6050 3190 6050 2860
Wire Wire Line
	6050 2860 6110 2860
Wire Wire Line
	6110 2860 6110 2730
Connection ~ 6110 2730
Wire Wire Line
	6110 2730 6370 2730
Wire Wire Line
	6150 3190 6150 2860
Wire Wire Line
	6150 2860 6110 2860
Connection ~ 6110 2860
$Comp
L Device:R R?
U 1 1 5D7127AF
P 6990 3690
F 0 "R?" V 7070 3690 50  0000 C CNN
F 1 "15.8K" V 6990 3690 50  0000 C CNN
F 2 "" V 6920 3690 50  0001 C CNN
F 3 "~" H 6990 3690 50  0001 C CNN
	1    6990 3690
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D712AA5
P 6990 4780
F 0 "R?" V 7070 4780 50  0000 C CNN
F 1 "1.07k" V 6990 4780 50  0000 C CNN
F 2 "" V 6920 4780 50  0001 C CNN
F 3 "~" H 6990 4780 50  0001 C CNN
	1    6990 4780
	1    0    0    -1  
$EndComp
Wire Wire Line
	6990 4630 6990 4290
Wire Wire Line
	6500 4290 6990 4290
Connection ~ 6990 4290
Wire Wire Line
	6990 4290 6990 3840
Wire Wire Line
	6990 3540 6990 2730
Wire Wire Line
	6990 2730 6670 2730
Wire Wire Line
	6990 4930 6990 5840
Wire Wire Line
	6990 5840 6150 5840
Connection ~ 6150 5840
Wire Wire Line
	6150 5840 6150 5920
$Comp
L Device:C C?
U 1 1 5D714725
P 7820 4290
F 0 "C?" H 7845 4390 50  0000 L CNN
F 1 "4.7uF" H 7845 4190 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7858 4140 50  0001 C CNN
F 3 "~" H 7820 4290 50  0001 C CNN
F 4 "1276-2789-1-ND" H 7820 4290 50  0001 C CNN "Digi-Key PN"
	1    7820 4290
	1    0    0    -1  
$EndComp
Wire Wire Line
	7820 4140 7820 2730
Wire Wire Line
	7820 2730 6990 2730
Connection ~ 6990 2730
Wire Wire Line
	7820 4440 7820 5840
Wire Wire Line
	7820 5840 6990 5840
Connection ~ 6990 5840
$Comp
L Device:C C?
U 1 1 5D71534E
P 5100 5550
F 0 "C?" H 5125 5650 50  0000 L CNN
F 1 "0.1uF" H 5125 5450 50  0000 L CNN
F 2 "" H 5138 5400 50  0001 C CNN
F 3 "~" H 5100 5550 50  0001 C CNN
	1    5100 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5290 5100 5350
$Comp
L power:GND #PWR?
U 1 1 5D71628D
P 5100 5880
F 0 "#PWR?" H 5100 5630 50  0001 C CNN
F 1 "GND" H 5100 5730 50  0000 C CNN
F 2 "" H 5100 5880 50  0001 C CNN
F 3 "" H 5100 5880 50  0001 C CNN
	1    5100 5880
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5700 5100 5880
$Comp
L Device:R R?
U 1 1 5D716948
P 3940 5350
F 0 "R?" V 4020 5350 50  0000 C CNN
F 1 "5.1K" V 3940 5350 50  0000 C CNN
F 2 "" V 3870 5350 50  0001 C CNN
F 3 "~" H 3940 5350 50  0001 C CNN
	1    3940 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	4090 5350 5100 5350
Connection ~ 5100 5350
Wire Wire Line
	5100 5350 5100 5400
Text GLabel 3790 5350 0    50   Input ~ 0
led_pwm
Wire Wire Line
	4500 4290 3950 4290
Wire Wire Line
	3570 4290 3570 4330
$Comp
L power:GND #PWR?
U 1 1 5D719713
P 3570 4640
F 0 "#PWR?" H 3570 4390 50  0001 C CNN
F 1 "GND" H 3570 4490 50  0000 C CNN
F 2 "" H 3570 4640 50  0001 C CNN
F 3 "" H 3570 4640 50  0001 C CNN
	1    3570 4640
	1    0    0    -1  
$EndComp
Wire Wire Line
	3570 4630 3570 4640
$Comp
L Custom_Library:+3.3V #PWR?
U 1 1 5D71B6DC
P 3570 4190
F 0 "#PWR?" H 3570 4040 50  0001 C CNN
F 1 "+3.3V" H 3570 4330 50  0000 C CNN
F 2 "" H 3570 4190 50  0001 C CNN
F 3 "" H 3570 4190 50  0001 C CNN
	1    3570 4190
	1    0    0    -1  
$EndComp
Wire Wire Line
	3570 4190 3570 4290
Connection ~ 3570 4290
Wire Wire Line
	4500 3640 3950 3640
Wire Wire Line
	3950 3640 3950 4290
Connection ~ 3950 4290
Wire Wire Line
	3950 4290 3570 4290
Wire Wire Line
	3950 3640 3950 2730
Wire Wire Line
	3950 2380 4640 2380
Connection ~ 3950 3640
Wire Wire Line
	5440 2730 3950 2730
Connection ~ 3950 2730
Wire Wire Line
	3950 2730 3950 2380
Wire Wire Line
	5100 3190 5100 2380
Wire Wire Line
	5100 2380 4940 2380
$Comp
L Device:LED D?
U 1 1 5D71F777
P 7000 2380
F 0 "D?" H 7000 2480 50  0000 C CNN
F 1 "warm white" H 7000 2280 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7000 2380 50  0001 C CNN
F 3 "~" H 7000 2380 50  0001 C CNN
F 4 "1214-1445-1-ND" H 7000 2380 50  0001 C CNN "Digi-Key PN"
	1    7000 2380
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5D71FD78
P 7460 2380
F 0 "D?" H 7460 2480 50  0000 C CNN
F 1 "warm white" H 7460 2280 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7460 2380 50  0001 C CNN
F 3 "~" H 7460 2380 50  0001 C CNN
F 4 "1214-1445-1-ND" H 7460 2380 50  0001 C CNN "Digi-Key PN"
	1    7460 2380
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5D720751
P 6550 2380
F 0 "D?" H 6550 2480 50  0000 C CNN
F 1 "warm white" H 6550 2280 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6550 2380 50  0001 C CNN
F 3 "~" H 6550 2380 50  0001 C CNN
F 4 "1214-1445-1-ND" H 6550 2380 50  0001 C CNN "Digi-Key PN"
	1    6550 2380
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5D720E0C
P 6020 2380
F 0 "D?" H 6020 2480 50  0000 C CNN
F 1 "warm white" H 6020 2280 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6020 2380 50  0001 C CNN
F 3 "~" H 6020 2380 50  0001 C CNN
F 4 "1214-1445-1-ND" H 6020 2380 50  0001 C CNN "Digi-Key PN"
	1    6020 2380
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5D721E27
P 5530 2380
F 0 "D?" H 5530 2480 50  0000 C CNN
F 1 "warm white" H 5530 2280 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5530 2380 50  0001 C CNN
F 3 "~" H 5530 2380 50  0001 C CNN
F 4 "1214-1445-1-ND" H 5530 2380 50  0001 C CNN "Digi-Key PN"
	1    5530 2380
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5D7240D2
P 7000 2030
F 0 "D?" H 7000 2130 50  0000 C CNN
F 1 "warm white" H 7000 1930 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7000 2030 50  0001 C CNN
F 3 "~" H 7000 2030 50  0001 C CNN
F 4 "1214-1445-1-ND" H 7000 2030 50  0001 C CNN "Digi-Key PN"
	1    7000 2030
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5D7240DD
P 7460 2030
F 0 "D?" H 7460 2130 50  0000 C CNN
F 1 "warm white" H 7460 1930 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7460 2030 50  0001 C CNN
F 3 "~" H 7460 2030 50  0001 C CNN
F 4 "1214-1445-1-ND" H 7460 2030 50  0001 C CNN "Digi-Key PN"
	1    7460 2030
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5D7240E8
P 6550 2030
F 0 "D?" H 6550 2130 50  0000 C CNN
F 1 "warm white" H 6550 1930 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6550 2030 50  0001 C CNN
F 3 "~" H 6550 2030 50  0001 C CNN
F 4 "1214-1445-1-ND" H 6550 2030 50  0001 C CNN "Digi-Key PN"
	1    6550 2030
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5D7240F3
P 6020 2030
F 0 "D?" H 6020 2130 50  0000 C CNN
F 1 "warm white" H 6020 1930 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6020 2030 50  0001 C CNN
F 3 "~" H 6020 2030 50  0001 C CNN
F 4 "1214-1445-1-ND" H 6020 2030 50  0001 C CNN "Digi-Key PN"
	1    6020 2030
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5D7240FE
P 5530 2030
F 0 "D?" H 5530 2130 50  0000 C CNN
F 1 "warm white" H 5530 1930 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5530 2030 50  0001 C CNN
F 3 "~" H 5530 2030 50  0001 C CNN
F 4 "1214-1445-1-ND" H 5530 2030 50  0001 C CNN "Digi-Key PN"
	1    5530 2030
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2380 5200 2380
Connection ~ 5100 2380
Wire Wire Line
	5680 2380 5870 2380
Wire Wire Line
	6170 2380 6400 2380
Wire Wire Line
	5380 2030 5200 2030
Wire Wire Line
	5200 2030 5200 2380
Connection ~ 5200 2380
Wire Wire Line
	5200 2380 5380 2380
Wire Wire Line
	5680 2030 5870 2030
Wire Wire Line
	6170 2030 6400 2030
Wire Wire Line
	6700 2030 6850 2030
Wire Wire Line
	7150 2030 7310 2030
Wire Wire Line
	6700 2380 6850 2380
Wire Wire Line
	7150 2380 7310 2380
Wire Wire Line
	7610 2030 7820 2030
Wire Wire Line
	7820 2030 7820 2380
Connection ~ 7820 2730
Wire Wire Line
	7610 2380 7820 2380
Connection ~ 7820 2380
Wire Wire Line
	7820 2380 7820 2730
$Comp
L Device:C C?
U 1 1 5D732DC9
P 3570 4480
F 0 "C?" H 3595 4580 50  0000 L CNN
F 1 "4.7uF" H 3595 4380 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3608 4330 50  0001 C CNN
F 3 "~" H 3570 4480 50  0001 C CNN
F 4 "1276-2789-1-ND" H 3570 4480 50  0001 C CNN "Digi-Key PN"
	1    3570 4480
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D733585
P 4390 5660
F 0 "R?" V 4470 5660 50  0000 C CNN
F 1 "10k" V 4390 5660 50  0000 C CNN
F 2 "" V 4320 5660 50  0001 C CNN
F 3 "~" H 4390 5660 50  0001 C CNN
	1    4390 5660
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D738D99
P 4390 5810
F 0 "#PWR?" H 4390 5560 50  0001 C CNN
F 1 "GND" H 4390 5660 50  0000 C CNN
F 2 "" H 4390 5810 50  0001 C CNN
F 3 "" H 4390 5810 50  0001 C CNN
	1    4390 5810
	1    0    0    -1  
$EndComp
Wire Wire Line
	4390 5510 4390 4890
Wire Wire Line
	4390 4890 4500 4890
Text GLabel 4240 4890 0    50   Input ~ 0
led_enable
Wire Wire Line
	4240 4890 4390 4890
Connection ~ 4390 4890
$EndSCHEMATC
