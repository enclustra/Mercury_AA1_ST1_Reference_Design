#
# create_project.tcl: Tcl script for re-creating Quartus project
# 
# requires sourcing the settings.tcl to define the following variables
# - module_name, module, boot_mode, project_name, family
# - qsys-script must be set in the environment
#   -> launches the project qsys.tcl script
# ########################################################################################

puts ""
puts "INFO: BEGIN of [info script]"
puts ""

if {[file exists scripts/settings.tcl] } { source scripts/settings.tcl }
if {![info exists quartus_dir]} { set quartus_dir "Quartus/${module_name}/${boot_mode}" }

puts "======================================"
puts "== Current settings:                =="
puts "======================================"
puts "module_name    = ${module_name}"
puts "module         = ${module}"
puts "boot_mode      = ${boot_mode}"
puts "project_name   = ${project_name}"
puts "family         = ${family}"
puts "======================================"

if { ( "$module_name" eq "" ) || ( "$module"  eq "" ) || ( "$boot_mode"  eq "" ) || \
    ( "$project_name"  eq "" ) || ( "$family"  eq "") } {
    
    puts "Error: Not all required variables are defined!" 
    exit 1
}

set launch_dir [pwd]

# Create project
file mkdir ${quartus_dir}
cd ${quartus_dir}

project_new ${project_name}

# Set project properties
set_global_assignment -name DEVICE ${part}
set_global_assignment -name VHDL_INPUT_VERSION VHDL_2008
set_global_assignment -name RESERVE_ALL_UNUSED_PINS_WEAK_PULLUP "AS INPUT TRI-STATED"
set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
set_global_assignment -name FLOW_ENABLE_IO_ASSIGNMENT_ANALYSIS ON
set_global_assignment -name OPTIMIZE_MULTI_CORNER_TIMING ON
set_global_assignment -name MIN_CORE_JUNCTION_TEMP ${temp_min}
set_global_assignment -name MAX_CORE_JUNCTION_TEMP ${temp_max}

if { ${family} == "arria10" } {
    set_global_assignment -name HPS_EARLY_IO_RELEASE ON
    set_global_assignment -name PRESERVE_UNUSED_XCVR_CHANNEL ON
}

puts "Adding files to project:"
foreach file [glob -directory ./../../../src *] {
    switch  -glob ${file} {
        *.vhd {
            set_global_assignment -name VHDL_FILE ${file}
            puts ${file}
        }
        *.v {
            set_global_assignment -name VERILOG_FILE  ${file}
            puts ${file}
        }
        *.tcl {
            set_global_assignment -name SOURCE_TCL_SCRIPT_FILE  ${file}
            puts ${file}
        }
        *.qsf {
            set_global_assignment -name SOURCE_FILE  ${file}
            puts ${file}
            }
        *.sdc {
            set_global_assignment -name SDC_FILE  ${file}
            puts ${file}
        }
    }
}

# assign correct top level file when there are different pinouts per boot_mode
if {[info exists VHD_TOP_FILE]} {
    set_global_assignment -name TOP_LEVEL_ENTITY ${VHD_TOP_FILE}
} elseif { [file exists ${launch_dir}/src/${project_name}_${boot_mode}.vhd] } {
    set_global_assignment -name TOP_LEVEL_ENTITY ${project_name}_${boot_mode}
} else {
    set_global_assignment -name TOP_LEVEL_ENTITY ${project_name}
}

# re-create Platform Designs / QSYS tcl scrips
# contains HPS settings, IP instances, DDR settings
# ################################################
set {qsys-script} [file join "${::env(QUARTUS_ROOTDIR)}/sopc_builder/bin/qsys-script"]
set qsystclfiles [lsort -dictionary -increasing [glob ${launch_dir}/scripts/${module}*qsys.tcl]]
puts "${module}*qsys.tcl files found: ${qsystclfiles}"
foreach qsysfile ${qsystclfiles} {
    puts "###############################"
    puts "creating Platform Design/QSYS: "
    puts "###############################"
    puts ${qsysfile}
    set command [subst {${qsys-script} --script=${qsysfile} --search-path=${launch_dir}/${quartus_dir},$}]
    if { [catch {eval exec ${command}} msg] } {
        if { $errorCode != "NONE"} {
            throw $errorCode $errorInfo
        }
    }
    puts $msg
}

# assign correct qsys file when there are different designs per boot_mode
if { [file exists ${module}_${boot_mode}_pd.qsys] } {
    set_global_assignment -name QSYS_FILE ${module}_${boot_mode}_pd.qsys
} else {
    set_global_assignment -name QSYS_FILE ${module}_pd.qsys
}
# ################################################

# handle list of generics at level top
if {[info exists generics]} {
    set generics [split $generics]
    foreach generic {list $generics}
        set generic 
        set_parameter -name [split $generic ":"]
}

project_close
cd ${launch_dir}

puts ""
puts "INFO: END of [info script]"
puts ""