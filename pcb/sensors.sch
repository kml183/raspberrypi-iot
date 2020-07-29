EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L pcb-rescue:BME280-dk_Humidity-Moisture-Sensors U?
U 1 1 5F9ABBF1
P 1450 1450
AR Path="/5F9ABBF1" Ref="U?"  Part="1" 
AR Path="/5F9A85F1/5F9ABBF1" Ref="U4"  Part="1" 
F 0 "U4" H 1650 1200 60  0000 L CNN
F 1 "BME280" H 1000 1800 60  0000 L CNN
F 2 "digikey-footprints:Pressure_Sensor_LGA-8_2.5x2.5mm_BME280" H 1650 1650 60  0001 L CNN
F 3 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280-DS002.pdf" H 1650 1750 60  0001 L CNN
F 4 "828-1063-1-ND" H 1650 1850 60  0001 L CNN "Digi-Key_PN"
F 5 "BME280" H 1650 1950 60  0001 L CNN "MPN"
F 6 "Sensors, Transducers" H 1650 2050 60  0001 L CNN "Category"
F 7 "Humidity, Moisture Sensors" H 1650 2150 60  0001 L CNN "Family"
F 8 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280-DS002.pdf" H 1650 2250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/bosch-sensortec/BME280/828-1063-1-ND/6136314" H 1650 2350 60  0001 L CNN "DK_Detail_Page"
F 10 "SENSOR PRESSURE HUMIDITY TEMP" H 1650 2450 60  0001 L CNN "Description"
F 11 "Bosch Sensortec" H 1650 2550 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1650 2650 60  0001 L CNN "Status"
	1    1450 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F9ABBF7
P 1500 1800
AR Path="/5F9ABBF7" Ref="#PWR?"  Part="1" 
AR Path="/5F9A85F1/5F9ABBF7" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 1500 1550 50  0001 C CNN
F 1 "GND" H 1505 1627 50  0000 C CNN
F 2 "" H 1500 1800 50  0001 C CNN
F 3 "" H 1500 1800 50  0001 C CNN
	1    1500 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1800 1450 1800
Wire Wire Line
	1450 1800 1450 1750
Wire Wire Line
	1500 1800 1550 1800
Wire Wire Line
	1550 1800 1550 1750
Connection ~ 1500 1800
Wire Wire Line
	1550 1050 1550 1000
Wire Wire Line
	1550 1000 1500 1000
Wire Wire Line
	1450 1000 1450 1050
$Comp
L power:+3.3V #PWR?
U 1 1 5F9ABC05
P 1500 1000
AR Path="/5F9ABC05" Ref="#PWR?"  Part="1" 
AR Path="/5F9A85F1/5F9ABC05" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 1500 850 50  0001 C CNN
F 1 "+3.3V" H 1515 1173 50  0000 C CNN
F 2 "" H 1500 1000 50  0001 C CNN
F 3 "" H 1500 1000 50  0001 C CNN
	1    1500 1000
	1    0    0    -1  
$EndComp
Connection ~ 1500 1000
Wire Wire Line
	1500 1000 1450 1000
Text GLabel 1000 1250 0    50   Input ~ 0
I2C_SCK
Text GLabel 1000 1350 0    50   BiDi ~ 0
I2C_SDA
Wire Wire Line
	1000 1250 1050 1250
Wire Wire Line
	1000 1350 1050 1350
NoConn ~ 1050 1450
NoConn ~ 1050 1550
$Comp
L power:GND #PWR?
U 1 1 5F9ABC13
P 5050 1750
AR Path="/5F9ABC13" Ref="#PWR?"  Part="1" 
AR Path="/5F9A85F1/5F9ABC13" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 5050 1500 50  0001 C CNN
F 1 "GND" H 5055 1577 50  0000 C CNN
F 2 "" H 5050 1750 50  0001 C CNN
F 3 "" H 5050 1750 50  0001 C CNN
	1    5050 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1750 5050 1700
Text GLabel 6200 2150 2    50   BiDi ~ 0
I2C_SDA
Text GLabel 6200 2050 2    50   Input ~ 0
I2C_SCK
Wire Wire Line
	4650 1350 4700 1350
Wire Wire Line
	4650 1450 4700 1450
$Comp
L power:+3.3V #PWR?
U 1 1 5F9ABC1E
P 5050 900
AR Path="/5F9ABC1E" Ref="#PWR?"  Part="1" 
AR Path="/5F9A85F1/5F9ABC1E" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 5050 750 50  0001 C CNN
F 1 "+3.3V" H 5065 1073 50  0000 C CNN
F 2 "" H 5050 900 50  0001 C CNN
F 3 "" H 5050 900 50  0001 C CNN
	1    5050 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1300 5500 1300
Text GLabel 5500 1300 2    50   Output ~ 0
nINT
Wire Wire Line
	5050 900  5050 1050
Text Notes 500  600  0    100  ~ 0
Sensor Array
$Comp
L pcb-rescue:TSL2591-Kevin_Lutzer U?
U 1 1 5F9ABC28
P 5100 1400
AR Path="/5F9ABC28" Ref="U?"  Part="1" 
AR Path="/5F9A85F1/5F9ABC28" Ref="U7"  Part="1" 
F 0 "U7" H 5250 1150 50  0000 L CNN
F 1 "TSL2591" H 5100 1700 50  0000 L CNN
F 2 "Kevin_Lutzer:TSL2591" H 4550 1150 50  0001 C CNN
F 3 "https://cdn-shop.adafruit.com/datasheets/TSL25911_Datasheet_EN_v1.pdf" H 5050 1450 50  0001 C CNN
	1    5100 1400
	1    0    0    -1  
$EndComp
$Comp
L pcb-rescue:SGP30-Kevin_Lutzer U?
U 1 1 5F9ABC2E
P 3050 1350
AR Path="/5F9ABC2E" Ref="U?"  Part="1" 
AR Path="/5F9A85F1/5F9ABC2E" Ref="U6"  Part="1" 
F 0 "U6" H 2750 1600 50  0000 L CNN
F 1 "SGP30" H 3200 1100 50  0000 L CNN
F 2 "Kevin_Lutzer:SGP30" H 3050 1300 50  0001 C CNN
F 3 "" H 3050 1300 50  0001 C CNN
	1    3050 1350
	1    0    0    -1  
$EndComp
$Comp
L pcb-rescue:BSS138DW-7-F-dk_Transistors-FETs-MOSFETs-Arrays Q?
U 1 1 5F9ABC3D
P 1750 3000
AR Path="/5F9ABC3D" Ref="Q?"  Part="1" 
AR Path="/5F9A85F1/5F9ABC3D" Ref="Q2"  Part="1" 
F 0 "Q2" H 1450 2350 60  0000 C CNN
F 1 "BSS138DW-7-F" H 1750 2450 60  0000 C CNN
F 2 "digikey-footprints:SOT-363" H 1950 3200 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30203.pdf" V 1950 3300 60  0001 L CNN
F 4 "BSS138DW-FDICT-ND" H 1950 3400 60  0001 L CNN "Digi-Key_PN"
F 5 "BSS138DW-7-F" H 1950 3500 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 1950 3600 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Arrays" H 1950 3700 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/ds30203.pdf" H 1950 3800 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/diodes-incorporated/BSS138DW-7-F/BSS138DW-FDICT-ND/808541" H 1950 3900 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET 2N-CH 50V 0.2A SC70-6" H 1950 4000 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 1950 4100 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1950 4200 60  0001 L CNN "Status"
	1    1750 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F9ABC44
P 2050 2600
AR Path="/5F9ABC44" Ref="#PWR?"  Part="1" 
AR Path="/5F9A85F1/5F9ABC44" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 2050 2450 50  0001 C CNN
F 1 "+3.3V" H 2065 2773 50  0000 C CNN
F 2 "" H 2050 2600 50  0001 C CNN
F 3 "" H 2050 2600 50  0001 C CNN
	1    2050 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F9ABC4B
P 1350 2600
AR Path="/5F9ABC4B" Ref="#PWR?"  Part="1" 
AR Path="/5F9A85F1/5F9ABC4B" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 1350 2450 50  0001 C CNN
F 1 "+3.3V" H 1365 2773 50  0000 C CNN
F 2 "" H 1350 2600 50  0001 C CNN
F 3 "" H 1350 2600 50  0001 C CNN
	1    1350 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3400 2100 3400
Text GLabel 1200 3400 0    50   Input ~ 0
I2C_SCK
Wire Wire Line
	1200 3400 1450 3400
Text GLabel 2150 2800 2    50   BiDi ~ 0
I2C_SDA
Wire Wire Line
	2950 1650 2950 1700
Wire Wire Line
	2950 1700 3050 1700
Wire Wire Line
	3150 1700 3150 1650
Wire Wire Line
	3050 1650 3050 1700
Connection ~ 3050 1700
Wire Wire Line
	3050 1700 3150 1700
$Comp
L power:GND #PWR?
U 1 1 5F9ABC5B
P 3050 1700
AR Path="/5F9ABC5B" Ref="#PWR?"  Part="1" 
AR Path="/5F9A85F1/5F9ABC5B" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 3050 1450 50  0001 C CNN
F 1 "GND" H 3055 1527 50  0000 C CNN
F 2 "" H 3050 1700 50  0001 C CNN
F 3 "" H 3050 1700 50  0001 C CNN
	1    3050 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2800 1450 2800
$Comp
L power:+1V8 #PWR?
U 1 1 5F9ABC63
P 3050 1000
AR Path="/5F9ABC63" Ref="#PWR?"  Part="1" 
AR Path="/5F9A85F1/5F9ABC63" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 3050 850 50  0001 C CNN
F 1 "+1V8" H 3065 1173 50  0000 C CNN
F 2 "" H 3050 1000 50  0001 C CNN
F 3 "" H 3050 1000 50  0001 C CNN
	1    3050 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 1000 3000 1000
Wire Wire Line
	3000 1000 3000 1050
Wire Wire Line
	3100 1050 3100 1000
Wire Wire Line
	3100 1000 3050 1000
Connection ~ 3050 1000
$Comp
L power:+1V8 #PWR?
U 1 1 5F9ABC6E
P 3500 850
AR Path="/5F9ABC6E" Ref="#PWR?"  Part="1" 
AR Path="/5F9A85F1/5F9ABC6E" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 3500 700 50  0001 C CNN
F 1 "+1V8" H 3515 1023 50  0000 C CNN
F 2 "" H 3500 850 50  0001 C CNN
F 3 "" H 3500 850 50  0001 C CNN
	1    3500 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1300 3500 1300
Wire Wire Line
	3500 900  3500 850 
$Comp
L power:+1V8 #PWR?
U 1 1 5F9ABC79
P 2550 850
AR Path="/5F9ABC79" Ref="#PWR?"  Part="1" 
AR Path="/5F9A85F1/5F9ABC79" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 2550 700 50  0001 C CNN
F 1 "+1V8" H 2565 1023 50  0000 C CNN
F 2 "" H 2550 850 50  0001 C CNN
F 3 "" H 2550 850 50  0001 C CNN
	1    2550 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 900  2550 850 
Wire Wire Line
	2450 1300 2550 1300
$Comp
L Device:R_Pack04_Split RN?
U 2 1 5F9ABC83
P 3500 1050
AR Path="/5F9ABC83" Ref="RN?"  Part="2" 
AR Path="/5F9A85F1/5F9ABC83" Ref="RN1"  Part="2" 
F 0 "RN1" H 3588 1096 50  0000 L CNN
F 1 "10k" H 3588 1005 50  0000 L CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 3420 1050 50  0001 C CNN
F 3 "~" H 3500 1050 50  0001 C CNN
	2    3500 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Pack04_Split RN?
U 1 1 5F9ABC89
P 2550 1050
AR Path="/5F9ABC89" Ref="RN?"  Part="1" 
AR Path="/5F9A85F1/5F9ABC89" Ref="RN1"  Part="1" 
F 0 "RN1" H 2638 1096 50  0000 L CNN
F 1 "10k" H 2638 1005 50  0000 L CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 2470 1050 50  0001 C CNN
F 3 "~" H 2550 1050 50  0001 C CNN
	1    2550 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Pack04_Split RN?
U 3 1 5F9ABC8F
P 3650 2800
AR Path="/5F9ABC8F" Ref="RN?"  Part="3" 
AR Path="/5F9A85F1/5F9ABC8F" Ref="RN1"  Part="3" 
F 0 "RN1" H 3738 2846 50  0000 L CNN
F 1 "10k" H 3738 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 3570 2800 50  0001 C CNN
F 3 "~" H 3650 2800 50  0001 C CNN
	3    3650 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F9ABC95
P 3850 2500
AR Path="/5F9ABC95" Ref="#PWR?"  Part="1" 
AR Path="/5F9A85F1/5F9ABC95" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 3850 2350 50  0001 C CNN
F 1 "+3.3V" H 3865 2673 50  0000 C CNN
F 2 "" H 3850 2500 50  0001 C CNN
F 3 "" H 3850 2500 50  0001 C CNN
	1    3850 2500
	1    0    0    -1  
$EndComp
Text GLabel 3650 3050 0    50   BiDi ~ 0
I2C_SDA
Text GLabel 3650 3200 0    50   Input ~ 0
I2C_SCK
Wire Wire Line
	3650 3050 3650 2950
Wire Wire Line
	3650 3200 4000 3200
Wire Wire Line
	4000 3200 4000 2950
Wire Wire Line
	3650 2650 3650 2500
Wire Wire Line
	3650 2500 3850 2500
Wire Wire Line
	4000 2500 4000 2650
Connection ~ 3850 2500
Wire Wire Line
	3850 2500 4000 2500
$Comp
L Device:R_Pack04_Split RN?
U 4 1 5F9ABCA5
P 4000 2800
AR Path="/5F9ABCA5" Ref="RN?"  Part="4" 
AR Path="/5F9A85F1/5F9ABCA5" Ref="RN1"  Part="4" 
F 0 "RN1" H 4088 2846 50  0000 L CNN
F 1 "10k" H 4088 2755 50  0000 L CNN
F 2 "" V 3920 2800 50  0001 C CNN
F 3 "~" H 4000 2800 50  0001 C CNN
	4    4000 2800
	1    0    0    -1  
$EndComp
Text GLabel 2450 1300 0    50   Input ~ 0
I2C_SDA_1V8
Text GLabel 3650 1300 2    50   Input ~ 0
I2C_SCK_1V8
Text GLabel 2100 3400 2    50   Output ~ 0
I2C_SCK_1V8
Text GLabel 1200 2800 0    50   BiDi ~ 0
I2C_SDA_1V8
Wire Wire Line
	1950 2800 2150 2800
Wire Wire Line
	1450 3100 1350 3100
Wire Wire Line
	1350 3100 1350 2600
Wire Wire Line
	1950 3100 2050 3100
Wire Wire Line
	2050 3100 2050 2600
Wire Wire Line
	3500 1200 3500 1300
Connection ~ 3500 1300
Wire Wire Line
	3500 1300 3450 1300
Wire Wire Line
	2550 1200 2550 1300
Connection ~ 2550 1300
Wire Wire Line
	2550 1300 2650 1300
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 5FB3311F
P 5900 2050
F 0 "J2" H 5500 1700 50  0000 C CNN
F 1 "Conn_01x04_Male" H 5800 1800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5900 2050 50  0001 C CNN
F 3 "~" H 5900 2050 50  0001 C CNN
	1    5900 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FB40ACA
P 6200 2300
AR Path="/5FB40ACA" Ref="#PWR?"  Part="1" 
AR Path="/5F9A85F1/5FB40ACA" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 6200 2050 50  0001 C CNN
F 1 "GND" H 6205 2127 50  0000 C CNN
F 2 "" H 6200 2300 50  0001 C CNN
F 3 "" H 6200 2300 50  0001 C CNN
	1    6200 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FB40EF1
P 6200 1900
AR Path="/5FB40EF1" Ref="#PWR?"  Part="1" 
AR Path="/5F9A85F1/5FB40EF1" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 6200 1750 50  0001 C CNN
F 1 "+3.3V" H 6215 2073 50  0000 C CNN
F 2 "" H 6200 1900 50  0001 C CNN
F 3 "" H 6200 1900 50  0001 C CNN
	1    6200 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1950 6200 1950
Wire Wire Line
	6200 1950 6200 1900
Wire Wire Line
	6100 2050 6200 2050
Wire Wire Line
	6100 2150 6200 2150
Wire Wire Line
	6100 2250 6200 2250
Wire Wire Line
	6200 2250 6200 2300
Text GLabel 4650 1350 0    50   Input ~ 0
I2C_SCK
Text GLabel 4650 1450 0    50   BiDi ~ 0
I2C_SDA
$EndSCHEMATC
