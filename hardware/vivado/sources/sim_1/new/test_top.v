//`timescale 10ns/10ns
//module sim_top_wj(

//    );
//reg CLK;
//reg RESET;
//initial
//begin
//CLK=1'b0;
//RESET=1'b1;
//#2000
//RESET=1'b0;
//#20000
//RESET=1'b1;
//end    
//always
//    CLK = #5 ~CLK;
    
//top top_u(
//         .reset(RESET),
//         .sys_clock(CLK),
//         .led_tri_o(),
//        .TDO(),
//        .TCK(),
//        .TDI(),
//        .TMS(),
//        cmos cam
//        .cmos_data(),
//        .cmos_href(),
//        .cmos_pclk(),
//        .cmos_vsync(),
//        .cmos_xclk(),
//        .cmos_ctrl(),
//        vga
//        .vga_r(),
//        .vga_g(),
//        .vga_b(),
//        .vga_hs(),
//        .vga_vs(),
//        ddr
//        .ddr2_addr(),
//        .ddr2_ba(),
//        .ddr2_cas_n(),
//        .ddr2_ck_n(),
//        .ddr2_ck_p(),
//        .ddr2_cke(),
//        .ddr2_cs_n(),
//        .ddr2_dm(),
//        .ddr2_dq(),
//        .ddr2_dqs_n(),
//        .ddr2_dqs_p(),
//        .ddr2_odt(),
//        .ddr2_ras_n(),
//        .ddr2_we_n(),
//        .rx(),
//        .tx()
//);
    
//endmodule

`timescale 100ps / 10ps
module tb ();

reg CLK;
reg RESET;
initial
begin
CLK=1'b0;
RESET=1'b1;
#20
RESET=1'b0;
#200
RESET=1'b1;
end    
always
    CLK = #5 ~CLK;
reg clk_25M;
always #200 clk_25M = ~clk_25M;
parameter [11:0] h_size = 12'd320;
parameter [11:0] v_size = 12'd240;
parameter [11:0] f_size = 12'd10;
parameter h_blank_size = 12'd0;
parameter v_blank_size = 12'd0;
parameter v_hts_size = 12'd0;
reg [11:0] h_cnt;
reg [11:0] v_cnt;
reg [11:0] f_cnt;

reg CAM_HREF;
reg CAM_VSYNC;
reg [7:0] CAM_D;

initial
begin
    $display($time, " << Starting the Simulation >>");
    CAM_HREF = 1'b0;
    CAM_VSYNC = 1'b0;
    CAM_D = 8'd0;

	clk_25M = 1'b0;
    h_cnt = 12'd0;
    v_cnt = 12'd0;
    f_cnt = 12'd0;
    #1000

    $display($time, " << write >>");
    f_cnt = 0;
    while(f_cnt <= f_size - 1) begin	//start read after two rows
        v_cnt = 0;
        while(v_cnt <= v_size + v_blank_size + v_hts_size - 1) begin    //start read after two rows
            h_cnt = 0;
            while(h_cnt <= h_size + h_blank_size - 1) begin    //start read after two rows
                #100
                if((h_cnt <= h_size - 1) && (v_cnt <= v_size - 1)) begin
                    CAM_HREF = 1'b1;
                end
                else begin
                    CAM_HREF = 1'b0;
                end
                h_cnt = h_cnt + 1;
                CAM_D = CAM_D + 8'd1;
            end
            if(v_cnt <= v_size+ v_blank_size - 1) begin
                CAM_VSYNC = 1'b0;
            end
            else if(v_cnt <= v_size+ v_blank_size + v_hts_size- 4) begin
                CAM_VSYNC = 1'b1;
            end
            else begin
                CAM_VSYNC = 1'b0;
            end
            v_cnt = v_cnt + 1;
        end
        f_cnt = f_cnt + 1;
    end
    #1000
    $display($time, " << read >>");
end


wire CAM_XVCLK;


top u_top(
   .reset(RESET),
   .sys_clock(CLK),
   .led_tri_o(),
   .TDO(),
   .TCK(),
   .TDI(),
   .TMS(),
//cmos cam
   .cmos_data(CAM_D),
   .cmos_href(CAM_HREF),
   .cmos_pclk(clk_25M),
   .cmos_vsync(CAM_VSYNC),
   .cmos_xclk(CAM_XVCLK),
    .SCL(),
    .SDA(),
    .cmos_ctrl_tri_o(),
//vga
    .vga_r(),
    .vga_g(),
    .vga_b(),
    .vga_hs(),
    .vga_vs(),
//ddr
 .ddr2_addr(),
 .ddr2_ba(),
 .ddr2_cas_n(),
 .ddr2_ck_n(),
 .ddr2_ck_p(),
 .ddr2_cke(),
 .ddr2_cs_n(),
 .ddr2_dm(),
 .ddr2_dq(),
 .ddr2_dqs_n(),
 .ddr2_dqs_p(),
 .ddr2_odt(),
 .ddr2_ras_n(),
 .ddr2_we_n(),
//uart
 .rx(),
 .tx(),
//TFT
 .TFT_tri_o()
    );

endmodule







