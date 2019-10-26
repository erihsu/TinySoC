//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
//Date        : Tue Aug 13 14:07:58 2019
//Host        : xuzhenyu-pc running 64-bit Ubuntu 18.04.3 LTS
//Command     : generate_target run_cam_lcd_wrapper.bd
//Design      : run_cam_lcd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module run_cam_lcd_wrapper
   (BTN_tri_i,
    JTAGNSW_0,
    SCL_tri_o,
    SDA_tri_io,
    SWCLKTCK_0,
    SWDITMS_0,
    SWDOEN_0,
    SWDO_0,
    TDI_0,
    TDO_0,
    TFT_tri_o,
    acc_clear,
    acc_ctrl_tri_o,
    acc_enable,
    acc_rstn,
    bin_enable,
    cmos_ctrl_tri_o,
    cmos_data,
    cmos_href,
    cmos_pclk,
    cmos_vsync,
    cmos_xclk,
    ddr2_addr,
    ddr2_ba,
    ddr2_cas_n,
    ddr2_ck_n,
    ddr2_ck_p,
    ddr2_cke,
    ddr2_cs_n,
    ddr2_dm,
    ddr2_dq,
    ddr2_dqs_n,
    ddr2_dqs_p,
    ddr2_odt,
    ddr2_ras_n,
    ddr2_we_n,
    fifo_rstn,
    led_tri_o,
    nTDOEN_0,
    reset,
    rst_ctrl_tri_o,
    rx,
    sys_clock,
    threshold,
    tx);
  input [4:0]BTN_tri_i;
  output JTAGNSW_0;
  output [0:0]SCL_tri_o;
  inout [0:0]SDA_tri_io;
  input SWCLKTCK_0;
  input SWDITMS_0;
  output SWDOEN_0;
  output SWDO_0;
  input TDI_0;
  output TDO_0;
  output [3:0]TFT_tri_o;
  input [0:0]acc_clear;
  output [1:0]acc_ctrl_tri_o;
  input [0:0]acc_enable;
  input [0:0]acc_rstn;
  input bin_enable;
  output [1:0]cmos_ctrl_tri_o;
  input [7:0]cmos_data;
  input cmos_href;
  input cmos_pclk;
  input cmos_vsync;
  output cmos_xclk;
  output [12:0]ddr2_addr;
  output [2:0]ddr2_ba;
  output ddr2_cas_n;
  output [0:0]ddr2_ck_n;
  output [0:0]ddr2_ck_p;
  output [0:0]ddr2_cke;
  output [0:0]ddr2_cs_n;
  output [1:0]ddr2_dm;
  inout [15:0]ddr2_dq;
  inout [1:0]ddr2_dqs_n;
  inout [1:0]ddr2_dqs_p;
  output [0:0]ddr2_odt;
  output ddr2_ras_n;
  output ddr2_we_n;
  input [0:0]fifo_rstn;
  output [4:0]led_tri_o;
  output nTDOEN_0;
  input reset;
  output [2:0]rst_ctrl_tri_o;
  input rx;
  input sys_clock;
  input [7:0]threshold;
  output tx;

  wire [4:0]BTN_tri_i;
  wire JTAGNSW_0;
  wire [0:0]SCL_tri_o;
  wire [0:0]SDA_tri_i_0;
  wire [0:0]SDA_tri_io_0;
  wire [0:0]SDA_tri_o_0;
  wire [0:0]SDA_tri_t_0;
  wire SWCLKTCK_0;
  wire SWDITMS_0;
  wire SWDOEN_0;
  wire SWDO_0;
  wire TDI_0;
  wire TDO_0;
  wire [3:0]TFT_tri_o;
  wire [0:0]acc_clear;
  wire [1:0]acc_ctrl_tri_o;
  wire [0:0]acc_enable;
  wire [0:0]acc_rstn;
  wire bin_enable;
  wire [1:0]cmos_ctrl_tri_o;
  wire [7:0]cmos_data;
  wire cmos_href;
  wire cmos_pclk;
  wire cmos_vsync;
  wire cmos_xclk;
  wire [12:0]ddr2_addr;
  wire [2:0]ddr2_ba;
  wire ddr2_cas_n;
  wire [0:0]ddr2_ck_n;
  wire [0:0]ddr2_ck_p;
  wire [0:0]ddr2_cke;
  wire [0:0]ddr2_cs_n;
  wire [1:0]ddr2_dm;
  wire [15:0]ddr2_dq;
  wire [1:0]ddr2_dqs_n;
  wire [1:0]ddr2_dqs_p;
  wire [0:0]ddr2_odt;
  wire ddr2_ras_n;
  wire ddr2_we_n;
  wire [0:0]fifo_rstn;
  wire [4:0]led_tri_o;
  wire nTDOEN_0;
  wire reset;
  wire [2:0]rst_ctrl_tri_o;
  wire rx;
  wire sys_clock;
  wire [7:0]threshold;
  wire tx;

  IOBUF SDA_tri_iobuf_0
       (.I(SDA_tri_o_0),
        .IO(SDA_tri_io[0]),
        .O(SDA_tri_i_0),
        .T(SDA_tri_t_0));
  run_cam_lcd run_cam_lcd_i
       (.BTN_tri_i(BTN_tri_i),
        .JTAGNSW_0(JTAGNSW_0),
        .SCL_tri_o(SCL_tri_o),
        .SDA_tri_i(SDA_tri_i_0),
        .SDA_tri_o(SDA_tri_o_0),
        .SDA_tri_t(SDA_tri_t_0),
        .SWCLKTCK_0(SWCLKTCK_0),
        .SWDITMS_0(SWDITMS_0),
        .SWDOEN_0(SWDOEN_0),
        .SWDO_0(SWDO_0),
        .TDI_0(TDI_0),
        .TDO_0(TDO_0),
        .TFT_tri_o(TFT_tri_o),
        .acc_clear(acc_clear),
        .acc_ctrl_tri_o(acc_ctrl_tri_o),
        .acc_enable(acc_enable),
        .acc_rstn(acc_rstn),
        .bin_enable(bin_enable),
        .cmos_ctrl_tri_o(cmos_ctrl_tri_o),
        .cmos_data(cmos_data),
        .cmos_href(cmos_href),
        .cmos_pclk(cmos_pclk),
        .cmos_vsync(cmos_vsync),
        .cmos_xclk(cmos_xclk),
        .ddr2_addr(ddr2_addr),
        .ddr2_ba(ddr2_ba),
        .ddr2_cas_n(ddr2_cas_n),
        .ddr2_ck_n(ddr2_ck_n),
        .ddr2_ck_p(ddr2_ck_p),
        .ddr2_cke(ddr2_cke),
        .ddr2_cs_n(ddr2_cs_n),
        .ddr2_dm(ddr2_dm),
        .ddr2_dq(ddr2_dq),
        .ddr2_dqs_n(ddr2_dqs_n),
        .ddr2_dqs_p(ddr2_dqs_p),
        .ddr2_odt(ddr2_odt),
        .ddr2_ras_n(ddr2_ras_n),
        .ddr2_we_n(ddr2_we_n),
        .fifo_rstn(fifo_rstn),
        .led_tri_o(led_tri_o),
        .nTDOEN_0(nTDOEN_0),
        .reset(reset),
        .rst_ctrl_tri_o(rst_ctrl_tri_o),
        .rx(rx),
        .sys_clock(sys_clock),
        .threshold(threshold),
        .tx(tx));
endmodule
