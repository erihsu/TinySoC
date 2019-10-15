set_property SEVERITY {Warning} [get_drc_checks NSTD-1]
set_property SEVERITY {Warning} [get_drc_checks UCIO-1]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cmos_pclk_IBUF]

set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports sys_clock];    #IO_L12P_T1_MRCC_35 Sch=clk100mhz
create_clock -period 10.00 -name sys_clk_pin -waveform {0 5} -add [get_ports sys_clock]

set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports reset];  #IO_L3P_T0_DQS_AD1P_15 Sch=cpu_resetn



################################################## LEDs


set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports led_tri_o[0]]; #IO_L18P_T2_A24_15 Sch=led[0]
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports led_tri_o[1]]; #IO_L18P_T2_A24_15 Sch=led[1]
set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports led_tri_o[2]]; #IO_L18P_T2_A24_15 Sch=led[2]
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports led_tri_o[3]]; #IO_L8P_T1_D11_14 Sch=led[3]
set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports led_tri_o[4]]; #IO_L7P_T1_D09_14 Sch=led[4]

################################################# LEDs for characters results
#set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { LED[5] }]; #IO_L18N_T2_A11_D27_14 Sch=led[5]
set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { char_out[0] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { char_out[1] }]; #IO_L18P_T2_A12_D28_14 Sch=led[7]
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { char_out[2] }]; #IO_L16N_T2_A15_D31_14 Sch=led[8]
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { char_out[3] }]; #IO_L14N_T2_SRCC_14 Sch=led[9]
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { char_out[4] }]; #IO_L22P_T3_A05_D21_14 Sch=led[10]
set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { char_out[5] }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=led[11]
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { char_out[6] }]; #IO_L16P_T2_CSI_B_14 Sch=led[12]
set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { char_out[7] }]; #IO_L22N_T3_A04_D20_14 Sch=led[13]
set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { char_out[8] }]; #IO_L20N_T3_A07_D23_14 Sch=led[14]
set_property -dict { PACKAGE_PIN V11   IOSTANDARD LVCMOS33 } [get_ports { char_out[9] }]; #IO_L21N_T3_DQS_A06_D22_14 Sch=led[15]

#set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { LED16_B }]; #IO_L5P_T0_D06_14 Sch=led16_b
#set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { LED16_G }]; #IO_L10P_T1_D14_14 Sch=led16_g
#set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { LED16_R }]; #IO_L11P_T1_SRCC_14 Sch=led16_r
#set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { LED17_B }]; #IO_L15N_T2_DQS_ADV_B_15 Sch=led17_b
#set_property -dict { PACKAGE_PIN R11   IOSTANDARD LVCMOS33 } [get_ports { LED17_G }]; #IO_0_14 Sch=led17_g
#set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { LED17_R }]; #IO_L11N_T1_SRCC_14 Sch=led17_r
################################################## ov5640
#Pmod Header JA

set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { SDA }]; #IO_L20N_T3_A19_15 Sch=ja[1] sda
set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { cmos_ctrl_tri_o[0] }]; #IO_L21N_T3_DQS_A18_15 Sch=ja[2]
set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { cmos_href    }]; #IO_L21P_T3_DQS_15 Sch=ja[3]
set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { cmos_xclk    }]; #IO_L18N_T2_A23_15 Sch=ja[4]
set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { SCL }]; #IO_L16N_T2_A27_15 Sch=ja[7] 
set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports {   cmos_vsync    }]; #IO_L16P_T2_A28_15 Sch=ja[8]
set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS33 } [get_ports { cmos_ctrl_tri_o[1] }]; #IO_L22N_T3_A16_15 Sch=ja[9]
set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { cmos_data[7] }]; #IO_L22P_T3_A17_15 Sch=ja[10]


#Pmod Header JB

set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33 } [get_ports { cmos_data[5] }]; #IO_L1P_T0_AD0P_15 Sch=jb[1]
set_property -dict { PACKAGE_PIN F16   IOSTANDARD LVCMOS33 } [get_ports { cmos_data[4] }]; #IO_L14N_T2_SRCC_15 Sch=jb[2]
set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { cmos_data[3] }]; #IO_L13N_T2_MRCC_15 Sch=jb[3]
set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { cmos_data[2] }]; #IO_L15P_T2_DQS_15 Sch=jb[4]
set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { cmos_data[6] }]; #IO_L11N_T1_SRCC_15 Sch=jb[7]
set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { cmos_pclk    }]; #IO_L5P_T0_AD9P_15 Sch=jb[8]
set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { cmos_data[0] }]; #IO_0_15 Sch=jb[9]
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { cmos_data[1] }]; #IO_L13P_T2_MRCC_15 Sch=jb[10]

#TFT
#Pmod Header JC

#TFT
#Pmod Header JC

#set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { TCK }]; #IO_L23N_T3_35 Sch=jc[1]
#set_property -dict { PACKAGE_PIN F6    IOSTANDARD LVCMOS33 } [get_ports { TMS }]; #IO_L19N_T3_VREF_35 Sch=jc[2]
#set_property -dict { PACKAGE_PIN J2    IOSTANDARD LVCMOS33 } [get_ports { TDI }]; #IO_L22N_T3_35 Sch=jc[3]
#set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports { TDO }]; #IO_L19P_T3_35 Sch=jc[4]
#set_property -dict { PACKAGE_PIN E7    IOSTANDARD LVCMOS33 } [get_ports { TFT_tri_o[0] }]; #IO_L6P_T0_35 Sch=jc[7]
#set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { TFT_tri_o[1] }]; #IO_L22P_T3_35 Sch=jc[8]
#set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { TFT_tri_o[2] }]; #IO_L21P_T3_DQS_35 Sch=jc[9]
#set_property -dict { PACKAGE_PIN E6    IOSTANDARD LVCMOS33 } [get_ports { TFT_tri_o[3] }]; #IO_L5P_T0_AD13P_35 Sch=jc[10]
set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { TFT_tri_o[0] }]; #IO_L23N_T3_35 Sch=jc[1]
set_property -dict { PACKAGE_PIN F6    IOSTANDARD LVCMOS33 } [get_ports { TFT_tri_o[1] }]; #IO_L19N_T3_VREF_35 Sch=jc[2]
set_property -dict { PACKAGE_PIN J2    IOSTANDARD LVCMOS33 } [get_ports { TFT_tri_o[2] }]; #IO_L22N_T3_35 Sch=jc[3]
set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports { TFT_tri_o[3] }]; #IO_L19P_T3_35 Sch=jc[4]
set_property -dict { PACKAGE_PIN E7    IOSTANDARD LVCMOS33 } [get_ports { TCK }]; #IO_L6P_T0_35 Sch=jc[7]
set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { TMS }]; #IO_L22P_T3_35 Sch=jc[8]
set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { TDI }]; #IO_L21P_T3_DQS_35 Sch=jc[9]
set_property -dict { PACKAGE_PIN E6    IOSTANDARD LVCMOS33 } [get_ports { TDO }]; #IO_L5P_T0_AD13P_35 Sch=jc[10]

create_clock -period 20.00 -name dbg_tck_pin -waveform {0 10} -add [get_ports TCK]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets TCK]
#ddr

set_property -dict { PACKAGE_PIN M4   IOSTANDARD SSTL18_II } [get_ports ddr2_addr[0]]; 
set_property -dict { PACKAGE_PIN P4   IOSTANDARD SSTL18_II } [get_ports ddr2_addr[1]];
set_property -dict { PACKAGE_PIN M6   IOSTANDARD SSTL18_II } [get_ports ddr2_addr[2]];
set_property -dict { PACKAGE_PIN T1   IOSTANDARD SSTL18_II } [get_ports ddr2_addr[3]];
set_property -dict { PACKAGE_PIN L3   IOSTANDARD SSTL18_II } [get_ports ddr2_addr[4]];
set_property -dict { PACKAGE_PIN P5   IOSTANDARD SSTL18_II } [get_ports ddr2_addr[5]];
set_property -dict { PACKAGE_PIN M2   IOSTANDARD SSTL18_II } [get_ports ddr2_addr[6]];
set_property -dict { PACKAGE_PIN N1   IOSTANDARD SSTL18_II } [get_ports ddr2_addr[7]];
set_property -dict { PACKAGE_PIN L4   IOSTANDARD SSTL18_II } [get_ports ddr2_addr[8]];
set_property -dict { PACKAGE_PIN N5   IOSTANDARD SSTL18_II } [get_ports ddr2_addr[9]];
set_property -dict { PACKAGE_PIN R2   IOSTANDARD SSTL18_II } [get_ports ddr2_addr[10]];
set_property -dict { PACKAGE_PIN K5   IOSTANDARD SSTL18_II } [get_ports ddr2_addr[11]];
set_property -dict { PACKAGE_PIN N6   IOSTANDARD SSTL18_II } [get_ports ddr2_addr[12]];

set_property -dict { PACKAGE_PIN P2   IOSTANDARD SSTL18_II } [get_ports ddr2_ba[0]];
set_property -dict { PACKAGE_PIN P3   IOSTANDARD SSTL18_II } [get_ports ddr2_ba[1]];
set_property -dict { PACKAGE_PIN R1   IOSTANDARD SSTL18_II } [get_ports ddr2_ba[2]];

set_property -dict { PACKAGE_PIN L1   IOSTANDARD SSTL18_II } [get_ports ddr2_cas_n];

set_property -dict { PACKAGE_PIN L5   IOSTANDARD DIFF_SSTL18_II } [get_ports ddr2_ck_n];

set_property -dict { PACKAGE_PIN L6   IOSTANDARD DIFF_SSTL18_II } [get_ports ddr2_ck_p];

set_property -dict { PACKAGE_PIN M1   IOSTANDARD SSTL18_II } [get_ports ddr2_cke];

set_property -dict { PACKAGE_PIN K6   IOSTANDARD SSTL18_II } [get_ports ddr2_cs_n];

set_property -dict { PACKAGE_PIN T6   IOSTANDARD SSTL18_II } [get_ports ddr2_dm[0]];
set_property -dict { PACKAGE_PIN U1   IOSTANDARD SSTL18_II } [get_ports ddr2_dm[1]];

set_property -dict { PACKAGE_PIN R7   IOSTANDARD SSTL18_II } [get_ports ddr2_dq[0]]; #IO_L18P_T2_A24_15 Sch=led[0]
set_property -dict { PACKAGE_PIN V6   IOSTANDARD SSTL18_II } [get_ports ddr2_dq[1]];
set_property -dict { PACKAGE_PIN R8   IOSTANDARD SSTL18_II } [get_ports ddr2_dq[2]];
set_property -dict { PACKAGE_PIN U7   IOSTANDARD SSTL18_II } [get_ports ddr2_dq[3]];
set_property -dict { PACKAGE_PIN V7   IOSTANDARD SSTL18_II } [get_ports ddr2_dq[4]];
set_property -dict { PACKAGE_PIN R6   IOSTANDARD SSTL18_II } [get_ports ddr2_dq[5]];
set_property -dict { PACKAGE_PIN U6   IOSTANDARD SSTL18_II } [get_ports ddr2_dq[6]];
set_property -dict { PACKAGE_PIN R5   IOSTANDARD SSTL18_II } [get_ports ddr2_dq[7]];
set_property -dict { PACKAGE_PIN T5   IOSTANDARD SSTL18_II } [get_ports ddr2_dq[8]];
set_property -dict { PACKAGE_PIN U3   IOSTANDARD SSTL18_II } [get_ports ddr2_dq[9]];
set_property -dict { PACKAGE_PIN V5   IOSTANDARD SSTL18_II } [get_ports ddr2_dq[10]];
set_property -dict { PACKAGE_PIN U4   IOSTANDARD SSTL18_II } [get_ports ddr2_dq[11]];
set_property -dict { PACKAGE_PIN V4   IOSTANDARD SSTL18_II } [get_ports ddr2_dq[12]];
set_property -dict { PACKAGE_PIN T4   IOSTANDARD SSTL18_II } [get_ports ddr2_dq[13]];
set_property -dict { PACKAGE_PIN V1   IOSTANDARD SSTL18_II } [get_ports ddr2_dq[14]];
set_property -dict { PACKAGE_PIN T3   IOSTANDARD SSTL18_II } [get_ports ddr2_dq[15]];

set_property -dict { PACKAGE_PIN V9   IOSTANDARD DIFF_SSTL18_II } [get_ports ddr2_dqs_n[0]];
set_property -dict { PACKAGE_PIN V2   IOSTANDARD DIFF_SSTL18_II } [get_ports ddr2_dqs_n[1]];
set_property -dict { PACKAGE_PIN U9   IOSTANDARD DIFF_SSTL18_II } [get_ports ddr2_dqs_p[0]];
set_property -dict { PACKAGE_PIN U2   IOSTANDARD DIFF_SSTL18_II } [get_ports ddr2_dqs_p[1]];

set_property -dict { PACKAGE_PIN M3   IOSTANDARD SSTL18_II } [get_ports ddr2_odt];
set_property -dict { PACKAGE_PIN N4   IOSTANDARD SSTL18_II } [get_ports ddr2_ras_n];
set_property -dict { PACKAGE_PIN N2   IOSTANDARD SSTL18_II } [get_ports ddr2_we_n];


##VGA Connector

#set_property -dict { PACKAGE_PIN A3    IOSTANDARD LVCMOS33 } [get_ports { vga_r[0] }]; #IO_L8N_T1_AD14N_35 Sch=vga_r[0]
#set_property -dict { PACKAGE_PIN B4    IOSTANDARD LVCMOS33 } [get_ports { vga_r[1] }]; #IO_L7N_T1_AD6N_35 Sch=vga_r[1]
#set_property -dict { PACKAGE_PIN C5    IOSTANDARD LVCMOS33 } [get_ports { vga_r[2] }]; #IO_L1N_T0_AD4N_35 Sch=vga_r[2]
#set_property -dict { PACKAGE_PIN A4    IOSTANDARD LVCMOS33 } [get_ports { vga_r[3] }]; #IO_L8P_T1_AD14P_35 Sch=vga_r[3]

#set_property -dict { PACKAGE_PIN C6    IOSTANDARD LVCMOS33 } [get_ports { vga_g[0] }]; #IO_L1P_T0_AD4P_35 Sch=vga_g[0]
#set_property -dict { PACKAGE_PIN A5    IOSTANDARD LVCMOS33 } [get_ports { vga_g[1] }]; #IO_L3N_T0_DQS_AD5N_35 Sch=vga_g[1]
#set_property -dict { PACKAGE_PIN B6    IOSTANDARD LVCMOS33 } [get_ports { vga_g[2] }]; #IO_L2N_T0_AD12N_35 Sch=vga_g[2]
#set_property -dict { PACKAGE_PIN A6    IOSTANDARD LVCMOS33 } [get_ports { vga_g[3] }]; #IO_L3P_T0_DQS_AD5P_35 Sch=vga_g[3]

#set_property -dict { PACKAGE_PIN B7    IOSTANDARD LVCMOS33 } [get_ports { vga_b[0] }]; #IO_L2P_T0_AD12P_35 Sch=vga_b[0]
#set_property -dict { PACKAGE_PIN C7    IOSTANDARD LVCMOS33 } [get_ports { vga_b[1] }]; #IO_L4N_T0_35 Sch=vga_b[1]
#set_property -dict { PACKAGE_PIN D7    IOSTANDARD LVCMOS33 } [get_ports { vga_b[2] }]; #IO_L6N_T0_VREF_35 Sch=vga_b[2]
#set_property -dict { PACKAGE_PIN D8    IOSTANDARD LVCMOS33 } [get_ports { vga_b[3] }]; #IO_L4P_T0_35 Sch=vga_b[3]

#set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS33 } [get_ports { vga_hs }]; #IO_L4P_T0_15 Sch=vga_hs
#set_property -dict { PACKAGE_PIN B12   IOSTANDARD LVCMOS33 } [get_ports { vga_vs }]; #IO_L3N_T0_DQS_AD1N_15 Sch=vga_vs

#Switches

set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { threshold[0] }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { threshold[1] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]
set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { threshold[2] }]; #IO_L6N_T0_D08_VREF_14 Sch=sw[2]
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { threshold[3] }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { threshold[4] }]; #IO_L12N_T1_MRCC_14 Sch=sw[4]
set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { threshold[5] }]; #IO_L7N_T1_D10_14 Sch=sw[5]
set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { threshold[6] }]; #IO_L17N_T2_A13_D29_14 Sch=sw[6]
set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { threshold[7] }]; #IO_L5N_T0_D07_14 Sch=sw[7]
#set_property -dict { PACKAGE_PIN T8    IOSTANDARD LVCMOS18 } [get_ports { step_config[0] }]; #IO_L24N_T3_34 Sch=sw[8]
#set_property -dict { PACKAGE_PIN U8    IOSTANDARD LVCMOS18 } [get_ports { step_config[1] }]; #IO_25_34 Sch=sw[9]
#set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { SW[10] }]; #IO_L15P_T2_DQS_RDWR_B_14 Sch=sw[10]
#set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { SW[11] }]; #IO_L23P_T3_A03_D19_14 Sch=sw[11]
#set_property -dict { PACKAGE_PIN H6    IOSTANDARD LVCMOS33 } [get_ports { SW[12] }]; #IO_L24P_T3_35 Sch=sw[12]
#set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { SW[13] }]; #IO_L20P_T3_A08_D24_14 Sch=sw[13]
set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports { bin_enable }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=sw[14]
#set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { ex_enable }]; #IO_L21P_T3_DQS_14 Sch=sw[15]

#botton
set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { BTN[0] }]; #IO_L9P_T1_DQS_14 Sch=btnc
set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { BTN[1] }]; #IO_L4N_T0_D05_14 Sch=btnu
set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { BTN[2] }]; #IO_L12P_T1_MRCC_14 Sch=btnl
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { BTN[3] }]; #IO_L10N_T1_D15_14 Sch=btnr
set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { BTN[4] }]; #IO_L9N_T1_DQS_D13_14 Sch=btnd

#Pmod Oled Pmod Header JD

#set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports {  }]; #IO_L21N_T3_DQS_35 Sch=jd[1]
#set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports {  }]; #IO_L17P_T2_35 Sch=jd[2]
#set_property -dict { PACKAGE_PIN G1    IOSTANDARD LVCMOS33 } [get_ports { TDI }]; #IO_L17N_T2_35 Sch=jd[3]
#set_property -dict { PACKAGE_PIN G3    IOSTANDARD LVCMOS33 } [get_ports { TDO }]; #IO_L20N_T3_35 Sch=jd[4]
#set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports { tx }]; #IO_L15P_T2_DQS_35 Sch=jd[7]
set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports { tx }]; #IO_L20P_T3_35 Sch=jd[8]
set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports { rx }]; #IO_L15N_T2_DQS_35 Sch=jd[9]
#set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33 } [get_ports { Pmod_Oled_pin10_io }]; #IO_L13N_T2_MRCC_35 Sch=jd[10]