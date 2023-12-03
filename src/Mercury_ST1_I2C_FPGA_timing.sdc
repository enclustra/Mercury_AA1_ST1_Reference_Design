
# I2C FPGA
set_false_path -from * -to [get_ports {I2C_SCL_FPGA}]
set_false_path -from * -to [get_ports {I2C_SDA_FPGA}]
set_false_path -from [get_ports {I2C_SCL_FPGA}] -to *
set_false_path -from [get_ports {I2C_SDA_FPGA}] -to *