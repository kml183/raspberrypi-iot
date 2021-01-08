EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
L power:+5V #PWR0112
U 1 1 5F1694A4
P 3100 1300
F 0 "#PWR0112" H 3100 1150 50  0001 C CNN
F 1 "+5V" H 3115 1473 50  0000 C CNN
F 2 "" H 3100 1300 50  0001 C CNN
F 3 "" H 3100 1300 50  0001 C CNN
	1    3100 1300
	1    0    0    -1  
$EndComp
Wire Notes Line
	500  2350 5650 2350
Text Notes 500  650  0    100  ~ 0
Regulators (3.3V and 1.8V) 
$Comp
L Interface_USB:CP2104 U3
U 1 1 5F17DF8A
P 2800 4050
F 0 "U3" H 2250 4900 50  0000 C CNN
F 1 "CP2104" H 3250 3100 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm" H 2950 3100 50  0001 L CNN
F 3 "https://www.silabs.com/documents/public/data-sheets/cp2104.pdf" H 2250 5300 50  0001 C CNN
	1    2800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3150 2600 3050
Wire Wire Line
	2600 3050 2800 3050
Wire Wire Line
	2800 3150 2800 3050
Connection ~ 2800 3050
$Comp
L power:+3.3V #PWR0115
U 1 1 5F184A1A
P 2800 3000
F 0 "#PWR0115" H 2800 2850 50  0001 C CNN
F 1 "+3.3V" H 2815 3173 50  0000 C CNN
F 2 "" H 2800 3000 50  0001 C CNN
F 3 "" H 2800 3000 50  0001 C CNN
	1    2800 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3050 2800 3000
$Comp
L power:GND #PWR0116
U 1 1 5F186375
P 2850 5100
F 0 "#PWR0116" H 2850 4850 50  0001 C CNN
F 1 "GND" H 2855 4927 50  0000 C CNN
F 2 "" H 2850 5100 50  0001 C CNN
F 3 "" H 2850 5100 50  0001 C CNN
	1    2850 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5050 2800 5100
Wire Wire Line
	2800 5100 2850 5100
Wire Wire Line
	2900 5050 2900 5100
Wire Wire Line
	2900 5100 2850 5100
Connection ~ 2850 5100
Wire Wire Line
	700  4050 750  4050
$Comp
L power:GND #PWR0117
U 1 1 5F19D865
P 750 4050
F 0 "#PWR0117" H 750 3800 50  0001 C CNN
F 1 "GND" H 755 3877 50  0000 C CNN
F 2 "" H 750 4050 50  0001 C CNN
F 3 "" H 750 4050 50  0001 C CNN
	1    750  4050
	1    0    0    -1  
$EndComp
Text Notes 500  2500 0    100  ~ 0
USB/UART Bridge + Auto Reset
Text Notes 500  2700 0    50   ~ 0
The CP210x series of chips requires a driver. There is also a built in Boot/Rst trigger using the DTR and RTS controls.\nhttps://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers
Text GLabel 5150 3650 2    50   Output ~ 0
nBOOT
Text GLabel 5150 4650 2    50   Output ~ 0
nRST
Connection ~ 750  4050
Wire Wire Line
	750  4050 800  4050
$Comp
L RF_Module:ESP-12F U5
U 1 1 5F22AB3E
P 7100 2100
F 0 "U5" H 7550 1450 50  0000 C CNN
F 1 "ESP-12F" H 6750 2850 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 7100 2100 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 6750 2200 50  0001 C CNN
	1    7100 2100
	1    0    0    -1  
$EndComp
Text GLabel 7850 1600 2    50   Output ~ 0
UART_RX
Text GLabel 7850 1800 2    50   Input ~ 0
UART_TX
Wire Wire Line
	7700 1800 7850 1800
Wire Wire Line
	7700 1600 7850 1600
$Comp
L power:GND #PWR0124
U 1 1 5F27F7EB
P 7100 2850
F 0 "#PWR0124" H 7100 2600 50  0001 C CNN
F 1 "GND" H 7105 2677 50  0000 C CNN
F 2 "" H 7100 2850 50  0001 C CNN
F 3 "" H 7100 2850 50  0001 C CNN
	1    7100 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2850 7100 2800
$Comp
L power:+3.3V #PWR0125
U 1 1 5F282515
P 7100 1000
F 0 "#PWR0125" H 7100 850 50  0001 C CNN
F 1 "+3.3V" H 7115 1173 50  0000 C CNN
F 2 "" H 7100 1000 50  0001 C CNN
F 3 "" H 7100 1000 50  0001 C CNN
	1    7100 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1300 7100 1100
Text GLabel 6400 1500 0    50   Input ~ 0
nRST
Wire Wire Line
	6450 1700 6500 1700
Wire Wire Line
	7700 2400 7750 2400
Text GLabel 7850 2000 2    50   Output ~ 0
I2C_SCK
Text GLabel 7850 1900 2    50   Output ~ 0
I2C_SDA
Wire Wire Line
	7700 1900 7850 1900
Wire Wire Line
	7700 2000 7850 2000
NoConn ~ 3500 4350
NoConn ~ 3500 4550
NoConn ~ 3500 4650
NoConn ~ 3500 4750
NoConn ~ 2100 4750
NoConn ~ 2100 4550
NoConn ~ 2100 4450
NoConn ~ 3500 3750
NoConn ~ 3500 3550
NoConn ~ 3500 3450
NoConn ~ 6500 2300
NoConn ~ 6500 2400
Wire Notes Line
	5650 500  5650 7800
$Comp
L Device:R_US R2
U 1 1 5F1D7DFC
P 3400 1650
F 0 "R2" H 3468 1696 50  0000 L CNN
F 1 "10k" H 3468 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3440 1640 50  0001 C CNN
F 3 "~" H 3400 1650 50  0001 C CNN
	1    3400 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 5F224E7C
P 5050 3950
F 0 "R3" V 4845 3950 50  0000 C CNN
F 1 "10k" V 4936 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5090 3940 50  0001 C CNN
F 3 "~" H 5050 3950 50  0001 C CNN
	1    5050 3950
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R4
U 1 1 5F225E70
P 4200 3950
F 0 "R4" V 3995 3950 50  0000 C CNN
F 1 "10k" V 4086 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4240 3940 50  0001 C CNN
F 3 "~" H 4200 3950 50  0001 C CNN
	1    4200 3950
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPST SW2
U 1 1 5F18CCDF
P 3050 6750
F 0 "SW2" H 3050 6985 50  0000 C CNN
F 1 "PTS645Vx83" H 3050 6894 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx58-2LFS" H 3050 6750 50  0001 C CNN
F 3 "~" H 3050 6750 50  0001 C CNN
	1    3050 6750
	1    0    0    -1  
$EndComp
Text GLabel 4500 6050 2    50   Output ~ 0
nRST
Wire Wire Line
	4500 6050 3350 6050
$Comp
L power:GND #PWR0108
U 1 1 5F0BA267
P 3850 2050
F 0 "#PWR0108" H 3850 1800 50  0001 C CNN
F 1 "GND" H 3855 1877 50  0000 C CNN
F 2 "" H 3850 2050 50  0001 C CNN
F 3 "" H 3850 2050 50  0001 C CNN
	1    3850 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 6050 2850 6050
$Comp
L Regulator_Linear:MIC5504-1.8YM5 U2
U 1 1 5F19A415
P 1800 1500
F 0 "U2" H 1800 1867 50  0000 C CNN
F 1 "MIC5225-1.8YM5" H 1800 1776 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1800 1100 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MIC550X.pdf" H 1550 1750 50  0001 C CNN
	1    1800 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1400 1350 1400
Wire Wire Line
	1400 1600 1350 1600
Wire Wire Line
	1350 1600 1350 1400
$Comp
L Device:C C8
U 1 1 5F1A978B
P 3100 1650
F 0 "C8" H 2900 1650 50  0000 L CNN
F 1 "10u" H 2900 1550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3138 1500 50  0001 C CNN
F 3 "~" H 3100 1650 50  0001 C CNN
	1    3100 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5F1A9CC7
P 1800 2000
F 0 "#PWR0103" H 1800 1750 50  0001 C CNN
F 1 "GND" H 1805 1827 50  0000 C CNN
F 2 "" H 1800 2000 50  0001 C CNN
F 3 "" H 1800 2000 50  0001 C CNN
	1    1800 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5F1A9FCA
P 2350 1650
F 0 "C10" H 2150 1700 50  0000 L CNN
F 1 "10u" H 2150 1600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2388 1500 50  0001 C CNN
F 3 "~" H 2350 1650 50  0001 C CNN
	1    2350 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1800 1150 1900
Wire Wire Line
	1150 1900 1800 1900
Wire Wire Line
	2350 1900 2350 1800
Connection ~ 1800 1900
Wire Wire Line
	1800 1900 2350 1900
Wire Wire Line
	1800 2000 1800 1900
Wire Wire Line
	1150 1500 1150 1400
$Comp
L power:+1V8 #PWR0104
U 1 1 5F1FBAE4
P 2350 1300
F 0 "#PWR0104" H 2350 1150 50  0001 C CNN
F 1 "+1V8" H 2365 1473 50  0000 C CNN
F 2 "" H 2350 1300 50  0001 C CNN
F 3 "" H 2350 1300 50  0001 C CNN
	1    2350 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1500 2350 1400
Wire Wire Line
	1350 1400 1150 1400
Connection ~ 1350 1400
Connection ~ 1150 1400
Wire Wire Line
	1150 1400 1150 1300
Wire Wire Line
	2200 1400 2350 1400
Connection ~ 2350 1400
Wire Wire Line
	2350 1400 2350 1300
Text Notes 500  900  0    50   ~ 0
The 3.3V Regulator is rated at 1A, It is to supply power to the ESP and most\nof the sensors. The 1.8V Regular is rated at 150mA and is for the CP60 gas\nsensor.
Wire Wire Line
	5150 3650 4950 3650
Text Notes 4200 5000 0    50   ~ 0
Trigger circuit for the boot/rst \nesp8266 sequence needed for \nprogramming
$Comp
L Switch:SW_SPST SW3
U 1 1 5F1A234A
P 3050 6050
F 0 "SW3" H 3050 6285 50  0000 C CNN
F 1 "PTS645Vx83" H 3050 6194 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx58-2LFS" H 3050 6050 50  0001 C CNN
F 3 "~" H 3050 6050 50  0001 C CNN
	1    3050 6050
	1    0    0    -1  
$EndComp
Text GLabel 4500 6400 2    50   Output ~ 0
nMODE
Wire Wire Line
	2750 6400 2850 6400
Wire Wire Line
	2750 6050 2750 6400
Connection ~ 2750 6400
NoConn ~ 6500 1900
NoConn ~ 6400 3700
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5F38C5AF
P 6400 3600
F 0 "H1" H 6500 3649 50  0000 L CNN
F 1 "MountingHole_Pad" H 6500 3558 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6400 3600 50  0001 C CNN
F 3 "~" H 6400 3600 50  0001 C CNN
	1    6400 3600
	1    0    0    -1  
$EndComp
NoConn ~ 6150 3700
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5F5C1572
P 6150 3600
F 0 "H4" H 5800 3550 50  0000 L CNN
F 1 "MountingHole_Pad" H 5800 3450 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 6150 3600 50  0001 C CNN
F 3 "~" H 6150 3600 50  0001 C CNN
	1    6150 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0123
U 1 1 5F4FBB06
P 1450 6350
F 0 "#PWR0123" H 1450 6200 50  0001 C CNN
F 1 "+3.3V" H 1465 6523 50  0000 C CNN
F 2 "" H 1450 6350 50  0001 C CNN
F 3 "" H 1450 6350 50  0001 C CNN
	1    1450 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 5F4FC014
P 1450 7050
F 0 "#PWR0132" H 1450 6800 50  0001 C CNN
F 1 "GND" H 1455 6877 50  0000 C CNN
F 2 "" H 1450 7050 50  0001 C CNN
F 3 "" H 1450 7050 50  0001 C CNN
	1    1450 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 6400 1450 6350
Wire Wire Line
	1450 7000 1450 7050
$Comp
L LED:WS2812B D1
U 1 1 5F529F39
P 1450 6700
F 0 "D1" H 1794 6746 50  0000 L CNN
F 1 "WS2812B" H 1794 6655 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm" H 1500 6400 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 1550 6325 50  0001 L TNN
	1    1450 6700
	1    0    0    -1  
$EndComp
Text GLabel 1100 6700 0    50   Input ~ 0
RGB_LED
Wire Wire Line
	1100 6700 1150 6700
Wire Wire Line
	4500 6400 3700 6400
$Comp
L Device:C C5
U 1 1 5F1D5467
P 3350 7300
F 0 "C5" H 3465 7346 50  0000 L CNN
F 1 "100n" H 3465 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3388 7150 50  0001 C CNN
F 3 "~" H 3350 7300 50  0001 C CNN
	1    3350 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F1D5A89
P 3700 7300
F 0 "C6" H 3815 7346 50  0000 L CNN
F 1 "100n" H 3815 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3738 7150 50  0001 C CNN
F 3 "~" H 3700 7300 50  0001 C CNN
	1    3700 7300
	1    0    0    -1  
$EndComp
Connection ~ 3350 6050
Wire Wire Line
	3350 6050 3250 6050
Connection ~ 3700 6400
Wire Wire Line
	3700 6400 3250 6400
Wire Wire Line
	3350 7450 3350 7550
Wire Wire Line
	3350 7550 3700 7550
Wire Wire Line
	3700 7550 3700 7450
$Comp
L power:GND #PWR0134
U 1 1 5F1F1669
P 3700 7550
F 0 "#PWR0134" H 3700 7300 50  0001 C CNN
F 1 "GND" H 3705 7377 50  0000 C CNN
F 2 "" H 3700 7550 50  0001 C CNN
F 3 "" H 3700 7550 50  0001 C CNN
	1    3700 7550
	1    0    0    -1  
$EndComp
Connection ~ 3700 7550
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5F1E268A
P 6400 4050
F 0 "H3" H 6500 4099 50  0000 L CNN
F 1 "MountingHole_Pad" H 6500 4008 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_ISO14580_Pad" H 6400 4050 50  0001 C CNN
F 3 "~" H 6400 4050 50  0001 C CNN
	1    6400 4050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5F1E2690
P 6150 4050
F 0 "H2" H 5800 4000 50  0000 L CNN
F 1 "MountingHole_Pad" H 5800 3900 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_ISO14580_Pad" H 6150 4050 50  0001 C CNN
F 3 "~" H 6150 4050 50  0001 C CNN
	1    6150 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 5F1EB440
P 6300 4300
F 0 "#PWR0135" H 6300 4050 50  0001 C CNN
F 1 "GND" H 6305 4127 50  0000 C CNN
F 2 "" H 6300 4300 50  0001 C CNN
F 3 "" H 6300 4300 50  0001 C CNN
	1    6300 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4150 6400 4300
Wire Wire Line
	6400 4300 6300 4300
Wire Wire Line
	6150 4300 6150 4150
Connection ~ 6300 4300
Wire Wire Line
	6300 4300 6150 4300
Wire Wire Line
	3850 1800 3850 1950
Wire Wire Line
	3400 1800 3550 1800
Wire Wire Line
	3550 1800 3550 1500
Wire Wire Line
	3400 1500 3400 1400
Wire Wire Line
	3400 1400 3550 1400
Wire Wire Line
	3100 1500 3100 1400
Wire Wire Line
	3100 1400 3400 1400
Connection ~ 3400 1400
Connection ~ 3100 1400
Connection ~ 3850 1950
Wire Wire Line
	3850 1950 3850 2050
Wire Wire Line
	3100 1800 3100 1950
Wire Wire Line
	3100 1950 3850 1950
Wire Wire Line
	3100 1400 3100 1300
Wire Wire Line
	1800 1800 1800 1900
$Comp
L Connector:USB_B_Mini J1
U 1 1 5F20AF97
P 800 3650
F 0 "J1" H 857 4117 50  0000 C CNN
F 1 "USB_B_Mini" H 857 4026 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex-105017-0001" H 950 3600 50  0001 C CNN
F 3 "~" H 950 3600 50  0001 C CNN
	1    800  3650
	1    0    0    -1  
$EndComp
NoConn ~ 1100 3850
Wire Wire Line
	1100 3750 1300 3750
Wire Wire Line
	1100 3650 1400 3650
Wire Wire Line
	1300 3750 1300 3950
Wire Wire Line
	1400 3650 1400 4050
Wire Wire Line
	1300 3950 2100 3950
Wire Wire Line
	2000 3650 2000 3450
Wire Wire Line
	2000 3650 2100 3650
Connection ~ 2000 3450
Wire Wire Line
	2000 3450 2100 3450
Text GLabel 5150 3300 2    50   Input ~ 0
UART_RX
Text GLabel 5150 3200 2    50   Output ~ 0
UART_TX
Wire Wire Line
	3750 3950 3750 3200
Wire Wire Line
	3500 3950 3750 3950
Wire Wire Line
	3850 4050 3850 3300
Wire Wire Line
	3500 4050 3850 4050
Wire Wire Line
	4950 4250 5050 4250
Wire Wire Line
	4350 3950 4450 3950
Wire Wire Line
	4950 3950 4950 4100
Wire Wire Line
	4950 4100 5050 4100
Wire Wire Line
	5050 3500 4350 3500
Wire Wire Line
	4350 3500 4350 3650
Connection ~ 4350 3650
Wire Wire Line
	4350 3650 4450 3650
Wire Wire Line
	5050 3500 5050 3800
Wire Wire Line
	4050 4250 4050 4500
Wire Wire Line
	4050 4500 5050 4500
Wire Wire Line
	5050 4500 5050 4250
Wire Wire Line
	4450 4250 4350 4250
Wire Wire Line
	4350 4250 4350 4650
Wire Wire Line
	4350 4650 5150 4650
Wire Wire Line
	4050 4250 4050 3950
Connection ~ 4050 4250
$Comp
L Switch:SW_SPST SW1
U 1 1 5F9108C7
P 3050 6400
F 0 "SW1" H 3050 6635 50  0000 C CNN
F 1 "PTS645Vx83" H 3050 6544 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Tactile_SPST_Angled_PTS645Vx58-2LFS" H 3050 6400 50  0001 C CNN
F 3 "~" H 3050 6400 50  0001 C CNN
	1    3050 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 6750 2750 6750
Connection ~ 2750 6750
Wire Wire Line
	2750 6750 2750 6400
Wire Wire Line
	3250 6750 4050 6750
Text GLabel 4500 6750 2    50   Output ~ 0
nBOOT
Text GLabel 7850 1500 2    50   Input ~ 0
nBOOT
$Comp
L Device:C C4
U 1 1 5F9394DB
P 4050 7300
F 0 "C4" H 4165 7346 50  0000 L CNN
F 1 "100n" H 4165 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4088 7150 50  0001 C CNN
F 3 "~" H 4050 7300 50  0001 C CNN
	1    4050 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 7550 4050 7550
Wire Wire Line
	4050 7550 4050 7450
Wire Wire Line
	4050 7150 4050 6750
Connection ~ 4050 6750
Wire Wire Line
	4050 6750 4500 6750
Wire Wire Line
	3700 6400 3700 7150
Wire Wire Line
	3350 6050 3350 7150
Wire Wire Line
	2750 7550 3350 7550
Wire Wire Line
	2750 6750 2750 7100
Connection ~ 3350 7550
$Sheet
S 8500 1600 1000 750 
U 5F9A85F1
F0 "Sheet5F9A85F0" 50
F1 "sensors.sch" 50
$EndSheet
Text Notes 550  5600 0    100  ~ 0
I/O - Buttons and LEDs
Text GLabel 7850 2200 2    50   Input ~ 0
nMODE
NoConn ~ 1750 6700
NoConn ~ 3000 3150
Text GLabel 7850 1700 2    50   Input ~ 0
nINT
$Comp
L dk_Transistors-FETs-MOSFETs-Arrays:BSS138DW-7-F Q1
U 1 1 5F2362A4
P 4750 3850
F 0 "Q1" H 4700 4337 60  0000 C CNN
F 1 "BSS138DW-7-F" H 4700 4231 60  0000 C CNN
F 2 "digikey-footprints:SOT-363" H 4950 4050 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30203.pdf" V 4950 4150 60  0001 L CNN
F 4 "BSS138DW-FDICT-ND" H 4950 4250 60  0001 L CNN "Digi-Key_PN"
F 5 "BSS138DW-7-F" H 4950 4350 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4950 4450 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Arrays" H 4950 4550 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/ds30203.pdf" H 4950 4650 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/BSS138DW-7-F/BSS138DW-FDICT-ND/808541" H 4950 4750 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET 2N-CH 50V 0.2A SC70-6" H 4950 4850 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 4950 4950 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4950 5050 60  0001 L CNN "Status"
	1    4750 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R6
U 1 1 5F22BFC1
P 1900 3800
F 0 "R6" H 1968 3846 50  0000 L CNN
F 1 "470" H 1968 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1900 3800 50  0001 C CNN
F 3 "~" H 1900 3800 50  0001 C CNN
	1    1900 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 5F22CE8C
P 1600 3800
F 0 "R1" H 1668 3846 50  0000 L CNN
F 1 "470" H 1668 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1600 3800 50  0001 C CNN
F 3 "~" H 1600 3800 50  0001 C CNN
	1    1600 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5F22D8A2
P 1900 3200
F 0 "D4" V 1847 3280 50  0000 L CNN
F 1 "LED" V 1938 3280 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 1900 3200 50  0001 C CNN
F 3 "~" H 1900 3200 50  0001 C CNN
	1    1900 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5F22FD1C
P 1600 3200
F 0 "D3" V 1547 3280 50  0000 L CNN
F 1 "LED" V 1638 3280 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 1600 3200 50  0001 C CNN
F 3 "~" H 1600 3200 50  0001 C CNN
	1    1600 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2100 4250 1900 4250
Wire Wire Line
	1900 4250 1900 3900
Wire Wire Line
	2100 4350 1600 4350
Wire Wire Line
	1600 4350 1600 3900
Wire Wire Line
	1600 3350 1600 3700
Wire Wire Line
	1900 3700 1900 3350
Wire Wire Line
	1600 3050 1600 3000
Wire Wire Line
	1600 3000 1750 3000
Wire Wire Line
	1900 3000 1900 3050
$Comp
L power:+3.3V #PWR0131
U 1 1 5F2500CB
P 1750 3000
F 0 "#PWR0131" H 1750 2850 50  0001 C CNN
F 1 "+3.3V" H 1765 3173 50  0000 C CNN
F 2 "" H 1750 3000 50  0001 C CNN
F 3 "" H 1750 3000 50  0001 C CNN
	1    1750 3000
	1    0    0    -1  
$EndComp
Connection ~ 1750 3000
Wire Wire Line
	1750 3000 1900 3000
$Comp
L power:GND #PWR0136
U 1 1 5F26D693
P 1700 5150
F 0 "#PWR0136" H 1700 4900 50  0001 C CNN
F 1 "GND" H 1705 4977 50  0000 C CNN
F 2 "" H 1700 5150 50  0001 C CNN
F 3 "" H 1700 5150 50  0001 C CNN
	1    1700 5150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0137
U 1 1 5F26DA73
P 1700 4650
F 0 "#PWR0137" H 1700 4500 50  0001 C CNN
F 1 "+5V" H 1715 4823 50  0000 C CNN
F 2 "" H 1700 4650 50  0001 C CNN
F 3 "" H 1700 4650 50  0001 C CNN
	1    1700 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4650 1700 4750
Wire Wire Line
	1700 5050 1700 5150
$Comp
L power:+5V #PWR0106
U 1 1 5F19AF20
P 1200 3000
F 0 "#PWR0106" H 1200 2850 50  0001 C CNN
F 1 "+5V" H 1215 3173 50  0000 C CNN
F 2 "" H 1200 3000 50  0001 C CNN
F 3 "" H 1200 3000 50  0001 C CNN
	1    1200 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3450 2000 3450
Wire Wire Line
	1100 3450 1200 3450
Connection ~ 1200 3450
Wire Wire Line
	1200 3000 1200 3450
Wire Wire Line
	1400 4050 2100 4050
$Comp
L Device:C C7
U 1 1 5F26C8C0
P 1700 4900
F 0 "C7" H 1500 4900 50  0000 L CNN
F 1 "10u" H 1500 4800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1738 4750 50  0001 C CNN
F 3 "~" H 1700 4900 50  0001 C CNN
	1    1700 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5F31689D
P 5950 1200
F 0 "C1" H 6065 1246 50  0000 L CNN
F 1 "100n" H 6065 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5988 1050 50  0001 C CNN
F 3 "~" H 5950 1200 50  0001 C CNN
	1    5950 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 5F31707E
P 5950 1400
F 0 "#PWR0133" H 5950 1150 50  0001 C CNN
F 1 "GND" H 5955 1227 50  0000 C CNN
F 2 "" H 5950 1400 50  0001 C CNN
F 3 "" H 5950 1400 50  0001 C CNN
	1    5950 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0138
U 1 1 5F31754C
P 5950 1000
F 0 "#PWR0138" H 5950 850 50  0001 C CNN
F 1 "+3.3V" H 5965 1173 50  0000 C CNN
F 2 "" H 5950 1000 50  0001 C CNN
F 3 "" H 5950 1000 50  0001 C CNN
	1    5950 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1050 5950 1000
Wire Wire Line
	5950 1350 5950 1400
$Comp
L Device:R_Small_US R5
U 1 1 5F32567C
P 3350 5850
F 0 "R5" H 3418 5896 50  0000 L CNN
F 1 "10k" H 3418 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3350 5850 50  0001 C CNN
F 3 "~" H 3350 5850 50  0001 C CNN
	1    3350 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R7
U 1 1 5F341682
P 6450 1200
F 0 "R7" H 6518 1246 50  0000 L CNN
F 1 "10k" H 6518 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6450 1200 50  0001 C CNN
F 3 "~" H 6450 1200 50  0001 C CNN
	1    6450 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R8
U 1 1 5F3419F2
P 4050 5850
F 0 "R8" H 4118 5896 50  0000 L CNN
F 1 "10k" H 4118 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4050 5850 50  0001 C CNN
F 3 "~" H 4050 5850 50  0001 C CNN
	1    4050 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 5F341E1A
P 7750 2700
F 0 "R9" H 7818 2746 50  0000 L CNN
F 1 "10k" H 7818 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7750 2700 50  0001 C CNN
F 3 "~" H 7750 2700 50  0001 C CNN
	1    7750 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2400 7750 2600
Wire Wire Line
	6450 1300 6450 1700
Wire Wire Line
	7700 2200 7850 2200
NoConn ~ 800  1500
$Comp
L power:+5V #PWR0102
U 1 1 5F3F3477
P 1150 1300
F 0 "#PWR0102" H 1150 1150 50  0001 C CNN
F 1 "+5V" H 1165 1473 50  0000 C CNN
F 2 "" H 1150 1300 50  0001 C CNN
F 3 "" H 1150 1300 50  0001 C CNN
	1    1150 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5F1A8998
P 1150 1650
F 0 "C9" H 950 1700 50  0000 L CNN
F 1 "10u" H 950 1600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1188 1500 50  0001 C CNN
F 3 "~" H 1150 1650 50  0001 C CNN
	1    1150 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3300 5050 3300
$Comp
L Switch:SW_SPST SW4
U 1 1 5F52A37D
P 3050 7100
F 0 "SW4" H 3050 7335 50  0000 C CNN
F 1 "KMR2" H 3050 7244 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_CK_KMR2" H 3050 7100 50  0001 C CNN
F 3 "~" H 3050 7100 50  0001 C CNN
	1    3050 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 7100 2750 7100
Connection ~ 2750 7100
Wire Wire Line
	2750 7100 2750 7550
Text GLabel 4500 7100 2    50   Output ~ 0
nFAC_RST
Wire Wire Line
	3250 7100 4400 7100
$Comp
L Device:R_Small_US R14
U 1 1 5F54EA3C
P 3700 5850
F 0 "R14" H 3768 5896 50  0000 L CNN
F 1 "10k" H 3768 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3700 5850 50  0001 C CNN
F 3 "~" H 3700 5850 50  0001 C CNN
	1    3700 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6050 3350 5950
Wire Wire Line
	4050 6750 4050 5950
$Comp
L Device:R_Small_US R15
U 1 1 5F55E1DD
P 4400 5850
F 0 "R15" H 4468 5896 50  0000 L CNN
F 1 "10k" H 4468 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4400 5850 50  0001 C CNN
F 3 "~" H 4400 5850 50  0001 C CNN
	1    4400 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5F55E8A0
P 4400 7300
F 0 "C13" H 4515 7346 50  0000 L CNN
F 1 "100n" H 4515 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4438 7150 50  0001 C CNN
F 3 "~" H 4400 7300 50  0001 C CNN
	1    4400 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 7150 4400 7100
Connection ~ 4400 7100
Wire Wire Line
	4400 7100 4500 7100
Wire Wire Line
	4400 7100 4400 5950
Wire Wire Line
	3700 6400 3700 5950
Wire Wire Line
	3350 5750 3350 5700
Wire Wire Line
	3350 5700 3700 5700
Wire Wire Line
	4400 5700 4400 5750
Wire Wire Line
	4050 5750 4050 5700
Connection ~ 4050 5700
Wire Wire Line
	4050 5700 4400 5700
Wire Wire Line
	3700 5750 3700 5700
Connection ~ 3700 5700
Wire Wire Line
	3700 5700 3900 5700
Wire Wire Line
	4050 7550 4400 7550
Wire Wire Line
	4400 7550 4400 7450
Connection ~ 4050 7550
$Comp
L power:+3.3V #PWR0145
U 1 1 5F5924DF
P 3900 5700
F 0 "#PWR0145" H 3900 5550 50  0001 C CNN
F 1 "+3.3V" H 3915 5873 50  0000 C CNN
F 2 "" H 3900 5700 50  0001 C CNN
F 3 "" H 3900 5700 50  0001 C CNN
	1    3900 5700
	1    0    0    -1  
$EndComp
Connection ~ 3900 5700
Wire Wire Line
	3900 5700 4050 5700
Wire Wire Line
	6400 1500 6500 1500
Wire Wire Line
	7700 1500 7850 1500
Wire Wire Line
	6450 1100 7100 1100
Connection ~ 7100 1100
Wire Wire Line
	7100 1100 7100 1000
Wire Wire Line
	7100 2850 7750 2850
Connection ~ 7100 2850
Wire Wire Line
	7750 2800 7750 2850
NoConn ~ 6500 2500
Text GLabel 7850 2300 2    50   Input ~ 0
nFAC_RST
Wire Wire Line
	7850 2300 7700 2300
Text Notes 5700 650  0    100  ~ 0
ESP-12F w/ Sensor Subblock
Wire Notes Line
	5650 3150 9950 3150
Wire Notes Line
	9950 3150 9950 500 
Text Notes 5700 3350 0    100  ~ 0
Mounting Holes
Wire Notes Line
	5650 4650 7450 4650
Wire Notes Line
	7450 4650 7450 3150
Wire Notes Line
	500  5450 5650 5450
Wire Wire Line
	3750 3200 4950 3200
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5F3BC802
P 5350 3000
F 0 "J4" H 5322 2882 50  0000 R CNN
F 1 "UART_BUS" H 5600 3050 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5350 3000 50  0001 C CNN
F 3 "~" H 5350 3000 50  0001 C CNN
	1    5350 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 3300 5050 3000
Wire Wire Line
	5050 3000 5150 3000
Connection ~ 5050 3300
Wire Wire Line
	5050 3300 5150 3300
Wire Wire Line
	4950 3200 4950 2900
Wire Wire Line
	4950 2900 5150 2900
Connection ~ 4950 3200
Wire Wire Line
	4950 3200 5150 3200
Wire Wire Line
	3500 4250 4050 4250
Wire Wire Line
	3500 3650 4350 3650
Text GLabel 7850 2100 2    50   Input ~ 0
RGB_LED
Wire Wire Line
	7700 2100 7850 2100
Wire Wire Line
	7700 1700 7850 1700
NoConn ~ 7700 2500
NoConn ~ 6500 2100
NoConn ~ 6500 2200
NoConn ~ 6500 2600
Connection ~ 4300 1400
Wire Wire Line
	4300 1400 4300 1300
Wire Wire Line
	4300 1400 4150 1400
Wire Wire Line
	4300 1550 4300 1400
Wire Wire Line
	4300 1950 4300 1850
Wire Wire Line
	3850 1950 4300 1950
$Comp
L power:+3.3V #PWR0107
U 1 1 5F0B902F
P 4300 1300
F 0 "#PWR0107" H 4300 1150 50  0001 C CNN
F 1 "+3.3V" H 4315 1473 50  0000 C CNN
F 2 "" H 4300 1300 50  0001 C CNN
F 3 "" H 4300 1300 50  0001 C CNN
	1    4300 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F0BCC65
P 4300 1700
F 0 "C2" H 4415 1746 50  0000 L CNN
F 1 "47u" H 4415 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4338 1550 50  0001 C CNN
F 3 "~" H 4300 1700 50  0001 C CNN
	1    4300 1700
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AP2112K-3.3 U1
U 1 1 5F256A82
P 3850 1500
F 0 "U1" H 3850 1842 50  0000 C CNN
F 1 "AP2112K-3.3" H 3850 1751 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3850 1825 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP2112.pdf" H 3850 1600 50  0001 C CNN
	1    3850 1500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
