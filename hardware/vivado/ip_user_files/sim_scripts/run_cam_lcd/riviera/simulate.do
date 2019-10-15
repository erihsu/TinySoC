onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+run_cam_lcd -L xil_defaultlib -L xpm -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_12 -L v_vid_in_axi4s_v4_0_8 -L xlconcat_v2_1_1 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_19 -L generic_baseblocks_v2_1_0 -L fifo_generator_v13_2_2 -L axi_data_fifo_v2_1_16 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_17 -L axi_protocol_converter_v2_1_17 -L blk_mem_gen_v8_3_6 -L axi_bram_ctrl_v4_0_14 -L axi_crossbar_v2_1_18 -L blk_mem_gen_v8_4_1 -L xlconstant_v1_1_5 -L util_vector_logic_v2_0_1 -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L axi_uartlite_v2_0_21 -L lib_fifo_v1_0_11 -L lib_bmg_v1_0_10 -L axi_datamover_v5_1_19 -L axi_vdma_v6_3_5 -L xbip_utils_v3_0_9 -L axi_utils_v2_0_5 -L xbip_pipe_v3_0_5 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_5 -L xbip_dsp48_multadd_v3_0_5 -L xbip_bram18k_v3_0_5 -L mult_gen_v12_0_14 -L floating_point_v7_1_6 -L axi_clock_converter_v2_1_16 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.run_cam_lcd xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {run_cam_lcd.udo}

run -all

endsim

quit -force
