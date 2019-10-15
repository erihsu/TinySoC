module top(
 input reset,
 input sys_clock,
 output[4:0] led_tri_o,
output TDO,
input TCK,
input TDI,
inout TMS,
//cmos cam
input [7:0] cmos_data,
input cmos_href,
input cmos_pclk,
input cmos_vsync,
output cmos_xclk,
output SCL,
inout SDA,
output [1:0] cmos_ctrl_tri_o,

//ddr
output [12:0]ddr2_addr,
output [2:0]ddr2_ba,
output ddr2_cas_n,
output [0:0]ddr2_ck_n,
output [0:0]ddr2_ck_p,
output [0:0]ddr2_cke,
output [0:0]ddr2_cs_n,
output [1:0]ddr2_dm,
inout [15:0]ddr2_dq,
inout [1:0]ddr2_dqs_n,
inout [1:0]ddr2_dqs_p,
output [0:0]ddr2_odt,
output ddr2_ras_n,
output ddr2_we_n,
//uart
input rx,
output tx,
//TFT
output [3:0]TFT_tri_o,
// leds for character
//output [9:0] char_out,
//bottom
input [4:0] BTN,
input [7:0] threshold,
//
input bin_enable
//input ex_enable
    );

wire [2:0] soft_rst;
wire [1:0] acc_ctrl;
//      wire [7:0]cmos_data;
//      wire cmos_href;
//      wire cmos_pclk;
//      wire cmos_vsync;
//      wire cmos_xclk;
//      wire [12:0]ddr2_addr;
//      wire [2:0]ddr2_ba;
//      wire ddr2_cas_n;
//      wire [0:0]ddr2_ck_n;
//      wire [0:0]ddr2_ck_p;
//      wire [0:0]ddr2_cke;
//      wire [0:0]ddr2_cs_n;
//      wire [1:0]ddr2_dm;
//      wire [15:0]ddr2_dq;
//      wire [1:0]ddr2_dqs_n;
//      wire [1:0]ddr2_dqs_p;
//      wire [0:0]ddr2_odt;
//      wire ddr2_ras_n;
//      wire ddr2_we_n;
      wire [23:0]vga_data;
//      wire vga_hs;
//      wire vga_vs;
      
      wire SWCLKTCK_0;
       wire SWDITMS_0;
       wire TDI_0;
       wire  TDO_0;
          wire          dbg_tdo;                    // SWV / JTAG TDO
         wire          dbg_tdo_nen;                // SWV / JTAG TDO tristate enable (active low)
         wire          dbg_swdo;                   // SWD I/O 3-state output
         wire          dbg_swdo_en;                // SWD I/O 3-state enable
         wire          dbg_jtag_nsw;               // SWD in JTAG state (HIGH)
         wire          dbg_swo;                    // Serial wire viewer/output
        wire          tdo_enable     = !dbg_tdo_nen | !dbg_jtag_nsw;
         wire          tdo_tms        = dbg_jtag_nsw         ? dbg_tdo    : 1'bz;//�Ҳ����ڶ����ź�
         assign        TMS            = dbg_swdo_en          ? dbg_swdo   : 1'bz;
         assign        TDO            = tdo_enable           ? tdo_tms    : 1'bz;
   
   //top
 run_cam_lcd_wrapper U1
       ( .BTN_tri_i(BTN),
         .JTAGNSW_0(dbg_jtag_nsw),
         .SCL_tri_o(SCL),
         .SDA_tri_io(SDA),
          .SWCLKTCK_0(TCK),
          .SWDITMS_0(TMS),
          .SWDOEN_0(dbg_swdo_en),
          .SWDO_0(dbg_swdo),
          .TDI_0(TDI),
          .TDO_0(dbg_tdo),
          .TFT_tri_o(TFT_tri_o),
          .acc_clear(acc_ctrl[1]),
          .acc_ctrl_tri_o(acc_ctrl),
          .acc_enable(acc_ctrl[0]),
          .acc_rstn(soft_rst[2]),
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
          //.dma_rstn(soft_rst[1]),
          //.ex_enable(ex_enable),
          .fifo_rstn(soft_rst[0]),
          .led_tri_o(led_tri_o),
          .nTDOEN_0(dbg_tdo_nen),
          .reset(reset),
          .rst_ctrl_tri_o(soft_rst),
          .rx(rx),
          .sys_clock(sys_clock),
          .threshold(threshold),
          .tx(tx));
   endmodule
   
  