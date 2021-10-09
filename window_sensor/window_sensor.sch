EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title "Reed Window Alert Sensor"
Date "2021-05-08"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U1
U 1 1 6096FDED
P 3600 3750
F 0 "U1" H 3600 2161 50  0000 C CNN
F 1 "ATmega328P-AU" H 3600 2070 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 3600 3750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 3600 3750 50  0001 C CNN
	1    3600 3750
	1    0    0    -1  
$EndComp
$Sheet
S 4600 2900 800  550 
U 6097702D
F0 "oscillator" 50
F1 "clock.sch" 50
F2 "XTAL_1" I L 4600 3150 50 
F3 "XTAL_2" I L 4600 3250 50 
$EndSheet
$Comp
L Connector:AVR-ISP-6 J1
U 1 1 60980949
P 6800 3700
F 0 "J1" H 6470 3796 50  0000 R CNN
F 1 "AVR-ISP-6" H 6470 3705 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" V 6550 3750 50  0001 C CNN
F 3 " ~" H 5525 3150 50  0001 C CNN
	1    6800 3700
	-1   0    0    -1  
$EndComp
Text GLabel 6400 3500 0    50   Input ~ 0
MISO
Text GLabel 6400 3600 0    50   Input ~ 0
MOSI
Text GLabel 6400 3700 0    50   Input ~ 0
SCK
Text GLabel 6400 3800 0    50   Input ~ 0
~RESET
Text GLabel 6900 4100 3    50   Input ~ 0
GND
Text GLabel 6900 3200 1    50   Input ~ 0
VCC
Text GLabel 4200 4050 2    50   Input ~ 0
~RESET
Text GLabel 4200 3050 2    50   Input ~ 0
SCK
Wire Wire Line
	4200 3150 4600 3150
Wire Wire Line
	4200 3250 4600 3250
Text GLabel 4200 2950 2    50   Input ~ 0
MISO
Text GLabel 4200 2850 2    50   Input ~ 0
MOSI
Text GLabel 6000 2600 0    50   Input ~ 0
~RESET
Text GLabel 6300 2600 2    50   Input ~ 0
VCC
$Comp
L Device:R R1
U 1 1 6098A1B0
P 6150 2600
F 0 "R1" V 5943 2600 50  0000 C CNN
F 1 "10k" V 6034 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6080 2600 50  0001 C CNN
F 3 "~" H 6150 2600 50  0001 C CNN
	1    6150 2600
	0    1    1    0   
$EndComp
Text GLabel 3600 1950 1    50   Input ~ 0
VCC
Text GLabel 3400 5250 0    50   Input ~ 0
GND
Wire Wire Line
	3400 5250 3600 5250
Wire Wire Line
	3600 1950 3600 2050
$Sheet
S 3800 1900 550  350 
U 6098B697
F0 "analogue filter" 50
F1 "filter.sch" 50
F2 "VIN" I L 3800 2050 50 
F3 "VOUT" I L 3800 2150 50 
$EndSheet
Wire Wire Line
	3800 2150 3700 2150
Wire Wire Line
	3700 2150 3700 2250
Wire Wire Line
	3800 2050 3600 2050
Connection ~ 3600 2050
Wire Wire Line
	3600 2050 3600 2250
$Sheet
S 4400 4350 900  650 
U 6098E716
F0 "I/O" 50
F1 "input.sch" 50
F2 "Button" I L 4400 4550 50 
F3 "Sensor" I L 4400 4450 50 
F4 "LED" I L 4400 4650 50 
F5 "BUZZER" I L 4400 4750 50 
F6 "SPEAKER-" I R 5300 4500 50 
$EndSheet
$Sheet
S 4550 3650 900  450 
U 6099ACA8
F0 "ADC" 50
F1 "ADC.sch" 50
F2 "VIN" I L 4550 3850 50 
F3 "VOUT" I L 4550 3750 50 
$EndSheet
Wire Wire Line
	4200 4450 4400 4450
Wire Wire Line
	4400 4550 4200 4550
Wire Wire Line
	4550 3750 4450 3750
Wire Wire Line
	4450 3750 4450 3450
Wire Wire Line
	4450 3450 4200 3450
Wire Wire Line
	4400 3850 4400 3550
Wire Wire Line
	4400 3550 4200 3550
Wire Wire Line
	4400 3850 4550 3850
Wire Wire Line
	4200 4750 4400 4750
Wire Wire Line
	4200 4650 4400 4650
$Comp
L Diode:BAT54CW D1
U 1 1 609AD0BF
P 5800 4500
F 0 "D1" H 5800 4600 50  0000 C CNN
F 1 "BAT54CW" H 5800 4724 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 5875 4625 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAT54W_SER.pdf" H 5720 4500 50  0001 C CNN
	1    5800 4500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 4500 5500 4500
Text GLabel 5800 4300 1    50   Input ~ 0
VCC
Text GLabel 6100 4500 2    50   Input ~ 0
VBAT
Text GLabel 1900 3500 1    50   Input ~ 0
VBAT
$Comp
L Device:Battery_Cell BT1
U 1 1 609B1DE0
P 1900 3700
F 0 "BT1" H 2018 3796 50  0000 L CNN
F 1 "Battery_Cell" H 2018 3705 50  0000 L CNN
F 2 "battery_holder:RND_305-00032_CR2032_Holder" V 1900 3760 50  0001 C CNN
F 3 "~" V 1900 3760 50  0001 C CNN
	1    1900 3700
	1    0    0    -1  
$EndComp
Text GLabel 1900 3800 3    50   Input ~ 0
GND
Text GLabel 6750 2600 0    50   Input ~ 0
VCC
Text GLabel 7050 2600 2    50   Input ~ 0
VBAT
$Comp
L Device:R R9
U 1 1 60AFF312
P 6900 2600
F 0 "R9" V 6693 2600 50  0000 C CNN
F 1 "0R" V 6784 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6830 2600 50  0001 C CNN
F 3 "~" H 6900 2600 50  0001 C CNN
	1    6900 2600
	0    1    1    0   
$EndComp
$EndSCHEMATC
