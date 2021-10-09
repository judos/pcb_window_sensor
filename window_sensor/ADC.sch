EESchema Schematic File Version 4
EELAYER 30 0
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
Text HLabel 4800 2650 0    50   Input ~ 0
VIN
Text HLabel 4800 2950 0    50   Input ~ 0
VOUT
Text GLabel 5000 3250 3    50   Input ~ 0
GND
$Comp
L Device:R R7
U 1 1 6099C282
P 5000 2800
F 0 "R7" H 5070 2846 50  0000 L CNN
F 1 "100k" H 5070 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4930 2800 50  0001 C CNN
F 3 "~" H 5000 2800 50  0001 C CNN
	1    5000 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 6099CC21
P 5000 3100
F 0 "R8" H 5070 3146 50  0000 L CNN
F 1 "100k" H 5070 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4930 3100 50  0001 C CNN
F 3 "~" H 5000 3100 50  0001 C CNN
	1    5000 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2950 5000 2950
Connection ~ 5000 2950
Wire Wire Line
	4800 2650 5000 2650
$EndSCHEMATC
