-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:binary:1.0
-- IP Revision: 1907222157

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY run_cam_lcd_binary_0_0 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    img_in_TVALID : IN STD_LOGIC;
    img_in_TREADY : OUT STD_LOGIC;
    img_in_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    img_in_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    img_in_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    img_in_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    img_out_TVALID : OUT STD_LOGIC;
    img_out_TREADY : IN STD_LOGIC;
    img_out_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    img_out_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    img_out_TKEEP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    img_out_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    threshold_V : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    enable : IN STD_LOGIC
  );
END run_cam_lcd_binary_0_0;

ARCHITECTURE run_cam_lcd_binary_0_0_arch OF run_cam_lcd_binary_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF run_cam_lcd_binary_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT binary IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      img_in_TVALID : IN STD_LOGIC;
      img_in_TREADY : OUT STD_LOGIC;
      img_in_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      img_in_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      img_in_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      img_in_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      img_out_TVALID : OUT STD_LOGIC;
      img_out_TREADY : IN STD_LOGIC;
      img_out_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      img_out_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      img_out_TKEEP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      img_out_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      threshold_V : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      enable : IN STD_LOGIC
    );
  END COMPONENT binary;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF run_cam_lcd_binary_0_0_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF enable: SIGNAL IS "XIL_INTERFACENAME enable, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF enable: SIGNAL IS "xilinx.com:signal:data:1.0 enable DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF threshold_V: SIGNAL IS "XIL_INTERFACENAME threshold_V, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} va" & 
"lue false}}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF threshold_V: SIGNAL IS "xilinx.com:signal:data:1.0 threshold_V DATA";
  ATTRIBUTE X_INTERFACE_INFO OF img_out_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 img_out TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF img_out_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 img_out TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF img_out_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 img_out TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF img_out_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 img_out TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF img_out_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 img_out TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF img_out_TVALID: SIGNAL IS "XIL_INTERFACENAME img_out, TDATA_NUM_BYTES 4, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} " & 
"format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwid" & 
"th {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  ATTRIBUTE X_INTERFACE_INFO OF img_out_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 img_out TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF img_in_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 img_in TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF img_in_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 img_in TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF img_in_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 img_in TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF img_in_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 img_in TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF img_in_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 img_in TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF img_in_TVALID: SIGNAL IS "XIL_INTERFACENAME img_in, TDATA_NUM_BYTES 4, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, " & 
"HAS_TLAST 1, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  ATTRIBUTE X_INTERFACE_INFO OF img_in_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 img_in TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF img_in:img_out, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 40000000, PHASE 0.0, CLK_DOMAIN /c" & 
"lk_wiz_0_clk_out1";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
BEGIN
  U0 : binary
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      img_in_TVALID => img_in_TVALID,
      img_in_TREADY => img_in_TREADY,
      img_in_TDATA => img_in_TDATA,
      img_in_TUSER => img_in_TUSER,
      img_in_TKEEP => img_in_TKEEP,
      img_in_TLAST => img_in_TLAST,
      img_out_TVALID => img_out_TVALID,
      img_out_TREADY => img_out_TREADY,
      img_out_TDATA => img_out_TDATA,
      img_out_TUSER => img_out_TUSER,
      img_out_TKEEP => img_out_TKEEP,
      img_out_TLAST => img_out_TLAST,
      threshold_V => threshold_V,
      enable => enable
    );
END run_cam_lcd_binary_0_0_arch;
