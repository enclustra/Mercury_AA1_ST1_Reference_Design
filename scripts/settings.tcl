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

# Project settings for Mercury AA1 Reference Design
# Valid module codes
# ME-AA1-270-3E4-D11E-NFX3
# ME-AA1-270-2I2-D11E-NFX3
# ME-AA1-480-2I3-D12E-NFX3
#
# Valid boot modes
# sdmmc
# emmc
# qspi

# ----------------------------------------------------------------------------------------------------
# Modify this variable to select your module
if {![info exists module_name]} {set module_name ME-AA1-270-3E4-D11E-NFX3}
if {![info exists baseboard]}   {set baseboard ST1}
if {![info exists boot_mode]} {set boot_mode sdmmc}
# ----------------------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------------------
# Don't modify anything beyond this line
# ----------------------------------------------------------------------------------------------------

#if any file argument are present, use this value
if {[lindex $argv 0] != ""} { set module_name [lindex $argv 0] }

set module Mercury_AA1
set family arria10

switch $module_name {
  ME-AA1-270-3E4-D11E-NFX3 {
    set part 10AS027E4F29E3SG 
    set temp_min 0 
    set temp_max 100 
  }
  ME-AA1-270-2I2-D11E-NFX3 {
    set part 10AS027E2F29I2SG 
    set temp_min -40 
    set temp_max 100 
  }
  ME-AA1-480-2I3-D12E-NFX3 {
    set part 10AS048E3F29I2SG 
    set temp_min -40 
    set temp_max 100 
  }
  default {
    puts "$module_name not available"
    break
  }
}

#create project name for design
if {![info exists project_name]} {
  set project_name ${module}
  if {[info exists baseboard]} {
    lappend project_name ${baseboard}
  }
  set project_name [string map {" " "_"} "${project_name}"]
}

puts "INFO: settings.tcl file loaded."
