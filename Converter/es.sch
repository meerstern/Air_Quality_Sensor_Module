EESchema Schematic File Version 4
LIBS:es-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Environmental Sensor Converter"
Date "2020-10-03"
Rev "v1.4"
Comp "Crescent"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Regulator_Linear:LD3985M33R_SOT23 U1
U 1 1 5F05D2B8
P 3125 1925
F 0 "U1" H 3125 2267 50  0000 C CNN
F 1 "LD3985M33R_SOT23" H 3125 2176 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3125 2250 50  0001 C CIN
F 3 "http://www.st.com/internet/com/TECHNICAL_RESOURCES/TECHNICAL_LITERATURE/DATASHEET/CD00003395.pdf" H 3125 1925 50  0001 C CNN
	1    3125 1925
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5F05D98D
P 2325 3125
F 0 "J1" H 2405 3117 50  0000 L CNN
F 1 "Conn_01x04" H 2405 3026 50  0000 L CNN
F 2 "GroveCon:GROVE" H 2325 3125 50  0001 C CNN
F 3 "~" H 2325 3125 50  0001 C CNN
	1    2325 3125
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5F05E70B
P 5200 3050
F 0 "J3" H 5280 3042 50  0000 L CNN
F 1 "Conn_01x04" H 5280 2951 50  0000 L CNN
F 2 "GroveCon:GROVE" H 5200 3050 50  0001 C CNN
F 3 "~" H 5200 3050 50  0001 C CNN
	1    5200 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5F05FD8C
P 2525 2100
F 0 "C1" H 2640 2146 50  0000 L CNN
F 1 "2.2u" H 2640 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2563 1950 50  0001 C CNN
F 3 "~" H 2525 2100 50  0001 C CNN
	1    2525 2100
	1    0    0    -1  
$EndComp
Text Label 2525 3025 0    50   ~ 0
SCL_GV
Text Label 2525 3125 0    50   ~ 0
SDA_GV
Text Label 2525 3325 0    50   ~ 0
GND
Text Label 2525 3225 0    50   ~ 0
5V
$Comp
L Device:C C3
U 1 1 5F062083
P 3575 2100
F 0 "C3" H 3690 2146 50  0000 L CNN
F 1 "0.01u" H 3690 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3613 1950 50  0001 C CNN
F 3 "~" H 3575 2100 50  0001 C CNN
	1    3575 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F062C03
P 4000 2100
F 0 "C4" H 4115 2146 50  0000 L CNN
F 1 "2.2u" H 4115 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4038 1950 50  0001 C CNN
F 3 "~" H 4000 2100 50  0001 C CNN
	1    4000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3125 2225 3125 2350
Wire Wire Line
	3125 2350 2525 2350
Wire Wire Line
	2525 2350 2525 2250
Wire Wire Line
	3125 2350 3575 2350
Wire Wire Line
	3575 2350 3575 2250
Connection ~ 3125 2350
Wire Wire Line
	3575 2350 4000 2350
Wire Wire Line
	4000 2350 4000 2250
Connection ~ 3575 2350
Wire Wire Line
	3575 1950 3575 1925
Wire Wire Line
	3575 1925 3425 1925
Wire Wire Line
	2825 1825 2625 1825
Wire Wire Line
	2525 1950 2525 1825
Connection ~ 2525 1825
Wire Wire Line
	2525 1825 2350 1825
Wire Wire Line
	2825 1925 2625 1925
Wire Wire Line
	2625 1925 2625 1825
Connection ~ 2625 1825
Wire Wire Line
	2625 1825 2525 1825
Wire Wire Line
	3425 1825 4000 1825
Wire Wire Line
	4000 1825 4000 1950
Text Label 2750 2350 0    50   ~ 0
GND
Text Label 2350 1825 0    50   ~ 0
5V
$Comp
L power:+3.3V #PWR07
U 1 1 5F064ABF
P 4000 1750
F 0 "#PWR07" H 4000 1600 50  0001 C CNN
F 1 "+3.3V" H 4015 1923 50  0000 C CNN
F 2 "" H 4000 1750 50  0001 C CNN
F 3 "" H 4000 1750 50  0001 C CNN
	1    4000 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1750 4000 1825
Connection ~ 4000 1825
$Comp
L power:+3.3V #PWR08
U 1 1 5F06E440
P 4450 3125
F 0 "#PWR08" H 4450 2975 50  0001 C CNN
F 1 "+3.3V" H 4465 3298 50  0000 C CNN
F 2 "" H 4450 3125 50  0001 C CNN
F 3 "" H 4450 3125 50  0001 C CNN
	1    4450 3125
	1    0    0    -1  
$EndComp
Text Label 5000 3250 2    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5F08D49A
P 5150 2050
F 0 "J2" H 5230 2042 50  0000 L CNN
F 1 "SWD" H 5230 1951 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5150 2050 50  0001 C CNN
F 3 "~" H 5150 2050 50  0001 C CNN
	1    5150 2050
	1    0    0    -1  
$EndComp
Text Label 5000 3050 2    50   ~ 0
SDA_SEN
Text Label 5000 2950 2    50   ~ 0
SCL_SEN
$Comp
L power:+3.3V #PWR011
U 1 1 5F090FB3
P 4750 1950
F 0 "#PWR011" H 4750 1800 50  0001 C CNN
F 1 "+3.3V" H 4765 2123 50  0000 C CNN
F 2 "" H 4750 1950 50  0001 C CNN
F 3 "" H 4750 1950 50  0001 C CNN
	1    4750 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1950 4750 1950
Text Label 4950 2050 2    50   ~ 0
SWCLK
Text Label 4950 2150 2    50   ~ 0
GND
Text Label 4950 2250 2    50   ~ 0
SWDIO
$Comp
L power:+3.3V #PWR05
U 1 1 5F5CF37D
P 3875 4000
F 0 "#PWR05" H 3875 3850 50  0001 C CNN
F 1 "+3.3V" H 3890 4173 50  0000 C CNN
F 2 "" H 3875 4000 50  0001 C CNN
F 3 "" H 3875 4000 50  0001 C CNN
	1    3875 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3875 4000 3875 4100
Wire Wire Line
	3975 4325 3975 4100
Wire Wire Line
	3975 4100 3875 4100
Connection ~ 3875 4100
Wire Wire Line
	3875 4100 3875 4325
Wire Wire Line
	3975 4100 4075 4100
Wire Wire Line
	4075 4100 4075 4325
Connection ~ 3975 4100
$Comp
L power:GND #PWR01
U 1 1 5F5D1B73
P 2525 2500
F 0 "#PWR01" H 2525 2250 50  0001 C CNN
F 1 "GND" H 2530 2327 50  0000 C CNN
F 2 "" H 2525 2500 50  0001 C CNN
F 3 "" H 2525 2500 50  0001 C CNN
	1    2525 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2525 2350 2525 2500
Connection ~ 2525 2350
$Comp
L power:GND #PWR010
U 1 1 5F5D43DF
P 4450 4150
F 0 "#PWR010" H 4450 3900 50  0001 C CNN
F 1 "GND" H 4455 3977 50  0000 C CNN
F 2 "" H 4450 4150 50  0001 C CNN
F 3 "" H 4450 4150 50  0001 C CNN
	1    4450 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5F5D5437
P 4450 3950
F 0 "C5" H 4565 3996 50  0000 L CNN
F 1 "0.1u" H 4565 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4488 3800 50  0001 C CNN
F 3 "~" H 4450 3950 50  0001 C CNN
	1    4450 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5F5D63DF
P 4825 3950
F 0 "C6" H 4940 3996 50  0000 L CNN
F 1 "0.1u" H 4940 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4863 3800 50  0001 C CNN
F 3 "~" H 4825 3950 50  0001 C CNN
	1    4825 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5F5D6DFF
P 5225 3950
F 0 "C7" H 5340 3996 50  0000 L CNN
F 1 "0.1u" H 5340 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5263 3800 50  0001 C CNN
F 3 "~" H 5225 3950 50  0001 C CNN
	1    5225 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4150 4450 4125
Wire Wire Line
	4450 4125 4825 4125
Wire Wire Line
	4825 4125 4825 4100
Connection ~ 4450 4125
Wire Wire Line
	4450 4125 4450 4100
Wire Wire Line
	4825 4125 5225 4125
Wire Wire Line
	5225 4125 5225 4100
Connection ~ 4825 4125
$Comp
L power:+3.3V #PWR09
U 1 1 5F5D94E6
P 4450 3725
F 0 "#PWR09" H 4450 3575 50  0001 C CNN
F 1 "+3.3V" H 4465 3898 50  0000 C CNN
F 2 "" H 4450 3725 50  0001 C CNN
F 3 "" H 4450 3725 50  0001 C CNN
	1    4450 3725
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3725 4450 3775
Wire Wire Line
	4450 3775 4825 3775
Wire Wire Line
	4825 3775 4825 3800
Connection ~ 4450 3775
Wire Wire Line
	4450 3775 4450 3800
Wire Wire Line
	4825 3775 5225 3775
Wire Wire Line
	5225 3775 5225 3800
Connection ~ 4825 3775
$Comp
L power:GND #PWR06
U 1 1 5F5DC6FC
P 3875 6325
F 0 "#PWR06" H 3875 6075 50  0001 C CNN
F 1 "GND" H 3880 6152 50  0000 C CNN
F 2 "" H 3875 6325 50  0001 C CNN
F 3 "" H 3875 6325 50  0001 C CNN
	1    3875 6325
	1    0    0    -1  
$EndComp
Wire Wire Line
	3875 6225 3875 6275
Wire Wire Line
	3875 6275 3975 6275
Wire Wire Line
	3975 6275 3975 6225
Connection ~ 3875 6275
Wire Wire Line
	3875 6275 3875 6325
Text Label 3375 6025 2    50   ~ 0
SDA_GV
Text Label 3375 5925 2    50   ~ 0
SCL_GV
Text Label 4575 5825 0    50   ~ 0
SWDIO
Text Label 4575 5925 0    50   ~ 0
SWCLK
$Comp
L Device:R R1
U 1 1 5F5E4ABA
P 2725 3950
F 0 "R1" H 2795 3996 50  0000 L CNN
F 1 "10k" H 2795 3905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2655 3950 50  0001 C CNN
F 3 "~" H 2725 3950 50  0001 C CNN
	1    2725 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02
U 1 1 5F5E5B0A
P 2725 3725
F 0 "#PWR02" H 2725 3575 50  0001 C CNN
F 1 "+3.3V" H 2740 3898 50  0000 C CNN
F 2 "" H 2725 3725 50  0001 C CNN
F 3 "" H 2725 3725 50  0001 C CNN
	1    2725 3725
	1    0    0    -1  
$EndComp
Wire Wire Line
	3375 4525 3150 4525
$Comp
L Device:R R2
U 1 1 5F5E9AD0
P 3125 4725
F 0 "R2" H 3195 4771 50  0000 L CNN
F 1 "10k" H 3195 4680 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3055 4725 50  0001 C CNN
F 3 "~" H 3125 4725 50  0001 C CNN
	1    3125 4725
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5F5EA4DF
P 2850 4850
F 0 "#PWR04" H 2850 4600 50  0001 C CNN
F 1 "GND" H 2855 4677 50  0000 C CNN
F 2 "" H 2850 4850 50  0001 C CNN
F 3 "" H 2850 4850 50  0001 C CNN
	1    2850 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3275 4725 3375 4725
Wire Wire Line
	2975 4725 2850 4725
Wire Wire Line
	2850 4725 2850 4850
$Comp
L power:GND #PWR03
U 1 1 5F5F15C0
P 2725 4525
F 0 "#PWR03" H 2725 4275 50  0001 C CNN
F 1 "GND" H 2730 4352 50  0000 C CNN
F 2 "" H 2725 4525 50  0001 C CNN
F 3 "" H 2725 4525 50  0001 C CNN
	1    2725 4525
	1    0    0    -1  
$EndComp
Wire Wire Line
	2725 4475 2725 4525
$Comp
L Device:C C2
U 1 1 5F5EDAA1
P 2725 4325
F 0 "C2" H 2840 4371 50  0000 L CNN
F 1 "0.1u" H 2840 4280 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2763 4175 50  0001 C CNN
F 3 "~" H 2725 4325 50  0001 C CNN
	1    2725 4325
	1    0    0    -1  
$EndComp
Wire Wire Line
	2725 3725 2725 3800
Wire Wire Line
	2725 4100 2725 4125
Wire Wire Line
	2725 4125 3150 4125
Wire Wire Line
	3150 4125 3150 4525
Connection ~ 2725 4125
Wire Wire Line
	2725 4125 2725 4175
Text Label 3375 5225 2    50   ~ 0
SDA_SEN
Text Label 3375 5325 2    50   ~ 0
SCL_SEN
Text Label 4575 4725 0    50   ~ 0
TX
Text Label 4575 4825 0    50   ~ 0
RX
Text Label 4575 5625 0    50   ~ 0
LED3
$Comp
L Device:LED D1
U 1 1 5F61429B
P 5500 4925
F 0 "D1" V 5539 4808 50  0000 R CNN
F 1 "LED" V 5448 4808 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 5500 4925 50  0001 C CNN
F 3 "~" H 5500 4925 50  0001 C CNN
	1    5500 4925
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5F615760
P 5500 5275
F 0 "R3" H 5570 5321 50  0000 L CNN
F 1 "1k" H 5570 5230 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5430 5275 50  0001 C CNN
F 3 "~" H 5500 5275 50  0001 C CNN
	1    5500 5275
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5F615D7D
P 5500 5500
F 0 "#PWR012" H 5500 5250 50  0001 C CNN
F 1 "GND" H 5505 5327 50  0000 C CNN
F 2 "" H 5500 5500 50  0001 C CNN
F 3 "" H 5500 5500 50  0001 C CNN
	1    5500 5500
	1    0    0    -1  
$EndComp
Text Label 5500 4625 0    50   ~ 0
LED1
Wire Wire Line
	5500 4625 5500 4775
Wire Wire Line
	5500 5075 5500 5125
Wire Wire Line
	5500 5425 5500 5500
Wire Wire Line
	4450 3150 4450 3125
Wire Wire Line
	4450 3150 5000 3150
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 5F635AF8
P 6350 3700
F 0 "J4" H 6430 3742 50  0000 L CNN
F 1 "Conn_01x03" H 6430 3651 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6350 3700 50  0001 C CNN
F 3 "~" H 6350 3700 50  0001 C CNN
	1    6350 3700
	1    0    0    -1  
$EndComp
Text Label 6150 3800 2    50   ~ 0
GND
Text Label 6150 3600 2    50   ~ 0
TX
Text Label 6150 3700 2    50   ~ 0
RX
$Comp
L Device:LED D2
U 1 1 5F736074
P 5825 4925
F 0 "D2" V 5864 4808 50  0000 R CNN
F 1 "LED" V 5773 4808 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 5825 4925 50  0001 C CNN
F 3 "~" H 5825 4925 50  0001 C CNN
	1    5825 4925
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F73607A
P 5825 5275
F 0 "R4" H 5895 5321 50  0000 L CNN
F 1 "1k" H 5895 5230 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5755 5275 50  0001 C CNN
F 3 "~" H 5825 5275 50  0001 C CNN
	1    5825 5275
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5F736080
P 5825 5500
F 0 "#PWR013" H 5825 5250 50  0001 C CNN
F 1 "GND" H 5830 5327 50  0000 C CNN
F 2 "" H 5825 5500 50  0001 C CNN
F 3 "" H 5825 5500 50  0001 C CNN
	1    5825 5500
	1    0    0    -1  
$EndComp
Text Label 5825 4625 0    50   ~ 0
LED2
Wire Wire Line
	5825 4625 5825 4775
Wire Wire Line
	5825 5075 5825 5125
Wire Wire Line
	5825 5425 5825 5500
$Comp
L Device:LED D3
U 1 1 5F737E26
P 6150 4925
F 0 "D3" V 6189 4808 50  0000 R CNN
F 1 "LED" V 6098 4808 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 6150 4925 50  0001 C CNN
F 3 "~" H 6150 4925 50  0001 C CNN
	1    6150 4925
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 5F737E2C
P 6150 5275
F 0 "R5" H 6220 5321 50  0000 L CNN
F 1 "1k" H 6220 5230 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6080 5275 50  0001 C CNN
F 3 "~" H 6150 5275 50  0001 C CNN
	1    6150 5275
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5F737E32
P 6150 5500
F 0 "#PWR014" H 6150 5250 50  0001 C CNN
F 1 "GND" H 6155 5327 50  0000 C CNN
F 2 "" H 6150 5500 50  0001 C CNN
F 3 "" H 6150 5500 50  0001 C CNN
	1    6150 5500
	1    0    0    -1  
$EndComp
Text Label 6150 4625 0    50   ~ 0
LED3
Wire Wire Line
	6150 4625 6150 4775
Wire Wire Line
	6150 5075 6150 5125
Wire Wire Line
	6150 5425 6150 5500
Text Label 4575 5425 0    50   ~ 0
LED1
Text Label 4575 5525 0    50   ~ 0
LED2
$Comp
L MCU_ST_STM32F3:STM32F301K8Ux U2
U 1 1 5F7804BB
P 3975 5225
F 0 "U2" H 3525 6175 50  0000 C CNN
F 1 "STM32F301K8Ux" H 3475 6100 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.45x3.45mm" H 3475 4325 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00093332.pdf" H 3975 5225 50  0001 C CNN
	1    3975 5225
	1    0    0    -1  
$EndComp
Wire Wire Line
	3975 6275 4075 6275
Wire Wire Line
	4075 6275 4075 6225
Connection ~ 3975 6275
Wire Wire Line
	4075 6275 4175 6275
Wire Wire Line
	4175 6275 4175 6225
Connection ~ 4075 6275
NoConn ~ 4575 4525
NoConn ~ 4575 4625
NoConn ~ 4575 4925
NoConn ~ 4575 5025
NoConn ~ 4575 5125
NoConn ~ 4575 5225
NoConn ~ 4575 5325
NoConn ~ 4575 5725
NoConn ~ 4575 6025
NoConn ~ 3375 5825
NoConn ~ 3375 5725
NoConn ~ 3375 5625
NoConn ~ 3375 5525
Text Notes 2750 5275 0    50   ~ 0
I2C2
Text Notes 2800 5975 0    50   ~ 0
I2C1
Text Notes 5425 4500 0    50   ~ 0
CH2:BLUE
Text Notes 5825 4500 0    50   ~ 0
CH3:YELLOW
Text Notes 6350 4500 0    50   ~ 0
CH4:RED
$EndSCHEMATC
