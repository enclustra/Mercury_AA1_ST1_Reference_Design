
# LED
set_false_path -from * -to [get_ports {LED2_N}]

# I2C Peripheral Interupts
set_false_path -from [get_ports {I2C_INT_N_HPS}] -to *
set_false_path -from [get_ports {RTC_INT_N_R}] -to *
set_false_path -from [get_ports {ETH_INT_N_R}] -to *

create_clock -name {CLK100_IN} -period 10.0  [get_ports {CLK_100_CAL}]