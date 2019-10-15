
################################################################
# This is a generated script based on design: run_cam_lcd
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source run_cam_lcd_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# OV_Sensor_ML, glue, widen

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name run_cam_lcd

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}


##################################################################
# MIG PRJ FILE TCL PROCs
##################################################################

proc write_mig_file_run_cam_lcd_mig_7series_0_0 { str_mig_prj_filepath } {

   file mkdir [ file dirname "$str_mig_prj_filepath" ]
   set mig_prj_file [open $str_mig_prj_filepath  w+]

   puts $mig_prj_file {<?xml version='1.0' encoding='UTF-8'?>}
   puts $mig_prj_file {<!-- IMPORTANT: This is an internal file that has been generated by the MIG software. Any direct editing or changes made to this file may result in unpredictable behavior or data corruption. It is strongly advised that users do not edit the contents of this file. Re-run the MIG GUI with the required settings if any of the options provided below need to be altered. -->}
   puts $mig_prj_file {<Project NoOfControllers="1" >}
   puts $mig_prj_file {    <ModuleName>run_cam_lcd_mig_7series_0_0</ModuleName>}
   puts $mig_prj_file {    <dci_inouts_inputs>1</dci_inouts_inputs>}
   puts $mig_prj_file {    <dci_inputs>1</dci_inputs>}
   puts $mig_prj_file {    <Debug_En>OFF</Debug_En>}
   puts $mig_prj_file {    <DataDepth_En>1024</DataDepth_En>}
   puts $mig_prj_file {    <LowPower_En>OFF</LowPower_En>}
   puts $mig_prj_file {    <XADC_En>Enabled</XADC_En>}
   puts $mig_prj_file {    <TargetFPGA>xc7a100t-csg324/-1</TargetFPGA>}
   puts $mig_prj_file {    <Version>4.1</Version>}
   puts $mig_prj_file {    <SystemClock>No Buffer</SystemClock>}
   puts $mig_prj_file {    <ReferenceClock>No Buffer</ReferenceClock>}
   puts $mig_prj_file {    <SysResetPolarity>ACTIVE LOW</SysResetPolarity>}
   puts $mig_prj_file {    <BankSelectionFlag>FALSE</BankSelectionFlag>}
   puts $mig_prj_file {    <InternalVref>1</InternalVref>}
   puts $mig_prj_file {    <dci_hr_inouts_inputs>50 Ohms</dci_hr_inouts_inputs>}
   puts $mig_prj_file {    <dci_cascade>0</dci_cascade>}
   puts $mig_prj_file {    <FPGADevice>}
   puts $mig_prj_file {        <selected>7a/xc7a100ti-csg324</selected>}
   puts $mig_prj_file {    </FPGADevice>}
   puts $mig_prj_file {    <Controller number="0" >}
   puts $mig_prj_file {        <MemoryDevice>DDR2_SDRAM/Components/MT47H64M16HR-25E</MemoryDevice>}
   puts $mig_prj_file {        <TimePeriod>3077</TimePeriod>}
   puts $mig_prj_file {        <VccAuxIO>1.8V</VccAuxIO>}
   puts $mig_prj_file {        <PHYRatio>4:1</PHYRatio>}
   puts $mig_prj_file {        <InputClkFreq>99.997</InputClkFreq>}
   puts $mig_prj_file {        <UIExtraClocks>0</UIExtraClocks>}
   puts $mig_prj_file {        <MMCM_VCO>1200</MMCM_VCO>}
   puts $mig_prj_file {        <MMCMClkOut0> 1.000</MMCMClkOut0>}
   puts $mig_prj_file {        <MMCMClkOut1>1</MMCMClkOut1>}
   puts $mig_prj_file {        <MMCMClkOut2>1</MMCMClkOut2>}
   puts $mig_prj_file {        <MMCMClkOut3>1</MMCMClkOut3>}
   puts $mig_prj_file {        <MMCMClkOut4>1</MMCMClkOut4>}
   puts $mig_prj_file {        <DataWidth>16</DataWidth>}
   puts $mig_prj_file {        <DeepMemory>1</DeepMemory>}
   puts $mig_prj_file {        <DataMask>1</DataMask>}
   puts $mig_prj_file {        <ECC>Disabled</ECC>}
   puts $mig_prj_file {        <Ordering>Normal</Ordering>}
   puts $mig_prj_file {        <BankMachineCnt>4</BankMachineCnt>}
   puts $mig_prj_file {        <CustomPart>FALSE</CustomPart>}
   puts $mig_prj_file {        <NewPartName></NewPartName>}
   puts $mig_prj_file {        <RowAddress>13</RowAddress>}
   puts $mig_prj_file {        <ColAddress>10</ColAddress>}
   puts $mig_prj_file {        <BankAddress>3</BankAddress>}
   puts $mig_prj_file {        <C0_MEM_SIZE>134217728</C0_MEM_SIZE>}
   puts $mig_prj_file {        <UserMemoryAddressMap>BANK_ROW_COLUMN</UserMemoryAddressMap>}
   puts $mig_prj_file {        <PinSelection>}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="M4" SLEW="" name="ddr2_addr[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="R2" SLEW="" name="ddr2_addr[10]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="K5" SLEW="" name="ddr2_addr[11]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="N6" SLEW="" name="ddr2_addr[12]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="P4" SLEW="" name="ddr2_addr[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="M6" SLEW="" name="ddr2_addr[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="T1" SLEW="" name="ddr2_addr[3]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="L3" SLEW="" name="ddr2_addr[4]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="P5" SLEW="" name="ddr2_addr[5]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="M2" SLEW="" name="ddr2_addr[6]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="N1" SLEW="" name="ddr2_addr[7]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="L4" SLEW="" name="ddr2_addr[8]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="N5" SLEW="" name="ddr2_addr[9]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="P2" SLEW="" name="ddr2_ba[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="P3" SLEW="" name="ddr2_ba[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="R1" SLEW="" name="ddr2_ba[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="L1" SLEW="" name="ddr2_cas_n" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL18_II" PADName="L5" SLEW="" name="ddr2_ck_n[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL18_II" PADName="L6" SLEW="" name="ddr2_ck_p[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="M1" SLEW="" name="ddr2_cke[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="K6" SLEW="" name="ddr2_cs_n[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="T6" SLEW="" name="ddr2_dm[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="U1" SLEW="" name="ddr2_dm[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="R7" SLEW="" name="ddr2_dq[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="V5" SLEW="" name="ddr2_dq[10]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="U4" SLEW="" name="ddr2_dq[11]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="V4" SLEW="" name="ddr2_dq[12]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="T4" SLEW="" name="ddr2_dq[13]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="V1" SLEW="" name="ddr2_dq[14]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="T3" SLEW="" name="ddr2_dq[15]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="V6" SLEW="" name="ddr2_dq[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="R8" SLEW="" name="ddr2_dq[2]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="U7" SLEW="" name="ddr2_dq[3]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="V7" SLEW="" name="ddr2_dq[4]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="R6" SLEW="" name="ddr2_dq[5]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="U6" SLEW="" name="ddr2_dq[6]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="R5" SLEW="" name="ddr2_dq[7]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="T5" SLEW="" name="ddr2_dq[8]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="U3" SLEW="" name="ddr2_dq[9]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL18_II" PADName="V9" SLEW="" name="ddr2_dqs_n[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL18_II" PADName="V2" SLEW="" name="ddr2_dqs_n[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL18_II" PADName="U9" SLEW="" name="ddr2_dqs_p[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="DIFF_SSTL18_II" PADName="U2" SLEW="" name="ddr2_dqs_p[1]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="M3" SLEW="" name="ddr2_odt[0]" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="N4" SLEW="" name="ddr2_ras_n" IN_TERM="" />}
   puts $mig_prj_file {            <Pin VCCAUX_IO="" IOSTANDARD="SSTL18_II" PADName="N2" SLEW="" name="ddr2_we_n" IN_TERM="" />}
   puts $mig_prj_file {        </PinSelection>}
   puts $mig_prj_file {        <System_Control>}
   puts $mig_prj_file {            <Pin PADName="No connect" Bank="Select Bank" name="sys_rst" />}
   puts $mig_prj_file {            <Pin PADName="No connect" Bank="Select Bank" name="init_calib_complete" />}
   puts $mig_prj_file {            <Pin PADName="No connect" Bank="Select Bank" name="tg_compare_error" />}
   puts $mig_prj_file {        </System_Control>}
   puts $mig_prj_file {        <TimingParameters>}
   puts $mig_prj_file {            <Parameters twtr="7.5" trrd="10" trefi="7.8" tfaw="45" trtp="7.5" trfc="127.5" trp="12.5" tras="40" trcd="15" />}
   puts $mig_prj_file {        </TimingParameters>}
   puts $mig_prj_file {        <mrBurstLength name="Burst Length" >8</mrBurstLength>}
   puts $mig_prj_file {        <mrBurstType name="Burst Type" >Sequential</mrBurstType>}
   puts $mig_prj_file {        <mrCasLatency name="CAS Latency" >5</mrCasLatency>}
   puts $mig_prj_file {        <mrMode name="Mode" >Normal</mrMode>}
   puts $mig_prj_file {        <mrDllReset name="DLL Reset" >No</mrDllReset>}
   puts $mig_prj_file {        <mrPdMode name="PD Mode" >Fast exit</mrPdMode>}
   puts $mig_prj_file {        <mrWriteRecovery name="Write Recovery" >5</mrWriteRecovery>}
   puts $mig_prj_file {        <emrDllEnable name="DLL Enable" >Enable-Normal</emrDllEnable>}
   puts $mig_prj_file {        <emrOutputDriveStrength name="Output Drive Strength" >Fullstrength</emrOutputDriveStrength>}
   puts $mig_prj_file {        <emrCSSelection name="Controller Chip Select Pin" >Enable</emrCSSelection>}
   puts $mig_prj_file {        <emrCKSelection name="Memory Clock Selection" >1</emrCKSelection>}
   puts $mig_prj_file {        <emrRTT name="RTT (nominal) - ODT" >50ohms</emrRTT>}
   puts $mig_prj_file {        <emrPosted name="Additive Latency (AL)" >0</emrPosted>}
   puts $mig_prj_file {        <emrOCD name="OCD Operation" >OCD Exit</emrOCD>}
   puts $mig_prj_file {        <emrDQS name="DQS# Enable" >Enable</emrDQS>}
   puts $mig_prj_file {        <emrRDQS name="RDQS Enable" >Disable</emrRDQS>}
   puts $mig_prj_file {        <emrOutputs name="Outputs" >Enable</emrOutputs>}
   puts $mig_prj_file {        <PortInterface>AXI</PortInterface>}
   puts $mig_prj_file {        <AXIParameters>}
   puts $mig_prj_file {            <C0_C_RD_WR_ARB_ALGORITHM>RD_PRI_REG</C0_C_RD_WR_ARB_ALGORITHM>}
   puts $mig_prj_file {            <C0_S_AXI_ADDR_WIDTH>27</C0_S_AXI_ADDR_WIDTH>}
   puts $mig_prj_file {            <C0_S_AXI_DATA_WIDTH>32</C0_S_AXI_DATA_WIDTH>}
   puts $mig_prj_file {            <C0_S_AXI_ID_WIDTH>2</C0_S_AXI_ID_WIDTH>}
   puts $mig_prj_file {            <C0_S_AXI_SUPPORTS_NARROW_BURST>1</C0_S_AXI_SUPPORTS_NARROW_BURST>}
   puts $mig_prj_file {        </AXIParameters>}
   puts $mig_prj_file {    </Controller>}
   puts $mig_prj_file {</Project>}

   close $mig_prj_file
}
# End of write_mig_file_run_cam_lcd_mig_7series_0_0()



##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set BTN [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 BTN ]
  set SCL [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 SCL ]
  set SDA [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 SDA ]
  set TFT [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 TFT ]
  set acc_ctrl [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 acc_ctrl ]
  set cmos_ctrl [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 cmos_ctrl ]
  set ddr2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 ddr2 ]
  set led [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 led ]
  set rst_ctrl [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 rst_ctrl ]

  # Create ports
  set JTAGNSW_0 [ create_bd_port -dir O JTAGNSW_0 ]
  set SWCLKTCK_0 [ create_bd_port -dir I -type clk SWCLKTCK_0 ]
  set SWDITMS_0 [ create_bd_port -dir I SWDITMS_0 ]
  set SWDOEN_0 [ create_bd_port -dir O SWDOEN_0 ]
  set SWDO_0 [ create_bd_port -dir O SWDO_0 ]
  set TDI_0 [ create_bd_port -dir I TDI_0 ]
  set TDO_0 [ create_bd_port -dir O TDO_0 ]
  set acc_clear [ create_bd_port -dir I -from 0 -to 0 -type data acc_clear ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}} \
 ] $acc_clear
  set acc_enable [ create_bd_port -dir I -from 0 -to 0 -type data acc_enable ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}} \
 ] $acc_enable
  set acc_rstn [ create_bd_port -dir I -from 0 -to 0 acc_rstn ]
  set bin_enable [ create_bd_port -dir I -type data bin_enable ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}} \
 ] $bin_enable
  set cmos_data [ create_bd_port -dir I -from 7 -to 0 cmos_data ]
  set cmos_href [ create_bd_port -dir I cmos_href ]
  set cmos_pclk [ create_bd_port -dir I cmos_pclk ]
  set cmos_vsync [ create_bd_port -dir I cmos_vsync ]
  set cmos_xclk [ create_bd_port -dir O cmos_xclk ]
  set fifo_rstn [ create_bd_port -dir I -from 0 -to 0 fifo_rstn ]
  set nTDOEN_0 [ create_bd_port -dir O nTDOEN_0 ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set rx [ create_bd_port -dir I rx ]
  set sys_clock [ create_bd_port -dir I -type clk sys_clock ]
  set threshold [ create_bd_port -dir I -from 7 -to 0 -type data threshold ]
  set_property -dict [ list \
   CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}} \
 ] $threshold
  set tx [ create_bd_port -dir O tx ]

  # Create instance: BTN, and set properties
  set BTN [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 BTN ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {5} \
   CONFIG.C_INTERRUPT_PRESENT {1} \
 ] $BTN

  # Create instance: CORTEXM3_AXI_0, and set properties
  set CORTEXM3_AXI_0 [ create_bd_cell -type ip -vlnv Arm.com:CortexM:CORTEXM3_AXI:1.0 CORTEXM3_AXI_0 ]
  set_property -dict [ list \
   CONFIG.DEBUG_LVL {2} \
   CONFIG.ITCM_INIT_RAM {false} \
   CONFIG.JTAG_PRESENT {true} \
   CONFIG.TRACE_LVL {2} \
 ] $CORTEXM3_AXI_0

  # Create instance: OV_Sensor_ML_0, and set properties
  set block_name OV_Sensor_ML
  set block_cell_name OV_Sensor_ML_0
  if { [catch {set OV_Sensor_ML_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $OV_Sensor_ML_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: RAM, and set properties
  set RAM [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 RAM ]
  set_property -dict [ list \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Memory_Type {Single_Port_RAM} \
   CONFIG.Port_A_Write_Rate {50} \
   CONFIG.Port_B_Clock {0} \
   CONFIG.Port_B_Enable_Rate {0} \
   CONFIG.Port_B_Write_Rate {0} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTB_Pin {false} \
 ] $RAM

  # Create instance: RAM_2, and set properties
  set RAM_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 RAM_2 ]
  set_property -dict [ list \
   CONFIG.Coe_File {no_coe_file_loaded} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Load_Init_File {false} \
   CONFIG.Memory_Type {Single_Port_RAM} \
   CONFIG.Port_A_Write_Rate {50} \
   CONFIG.Use_Byte_Write_Enable {true} \
 ] $RAM_2

  # Create instance: acc_ctrl, and set properties
  set acc_ctrl [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 acc_ctrl ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {2} \
 ] $acc_ctrl

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_bram_ctrl_1, and set properties
  set axi_bram_ctrl_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_1 ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_1

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {0} \
   CONFIG.M00_HAS_REGSLICE {3} \
   CONFIG.M01_HAS_REGSLICE {3} \
   CONFIG.M02_HAS_REGSLICE {3} \
   CONFIG.M03_HAS_DATA_FIFO {0} \
   CONFIG.M03_HAS_REGSLICE {3} \
   CONFIG.M04_HAS_REGSLICE {3} \
   CONFIG.M05_HAS_REGSLICE {3} \
   CONFIG.M06_HAS_REGSLICE {3} \
   CONFIG.M07_HAS_REGSLICE {3} \
   CONFIG.NUM_MI {11} \
   CONFIG.NUM_SI {3} \
   CONFIG.S00_HAS_REGSLICE {3} \
   CONFIG.S01_HAS_REGSLICE {3} \
   CONFIG.S02_HAS_REGSLICE {3} \
   CONFIG.SYNCHRONIZATION_STAGES {2} \
   CONFIG.XBAR_DATA_WIDTH {32} \
 ] $axi_interconnect_0

  # Create instance: axi_protocol_convert_0, and set properties
  set axi_protocol_convert_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 axi_protocol_convert_0 ]

  # Create instance: axi_vdma_0, and set properties
  set axi_vdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.3 axi_vdma_0 ]
  set_property -dict [ list \
   CONFIG.c_m_axi_mm2s_data_width {32} \
   CONFIG.c_m_axi_s2mm_data_width {32} \
   CONFIG.c_mm2s_genlock_mode {1} \
   CONFIG.c_mm2s_max_burst_length {16} \
   CONFIG.c_num_fstores {1} \
   CONFIG.c_s2mm_genlock_mode {0} \
   CONFIG.c_s2mm_max_burst_length {16} \
 ] $axi_vdma_0

  # Create instance: binary_0, and set properties
  set binary_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:binary:1.0 binary_0 ]

  # Create instance: cam_gpio, and set properties
  set cam_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 cam_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_ALL_OUTPUTS_2 {0} \
   CONFIG.C_GPIO2_WIDTH {1} \
   CONFIG.C_GPIO_WIDTH {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $cam_gpio

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_DRIVES {BUFGCE} \
   CONFIG.CLKOUT1_JITTER {175.402} \
   CONFIG.CLKOUT1_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {25.000} \
   CONFIG.CLKOUT2_DRIVES {BUFGCE} \
   CONFIG.CLKOUT2_JITTER {159.371} \
   CONFIG.CLKOUT2_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {40} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFGCE} \
   CONFIG.CLKOUT3_JITTER {114.829} \
   CONFIG.CLKOUT3_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {200.000} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_DRIVES {BUFGCE} \
   CONFIG.CLKOUT4_JITTER {130.958} \
   CONFIG.CLKOUT4_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT4_USED {true} \
   CONFIG.CLKOUT5_DRIVES {BUFGCE} \
   CONFIG.CLKOUT5_JITTER {209.588} \
   CONFIG.CLKOUT5_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT5_REQUESTED_OUT_FREQ {10.000} \
   CONFIG.CLKOUT5_REQUESTED_PHASE {0} \
   CONFIG.CLKOUT5_USED {false} \
   CONFIG.CLKOUT6_DRIVES {BUFGCE} \
   CONFIG.CLKOUT7_DRIVES {BUFGCE} \
   CONFIG.CLK_OUT1_PORT {clk_25M} \
   CONFIG.CLK_OUT2_PORT {clk_45M} \
   CONFIG.CLK_OUT3_PORT {clk_ddr_ref} \
   CONFIG.CLK_OUT4_PORT {clk_ddr_sys} \
   CONFIG.CLK_OUT5_PORT {sys_tick} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {10.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {10.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {40.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {25} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {5} \
   CONFIG.MMCM_CLKOUT3_DIVIDE {10} \
   CONFIG.MMCM_CLKOUT4_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT4_PHASE {0.000} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {4} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
   CONFIG.USE_RESET {false} \
   CONFIG.USE_SAFE_CLOCK_STARTUP {true} \
 ] $clk_wiz_0

  # Create instance: cmos_ctrl, and set properties
  set cmos_ctrl [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 cmos_ctrl ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {2} \
 ] $cmos_ctrl

  # Create instance: glue_0, and set properties
  set block_name glue
  set block_cell_name glue_0
  if { [catch {set glue_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $glue_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: led_gpio, and set properties
  set led_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 led_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {5} \
 ] $led_gpio

  # Create instance: lenet5_0, and set properties
  set lenet5_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:lenet5:1.0 lenet5_0 ]

  # Create instance: mig_7series_0, and set properties
  set mig_7series_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mig_7series:4.1 mig_7series_0 ]

  # Generate the PRJ File for MIG
  set str_mig_folder [get_property IP_DIR [ get_ips [ get_property CONFIG.Component_Name $mig_7series_0 ] ] ]
  set str_mig_file_name mig_a.prj
  set str_mig_file_path ${str_mig_folder}/${str_mig_file_name}

  write_mig_file_run_cam_lcd_mig_7series_0_0 $str_mig_file_path

  set_property -dict [ list \
   CONFIG.BOARD_MIG_PARAM {Custom} \
   CONFIG.MIG_DONT_TOUCH_PARAM {Custom} \
   CONFIG.RESET_BOARD_INTERFACE {Custom} \
   CONFIG.XML_INPUT_FILE {mig_a.prj} \
 ] $mig_7series_0

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: rst_ctrl, and set properties
  set rst_ctrl [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 rst_ctrl ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_DOUT_DEFAULT {0xFFFFFFFF} \
   CONFIG.C_GPIO_WIDTH {3} \
 ] $rst_ctrl

  # Create instance: tft_gpio, and set properties
  set tft_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 tft_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {4} \
 ] $tft_gpio

  # Create instance: uartlite, and set properties
  set uartlite [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 uartlite ]

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_andgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_4, and set properties
  set util_vector_logic_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_4 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_4

  # Create instance: v_vid_in_axi4s_0, and set properties
  set v_vid_in_axi4s_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_vid_in_axi4s:4.0 v_vid_in_axi4s_0 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_WIDTH {10} \
   CONFIG.C_HAS_ASYNC_CLK {1} \
   CONFIG.C_M_AXIS_VIDEO_DATA_WIDTH {8} \
   CONFIG.C_NATIVE_COMPONENT_WIDTH {8} \
 ] $v_vid_in_axi4s_0

  # Create instance: widen_0, and set properties
  set block_name widen
  set block_cell_name widen_0
  if { [catch {set widen_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $widen_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN4_WIDTH {10} \
   CONFIG.NUM_PORTS {4} \
 ] $xlconcat_0

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {3} \
 ] $xlconstant_1

  # Create instance: xlconstant_4, and set properties
  set xlconstant_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_4 ]

  # Create instance: xlconstant_7, and set properties
  set xlconstant_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_7 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_7

  # Create instance: xlconstant_8, and set properties
  set xlconstant_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_8 ]

  # Create instance: xlconstant_high2, and set properties
  set xlconstant_high2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_high2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_high2

  # Create interface connections
  connect_bd_intf_net -intf_net BTN_GPIO [get_bd_intf_ports BTN] [get_bd_intf_pins BTN/GPIO]
  connect_bd_intf_net -intf_net CORTEXM3_AXI_0_CM3_CODE_AXI3 [get_bd_intf_pins CORTEXM3_AXI_0/CM3_CODE_AXI3] [get_bd_intf_pins axi_protocol_convert_0/S_AXI]
  connect_bd_intf_net -intf_net CORTEXM3_AXI_0_CM3_SYS_AXI3 [get_bd_intf_pins CORTEXM3_AXI_0/CM3_SYS_AXI3] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net acc_ctrl_GPIO [get_bd_intf_ports acc_ctrl] [get_bd_intf_pins acc_ctrl/GPIO]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins RAM/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_BRAM_PORTA [get_bd_intf_pins RAM_2/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_1/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO [get_bd_intf_ports led] [get_bd_intf_pins led_gpio/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO1 [get_bd_intf_ports cmos_ctrl] [get_bd_intf_pins cmos_ctrl/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_1_GPIO [get_bd_intf_ports TFT] [get_bd_intf_pins tft_gpio/GPIO]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins cam_gpio/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_interconnect_0/M01_AXI] [get_bd_intf_pins led_gpio/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins axi_interconnect_0/M02_AXI] [get_bd_intf_pins tft_gpio/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M03_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M04_AXI [get_bd_intf_pins axi_interconnect_0/M04_AXI] [get_bd_intf_pins uartlite/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M05_AXI [get_bd_intf_pins axi_interconnect_0/M05_AXI] [get_bd_intf_pins axi_vdma_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_interconnect_0_M06_AXI [get_bd_intf_pins axi_interconnect_0/M06_AXI] [get_bd_intf_pins mig_7series_0/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M07_AXI [get_bd_intf_pins axi_interconnect_0/M07_AXI] [get_bd_intf_pins cmos_ctrl/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M08_AXI [get_bd_intf_pins BTN/S_AXI] [get_bd_intf_pins axi_interconnect_0/M08_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M09_AXI [get_bd_intf_pins axi_interconnect_0/M09_AXI] [get_bd_intf_pins rst_ctrl/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M10_AXI [get_bd_intf_pins acc_ctrl/S_AXI] [get_bd_intf_pins axi_interconnect_0/M10_AXI]
  connect_bd_intf_net -intf_net axi_protocol_convert_0_M_AXI [get_bd_intf_pins axi_bram_ctrl_1/S_AXI] [get_bd_intf_pins axi_protocol_convert_0/M_AXI]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXIS_MM2S [get_bd_intf_pins axi_vdma_0/M_AXIS_MM2S] [get_bd_intf_pins lenet5_0/img_in]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_MM2S [get_bd_intf_pins axi_interconnect_0/S01_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_MM2S]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_S2MM [get_bd_intf_pins axi_interconnect_0/S02_AXI] [get_bd_intf_pins axi_vdma_0/M_AXI_S2MM]
  connect_bd_intf_net -intf_net binary_0_img_out [get_bd_intf_pins axi_vdma_0/S_AXIS_S2MM] [get_bd_intf_pins binary_0/img_out]
  connect_bd_intf_net -intf_net cam_gpio_GPIO [get_bd_intf_ports SCL] [get_bd_intf_pins cam_gpio/GPIO]
  connect_bd_intf_net -intf_net cam_gpio_GPIO2 [get_bd_intf_ports SDA] [get_bd_intf_pins cam_gpio/GPIO2]
  connect_bd_intf_net -intf_net mig_7series_0_DDR2 [get_bd_intf_ports ddr2] [get_bd_intf_pins mig_7series_0/DDR2]
  connect_bd_intf_net -intf_net soft_rstn_GPIO [get_bd_intf_ports rst_ctrl] [get_bd_intf_pins rst_ctrl/GPIO]

  # Create port connections
  connect_bd_net -net BTN_ip2intc_irpt [get_bd_pins BTN/ip2intc_irpt] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net CORTEXM3_AXI_0_JTAGNSW [get_bd_ports JTAGNSW_0] [get_bd_pins CORTEXM3_AXI_0/JTAGNSW]
  connect_bd_net -net CORTEXM3_AXI_0_SWDO [get_bd_ports SWDO_0] [get_bd_pins CORTEXM3_AXI_0/SWDO]
  connect_bd_net -net CORTEXM3_AXI_0_SWDOEN [get_bd_ports SWDOEN_0] [get_bd_pins CORTEXM3_AXI_0/SWDOEN]
  connect_bd_net -net CORTEXM3_AXI_0_TDO [get_bd_ports TDO_0] [get_bd_pins CORTEXM3_AXI_0/TDO]
  connect_bd_net -net CORTEXM3_AXI_0_nTDOEN [get_bd_ports nTDOEN_0] [get_bd_pins CORTEXM3_AXI_0/nTDOEN]
  connect_bd_net -net OV_Sensor_ML_0_cmos_xclk_o [get_bd_ports cmos_xclk] [get_bd_pins OV_Sensor_ML_0/cmos_xclk_o]
  connect_bd_net -net OV_Sensor_ML_0_hs_o [get_bd_pins OV_Sensor_ML_0/hs_o] [get_bd_pins v_vid_in_axi4s_0/vid_active_video] [get_bd_pins v_vid_in_axi4s_0/vid_hsync]
  connect_bd_net -net OV_Sensor_ML_0_rgb_o [get_bd_pins OV_Sensor_ML_0/rgb_o] [get_bd_pins v_vid_in_axi4s_0/vid_data]
  connect_bd_net -net OV_Sensor_ML_0_vid_clk_ce [get_bd_pins OV_Sensor_ML_0/vid_clk_ce] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_ce]
  connect_bd_net -net OV_Sensor_ML_0_vs_o [get_bd_pins OV_Sensor_ML_0/vs_o] [get_bd_pins v_vid_in_axi4s_0/vid_vsync]
  connect_bd_net -net Op2_0_2 [get_bd_ports acc_rstn] [get_bd_pins util_vector_logic_4/Op2]
  connect_bd_net -net SWCLKTCK_0_1 [get_bd_ports SWCLKTCK_0] [get_bd_pins CORTEXM3_AXI_0/SWCLKTCK]
  connect_bd_net -net SWDITMS_0_1 [get_bd_ports SWDITMS_0] [get_bd_pins CORTEXM3_AXI_0/SWDITMS]
  connect_bd_net -net TDI_0_1 [get_bd_ports TDI_0] [get_bd_pins CORTEXM3_AXI_0/TDI]
  connect_bd_net -net acc_clear_1 [get_bd_ports acc_clear] [get_bd_pins lenet5_0/clear_V]
  connect_bd_net -net acc_enable_1 [get_bd_ports acc_enable] [get_bd_pins lenet5_0/enable_V]
  connect_bd_net -net axi_uartlite_0_tx [get_bd_ports tx] [get_bd_pins uartlite/tx]
  connect_bd_net -net binary_0_img_in_TREADY [get_bd_pins binary_0/img_in_TREADY] [get_bd_pins glue_0/tready_o]
  connect_bd_net -net clk_wiz_0_clk_25M [get_bd_pins OV_Sensor_ML_0/CLK_i] [get_bd_pins clk_wiz_0/clk_25M]
  connect_bd_net -net clk_wiz_0_clk_45M [get_bd_pins BTN/s_axi_aclk] [get_bd_pins CORTEXM3_AXI_0/HCLK] [get_bd_pins acc_ctrl/s_axi_aclk] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_bram_ctrl_1/s_axi_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/M03_ACLK] [get_bd_pins axi_interconnect_0/M04_ACLK] [get_bd_pins axi_interconnect_0/M05_ACLK] [get_bd_pins axi_interconnect_0/M07_ACLK] [get_bd_pins axi_interconnect_0/M08_ACLK] [get_bd_pins axi_interconnect_0/M09_ACLK] [get_bd_pins axi_interconnect_0/M10_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_0/S01_ACLK] [get_bd_pins axi_interconnect_0/S02_ACLK] [get_bd_pins axi_protocol_convert_0/aclk] [get_bd_pins axi_vdma_0/m_axi_mm2s_aclk] [get_bd_pins axi_vdma_0/m_axi_s2mm_aclk] [get_bd_pins axi_vdma_0/m_axis_mm2s_aclk] [get_bd_pins axi_vdma_0/s_axi_lite_aclk] [get_bd_pins axi_vdma_0/s_axis_s2mm_aclk] [get_bd_pins binary_0/ap_clk] [get_bd_pins cam_gpio/s_axi_aclk] [get_bd_pins clk_wiz_0/clk_45M] [get_bd_pins cmos_ctrl/s_axi_aclk] [get_bd_pins glue_0/clk] [get_bd_pins led_gpio/s_axi_aclk] [get_bd_pins lenet5_0/ap_clk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins rst_ctrl/s_axi_aclk] [get_bd_pins tft_gpio/s_axi_aclk] [get_bd_pins uartlite/s_axi_aclk] [get_bd_pins v_vid_in_axi4s_0/aclk] [get_bd_pins widen_0/clk]
  connect_bd_net -net clk_wiz_0_clk_ddr_ref [get_bd_pins clk_wiz_0/clk_ddr_ref] [get_bd_pins mig_7series_0/clk_ref_i]
  connect_bd_net -net clk_wiz_0_clk_ddr_sys [get_bd_pins clk_wiz_0/clk_ddr_sys] [get_bd_pins mig_7series_0/sys_clk_i]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins axi_vdma_0/axi_resetn] [get_bd_pins binary_0/ap_rst_n] [get_bd_pins clk_wiz_0/locked] [get_bd_pins glue_0/rstn] [get_bd_pins proc_sys_reset_0/dcm_locked] [get_bd_pins v_vid_in_axi4s_0/aclken] [get_bd_pins v_vid_in_axi4s_0/aresetn] [get_bd_pins v_vid_in_axi4s_0/axis_enable]
  connect_bd_net -net cmos_data_1 [get_bd_ports cmos_data] [get_bd_pins OV_Sensor_ML_0/cmos_data_i]
  connect_bd_net -net cmos_href_1 [get_bd_ports cmos_href] [get_bd_pins OV_Sensor_ML_0/cmos_href_i]
  connect_bd_net -net cmos_pclk_i_0_1 [get_bd_ports cmos_pclk] [get_bd_pins OV_Sensor_ML_0/cmos_pclk_i] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_clk]
  connect_bd_net -net cmos_vsync_1 [get_bd_ports cmos_vsync] [get_bd_pins OV_Sensor_ML_0/cmos_vsync_i]
  connect_bd_net -net enable_0_1 [get_bd_ports bin_enable] [get_bd_pins binary_0/enable]
  connect_bd_net -net ext_reset_in_0_1 [get_bd_ports reset] [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net fifo_rstn_1 [get_bd_ports fifo_rstn] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net glue_0_tdata_o [get_bd_pins binary_0/img_in_TDATA] [get_bd_pins glue_0/tdata_o]
  connect_bd_net -net glue_0_tlast_o [get_bd_pins binary_0/img_in_TLAST] [get_bd_pins glue_0/tlast_o]
  connect_bd_net -net glue_0_tready_i [get_bd_pins glue_0/tready_i] [get_bd_pins v_vid_in_axi4s_0/m_axis_video_tready]
  connect_bd_net -net glue_0_tuser_o [get_bd_pins binary_0/img_in_TUSER] [get_bd_pins glue_0/tuser_o]
  connect_bd_net -net glue_0_tvalid_o [get_bd_pins binary_0/img_in_TVALID] [get_bd_pins glue_0/tvalid_o]
  connect_bd_net -net lenet5_0_result_V [get_bd_pins lenet5_0/result_V] [get_bd_pins widen_0/data_in]
  connect_bd_net -net lenet5_0_result_V_ap_vld [get_bd_pins lenet5_0/result_V_ap_vld] [get_bd_pins widen_0/enable]
  connect_bd_net -net mig_7series_0_ui_clk [get_bd_pins axi_interconnect_0/M06_ACLK] [get_bd_pins mig_7series_0/ui_clk]
  connect_bd_net -net mig_7series_0_ui_clk_sync_rst [get_bd_pins mig_7series_0/ui_clk_sync_rst] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn [get_bd_pins BTN/s_axi_aresetn] [get_bd_pins CORTEXM3_AXI_0/SYSRESETn] [get_bd_pins acc_ctrl/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_1/s_axi_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/M03_ARESETN] [get_bd_pins axi_interconnect_0/M04_ARESETN] [get_bd_pins axi_interconnect_0/M05_ARESETN] [get_bd_pins axi_interconnect_0/M07_ARESETN] [get_bd_pins axi_interconnect_0/M08_ARESETN] [get_bd_pins axi_interconnect_0/M09_ARESETN] [get_bd_pins axi_interconnect_0/M10_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_0/S01_ARESETN] [get_bd_pins axi_interconnect_0/S02_ARESETN] [get_bd_pins axi_protocol_convert_0/aresetn] [get_bd_pins cam_gpio/s_axi_aresetn] [get_bd_pins cmos_ctrl/s_axi_aresetn] [get_bd_pins led_gpio/s_axi_aresetn] [get_bd_pins mig_7series_0/aresetn] [get_bd_pins mig_7series_0/sys_rst] [get_bd_pins proc_sys_reset_0/interconnect_aresetn] [get_bd_pins rst_ctrl/s_axi_aresetn] [get_bd_pins tft_gpio/s_axi_aresetn] [get_bd_pins uartlite/s_axi_aresetn] [get_bd_pins util_vector_logic_4/Op1]
  connect_bd_net -net rx_0_1 [get_bd_ports rx] [get_bd_pins uartlite/rx]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net threshold_V_0_1 [get_bd_ports threshold] [get_bd_pins binary_0/threshold_V]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins util_vector_logic_0/Res] [get_bd_pins v_vid_in_axi4s_0/vid_io_in_reset]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins axi_interconnect_0/M06_ARESETN] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins util_vector_logic_2/Res]
  connect_bd_net -net util_vector_logic_4_Res [get_bd_pins lenet5_0/ap_rst_n] [get_bd_pins util_vector_logic_4/Res] [get_bd_pins widen_0/rst_n]
  connect_bd_net -net v_vid_in_axi4s_0_m_axis_video_tdata [get_bd_pins glue_0/tdata_i] [get_bd_pins v_vid_in_axi4s_0/m_axis_video_tdata]
  connect_bd_net -net v_vid_in_axi4s_0_m_axis_video_tlast [get_bd_pins glue_0/tlast_i] [get_bd_pins v_vid_in_axi4s_0/m_axis_video_tlast]
  connect_bd_net -net v_vid_in_axi4s_0_m_axis_video_tuser [get_bd_pins glue_0/tuser_i] [get_bd_pins v_vid_in_axi4s_0/m_axis_video_tuser]
  connect_bd_net -net v_vid_in_axi4s_0_m_axis_video_tvalid [get_bd_pins glue_0/tvalid_i] [get_bd_pins v_vid_in_axi4s_0/m_axis_video_tvalid]
  connect_bd_net -net widen_0_data_out [get_bd_pins widen_0/data_out] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins CORTEXM3_AXI_0/IRQ] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins CORTEXM3_AXI_0/CFGITCMEN] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins v_vid_in_axi4s_0/vid_field_id] [get_bd_pins v_vid_in_axi4s_0/vid_hblank] [get_bd_pins v_vid_in_axi4s_0/vid_vblank] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins xlconcat_1/In1] [get_bd_pins xlconstant_high2/dout]
  connect_bd_net -net xlconstant_4_dout [get_bd_pins CORTEXM3_AXI_0/nTRST] [get_bd_pins xlconstant_4/dout]
  connect_bd_net -net xlconstant_7_dout [get_bd_pins xlconcat_1/In0] [get_bd_pins xlconstant_7/dout]
  connect_bd_net -net xlconstant_8_dout [get_bd_pins CORTEXM3_AXI_0/DBGRESETn] [get_bd_pins xlconstant_8/dout]

  # Create address segments
  create_bd_addr_seg -range 0x00001000 -offset 0x40020000 [get_bd_addr_spaces CORTEXM3_AXI_0/CM3_SYS_AXI3] [get_bd_addr_segs BTN/S_AXI/Reg] SEG_BTN_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40040000 [get_bd_addr_spaces CORTEXM3_AXI_0/CM3_SYS_AXI3] [get_bd_addr_segs acc_ctrl/S_AXI/Reg] SEG_acc_ctrl_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x60000000 [get_bd_addr_spaces CORTEXM3_AXI_0/CM3_SYS_AXI3] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00040000 -offset 0x00000000 [get_bd_addr_spaces CORTEXM3_AXI_0/CM3_CODE_AXI3] [get_bd_addr_segs axi_bram_ctrl_1/S_AXI/Mem0] SEG_axi_bram_ctrl_1_Mem0
  create_bd_addr_seg -range 0x00001000 -offset 0x40110000 [get_bd_addr_spaces CORTEXM3_AXI_0/CM3_SYS_AXI3] [get_bd_addr_segs led_gpio/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x40120000 [get_bd_addr_spaces CORTEXM3_AXI_0/CM3_SYS_AXI3] [get_bd_addr_segs tft_gpio/S_AXI/Reg] SEG_axi_gpio_1_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x40000000 [get_bd_addr_spaces CORTEXM3_AXI_0/CM3_SYS_AXI3] [get_bd_addr_segs cam_gpio/S_AXI/Reg] SEG_axi_gpio_2_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x40140000 [get_bd_addr_spaces CORTEXM3_AXI_0/CM3_SYS_AXI3] [get_bd_addr_segs uartlite/S_AXI/Reg] SEG_axi_uartlite_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40400000 [get_bd_addr_spaces CORTEXM3_AXI_0/CM3_SYS_AXI3] [get_bd_addr_segs axi_vdma_0/S_AXI_LITE/Reg] SEG_axi_vdma_0_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x40010000 [get_bd_addr_spaces CORTEXM3_AXI_0/CM3_SYS_AXI3] [get_bd_addr_segs cmos_ctrl/S_AXI/Reg] SEG_cmos_ctrl_Reg
  create_bd_addr_seg -range 0x08000000 -offset 0x80000000 [get_bd_addr_spaces CORTEXM3_AXI_0/CM3_SYS_AXI3] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x00010000 -offset 0x40050000 [get_bd_addr_spaces CORTEXM3_AXI_0/CM3_SYS_AXI3] [get_bd_addr_segs rst_ctrl/S_AXI/Reg] SEG_rst_ctrl_Reg
  create_bd_addr_seg -range 0x08000000 -offset 0x80000000 [get_bd_addr_spaces axi_vdma_0/Data_MM2S] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x08000000 -offset 0x80000000 [get_bd_addr_spaces axi_vdma_0/Data_S2MM] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr

  # Exclude Address Segments
  create_bd_addr_seg -range 0x00010000 -offset 0x40400000 [get_bd_addr_spaces axi_vdma_0/Data_MM2S] [get_bd_addr_segs axi_vdma_0/S_AXI_LITE/Reg] SEG_axi_vdma_0_Reg
  exclude_bd_addr_seg [get_bd_addr_segs axi_vdma_0/Data_MM2S/SEG_axi_vdma_0_Reg]

  create_bd_addr_seg -range 0x00010000 -offset 0x40400000 [get_bd_addr_spaces axi_vdma_0/Data_S2MM] [get_bd_addr_segs axi_vdma_0/S_AXI_LITE/Reg] SEG_axi_vdma_0_Reg
  exclude_bd_addr_seg [get_bd_addr_segs axi_vdma_0/Data_S2MM/SEG_axi_vdma_0_Reg]



  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


