# qsys scripting (.tcl) file

package require qsys

if {[file exists ./../../../scripts/settings.tcl] } { source ./../../../scripts/settings.tcl }
if {![info exists module]}      { set module Mercury_AA1 }
if {![info exists module_name]} { set module_name ME-AA1-270-3E4-D11E }
if {![info exists part]}        { set part 10AS027E4F29E3SG }
if {![info exists boot_mode]}   { set boot_mode sdmmc }
if {![info exists system_name]} { set system_name ${module}_pd }

create_system ${system_name}

set_project_property DEVICE_FAMILY {Arria 10}
set_project_property DEVICE ${part}

# Instances and instance parameters
# (disabled instances are intentionally culled)
add_instance arria10_hps_0 altera_arria10_hps

if { $boot_mode == "sdmmc" } {
    set_instance_parameter_value arria10_hps_0 {QSPI_Mode} {N/A}
    set_instance_parameter_value arria10_hps_0 {QSPI_PinMuxing} {Unused}
    set_instance_parameter_value arria10_hps_0 {SDMMC_Mode} {4-bit}
    set_instance_parameter_value arria10_hps_0 {SDMMC_PinMuxing} {IO}
    set_instance_parameter_value arria10_hps_0 {HPS_IO_Enable} {SDMMC:D0 SDMMC:CMD SDMMC:CCLK SDMMC:D1 SDMMC:D2 SDMMC:D3 GPIO GPIO GPIO GPIO GPIO GPIO UART1:TX UART1:RX\
                                                                USB0:CLK USB0:STP USB0:DIR USB0:DATA0 USB0:DATA1 USB0:NXT USB0:DATA2 USB0:DATA3 USB0:DATA4 USB0:DATA5 USB0:DATA6 USB0:DATA7\
                                                                EMAC0:TX_CLK EMAC0:TX_CTL EMAC0:RX_CLK EMAC0:RX_CTL EMAC0:TXD0 EMAC0:TXD1 EMAC0:RXD0 EMAC0:RXD1 EMAC0:TXD2 EMAC0:TXD3 EMAC0:RXD2 EMAC0:RXD3\
                                                                GPIO GPIO GPIO GPIO GPIO GPIO I2C1:SDA I2C1:SCL GPIO GPIO MDIO0:MDIO MDIO0:MDC\
                                                                NONE NONE NONE NONE NONE NONE GPIO GPIO GPIO GPIO GPIO GPIO}
}
if { $boot_mode == "emmc" } {
    set_instance_parameter_value arria10_hps_0 {QSPI_Mode} {N/A}
    set_instance_parameter_value arria10_hps_0 {QSPI_PinMuxing} {Unused}
    set_instance_parameter_value arria10_hps_0 {SDMMC_Mode} {8-bit}
    set_instance_parameter_value arria10_hps_0 {SDMMC_PinMuxing} {IO}
    set_instance_parameter_value arria10_hps_0 {HPS_IO_Enable} {SDMMC:D0 SDMMC:CMD SDMMC:CCLK SDMMC:D1 SDMMC:D2 SDMMC:D3 GPIO GPIO SDMMC:D4 SDMMC:D5 SDMMC:D6 SDMMC:D7 UART1:TX UART1:RX\
                                                                USB0:CLK USB0:STP USB0:DIR USB0:DATA0 USB0:DATA1 USB0:NXT USB0:DATA2 USB0:DATA3 USB0:DATA4 USB0:DATA5 USB0:DATA6 USB0:DATA7\
                                                                EMAC0:TX_CLK EMAC0:TX_CTL EMAC0:RX_CLK EMAC0:RX_CTL EMAC0:TXD0 EMAC0:TXD1 EMAC0:RXD0 EMAC0:RXD1 EMAC0:TXD2 EMAC0:TXD3 EMAC0:RXD2\
                                                                EMAC0:RXD3 GPIO GPIO GPIO GPIO GPIO GPIO I2C1:SDA I2C1:SCL GPIO GPIO MDIO0:MDIO MDIO0:MDC\
                                                                NONE NONE NONE NONE NONE NONE GPIO GPIO GPIO GPIO GPIO GPIO}
}
if { $boot_mode == "qspi" } {
    set_instance_parameter_value arria10_hps_0 {QSPI_Mode} {1ss}
    set_instance_parameter_value arria10_hps_0 {QSPI_PinMuxing} {IO}
    set_instance_parameter_value arria10_hps_0 {SDMMC_Mode} {N/A}
    set_instance_parameter_value arria10_hps_0 {SDMMC_PinMuxing} {Unused}
    set_instance_parameter_value arria10_hps_0 {HPS_IO_Enable} {QSPI:CLK QSPI:IO0 QSPI:SS0 QSPI:IO1 QSPI:IO2_WPN QSPI:IO3_HOLD GPIO GPIO GPIO GPIO GPIO GPIO UART1:TX UART1:RX\
                                                                USB0:CLK USB0:STP USB0:DIR USB0:DATA0 USB0:DATA1 USB0:NXT USB0:DATA2 USB0:DATA3 USB0:DATA4 USB0:DATA5 USB0:DATA6 USB0:DATA7\
                                                                EMAC0:TX_CLK EMAC0:TX_CTL EMAC0:RX_CLK EMAC0:RX_CTL EMAC0:TXD0 EMAC0:TXD1 EMAC0:RXD0 EMAC0:RXD1 EMAC0:TXD2 EMAC0:TXD3 EMAC0:RXD2 EMAC0:RXD3\
                                                                GPIO GPIO GPIO GPIO GPIO GPIO I2C1:SDA I2C1:SCL GPIO GPIO MDIO0:MDIO MDIO0:MDC\
                                                                NONE NONE NONE NONE NONE NONE GPIO GPIO GPIO GPIO GPIO GPIO}
}

set_instance_parameter_value arria10_hps_0 {EMAC0_Mode} {RGMII_with_MDIO}
set_instance_parameter_value arria10_hps_0 {EMAC0_PinMuxing} {IO}
set_instance_parameter_value arria10_hps_0 {F2SINTERRUPT_Enable} {1}
# Port configuration 3 -> selected with value + 3
set_instance_parameter_value arria10_hps_0 {F2SDRAM_PORT_CONFIG} {6}
set_instance_parameter_value arria10_hps_0 {F2S_Width} {0}
set_instance_parameter_value arria10_hps_0 {H2F_USER0_CLK_Enable} {1}
set_instance_parameter_value arria10_hps_0 {H2F_USER1_CLK_Enable} {1}
set_instance_parameter_value arria10_hps_0 {H2F_USER0_CLK_FREQ} {100}
set_instance_parameter_value arria10_hps_0 {H2F_USER1_CLK_FREQ} {50}
set_instance_parameter_value arria10_hps_0 {I2C1_Mode} {default}
set_instance_parameter_value arria10_hps_0 {I2C1_PinMuxing} {IO}
set_instance_parameter_value arria10_hps_0 {MPU_EVENTS_Enable} {0}
set_instance_parameter_value arria10_hps_0 {S2F_Width} {6}
set_instance_parameter_value arria10_hps_0 {UART1_Mode} {No_flow_control}
set_instance_parameter_value arria10_hps_0 {UART1_PinMuxing} {IO}
set_instance_parameter_value arria10_hps_0 {USB0_Mode} {default}
set_instance_parameter_value arria10_hps_0 {USB0_PinMuxing} {IO}
set_instance_parameter_value arria10_hps_0 {eosc1_clk_mhz} {33.333}

add_instance emif_a10_hps_0 altera_emif_a10_hps
set_instance_parameter_value emif_a10_hps_0 {BOARD_DDR4_DQS_TO_CK_SKEW_NS} {0.0}
set_instance_parameter_value emif_a10_hps_0 {BOARD_DDR4_IS_SKEW_WITHIN_AC_DESKEWED} {1}
set_instance_parameter_value emif_a10_hps_0 {BOARD_DDR4_MAX_CK_DELAY_NS} {0.4}
set_instance_parameter_value emif_a10_hps_0 {BOARD_DDR4_MAX_DQS_DELAY_NS} {0.45}
set_instance_parameter_value emif_a10_hps_0 {BOARD_DDR4_PKG_BRD_SKEW_WITHIN_AC_NS} {0.085}
set_instance_parameter_value emif_a10_hps_0 {BOARD_DDR4_PKG_BRD_SKEW_WITHIN_DQS_NS} {0.045}
set_instance_parameter_value emif_a10_hps_0 {BOARD_DDR4_SKEW_BETWEEN_DQS_NS} {0.045}
set_instance_parameter_value emif_a10_hps_0 {BOARD_DDR4_USER_AC_ISI_NS} {0.15}
set_instance_parameter_value emif_a10_hps_0 {BOARD_DDR4_USER_RCLK_ISI_NS} {0.1}
set_instance_parameter_value emif_a10_hps_0 {BOARD_DDR4_USER_RDATA_ISI_NS} {0.045}
set_instance_parameter_value emif_a10_hps_0 {BOARD_DDR4_USER_WCLK_ISI_NS} {0.038}
set_instance_parameter_value emif_a10_hps_0 {BOARD_DDR4_USER_WDATA_ISI_NS} {0.09}
set_instance_parameter_value emif_a10_hps_0 {BOARD_DDR4_USE_DEFAULT_ISI_VALUES} {0}
set_instance_parameter_value emif_a10_hps_0 {CTRL_DDR4_ECC_AUTO_CORRECTION_EN} {1}
set_instance_parameter_value emif_a10_hps_0 {CTRL_DDR4_ECC_EN} {1}
set_instance_parameter_value emif_a10_hps_0 {DIAG_DDR4_SIM_CAL_MODE_ENUM} {SIM_CAL_MODE_FULL}
set_instance_parameter_value emif_a10_hps_0 {EX_DESIGN_GUI_DDR4_HDL_FORMAT} {HDL_FORMAT_VHDL}
set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_ALERT_N_PLACEMENT_ENUM} {DDR4_ALERT_N_PLACEMENT_DATA_LANES}
set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_DQ_WIDTH} {40}
set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_FORMAT_ENUM} {MEM_FORMAT_DISCRETE}
set_instance_parameter_value emif_a10_hps_0 {PHY_DDR4_DEFAULT_IO} {0}
set_instance_parameter_value emif_a10_hps_0 {PHY_DDR4_DEFAULT_REF_CLK_FREQ} {0}
set_instance_parameter_value emif_a10_hps_0 {PHY_DDR4_HPS_ENABLE_EARLY_RELEASE} {1}
set_instance_parameter_value emif_a10_hps_0 {PHY_DDR4_USER_AC_IO_STD_ENUM} {IO_STD_SSTL_12}
set_instance_parameter_value emif_a10_hps_0 {PHY_DDR4_USER_AC_MODE_ENUM} {OUT_OCT_40_CAL}
set_instance_parameter_value emif_a10_hps_0 {PHY_DDR4_USER_CK_IO_STD_ENUM} {IO_STD_SSTL_12}
set_instance_parameter_value emif_a10_hps_0 {PHY_DDR4_USER_CK_MODE_ENUM} {OUT_OCT_40_CAL}
set_instance_parameter_value emif_a10_hps_0 {PHY_DDR4_USER_DATA_IN_MODE_ENUM} {IN_OCT_40_CAL}
set_instance_parameter_value emif_a10_hps_0 {PHY_DDR4_USER_DATA_IO_STD_ENUM} {IO_STD_POD_12}
set_instance_parameter_value emif_a10_hps_0 {PHY_DDR4_USER_DATA_OUT_MODE_ENUM} {OUT_OCT_40_CAL}
set_instance_parameter_value emif_a10_hps_0 {PHY_DDR4_USER_PLL_REF_CLK_IO_STD_ENUM} {IO_STD_CMOS_12}
set_instance_parameter_value emif_a10_hps_0 {PHY_DDR4_USER_REF_CLK_FREQ_MHZ} {33.333}
set_instance_parameter_value emif_a10_hps_0 {PHY_DDR4_USER_RZQ_IO_STD_ENUM} {IO_STD_CMOS_12}
set_instance_parameter_value emif_a10_hps_0 {PROTOCOL_ENUM} {PROTOCOL_DDR4}
set_instance_parameter_value emif_a10_hps_0 {SHORT_QSYS_INTERFACE_NAMES} {1}

if { $module_name == "ME-AA1-270-3E4-D11E" } {
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_READ_DBI} {false}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_SPEEDBIN_ENUM} {DDR4_SPEEDBIN_1866}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TCCD_L_CYC} {5}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TCL} {13}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TDQSCK_PS} {195}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TDVWP_UI} {0.66}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TFAW_NS} {23.0}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TIH_PS} {125}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TIS_PS} {100}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TQH_UI} {0.76}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TRAS_NS} {34.0}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TQSH_CYC} {0.4}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TRCD_NS} {13.92}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TRP_NS} {13.92}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TRRD_L_CYC} {5}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TWLH_PS} {140.0}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TWLS_PS} {140.0}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TWTR_L_CYC} {7}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_VDIVW_TOTAL} {136}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_WTCL} {10}
    set_instance_parameter_value emif_a10_hps_0 {PHY_DDR4_MEM_CLK_FREQ_MHZ} {933.333}
	set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TRFC_NS} {260.0}
}

if { ($module_name == "ME-AA1-270-2I2-D11E") || ($module_name == "ME-AA1-480-2I3-D12E") } {
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_READ_DBI} {false}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_SPEEDBIN_ENUM} {DDR4_SPEEDBIN_2133}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TCCD_L_CYC} {6}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TCL} {15}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TDQSCK_PS} {180}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TDVWP_UI} {0.69}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TFAW_NS} {21.0}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TIH_PS} {105}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TIS_PS} {80}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TQH_UI} {0.76}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TRAS_NS} {33.0}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TQSH_CYC} {0.4}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TRCD_NS} {14.06}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TRP_NS} {14.06}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TRRD_L_CYC} {6}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TWLH_PS} {125.0}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TWLS_PS} {125.0}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TWTR_L_CYC} {8}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_VDIVW_TOTAL} {136}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_WTCL} {11}
    set_instance_parameter_value emif_a10_hps_0 {PHY_DDR4_MEM_CLK_FREQ_MHZ} {1066.66}
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TRFC_NS} {260.0}
}

if { $module_name == "ME-AA1-480-2I3-D12E" } {
    set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_ROW_ADDR_WIDTH} {16}
	set_instance_parameter_value emif_a10_hps_0 {MEM_DDR4_TRFC_NS} {350.0}
}

add_instance clk_0 clock_source
set_instance_parameter_value clk_0 {clockFrequency} {100000000.0}
set_instance_parameter_value clk_0 {clockFrequencyKnown} {1}
set_instance_parameter_value clk_0 {resetSynchronousEdges} {DEASSERT}

add_instance clk_1 clock_source
set_instance_parameter_value clk_1 {clockFrequency} {50000000.0}
set_instance_parameter_value clk_1 {clockFrequencyKnown} {1}
set_instance_parameter_value clk_1 {resetSynchronousEdges} {DEASSERT}

add_instance onchip_memory2_0 altera_avalon_onchip_memory2
set_instance_parameter_value onchip_memory2_0 {memorySize} {262144.0}

add_instance sysid_qsys_0 altera_avalon_sysid_qsys

# exported interfaces
add_interface arria10_hps_0_f2h_irq0 interrupt receiver
set_interface_property arria10_hps_0_f2h_irq0 EXPORT_OF arria10_hps_0.f2h_irq0

add_interface clk_0_clk clock source
set_interface_property clk_0_clk EXPORT_OF clk_0.clk

add_interface clk_0_clk_reset reset source
set_interface_property clk_0_clk_reset EXPORT_OF clk_0.clk_reset

add_interface clk_1_clk clock source
set_interface_property clk_1_clk EXPORT_OF clk_1.clk

add_interface clk_1_clk_reset reset source
set_interface_property clk_1_clk_reset EXPORT_OF clk_1.clk_reset

add_interface emif_a10_hps_0_mem conduit end
set_interface_property emif_a10_hps_0_mem EXPORT_OF emif_a10_hps_0.mem

add_interface emif_a10_hps_0_oct conduit end
set_interface_property emif_a10_hps_0_oct EXPORT_OF emif_a10_hps_0.oct

add_interface emif_a10_hps_0_pll_ref_clk clock sink
set_interface_property emif_a10_hps_0_pll_ref_clk EXPORT_OF emif_a10_hps_0.pll_ref_clk

add_interface hps_io conduit end
set_interface_property hps_io EXPORT_OF arria10_hps_0.hps_io

# connections and connection parameters
add_connection arria10_hps_0.h2f_axi_master onchip_memory2_0.s1
set_connection_parameter_value arria10_hps_0.h2f_axi_master/onchip_memory2_0.s1 arbitrationPriority {1}
set_connection_parameter_value arria10_hps_0.h2f_axi_master/onchip_memory2_0.s1 baseAddress {0x0000}
set_connection_parameter_value arria10_hps_0.h2f_axi_master/onchip_memory2_0.s1 defaultConnection {0}

add_connection arria10_hps_0.h2f_lw_axi_master sysid_qsys_0.control_slave
set_connection_parameter_value arria10_hps_0.h2f_lw_axi_master/sysid_qsys_0.control_slave arbitrationPriority {1}
set_connection_parameter_value arria10_hps_0.h2f_lw_axi_master/sysid_qsys_0.control_slave baseAddress {0x0000}
set_connection_parameter_value arria10_hps_0.h2f_lw_axi_master/sysid_qsys_0.control_slave defaultConnection {0}

add_connection arria10_hps_0.h2f_reset arria10_hps_0.h2f_axi_reset
add_connection arria10_hps_0.h2f_reset arria10_hps_0.h2f_lw_axi_reset
add_connection arria10_hps_0.h2f_reset clk_0.clk_in_reset
add_connection arria10_hps_0.h2f_reset clk_1.clk_in_reset
add_connection arria10_hps_0.h2f_reset emif_a10_hps_0.global_reset_n
add_connection arria10_hps_0.h2f_reset onchip_memory2_0.reset1
add_connection arria10_hps_0.h2f_reset sysid_qsys_0.reset

add_connection arria10_hps_0.h2f_user0_clock arria10_hps_0.h2f_axi_clock
add_connection arria10_hps_0.h2f_user0_clock clk_0.clk_in
add_connection arria10_hps_0.h2f_user0_clock onchip_memory2_0.clk1
add_connection arria10_hps_0.h2f_user1_clock arria10_hps_0.h2f_lw_axi_clock
add_connection arria10_hps_0.h2f_user1_clock clk_1.clk_in
add_connection arria10_hps_0.h2f_user1_clock sysid_qsys_0.clk

add_connection emif_a10_hps_0.hps_emif arria10_hps_0.emif
set_connection_parameter_value emif_a10_hps_0.hps_emif/arria10_hps_0.emif endPort {}
set_connection_parameter_value emif_a10_hps_0.hps_emif/arria10_hps_0.emif endPortLSB {0}
set_connection_parameter_value emif_a10_hps_0.hps_emif/arria10_hps_0.emif startPort {}
set_connection_parameter_value emif_a10_hps_0.hps_emif/arria10_hps_0.emif startPortLSB {0}
set_connection_parameter_value emif_a10_hps_0.hps_emif/arria10_hps_0.emif width {0}

# interconnect requirements
set_interconnect_requirement {$system} {qsys_mm.clockCrossingAdapter} {AUTO}

# I2C FPGA on ST1
set_instance_parameter_value arria10_hps_0 {I2C0_Mode} {default}
set_instance_parameter_value arria10_hps_0 {I2C0_PinMuxing} {FPGA}
add_interface arria10_hps_0_i2c0 conduit end
set_interface_property arria10_hps_0_i2c0 EXPORT_OF arria10_hps_0.i2c0
add_interface arria10_hps_0_i2c0_clk clock source
set_interface_property arria10_hps_0_i2c0_clk EXPORT_OF arria10_hps_0.i2c0_clk
add_interface arria10_hps_0_i2c0_scl_in clock sink
set_interface_property arria10_hps_0_i2c0_scl_in EXPORT_OF arria10_hps_0.i2c0_scl_in

save_system ${system_name}.qsys
