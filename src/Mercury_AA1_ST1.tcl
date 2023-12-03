# ----------------------------------------------------------------------------------------------------
# Copyright (c) 2023 by Enclustra GmbH, Switzerland.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this hardware, software, firmware, and associated documentation files (the
# "Product"), to deal in the Product without restriction, including without
# limitation the rights to use, copy, modify, merge, publish, distribute,
# sublicense, and/or sell copies of the Product, and to permit persons to whom the
# Product is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Product.
#
# THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
# PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
# ----------------------------------------------------------------------------------------------------

 
# do not use the CLKUSR configuration pin for calibration
set_global_assignment   -name AUTO_RESERVE_CLKUSR_FOR_CALIBRATION OFF
 
# DATA0 configuration pin - for passive serial scheme
set_global_assignment   -name RESERVE_DATA0_AFTER_CONFIGURATION "USE AS REGULAR IO"
 
set_global_assignment   -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
set_global_assignment   -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT -section_id Top
set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

# Anios_0
set_location_assignment PIN_AC12                   -to IO0_D0_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D0_P
set_location_assignment PIN_AC11                   -to IO0_D1_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D1_N
set_location_assignment PIN_AE12                   -to IO0_D2_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D2_P
set_location_assignment PIN_AD12                   -to IO0_D3_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D3_N
set_location_assignment PIN_AD13                   -to IO0_D4_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D4_P
set_location_assignment PIN_AD14                   -to IO0_D5_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D5_N
set_location_assignment PIN_AB11                   -to IO0_D6_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D6_P
set_location_assignment PIN_AA11                   -to IO0_D7_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D7_N
set_location_assignment PIN_AB14                   -to IO0_D8_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D8_P
set_location_assignment PIN_AA14                   -to IO0_D9_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D9_N
set_location_assignment PIN_AE15                   -to IO0_D10_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D10_P
set_location_assignment PIN_AE14                   -to IO0_D11_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D11_N
set_location_assignment PIN_AF13                   -to IO0_D12_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D12_P
set_location_assignment PIN_AF14                   -to IO0_D13_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D13_N
set_location_assignment PIN_AE11                   -to IO0_D14_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D14_P
set_location_assignment PIN_AE10                   -to IO0_D15_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D15_N
set_location_assignment PIN_AC13                   -to IO0_D16_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D16_P
set_location_assignment PIN_AB13                   -to IO0_D17_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D17_N
set_location_assignment PIN_AF12                   -to IO0_D18_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D18_P
set_location_assignment PIN_AF11                   -to IO0_D19_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D19_N
set_location_assignment PIN_AA12                   -to IO0_D20_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D20_P
set_location_assignment PIN_AA13                   -to IO0_D21_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D21_N
set_location_assignment PIN_AC15                   -to IO0_D22_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D22_P
set_location_assignment PIN_AB15                   -to IO0_D23_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_D23_N
set_location_assignment PIN_AD15                   -to IO0_CLK_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_CLK_N
set_location_assignment PIN_AE16                   -to IO0_CLK_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO0_CLK_P

# Anios_1
set_location_assignment PIN_Y7                     -to IO1_D0_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D0_P
set_location_assignment PIN_Y6                     -to IO1_D1_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D1_N
set_location_assignment PIN_AC5                    -to IO1_D2_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D2_P
set_location_assignment PIN_AB4                    -to IO1_D3_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D3_N
set_location_assignment PIN_AB6                    -to IO1_D4_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D4_P
set_location_assignment PIN_AB5                    -to IO1_D5_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D5_N
set_location_assignment PIN_AA3                    -to IO1_D6_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D6_P
set_location_assignment PIN_AA4                    -to IO1_D7_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D7_N
set_location_assignment PIN_Y1                     -to IO1_D8_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D8_P
set_location_assignment PIN_Y2                     -to IO1_D9_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D9_N
set_location_assignment PIN_W4                     -to IO1_D10_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D10_P
set_location_assignment PIN_Y4                     -to IO1_D11_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D11_N
set_location_assignment PIN_AE4                    -to IO1_D12_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D12_P
set_location_assignment PIN_AD4                    -to IO1_D13_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D13_N
set_location_assignment PIN_AE2                    -to IO1_D14_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D14_P
set_location_assignment PIN_AD2                    -to IO1_D15_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D15_N
set_location_assignment PIN_AA2                    -to IO1_D16_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D16_P
set_location_assignment PIN_AB3                    -to IO1_D17_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D17_N
set_location_assignment PIN_AB1                    -to IO1_D18_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D18_P
set_location_assignment PIN_AA1                    -to IO1_D19_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D19_N
set_location_assignment PIN_W5                     -to IO1_D20_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D20_P
set_location_assignment PIN_Y5                     -to IO1_D21_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D21_N
set_location_assignment PIN_W8                     -to IO1_D22_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D22_P
set_location_assignment PIN_W7                     -to IO1_D23_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_D23_N
set_location_assignment PIN_AA8                    -to IO1_CLK_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_CLK_N
set_location_assignment PIN_AA9                    -to IO1_CLK_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO1_CLK_P

# BUTTONS
set_location_assignment PIN_Y16                    -to BTN1_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to BTN1_N

# CLK33
set_location_assignment PIN_D15                    -to CLK_PLL
set_instance_assignment -name IO_STANDARD  "1.2-V" -to CLK_PLL

# CLK_USR
set_location_assignment PIN_AG15                   -to CLK_USR_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to CLK_USR_N
set_location_assignment PIN_AG14                   -to CLK_USR_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to CLK_USR_P

# FMC
set_location_assignment PIN_V6                     -to FMC_HA02_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA02_N
set_location_assignment PIN_V5                     -to FMC_HA02_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA02_P
set_location_assignment PIN_V2                     -to FMC_HA03_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA03_N
set_location_assignment PIN_W2                     -to FMC_HA03_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA03_P
set_location_assignment PIN_U1                     -to FMC_HA04_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA04_N
set_location_assignment PIN_V1                     -to FMC_HA04_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA04_P
set_location_assignment PIN_V3                     -to FMC_HA05_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA05_N
set_location_assignment PIN_W3                     -to FMC_HA05_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA05_P
set_location_assignment PIN_V7                     -to FMC_HA06_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA06_N
set_location_assignment PIN_U6                     -to FMC_HA06_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA06_P
set_location_assignment PIN_U4                     -to FMC_HA07_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA07_N
set_location_assignment PIN_U3                     -to FMC_HA07_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA07_P
set_location_assignment PIN_U5                     -to FMC_HA08_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA08_N
set_location_assignment PIN_T4                     -to FMC_HA08_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA08_P
set_location_assignment PIN_T7                     -to FMC_HA09_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA09_N
set_location_assignment PIN_T6                     -to FMC_HA09_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA09_P
set_location_assignment PIN_T3                     -to FMC_HA10_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA10_N
set_location_assignment PIN_T2                     -to FMC_HA10_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA10_P
set_location_assignment PIN_R1                     -to FMC_HA11_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA11_N
set_location_assignment PIN_T1                     -to FMC_HA11_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA11_P
set_location_assignment PIN_P2                     -to FMC_HA12_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA12_N
set_location_assignment PIN_R2                     -to FMC_HA12_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA12_P
set_location_assignment PIN_R5                     -to FMC_HA13_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA13_N
set_location_assignment PIN_R4                     -to FMC_HA13_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA13_P
set_location_assignment PIN_M4                     -to FMC_HA14_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA14_N
set_location_assignment PIN_M3                     -to FMC_HA14_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA14_P
set_location_assignment PIN_L4                     -to FMC_HA15_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA15_N
set_location_assignment PIN_K4                     -to FMC_HA15_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA15_P
set_location_assignment PIN_J3                     -to FMC_HA16_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA16_N
set_location_assignment PIN_H2                     -to FMC_HA16_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA16_P
set_location_assignment PIN_N8                     -to FMC_LA02_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA02_N
set_location_assignment PIN_N7                     -to FMC_LA02_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA02_P
set_location_assignment PIN_M8                     -to FMC_LA03_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA03_N
set_location_assignment PIN_L7                     -to FMC_LA03_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA03_P
set_location_assignment PIN_P7                     -to FMC_LA04_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA04_N
set_location_assignment PIN_N6                     -to FMC_LA04_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA04_P
set_location_assignment PIN_J5                     -to FMC_LA05_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA05_N
set_location_assignment PIN_K5                     -to FMC_LA05_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA05_P
set_location_assignment PIN_H5                     -to FMC_LA06_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA06_N
set_location_assignment PIN_G4                     -to FMC_LA06_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA06_P
set_location_assignment PIN_D4                     -to FMC_LA07_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA07_N
set_location_assignment PIN_D3                     -to FMC_LA07_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA07_P
set_location_assignment PIN_J4                     -to FMC_LA08_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA08_N
set_location_assignment PIN_H3                     -to FMC_LA08_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA08_P
set_location_assignment PIN_B1                     -to FMC_LA09_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA09_N
set_location_assignment PIN_C1                     -to FMC_LA09_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA09_P
set_location_assignment PIN_E2                     -to FMC_LA10_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA10_N
set_location_assignment PIN_F2                     -to FMC_LA10_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA10_P
set_location_assignment PIN_E1                     -to FMC_LA11_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA11_N
set_location_assignment PIN_F1                     -to FMC_LA11_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA11_P
set_location_assignment PIN_F7                     -to FMC_LA12_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA12_N
set_location_assignment PIN_F6                     -to FMC_LA12_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA12_P
set_location_assignment PIN_J8                     -to FMC_LA13_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA13_N
set_location_assignment PIN_H8                     -to FMC_LA13_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA13_P
set_location_assignment PIN_A7                     -to FMC_LA14_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA14_N
set_location_assignment PIN_A6                     -to FMC_LA14_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA14_P
set_location_assignment PIN_C6                     -to FMC_LA15_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA15_N
set_location_assignment PIN_C5                     -to FMC_LA15_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA15_P
set_location_assignment PIN_E5                     -to FMC_LA16_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA16_N
set_location_assignment PIN_D5                     -to FMC_LA16_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA16_P
set_location_assignment PIN_R7                     -to FMC_LA19_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA19_N
set_location_assignment PIN_R6                     -to FMC_LA19_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA19_P
set_location_assignment PIN_P8                     -to FMC_LA20_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA20_N
set_location_assignment PIN_P9                     -to FMC_LA20_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA20_P
set_location_assignment PIN_J7                     -to FMC_LA21_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA21_N
set_location_assignment PIN_K7                     -to FMC_LA21_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA21_P
set_location_assignment PIN_M6                     -to FMC_LA22_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA22_N
set_location_assignment PIN_M5                     -to FMC_LA22_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA22_P
set_location_assignment PIN_K6                     -to FMC_LA23_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA23_N
set_location_assignment PIN_L6                     -to FMC_LA23_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA23_P
set_location_assignment PIN_H7                     -to FMC_LA24_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA24_N
set_location_assignment PIN_H6                     -to FMC_LA24_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA24_P
set_location_assignment PIN_C3                     -to FMC_LA25_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA25_N
set_location_assignment PIN_B3                     -to FMC_LA25_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA25_P
set_location_assignment PIN_C2                     -to FMC_LA26_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA26_N
set_location_assignment PIN_D2                     -to FMC_LA26_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA26_P
set_location_assignment PIN_A3                     -to FMC_LA27_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA27_N
set_location_assignment PIN_A2                     -to FMC_LA27_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA27_P
set_location_assignment PIN_B4                     -to FMC_LA28_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA28_N
set_location_assignment PIN_A4                     -to FMC_LA28_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA28_P
set_location_assignment PIN_L8                     -to FMC_LA29_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA29_N
set_location_assignment PIN_L9                     -to FMC_LA29_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA29_P
set_location_assignment PIN_J9                     -to FMC_LA30_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA30_N
set_location_assignment PIN_K9                     -to FMC_LA30_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA30_P
set_location_assignment PIN_G9                     -to FMC_LA31_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA31_N
set_location_assignment PIN_F9                     -to FMC_LA31_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA31_P
set_location_assignment PIN_E7                     -to FMC_LA32_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA32_N
set_location_assignment PIN_E6                     -to FMC_LA32_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA32_P
set_location_assignment PIN_B6                     -to FMC_LA33_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA33_N
set_location_assignment PIN_B5                     -to FMC_LA33_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA33_P
set_location_assignment PIN_L3                     -to FMC_HA00_CC_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA00_CC_N
set_location_assignment PIN_L2                     -to FMC_HA00_CC_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA00_CC_P
set_location_assignment PIN_M1                     -to FMC_HA01_CC_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA01_CC_N
set_location_assignment PIN_N1                     -to FMC_HA01_CC_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA01_CC_P
set_location_assignment PIN_AC7                    -to FMC_HA17_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA17_N
set_location_assignment PIN_AC6                    -to FMC_HA17_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_HA17_P
set_location_assignment PIN_P5                     -to FMC_LA00_CC_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA00_CC_N
set_location_assignment PIN_N5                     -to FMC_LA00_CC_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA00_CC_P
set_location_assignment PIN_E4                     -to FMC_LA01_CC_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA01_CC_N
set_location_assignment PIN_F4                     -to FMC_LA01_CC_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA01_CC_P
set_location_assignment PIN_G6                     -to FMC_LA17_CC_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA17_CC_N
set_location_assignment PIN_G5                     -to FMC_LA17_CC_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA17_CC_P
set_location_assignment PIN_F3                     -to FMC_LA18_CC_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA18_CC_N
set_location_assignment PIN_G3                     -to FMC_LA18_CC_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_LA18_CC_P
set_location_assignment PIN_F8                     -to FMC_CLK0_M2C_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_CLK0_M2C_N
set_location_assignment PIN_G8                     -to FMC_CLK0_M2C_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_CLK0_M2C_P
set_location_assignment PIN_D7                     -to FMC_CLK1_M2C_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_CLK1_M2C_N
set_location_assignment PIN_C7                     -to FMC_CLK1_M2C_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FMC_CLK1_M2C_P

# FX3
set_location_assignment PIN_U8                     -to FX3_CLK
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FX3_CLK
set_location_assignment PIN_D9                     -to FX3_INT_N_R
set_instance_assignment -name IO_STANDARD  "1.2 V" -to FX3_INT_N_R
set_location_assignment PIN_V8                     -to FX3_RESET_N_PL
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FX3_RESET_N_PL
set_location_assignment PIN_T9                     -to FX3_SLOE_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to FX3_SLOE_N

# HDMI
set_location_assignment PIN_AC16                   -to HDMI_HPD
set_instance_assignment -name IO_STANDARD  "1.8 V" -to HDMI_HPD
set_location_assignment PIN_G1                     -to HDMI_D0_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to HDMI_D0_N
set_location_assignment PIN_H1                     -to HDMI_D0_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to HDMI_D0_P
set_location_assignment PIN_J2                     -to HDMI_D1_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to HDMI_D1_N
set_location_assignment PIN_K2                     -to HDMI_D1_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to HDMI_D1_P
set_location_assignment PIN_K1                     -to HDMI_D2_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to HDMI_D2_N
set_location_assignment PIN_L1                     -to HDMI_D2_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to HDMI_D2_P
set_location_assignment PIN_AC2                    -to HDMI_CLK_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to HDMI_CLK_N
set_location_assignment PIN_AC1                    -to HDMI_CLK_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to HDMI_CLK_P

# HPS_DDR4_Memory
set_location_assignment PIN_B26                    -to DDR4_A[0]
set_location_assignment PIN_B25                    -to DDR4_A[1]
set_location_assignment PIN_A21                    -to DDR4_A[2]
set_location_assignment PIN_A22                    -to DDR4_A[3]
set_location_assignment PIN_A27                    -to DDR4_A[4]
set_location_assignment PIN_A26                    -to DDR4_A[5]
set_location_assignment PIN_B24                    -to DDR4_A[6]
set_location_assignment PIN_B23                    -to DDR4_A[7]
set_location_assignment PIN_B21                    -to DDR4_A[8]
set_location_assignment PIN_C21                    -to DDR4_A[9]
set_location_assignment PIN_A24                    -to DDR4_A[10]
set_location_assignment PIN_A23                    -to DDR4_A[11]
set_location_assignment PIN_C20                    -to DDR4_A[12]
set_location_assignment PIN_B19                    -to DDR4_A[13]
set_location_assignment PIN_B18                    -to DDR4_A[14]
set_location_assignment PIN_B16                    -to DDR4_A[15]
set_location_assignment PIN_C15                    -to DDR4_A[16]
set_location_assignment PIN_A18                    -to DDR4_BA[0]
set_location_assignment PIN_A17                    -to DDR4_BA[1]
set_location_assignment PIN_A16                    -to DDR4_BG[0]
set_location_assignment PIN_A11                    -to DDR4_BG[1]
set_location_assignment PIN_AF22                   -to DDR4_DQ[0]
set_location_assignment PIN_AD23                   -to DDR4_DQ[1]
set_location_assignment PIN_AE22                   -to DDR4_DQ[2]
set_location_assignment PIN_AC22                   -to DDR4_DQ[3]
set_location_assignment PIN_AG23                   -to DDR4_DQ[4]
set_location_assignment PIN_AA22                   -to DDR4_DQ[5]
set_location_assignment PIN_AE23                   -to DDR4_DQ[6]
set_location_assignment PIN_AA23                   -to DDR4_DQ[7]
set_location_assignment PIN_AG21                   -to DDR4_DQ[8]
set_location_assignment PIN_AC20                   -to DDR4_DQ[9]
set_location_assignment PIN_E14                    -to DDR4_PAR[0]
set_location_assignment PIN_B20                    -to DDR4_RZQ
set_location_assignment PIN_B14                    -to DDR4_CKE[0]
set_location_assignment PIN_D13                    -to DDR4_CK_N[0]
set_location_assignment PIN_C13                    -to DDR4_CK_P[0]
set_location_assignment PIN_AH20                   -to DDR4_DQ[10]
set_location_assignment PIN_AH22                   -to DDR4_DQ[11]
set_location_assignment PIN_AG20                   -to DDR4_DQ[12]
set_location_assignment PIN_AB21                   -to DDR4_DQ[13]
set_location_assignment PIN_AH21                   -to DDR4_DQ[14]
set_location_assignment PIN_AC21                   -to DDR4_DQ[15]
set_location_assignment PIN_AH17                   -to DDR4_DQ[16]
set_location_assignment PIN_AH12                   -to DDR4_DQ[17]
set_location_assignment PIN_AG11                   -to DDR4_DQ[18]
set_location_assignment PIN_AH15                   -to DDR4_DQ[19]
set_location_assignment PIN_AG10                   -to DDR4_DQ[20]
set_location_assignment PIN_AH18                   -to DDR4_DQ[21]
set_location_assignment PIN_AG13                   -to DDR4_DQ[22]
set_location_assignment PIN_AH16                   -to DDR4_DQ[23]
set_location_assignment PIN_W20                    -to DDR4_DQ[24]
set_location_assignment PIN_AA19                   -to DDR4_DQ[25]
set_location_assignment PIN_AA21                   -to DDR4_DQ[26]
set_location_assignment PIN_Y19                    -to DDR4_DQ[27]
set_location_assignment PIN_W21                    -to DDR4_DQ[28]
set_location_assignment PIN_AB18                   -to DDR4_DQ[29]
set_location_assignment PIN_Y20                    -to DDR4_DQ[30]
set_location_assignment PIN_AB19                   -to DDR4_DQ[31]
set_location_assignment PIN_B9                     -to DDR4_DQ[32]
set_location_assignment PIN_D8                     -to DDR4_DQ[33]
set_location_assignment PIN_D10                    -to DDR4_DQ[34]
set_location_assignment PIN_C11                    -to DDR4_DQ[35]
set_location_assignment PIN_B10                    -to DDR4_DQ[36]
set_location_assignment PIN_C12                    -to DDR4_DQ[37]
set_location_assignment PIN_C8                     -to DDR4_DQ[38]
set_location_assignment PIN_C10                    -to DDR4_DQ[39]
set_location_assignment PIN_A14                    -to DDR4_ODT[0]
set_location_assignment PIN_A13                    -to DDR4_ACT_N[0]
set_location_assignment PIN_A12                    -to DDR4_CS_N[0]
set_location_assignment PIN_AF23                   -to DDR4_DM_N[0]
set_location_assignment PIN_AB20                   -to DDR4_DM_N[1]
set_location_assignment PIN_AG9                    -to DDR4_DM_N[2]
set_location_assignment PIN_Y21                    -to DDR4_DM_N[3]
set_location_assignment PIN_B8                     -to DDR4_DM_N[4]
set_location_assignment PIN_AB23                   -to DDR4_DQS_N[0]
set_location_assignment PIN_AC23                   -to DDR4_DQS_P[0]
set_location_assignment PIN_AE21                   -to DDR4_DQS_N[1]
set_location_assignment PIN_AF21                   -to DDR4_DQS_P[1]
set_location_assignment PIN_AH10                   -to DDR4_DQS_N[2]
set_location_assignment PIN_AH11                   -to DDR4_DQS_P[2]
set_location_assignment PIN_Y17                    -to DDR4_DQS_N[3]
set_location_assignment PIN_AA17                   -to DDR4_DQS_P[3]
set_location_assignment PIN_A8                     -to DDR4_DQS_N[4]
set_location_assignment PIN_A9                     -to DDR4_DQS_P[4]
set_location_assignment PIN_AD22                   -to DDR4_ALERT_N[0]
set_location_assignment PIN_B11                    -to DDR4_RESET_N[0]

# I2C_FPGA
set_location_assignment PIN_AG16                   -to I2C_SCL_FPGA
set_instance_assignment -name IO_STANDARD  "1.8 V" -to I2C_SCL_FPGA
set_location_assignment PIN_AF16                   -to I2C_SDA_FPGA
set_instance_assignment -name IO_STANDARD  "1.8 V" -to I2C_SDA_FPGA

# I2C_INT
set_location_assignment PIN_AA18                   -to I2C_INT_N_HPS
set_instance_assignment -name IO_STANDARD  "1.2 V" -to I2C_INT_N_HPS
set_location_assignment PIN_AH13                   -to RTC_INT_N_R
set_instance_assignment -name IO_STANDARD  "1.2 V" -to RTC_INT_N_R
set_location_assignment PIN_AG19                   -to ETH_INT_N_R
set_instance_assignment -name IO_STANDARD  "1.2 V" -to ETH_INT_N_R

# I2C_MIPI_SEL
set_location_assignment PIN_AC17                   -to I2C_MIPI_SEL
set_instance_assignment -name IO_STANDARD  "1.8 V" -to I2C_MIPI_SEL

# IO3
set_location_assignment PIN_AB16                   -to IO3_D0_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO3_D0_P
set_location_assignment PIN_AA16                   -to IO3_D1_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO3_D1_N
set_location_assignment PIN_AE17                   -to IO3_D2_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO3_D2_P
set_location_assignment PIN_AD17                   -to IO3_D3_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO3_D3_N
set_location_assignment PIN_AG18                   -to IO3_D4_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO3_D4_P
set_location_assignment PIN_AF19                   -to IO3_D5_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO3_D5_N
set_location_assignment PIN_AE19                   -to IO3_D6_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO3_D6_P
set_location_assignment PIN_AE20                   -to IO3_D7_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO3_D7_N

# IO4
set_location_assignment PIN_AF17                   -to IO4_D2_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO4_D2_P
set_location_assignment PIN_AF18                   -to IO4_D3_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO4_D3_N
set_location_assignment PIN_AD18                   -to IO4_D4_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO4_D4_P
set_location_assignment PIN_AC18                   -to IO4_D5_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO4_D5_N
set_location_assignment PIN_AD20                   -to IO4_D6_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO4_D6_P
set_location_assignment PIN_AD19                   -to IO4_D7_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to IO4_D7_N

# LED
set_location_assignment PIN_T8                     -to LED2_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to LED2_N

# MIPI0
set_location_assignment PIN_AF1                    -to MIPI0_D0_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to MIPI0_D0_N
set_location_assignment PIN_AG1                    -to MIPI0_D0_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to MIPI0_D0_P
set_location_assignment PIN_AF2                    -to MIPI0_D1_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to MIPI0_D1_N
set_location_assignment PIN_AE1                    -to MIPI0_D1_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to MIPI0_D1_P
set_location_assignment PIN_AF3                    -to MIPI0_CLK_D0LP_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to MIPI0_CLK_D0LP_N
set_location_assignment PIN_AG3                    -to MIPI0_CLK_D0LP_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to MIPI0_CLK_D0LP_P
set_location_assignment PIN_AC3                    -to MIPI0_CLK_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to MIPI0_CLK_N
set_location_assignment PIN_AD3                    -to MIPI0_CLK_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to MIPI0_CLK_P

# MIPI1
set_location_assignment PIN_AE6                    -to MIPI1_D0_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to MIPI1_D0_N
set_location_assignment PIN_AF6                    -to MIPI1_D0_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to MIPI1_D0_P
set_location_assignment PIN_AF4                    -to MIPI1_D1_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to MIPI1_D1_N
set_location_assignment PIN_AG4                    -to MIPI1_D1_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to MIPI1_D1_P
set_location_assignment PIN_AH3                    -to MIPI1_CLK_D0LP_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to MIPI1_CLK_D0LP_N
set_location_assignment PIN_AH2                    -to MIPI1_CLK_D0LP_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to MIPI1_CLK_D0LP_P
set_location_assignment PIN_AA7                    -to MIPI1_CLK_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to MIPI1_CLK_N
set_location_assignment PIN_AA6                    -to MIPI1_CLK_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to MIPI1_CLK_P

# OSC_100M
set_location_assignment PIN_Y15                    -to CLK_100_CAL
set_instance_assignment -name IO_STANDARD  "1.8 V" -to CLK_100_CAL

# PWR_CTRL
set_location_assignment PIN_E15                    -to PWR_MGT_VSEL
set_instance_assignment -name IO_STANDARD  "1.2 V" -to PWR_MGT_VSEL

# SFP
set_location_assignment PIN_N3                     -to SFP_RX_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to SFP_RX_N
set_location_assignment PIN_N2                     -to SFP_RX_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to SFP_RX_P
set_location_assignment PIN_P4                     -to SFP_TX_N
set_instance_assignment -name IO_STANDARD  "1.8 V" -to SFP_TX_N
set_location_assignment PIN_P3                     -to SFP_TX_P
set_instance_assignment -name IO_STANDARD  "1.8 V" -to SFP_TX_P

# ST1_LED
set_location_assignment PIN_AE5                    -to LED2
set_instance_assignment -name IO_STANDARD  "1.8 V" -to LED2
set_location_assignment PIN_AD5                    -to LED3
set_instance_assignment -name IO_STANDARD  "1.8 V" -to LED3
