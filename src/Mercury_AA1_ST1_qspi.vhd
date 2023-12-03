----------------------------------------------------------------------------------------------------
-- Copyright (c) 2023 by Enclustra GmbH, Switzerland.
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of
-- this hardware, software, firmware, and associated documentation files (the
-- "Product"), to deal in the Product without restriction, including without
-- limitation the rights to use, copy, modify, merge, publish, distribute,
-- sublicense, and/or sell copies of the Product, and to permit persons to whom the
-- Product is furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Product.
--
-- THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
-- INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
-- PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
-- HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
-- OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
-- PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
----------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------
-- libraries
----------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

----------------------------------------------------------------------------------------------------
-- entity declaration
----------------------------------------------------------------------------------------------------
entity Mercury_AA1_ST1_qspi is
  
  port (
    -- HPS IO Pins
    FLASH_SEL_BS1                    : inout  std_logic;
    LED3_N_BS0                       : inout  std_logic;
    IOHPS_GP2IO12_UARTTX_K15         : out    std_logic;
    IOHPS_GP2IO13_UARTRX_F13         : in     std_logic;
    USB_CLK                          : in     std_logic;
    USB_STP                          : out    std_logic;
    USB_DIR                          : in     std_logic;
    USB_DATA0                        : inout  std_logic;
    USB_DATA1                        : inout  std_logic;
    USB_DATA2                        : inout  std_logic;
    USB_DATA3                        : inout  std_logic;
    USB_DATA4                        : inout  std_logic;
    USB_DATA5                        : inout  std_logic;
    USB_DATA6                        : inout  std_logic;
    USB_DATA7                        : inout  std_logic;
    USB_NXT                          : in     std_logic;
    ETH_TXCLK                        : out    std_logic;
    ETH_TXCTL                        : out    std_logic;
    ETH_RXCLK                        : in     std_logic;
    ETH_RXCTL                        : in     std_logic;
    ETH_TXD0                         : out    std_logic;
    ETH_TXD1                         : out    std_logic;
    ETH_RXD1                         : in     std_logic;
    ETH_RXD2                         : in     std_logic;
    ETH_TXD2                         : out    std_logic;
    ETH_TXD3                         : out    std_logic;
    ETH_RXD0                         : in     std_logic;
    ETH_RXD3                         : in     std_logic;
    IO_B2L_GP1IO0_CLK1_F23           : inout  std_logic;
    IO_B2L_GP1IO1_G23                : inout  std_logic;
    LED0_N                           : inout  std_logic;
    LED1_N                           : inout  std_logic;
    PWR_INT_VSEL                     : inout  std_logic;
    FLASH_OE_N_HPS                   : inout  std_logic;
    I2C_SDA_LS                       : inout  std_logic;
    I2C_SCL_LS                       : inout  std_logic;
    IO_B2L_GP1IO8_D23                : inout  std_logic;
    IO_B2L_GP1IO9_E23                : inout  std_logic;
    ETH_MDIO                         : inout  std_logic;
    ETH_MDC                          : out    std_logic;
    IO_B2L_GP1IO18_MISO_J17          : inout  std_logic;
    IO_B2L_GP1IO19_SS0_N_K17         : inout  std_logic;
    IO_B2L_GP1IO20_CLK_J18           : inout  std_logic;
    IO_B2L_GP1IO21_MOSI_J19          : inout  std_logic;
    IO_B2L_GP1IO22_H17               : inout  std_logic;
    IO_B2L_GP1IO23_H16               : inout  std_logic;
    EMMC_DATA0_QSPI_CLK_R            : inout  std_logic;
    EMMC_CMD_QSPI_IO0                : inout  std_logic;
    EMMC_CCLK_QSPI_SS0_N_BS2_R       : out    std_logic;
    EMMC_DATA1_QSPI_IO1              : inout  std_logic;
    EMMC_DATA2_QSPI_IO2              : inout  std_logic;
    EMMC_DATA3_QSPI_IO3              : inout  std_logic;
    EMMC_DATA4                       : inout  std_logic;
    EMMC_DATA5                       : inout  std_logic;
    EMMC_DATA6                       : inout  std_logic;
    EMMC_DATA7                       : inout  std_logic;
    
    -- Anios 0
    IO0_D0_P                         : inout   std_logic;
    IO0_D1_N                         : inout   std_logic;
    IO0_D2_P                         : inout   std_logic;
    IO0_D3_N                         : inout   std_logic;
    IO0_D4_P                         : inout   std_logic;
    IO0_D5_N                         : inout   std_logic;
    IO0_D6_P                         : inout   std_logic;
    IO0_D7_N                         : inout   std_logic;
    IO0_D8_P                         : inout   std_logic;
    IO0_D9_N                         : inout   std_logic;
    IO0_D10_P                        : inout   std_logic;
    IO0_D11_N                        : inout   std_logic;
    IO0_D12_P                        : inout   std_logic;
    IO0_D13_N                        : inout   std_logic;
    IO0_D14_P                        : inout   std_logic;
    IO0_D15_N                        : inout   std_logic;
    IO0_D16_P                        : inout   std_logic;
    IO0_D17_N                        : inout   std_logic;
    IO0_D18_P                        : inout   std_logic;
    IO0_D19_N                        : inout   std_logic;
    IO0_D20_P                        : inout   std_logic;
    IO0_D21_N                        : inout   std_logic;
    IO0_D22_P                        : inout   std_logic;
    IO0_D23_N                        : inout   std_logic;
    IO0_CLK_N                        : inout   std_logic;
    IO0_CLK_P                        : inout   std_logic;
    
    -- Anios 1
    IO1_D0_P                         : inout   std_logic;
    IO1_D1_N                         : inout   std_logic;
    IO1_D2_P                         : inout   std_logic;
    IO1_D3_N                         : inout   std_logic;
    IO1_D4_P                         : inout   std_logic;
    IO1_D5_N                         : inout   std_logic;
    IO1_D6_P                         : inout   std_logic;
    IO1_D7_N                         : inout   std_logic;
    IO1_D8_P                         : inout   std_logic;
    IO1_D9_N                         : inout   std_logic;
    IO1_D10_P                        : inout   std_logic;
    IO1_D11_N                        : inout   std_logic;
    IO1_D12_P                        : inout   std_logic;
    IO1_D13_N                        : inout   std_logic;
    IO1_D14_P                        : inout   std_logic;
    IO1_D15_N                        : inout   std_logic;
    IO1_D16_P                        : inout   std_logic;
    IO1_D17_N                        : inout   std_logic;
    IO1_D18_P                        : inout   std_logic;
    IO1_D19_N                        : inout   std_logic;
    IO1_D20_P                        : inout   std_logic;
    IO1_D21_N                        : inout   std_logic;
    IO1_D22_P                        : inout   std_logic;
    IO1_D23_N                        : inout   std_logic;
    IO1_CLK_N                        : inout   std_logic;
    IO1_CLK_P                        : inout   std_logic;
    
    -- BUTTONS
    BTN1_N                           : in      std_logic;
    
    -- 33 MHz user clock
    CLK_PLL                          : in      std_logic;
    
    -- Clock Generator CLK0
    CLK_USR_N                        : in      std_logic;
    CLK_USR_P                        : in      std_logic;
    
    -- FMC HPC Connector
    FMC_HA02_N                       : inout   std_logic;
    FMC_HA02_P                       : inout   std_logic;
    FMC_HA03_N                       : inout   std_logic;
    FMC_HA03_P                       : inout   std_logic;
    FMC_HA04_N                       : inout   std_logic;
    FMC_HA04_P                       : inout   std_logic;
    FMC_HA05_N                       : inout   std_logic;
    FMC_HA05_P                       : inout   std_logic;
    FMC_HA06_N                       : inout   std_logic;
    FMC_HA06_P                       : inout   std_logic;
    FMC_HA07_N                       : inout   std_logic;
    FMC_HA07_P                       : inout   std_logic;
    FMC_HA08_N                       : inout   std_logic;
    FMC_HA08_P                       : inout   std_logic;
    FMC_HA09_N                       : inout   std_logic;
    FMC_HA09_P                       : inout   std_logic;
    FMC_HA10_N                       : inout   std_logic;
    FMC_HA10_P                       : inout   std_logic;
    FMC_HA11_N                       : inout   std_logic;
    FMC_HA11_P                       : inout   std_logic;
    FMC_HA12_N                       : inout   std_logic;
    FMC_HA12_P                       : inout   std_logic;
    FMC_HA13_N                       : inout   std_logic;
    FMC_HA13_P                       : inout   std_logic;
    FMC_HA14_N                       : inout   std_logic;
    FMC_HA14_P                       : inout   std_logic;
    FMC_HA15_N                       : inout   std_logic;
    FMC_HA15_P                       : inout   std_logic;
    FMC_HA16_N                       : inout   std_logic;
    FMC_HA16_P                       : inout   std_logic;
    FMC_LA02_N                       : inout   std_logic;
    FMC_LA02_P                       : inout   std_logic;
    FMC_LA03_N                       : inout   std_logic;
    FMC_LA03_P                       : inout   std_logic;
    FMC_LA04_N                       : inout   std_logic;
    FMC_LA04_P                       : inout   std_logic;
    FMC_LA05_N                       : inout   std_logic;
    FMC_LA05_P                       : inout   std_logic;
    FMC_LA06_N                       : inout   std_logic;
    FMC_LA06_P                       : inout   std_logic;
    FMC_LA07_N                       : inout   std_logic;
    FMC_LA07_P                       : inout   std_logic;
    FMC_LA08_N                       : inout   std_logic;
    FMC_LA08_P                       : inout   std_logic;
    FMC_LA09_N                       : inout   std_logic;
    FMC_LA09_P                       : inout   std_logic;
    FMC_LA10_N                       : inout   std_logic;
    FMC_LA10_P                       : inout   std_logic;
    FMC_LA11_N                       : inout   std_logic;
    FMC_LA11_P                       : inout   std_logic;
    FMC_LA12_N                       : inout   std_logic;
    FMC_LA12_P                       : inout   std_logic;
    FMC_LA13_N                       : inout   std_logic;
    FMC_LA13_P                       : inout   std_logic;
    FMC_LA14_N                       : inout   std_logic;
    FMC_LA14_P                       : inout   std_logic;
    FMC_LA15_N                       : inout   std_logic;
    FMC_LA15_P                       : inout   std_logic;
    FMC_LA16_N                       : inout   std_logic;
    FMC_LA16_P                       : inout   std_logic;
    FMC_LA19_N                       : inout   std_logic;
    FMC_LA19_P                       : inout   std_logic;
    FMC_LA20_N                       : inout   std_logic;
    FMC_LA20_P                       : inout   std_logic;
    FMC_LA21_N                       : inout   std_logic;
    FMC_LA21_P                       : inout   std_logic;
    FMC_LA22_N                       : inout   std_logic;
    FMC_LA22_P                       : inout   std_logic;
    FMC_LA23_N                       : inout   std_logic;
    FMC_LA23_P                       : inout   std_logic;
    FMC_LA24_N                       : inout   std_logic;
    FMC_LA24_P                       : inout   std_logic;
    FMC_LA25_N                       : inout   std_logic;
    FMC_LA25_P                       : inout   std_logic;
    FMC_LA26_N                       : inout   std_logic;
    FMC_LA26_P                       : inout   std_logic;
    FMC_LA27_N                       : inout   std_logic;
    FMC_LA27_P                       : inout   std_logic;
    FMC_LA28_N                       : inout   std_logic;
    FMC_LA28_P                       : inout   std_logic;
    FMC_LA29_N                       : inout   std_logic;
    FMC_LA29_P                       : inout   std_logic;
    FMC_LA30_N                       : inout   std_logic;
    FMC_LA30_P                       : inout   std_logic;
    FMC_LA31_N                       : inout   std_logic;
    FMC_LA31_P                       : inout   std_logic;
    FMC_LA32_N                       : inout   std_logic;
    FMC_LA32_P                       : inout   std_logic;
    FMC_LA33_N                       : inout   std_logic;
    FMC_LA33_P                       : inout   std_logic;
    FMC_HA00_CC_N                    : inout   std_logic;
    FMC_HA00_CC_P                    : inout   std_logic;
    FMC_HA01_CC_N                    : inout   std_logic;
    FMC_HA01_CC_P                    : inout   std_logic;
    FMC_HA17_N                       : inout   std_logic;
    FMC_HA17_P                       : inout   std_logic;
    FMC_LA00_CC_N                    : inout   std_logic;
    FMC_LA00_CC_P                    : inout   std_logic;
    FMC_LA01_CC_N                    : inout   std_logic;
    FMC_LA01_CC_P                    : inout   std_logic;
    FMC_LA17_CC_N                    : inout   std_logic;
    FMC_LA17_CC_P                    : inout   std_logic;
    FMC_LA18_CC_N                    : inout   std_logic;
    FMC_LA18_CC_P                    : inout   std_logic;
    FMC_CLK0_M2C_N                   : inout   std_logic;
    FMC_CLK0_M2C_P                   : inout   std_logic;
    FMC_CLK1_M2C_N                   : inout   std_logic;
    FMC_CLK1_M2C_P                   : inout   std_logic;
    
    -- FX3
    FX3_CLK                          : inout   std_logic;
    FX3_INT_N_R                      : inout   std_logic;
    FX3_RESET_N_PL                   : inout   std_logic;
    FX3_SLOE_N                       : inout   std_logic;
    
    -- HDMI
    HDMI_HPD                         : in      std_logic;
    HDMI_D0_N                        : out     std_logic;
    HDMI_D0_P                        : out     std_logic;
    HDMI_D1_N                        : out     std_logic;
    HDMI_D1_P                        : out     std_logic;
    HDMI_D2_N                        : out     std_logic;
    HDMI_D2_P                        : out     std_logic;
    HDMI_CLK_N                       : out     std_logic;
    HDMI_CLK_P                       : out     std_logic;
    
    -- SDRAM
    DDR4_RZQ                         : in      std_logic;
    DDR4_A                           : out     std_logic_vector(16 downto 0);
    DDR4_BA                          : out     std_logic_vector(1 downto 0);
    DDR4_BG                          : out     std_logic_vector(1 downto 0);
    DDR4_DQ                          : inout   std_logic_vector(39 downto 0);
    DDR4_PAR                         : out     std_logic_vector(0 downto 0);
    DDR4_CKE                         : out     std_logic_vector(0 downto 0);
    DDR4_CK_N                        : out     std_logic_vector(0 downto 0);
    DDR4_CK_P                        : out     std_logic_vector(0 downto 0);
    DDR4_ODT                         : out     std_logic_vector(0 downto 0);
    DDR4_ACT_N                       : out     std_logic_vector(0 downto 0);
    DDR4_CS_N                        : out     std_logic_vector(0 downto 0);
    DDR4_DM_N                        : inout   std_logic_vector(4 downto 0);
    DDR4_DQS_N                       : inout   std_logic_vector(4 downto 0);
    DDR4_DQS_P                       : inout   std_logic_vector(4 downto 0);
    DDR4_ALERT_N                     : in      std_logic_vector(0 downto 0);
    DDR4_RESET_N                     : out     std_logic_vector(0 downto 0);
    
    -- I2C FPGA
    I2C_SCL_FPGA                     : inout   std_logic;
    I2C_SDA_FPGA                     : inout   std_logic;
    
    -- I2C_INT
    I2C_INT_N_HPS                    : in      std_logic;
    RTC_INT_N_R                      : in      std_logic;
    ETH_INT_N_R                      : in      std_logic;
    
    -- I2C_MIPI_SEL
    I2C_MIPI_SEL                     : inout   std_logic;
    
    -- IO3
    IO3_D0_P                         : inout   std_logic;
    IO3_D1_N                         : inout   std_logic;
    IO3_D2_P                         : inout   std_logic;
    IO3_D3_N                         : inout   std_logic;
    IO3_D4_P                         : inout   std_logic;
    IO3_D5_N                         : inout   std_logic;
    IO3_D6_P                         : inout   std_logic;
    IO3_D7_N                         : inout   std_logic;
    
    -- IO4
    IO4_D2_P                         : inout   std_logic;
    IO4_D3_N                         : inout   std_logic;
    IO4_D4_P                         : inout   std_logic;
    IO4_D5_N                         : inout   std_logic;
    IO4_D6_P                         : inout   std_logic;
    IO4_D7_N                         : inout   std_logic;
    
    -- LED
    LED2_N                           : out     std_logic;
    
    -- MIPI0
    MIPI0_D0_N                       : inout   std_logic;
    MIPI0_D0_P                       : inout   std_logic;
    MIPI0_D1_N                       : inout   std_logic;
    MIPI0_D1_P                       : inout   std_logic;
    MIPI0_CLK_D0LP_N                 : inout   std_logic;
    MIPI0_CLK_D0LP_P                 : inout   std_logic;
    MIPI0_CLK_N                      : inout   std_logic;
    MIPI0_CLK_P                      : inout   std_logic;
    
    -- MIPI1
    MIPI1_D0_N                       : inout   std_logic;
    MIPI1_D0_P                       : inout   std_logic;
    MIPI1_D1_N                       : inout   std_logic;
    MIPI1_D1_P                       : inout   std_logic;
    MIPI1_CLK_D0LP_N                 : inout   std_logic;
    MIPI1_CLK_D0LP_P                 : inout   std_logic;
    MIPI1_CLK_N                      : inout   std_logic;
    MIPI1_CLK_P                      : inout   std_logic;
    
    -- Oscillator 100 MHz
    CLK_100_CAL                      : in      std_logic;
    
    -- PWR_CTRL
    PWR_MGT_VSEL                     : out     std_logic;
    
    -- SFP
    SFP_RX_N                         : inout   std_logic;
    SFP_RX_P                         : inout   std_logic;
    SFP_TX_N                         : inout   std_logic;
    SFP_TX_P                         : inout   std_logic;
    
    -- ST1 LED
    LED2                             : out     std_logic;
    LED3                             : out     std_logic
  );
end Mercury_AA1_ST1_qspi;

architecture rtl of Mercury_AA1_ST1_qspi is

  ----------------------------------------------------------------------------------------------------
  -- component declarations
  ----------------------------------------------------------------------------------------------------
  component Mercury_AA1_pd is
    port (
      clk_0_clk_clk                    : out    std_logic;
      clk_0_clk_reset_reset_n          : out    std_logic;
      clk_1_clk_clk                    : out    std_logic;
      clk_1_clk_reset_reset_n          : out    std_logic;
      hps_io_hps_io_gpio_gpio2_io6     : inout  std_logic;
      hps_io_hps_io_gpio_gpio2_io7     : inout  std_logic;
      hps_io_hps_io_phery_uart1_TX     : out    std_logic;
      hps_io_hps_io_phery_uart1_RX     : in     std_logic;
      hps_io_hps_io_phery_usb0_CLK     : in     std_logic;
      hps_io_hps_io_phery_usb0_STP     : out    std_logic;
      hps_io_hps_io_phery_usb0_DIR     : in     std_logic;
      hps_io_hps_io_phery_usb0_DATA0   : inout  std_logic;
      hps_io_hps_io_phery_usb0_DATA1   : inout  std_logic;
      hps_io_hps_io_phery_usb0_DATA2   : inout  std_logic;
      hps_io_hps_io_phery_usb0_DATA3   : inout  std_logic;
      hps_io_hps_io_phery_usb0_DATA4   : inout  std_logic;
      hps_io_hps_io_phery_usb0_DATA5   : inout  std_logic;
      hps_io_hps_io_phery_usb0_DATA6   : inout  std_logic;
      hps_io_hps_io_phery_usb0_DATA7   : inout  std_logic;
      hps_io_hps_io_phery_usb0_NXT     : in     std_logic;
      hps_io_hps_io_phery_emac0_TX_CLK : out    std_logic;
      hps_io_hps_io_phery_emac0_TX_CTL : out    std_logic;
      hps_io_hps_io_phery_emac0_RX_CLK : in     std_logic;
      hps_io_hps_io_phery_emac0_RX_CTL : in     std_logic;
      hps_io_hps_io_phery_emac0_TXD0   : out    std_logic;
      hps_io_hps_io_phery_emac0_TXD1   : out    std_logic;
      hps_io_hps_io_phery_emac0_RXD1   : in     std_logic;
      hps_io_hps_io_phery_emac0_RXD2   : in     std_logic;
      hps_io_hps_io_phery_emac0_TXD2   : out    std_logic;
      hps_io_hps_io_phery_emac0_TXD3   : out    std_logic;
      hps_io_hps_io_phery_emac0_RXD0   : in     std_logic;
      hps_io_hps_io_phery_emac0_RXD3   : in     std_logic;
      hps_io_hps_io_gpio_gpio1_io0     : inout  std_logic;
      hps_io_hps_io_gpio_gpio1_io1     : inout  std_logic;
      hps_io_hps_io_gpio_gpio1_io2     : inout  std_logic;
      hps_io_hps_io_gpio_gpio1_io3     : inout  std_logic;
      hps_io_hps_io_gpio_gpio1_io4     : inout  std_logic;
      hps_io_hps_io_gpio_gpio1_io5     : inout  std_logic;
      hps_io_hps_io_phery_i2c1_SDA     : inout  std_logic;
      hps_io_hps_io_phery_i2c1_SCL     : inout  std_logic;
      hps_io_hps_io_gpio_gpio1_io8     : inout  std_logic;
      hps_io_hps_io_gpio_gpio1_io9     : inout  std_logic;
      hps_io_hps_io_phery_emac0_MDIO   : inout  std_logic;
      hps_io_hps_io_phery_emac0_MDC    : out    std_logic;
      hps_io_hps_io_gpio_gpio1_io18    : inout  std_logic;
      hps_io_hps_io_gpio_gpio1_io19    : inout  std_logic;
      hps_io_hps_io_gpio_gpio1_io20    : inout  std_logic;
      hps_io_hps_io_gpio_gpio1_io21    : inout  std_logic;
      hps_io_hps_io_gpio_gpio1_io22    : inout  std_logic;
      hps_io_hps_io_gpio_gpio1_io23    : inout  std_logic;
      hps_io_hps_io_phery_qspi_CLK     : inout  std_logic;
      hps_io_hps_io_phery_qspi_IO0     : inout  std_logic;
      hps_io_hps_io_phery_qspi_SS0     : out    std_logic;
      hps_io_hps_io_phery_qspi_IO1     : inout  std_logic;
      hps_io_hps_io_phery_qspi_IO2_WPN : inout  std_logic;
      hps_io_hps_io_phery_qspi_IO3_HOLD : inout  std_logic;
      hps_io_hps_io_gpio_gpio2_io8     : inout  std_logic;
      hps_io_hps_io_gpio_gpio2_io9     : inout  std_logic;
      hps_io_hps_io_gpio_gpio2_io10    : inout  std_logic;
      hps_io_hps_io_gpio_gpio2_io11    : inout  std_logic;
      emif_a10_hps_0_mem_mem_ck        : out    std_logic_vector(0 downto 0);
      emif_a10_hps_0_mem_mem_ck_n      : out    std_logic_vector(0 downto 0);
      emif_a10_hps_0_mem_mem_a         : out    std_logic_vector(16 downto 0);
      emif_a10_hps_0_mem_mem_act_n     : out    std_logic_vector(0 downto 0);
      emif_a10_hps_0_mem_mem_ba        : out    std_logic_vector(1 downto 0);
      emif_a10_hps_0_mem_mem_bg        : out    std_logic_vector(1 downto 0);
      emif_a10_hps_0_mem_mem_cke       : out    std_logic_vector(0 downto 0);
      emif_a10_hps_0_mem_mem_cs_n      : out    std_logic_vector(0 downto 0);
      emif_a10_hps_0_mem_mem_odt       : out    std_logic_vector(0 downto 0);
      emif_a10_hps_0_mem_mem_reset_n   : out    std_logic_vector(0 downto 0);
      emif_a10_hps_0_mem_mem_par       : out    std_logic_vector(0 downto 0);
      emif_a10_hps_0_mem_mem_alert_n   : in     std_logic_vector(0 downto 0);
      emif_a10_hps_0_mem_mem_dqs       : inout  std_logic_vector(4 downto 0);
      emif_a10_hps_0_mem_mem_dqs_n     : inout  std_logic_vector(4 downto 0);
      emif_a10_hps_0_mem_mem_dq        : inout  std_logic_vector(39 downto 0);
      emif_a10_hps_0_mem_mem_dbi_n     : inout  std_logic_vector(4 downto 0);
      emif_a10_hps_0_oct_oct_rzqin     : in     std_logic;
      emif_a10_hps_0_pll_ref_clk_clk   : in     std_logic;
      arria10_hps_0_i2c0_sda_oe        : out    std_logic;
      arria10_hps_0_i2c0_sda_i         : in     std_logic;
      arria10_hps_0_i2c0_clk_clk       : out    std_logic;
      arria10_hps_0_i2c0_scl_in_clk    : in     std_logic;
      arria10_hps_0_f2h_irq0_irq       : inout  std_logic_vector(31 downto 0)
    );
    
  end component Mercury_AA1_pd;

  ----------------------------------------------------------------------------------------------------
  -- signal declarations
  ----------------------------------------------------------------------------------------------------
  signal Clk100           : std_logic;
  signal Rst100_N         : std_logic;
  signal Clk50            : std_logic;
  signal Rst50_N          : std_logic;
  signal I2C_FPGA_sda_oe  : std_logic;
  signal I2C_FPGA_sda_i   : std_logic;
  signal I2C_FPGA_scl_oe  : std_logic;
  signal I2C_FPGA_scl_i   : std_logic;
  signal F2H_IRQ0         : std_logic_vector(31 downto 0);
  signal Rst_N            : std_logic;
  signal LedCount         : unsigned(23 downto 0);

begin
  
  ----------------------------------------------------------------------------------------------------
  -- processor system instance
  ----------------------------------------------------------------------------------------------------
  Mercury_AA1_i: component Mercury_AA1_pd
    port map (
      clk_0_clk_clk                    => Clk100,
      clk_0_clk_reset_reset_n          => Rst100_N,
      clk_1_clk_clk                    => Clk50,
      clk_1_clk_reset_reset_n          => Rst50_N,
      hps_io_hps_io_gpio_gpio2_io6     => FLASH_SEL_BS1,
      hps_io_hps_io_gpio_gpio2_io7     => LED3_N_BS0,
      hps_io_hps_io_phery_uart1_TX     => IOHPS_GP2IO12_UARTTX_K15,
      hps_io_hps_io_phery_uart1_RX     => IOHPS_GP2IO13_UARTRX_F13,
      hps_io_hps_io_phery_usb0_CLK     => USB_CLK,
      hps_io_hps_io_phery_usb0_STP     => USB_STP,
      hps_io_hps_io_phery_usb0_DIR     => USB_DIR,
      hps_io_hps_io_phery_usb0_DATA0   => USB_DATA0,
      hps_io_hps_io_phery_usb0_DATA1   => USB_DATA1,
      hps_io_hps_io_phery_usb0_DATA2   => USB_DATA2,
      hps_io_hps_io_phery_usb0_DATA3   => USB_DATA3,
      hps_io_hps_io_phery_usb0_DATA4   => USB_DATA4,
      hps_io_hps_io_phery_usb0_DATA5   => USB_DATA5,
      hps_io_hps_io_phery_usb0_DATA6   => USB_DATA6,
      hps_io_hps_io_phery_usb0_DATA7   => USB_DATA7,
      hps_io_hps_io_phery_usb0_NXT     => USB_NXT,
      hps_io_hps_io_phery_emac0_TX_CLK => ETH_TXCLK,
      hps_io_hps_io_phery_emac0_TX_CTL => ETH_TXCTL,
      hps_io_hps_io_phery_emac0_RX_CLK => ETH_RXCLK,
      hps_io_hps_io_phery_emac0_RX_CTL => ETH_RXCTL,
      hps_io_hps_io_phery_emac0_TXD0   => ETH_TXD0,
      hps_io_hps_io_phery_emac0_TXD1   => ETH_TXD1,
      hps_io_hps_io_phery_emac0_RXD1   => ETH_RXD1,
      hps_io_hps_io_phery_emac0_RXD2   => ETH_RXD2,
      hps_io_hps_io_phery_emac0_TXD2   => ETH_TXD2,
      hps_io_hps_io_phery_emac0_TXD3   => ETH_TXD3,
      hps_io_hps_io_phery_emac0_RXD0   => ETH_RXD0,
      hps_io_hps_io_phery_emac0_RXD3   => ETH_RXD3,
      hps_io_hps_io_gpio_gpio1_io0     => IO_B2L_GP1IO0_CLK1_F23,
      hps_io_hps_io_gpio_gpio1_io1     => IO_B2L_GP1IO1_G23,
      hps_io_hps_io_gpio_gpio1_io2     => LED0_N,
      hps_io_hps_io_gpio_gpio1_io3     => LED1_N,
      hps_io_hps_io_gpio_gpio1_io4     => PWR_INT_VSEL,
      hps_io_hps_io_gpio_gpio1_io5     => FLASH_OE_N_HPS,
      hps_io_hps_io_phery_i2c1_SDA     => I2C_SDA_LS,
      hps_io_hps_io_phery_i2c1_SCL     => I2C_SCL_LS,
      hps_io_hps_io_gpio_gpio1_io8     => IO_B2L_GP1IO8_D23,
      hps_io_hps_io_gpio_gpio1_io9     => IO_B2L_GP1IO9_E23,
      hps_io_hps_io_phery_emac0_MDIO   => ETH_MDIO,
      hps_io_hps_io_phery_emac0_MDC    => ETH_MDC,
      hps_io_hps_io_gpio_gpio1_io18    => IO_B2L_GP1IO18_MISO_J17,
      hps_io_hps_io_gpio_gpio1_io19    => IO_B2L_GP1IO19_SS0_N_K17,
      hps_io_hps_io_gpio_gpio1_io20    => IO_B2L_GP1IO20_CLK_J18,
      hps_io_hps_io_gpio_gpio1_io21    => IO_B2L_GP1IO21_MOSI_J19,
      hps_io_hps_io_gpio_gpio1_io22    => IO_B2L_GP1IO22_H17,
      hps_io_hps_io_gpio_gpio1_io23    => IO_B2L_GP1IO23_H16,
      hps_io_hps_io_phery_qspi_CLK     => EMMC_DATA0_QSPI_CLK_R,
      hps_io_hps_io_phery_qspi_IO0     => EMMC_CMD_QSPI_IO0,
      hps_io_hps_io_phery_qspi_SS0     => EMMC_CCLK_QSPI_SS0_N_BS2_R,
      hps_io_hps_io_phery_qspi_IO1     => EMMC_DATA1_QSPI_IO1,
      hps_io_hps_io_phery_qspi_IO2_WPN => EMMC_DATA2_QSPI_IO2,
      hps_io_hps_io_phery_qspi_IO3_HOLD => EMMC_DATA3_QSPI_IO3,
      hps_io_hps_io_gpio_gpio2_io8     => EMMC_DATA4,
      hps_io_hps_io_gpio_gpio2_io9     => EMMC_DATA5,
      hps_io_hps_io_gpio_gpio2_io10    => EMMC_DATA6,
      hps_io_hps_io_gpio_gpio2_io11    => EMMC_DATA7,
      emif_a10_hps_0_mem_mem_ck        => DDR4_CK_P,
      emif_a10_hps_0_mem_mem_ck_n      => DDR4_CK_N,
      emif_a10_hps_0_mem_mem_a         => DDR4_A,
      emif_a10_hps_0_mem_mem_act_n     => DDR4_ACT_N,
      emif_a10_hps_0_mem_mem_ba        => DDR4_BA,
      emif_a10_hps_0_mem_mem_bg        => DDR4_BG,
      emif_a10_hps_0_mem_mem_cke       => DDR4_CKE,
      emif_a10_hps_0_mem_mem_cs_n      => DDR4_CS_N,
      emif_a10_hps_0_mem_mem_odt       => DDR4_ODT,
      emif_a10_hps_0_mem_mem_reset_n   => DDR4_RESET_N,
      emif_a10_hps_0_mem_mem_par       => DDR4_PAR,
      emif_a10_hps_0_mem_mem_alert_n   => DDR4_ALERT_N,
      emif_a10_hps_0_mem_mem_dqs       => DDR4_DQS_P,
      emif_a10_hps_0_mem_mem_dqs_n     => DDR4_DQS_N,
      emif_a10_hps_0_mem_mem_dq        => DDR4_DQ,
      emif_a10_hps_0_mem_mem_dbi_n     => DDR4_DM_N,
      emif_a10_hps_0_oct_oct_rzqin     => DDR4_RZQ,
      emif_a10_hps_0_pll_ref_clk_clk   => CLK_PLL,
      arria10_hps_0_i2c0_sda_oe        => I2C_FPGA_sda_oe,
      arria10_hps_0_i2c0_sda_i         => I2C_FPGA_sda_i,
      arria10_hps_0_i2c0_clk_clk       => I2C_FPGA_scl_oe,
      arria10_hps_0_i2c0_scl_in_clk    => I2C_FPGA_scl_i,
      arria10_hps_0_f2h_irq0_irq       => F2H_IRQ0
    );
  
  Rst_N       <= Rst50_N;
  
  I2C_SDA_FPGA   <= '0' when I2C_FPGA_sda_oe = '1' else 'Z'; 
  I2C_FPGA_sda_i <= I2C_SDA_FPGA;                            
  I2C_SCL_FPGA   <= '0' when I2C_FPGA_scl_oe= '1' else 'Z';  
  I2C_FPGA_scl_i <= I2C_SCL_FPGA;                            
  
  F2H_IRQ0(0) <= I2C_INT_N_HPS;
  F2H_IRQ0(1) <= ETH_INT_N_R;
  F2H_IRQ0(2) <= RTC_INT_N_R;
  
  process (Clk50)
  begin
    if rising_edge (Clk50) then
      if Rst_N = '0' then
        LedCount    <= (others => '0');
      else
        LedCount    <= LedCount + 1;
      end if;
    end if;
  end process;
  LED2_N <= '0' when LedCount(LedCount'high) = '0' else 'Z';
  
  PWR_INT_VSEL <='Z';
  PWR_MGT_VSEL <='Z';
  
  LED2 <= 'Z';
  LED3 <= 'Z';
  
end rtl;
