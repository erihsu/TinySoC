#ifndef XPARAMETERS_H   /* prevent circular inclusions */
#define XPARAMETERS_H   /* by using protection macros */

/* Definition for CPU ID */
#define XPAR_CPU_ID 0U

/* Definitions for peripheral CORTEXM3_AXI_0 */
#define XPAR_CORTEXM3_AXI_0_CPU_CLK_FREQ_HZ 0


/******************************************************************/

/* Canonical definitions for peripheral CORTEXM3_AXI_0 */
#define XPAR_CPU_CORTEXM3_0_CPU_CLK_FREQ_HZ 0


/******************************************************************/

#define STDIN_BASEADDRESS 0x40140000
#define STDOUT_BASEADDRESS 0x40140000

/******************************************************************/

/* Platform specific definitions */
#define PLATFORM_ARM
 
/* Definitions for sleep timer configuration */
#define XSLEEP_TIMER_IS_DEFAULT_TIMER
 
 
/******************************************************************/
/* Definitions for driver AXIDMA */
#define XPAR_XAXIDMA_NUM_INSTANCES 1

/* Definitions for peripheral AXI_DMA_0 */
#define XPAR_AXI_DMA_0_DEVICE_ID 0
#define XPAR_AXI_DMA_0_BASEADDR 0x41E00000
#define XPAR_AXI_DMA_0_HIGHADDR 0x41E0FFFF
#define XPAR_AXI_DMA_0_SG_INCLUDE_STSCNTRL_STRM 0
#define XPAR_AXI_DMA_0_INCLUDE_MM2S_DRE 0
#define XPAR_AXI_DMA_0_INCLUDE_S2MM_DRE 0
#define XPAR_AXI_DMA_0_INCLUDE_MM2S 1
#define XPAR_AXI_DMA_0_INCLUDE_S2MM 1
#define XPAR_AXI_DMA_0_M_AXI_MM2S_DATA_WIDTH 32
#define XPAR_AXI_DMA_0_M_AXI_S2MM_DATA_WIDTH 32
#define XPAR_AXI_DMA_0_INCLUDE_SG 0
#define XPAR_AXI_DMA_0_ENABLE_MULTI_CHANNEL 0
#define XPAR_AXI_DMA_0_NUM_MM2S_CHANNELS 1
#define XPAR_AXI_DMA_0_NUM_S2MM_CHANNELS 1
#define XPAR_AXI_DMA_0_MM2S_BURST_SIZE 16
#define XPAR_AXI_DMA_0_S2MM_BURST_SIZE 16
#define XPAR_AXI_DMA_0_MICRO_DMA 0
#define XPAR_AXI_DMA_0_ADDR_WIDTH 32
#define XPAR_AXI_DMA_0_SG_LENGTH_WIDTH 23


/******************************************************************/

/* Canonical definitions for peripheral AXI_DMA_0 */
#define XPAR_AXIDMA_0_DEVICE_ID XPAR_AXI_DMA_0_DEVICE_ID
#define XPAR_AXIDMA_0_BASEADDR 0x41E00000
#define XPAR_AXIDMA_0_SG_INCLUDE_STSCNTRL_STRM 0
#define XPAR_AXIDMA_0_INCLUDE_MM2S 1
#define XPAR_AXIDMA_0_INCLUDE_MM2S_DRE 0
#define XPAR_AXIDMA_0_M_AXI_MM2S_DATA_WIDTH 32
#define XPAR_AXIDMA_0_INCLUDE_S2MM 1
#define XPAR_AXIDMA_0_INCLUDE_S2MM_DRE 0
#define XPAR_AXIDMA_0_M_AXI_S2MM_DATA_WIDTH 32
#define XPAR_AXIDMA_0_INCLUDE_SG 0
#define XPAR_AXIDMA_0_ENABLE_MULTI_CHANNEL 0
#define XPAR_AXIDMA_0_NUM_MM2S_CHANNELS 1
#define XPAR_AXIDMA_0_NUM_S2MM_CHANNELS 1
#define XPAR_AXIDMA_0_MM2S_BURST_SIZE 16
#define XPAR_AXIDMA_0_S2MM_BURST_SIZE 16
#define XPAR_AXIDMA_0_MICRO_DMA 0
#define XPAR_AXIDMA_0_c_addr_width 32
#define XPAR_AXIDMA_0_c_sg_length_width 23


/******************************************************************/

/* Definitions for driver BRAM */
#define XPAR_XBRAM_NUM_INSTANCES 2U

/* Definitions for peripheral AXI_BRAM_CTRL_0 */
#define XPAR_AXI_BRAM_CTRL_0_DEVICE_ID 0U
#define XPAR_AXI_BRAM_CTRL_0_DATA_WIDTH 32U
#define XPAR_AXI_BRAM_CTRL_0_ECC 0U
#define XPAR_AXI_BRAM_CTRL_0_FAULT_INJECT 0U
#define XPAR_AXI_BRAM_CTRL_0_CE_FAILING_REGISTERS 0U
#define XPAR_AXI_BRAM_CTRL_0_UE_FAILING_REGISTERS 0U
#define XPAR_AXI_BRAM_CTRL_0_ECC_STATUS_REGISTERS 0U
#define XPAR_AXI_BRAM_CTRL_0_CE_COUNTER_WIDTH 0U
#define XPAR_AXI_BRAM_CTRL_0_ECC_ONOFF_REGISTER 0U
#define XPAR_AXI_BRAM_CTRL_0_ECC_ONOFF_RESET_VALUE 0U
#define XPAR_AXI_BRAM_CTRL_0_WRITE_ACCESS 0U
#define XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR 0x60000000U
#define XPAR_AXI_BRAM_CTRL_0_S_AXI_HIGHADDR 0x6000FFFFU
#define XPAR_AXI_BRAM_CTRL_0_S_AXI_CTRL_BASEADDR 0xFFFFFFFFU 
#define XPAR_AXI_BRAM_CTRL_0_S_AXI_CTRL_HIGHADDR 0xFFFFFFFFU 


/* Definitions for peripheral AXI_BRAM_CTRL_1 */
#define XPAR_AXI_BRAM_CTRL_1_DEVICE_ID 1U
#define XPAR_AXI_BRAM_CTRL_1_DATA_WIDTH 32U
#define XPAR_AXI_BRAM_CTRL_1_ECC 0U
#define XPAR_AXI_BRAM_CTRL_1_FAULT_INJECT 0U
#define XPAR_AXI_BRAM_CTRL_1_CE_FAILING_REGISTERS 0U
#define XPAR_AXI_BRAM_CTRL_1_UE_FAILING_REGISTERS 0U
#define XPAR_AXI_BRAM_CTRL_1_ECC_STATUS_REGISTERS 0U
#define XPAR_AXI_BRAM_CTRL_1_CE_COUNTER_WIDTH 0U
#define XPAR_AXI_BRAM_CTRL_1_ECC_ONOFF_REGISTER 0U
#define XPAR_AXI_BRAM_CTRL_1_ECC_ONOFF_RESET_VALUE 0U
#define XPAR_AXI_BRAM_CTRL_1_WRITE_ACCESS 0U
#define XPAR_AXI_BRAM_CTRL_1_S_AXI_BASEADDR 0x00000000U
#define XPAR_AXI_BRAM_CTRL_1_S_AXI_HIGHADDR 0x0000FFFFU
#define XPAR_AXI_BRAM_CTRL_1_S_AXI_CTRL_BASEADDR 0xFFFFFFFFU 
#define XPAR_AXI_BRAM_CTRL_1_S_AXI_CTRL_HIGHADDR 0xFFFFFFFFU 


/******************************************************************/

/* Canonical definitions for peripheral AXI_BRAM_CTRL_0 */
#define XPAR_BRAM_0_DEVICE_ID XPAR_AXI_BRAM_CTRL_0_DEVICE_ID
#define XPAR_BRAM_0_DATA_WIDTH 32U
#define XPAR_BRAM_0_ECC 0U
#define XPAR_BRAM_0_FAULT_INJECT 0U
#define XPAR_BRAM_0_CE_FAILING_REGISTERS 0U
#define XPAR_BRAM_0_UE_FAILING_REGISTERS 0U
#define XPAR_BRAM_0_ECC_STATUS_REGISTERS 0U
#define XPAR_BRAM_0_CE_COUNTER_WIDTH 0U
#define XPAR_BRAM_0_ECC_ONOFF_REGISTER 0U
#define XPAR_BRAM_0_ECC_ONOFF_RESET_VALUE 0U
#define XPAR_BRAM_0_WRITE_ACCESS 0U
#define XPAR_BRAM_0_BASEADDR 0x60000000U
#define XPAR_BRAM_0_HIGHADDR 0x6000FFFFU

/* Canonical definitions for peripheral AXI_BRAM_CTRL_1 */
#define XPAR_BRAM_1_DEVICE_ID XPAR_AXI_BRAM_CTRL_1_DEVICE_ID
#define XPAR_BRAM_1_DATA_WIDTH 32U
#define XPAR_BRAM_1_ECC 0U
#define XPAR_BRAM_1_FAULT_INJECT 0U
#define XPAR_BRAM_1_CE_FAILING_REGISTERS 0U
#define XPAR_BRAM_1_UE_FAILING_REGISTERS 0U
#define XPAR_BRAM_1_ECC_STATUS_REGISTERS 0U
#define XPAR_BRAM_1_CE_COUNTER_WIDTH 0U
#define XPAR_BRAM_1_ECC_ONOFF_REGISTER 0U
#define XPAR_BRAM_1_ECC_ONOFF_RESET_VALUE 0U
#define XPAR_BRAM_1_WRITE_ACCESS 0U
#define XPAR_BRAM_1_BASEADDR 0x00000000U
#define XPAR_BRAM_1_HIGHADDR 0x0000FFFFU


/******************************************************************/

/* Definitions for driver GPIO */
#define XPAR_XGPIO_NUM_INSTANCES 5

/* Definitions for peripheral BTN */
#define XPAR_BTN_BASEADDR 0x40020000
#define XPAR_BTN_HIGHADDR 0x4002FFFF
#define XPAR_BTN_DEVICE_ID 0
#define XPAR_BTN_INTERRUPT_PRESENT 1
#define XPAR_BTN_IS_DUAL 0


/* Definitions for peripheral CAM_GPIO */
#define XPAR_CAM_GPIO_BASEADDR 0x40000000
#define XPAR_CAM_GPIO_HIGHADDR 0x40000FFF
#define XPAR_CAM_GPIO_DEVICE_ID 1
#define XPAR_CAM_GPIO_INTERRUPT_PRESENT 0
#define XPAR_CAM_GPIO_IS_DUAL 1


/* Definitions for peripheral CMOS_CTRL */
#define XPAR_CMOS_CTRL_BASEADDR 0x40010000
#define XPAR_CMOS_CTRL_HIGHADDR 0x4001FFFF
#define XPAR_CMOS_CTRL_DEVICE_ID 2
#define XPAR_CMOS_CTRL_INTERRUPT_PRESENT 0
#define XPAR_CMOS_CTRL_IS_DUAL 0


/* Definitions for peripheral LED_GPIO */
#define XPAR_LED_GPIO_BASEADDR 0x40110000
#define XPAR_LED_GPIO_HIGHADDR 0x40110FFF
#define XPAR_LED_GPIO_DEVICE_ID 3
#define XPAR_LED_GPIO_INTERRUPT_PRESENT 0
#define XPAR_LED_GPIO_IS_DUAL 0


/* Definitions for peripheral TFT_GPIO */
#define XPAR_TFT_GPIO_BASEADDR 0x40120000
#define XPAR_TFT_GPIO_HIGHADDR 0x40120FFF
#define XPAR_TFT_GPIO_DEVICE_ID 4
#define XPAR_TFT_GPIO_INTERRUPT_PRESENT 0
#define XPAR_TFT_GPIO_IS_DUAL 0


/******************************************************************/

/* Canonical definitions for peripheral BTN */
#define XPAR_GPIO_0_BASEADDR 0x40020000
#define XPAR_GPIO_0_HIGHADDR 0x4002FFFF
#define XPAR_GPIO_0_DEVICE_ID XPAR_BTN_DEVICE_ID
#define XPAR_GPIO_0_INTERRUPT_PRESENT 1
#define XPAR_GPIO_0_IS_DUAL 0

/* Canonical definitions for peripheral CAM_GPIO */
#define XPAR_GPIO_1_BASEADDR 0x40000000
#define XPAR_GPIO_1_HIGHADDR 0x40000FFF
#define XPAR_GPIO_1_DEVICE_ID XPAR_CAM_GPIO_DEVICE_ID
#define XPAR_GPIO_1_INTERRUPT_PRESENT 0
#define XPAR_GPIO_1_IS_DUAL 1

/* Canonical definitions for peripheral CMOS_CTRL */
#define XPAR_GPIO_2_BASEADDR 0x40010000
#define XPAR_GPIO_2_HIGHADDR 0x4001FFFF
#define XPAR_GPIO_2_DEVICE_ID XPAR_CMOS_CTRL_DEVICE_ID
#define XPAR_GPIO_2_INTERRUPT_PRESENT 0
#define XPAR_GPIO_2_IS_DUAL 0

/* Canonical definitions for peripheral LED_GPIO */
#define XPAR_GPIO_3_BASEADDR 0x40110000
#define XPAR_GPIO_3_HIGHADDR 0x40110FFF
#define XPAR_GPIO_3_DEVICE_ID XPAR_LED_GPIO_DEVICE_ID
#define XPAR_GPIO_3_INTERRUPT_PRESENT 0
#define XPAR_GPIO_3_IS_DUAL 0

/* Canonical definitions for peripheral TFT_GPIO */
#define XPAR_GPIO_4_BASEADDR 0x40120000
#define XPAR_GPIO_4_HIGHADDR 0x40120FFF
#define XPAR_GPIO_4_DEVICE_ID XPAR_TFT_GPIO_DEVICE_ID
#define XPAR_GPIO_4_INTERRUPT_PRESENT 0
#define XPAR_GPIO_4_IS_DUAL 0


/******************************************************************/

/* Definitions for driver MIG_7SERIES */
#define XPAR_XMIG7SERIES_NUM_INSTANCES 1U

/* Definitions for peripheral MIG_7SERIES_0 */
#define XPAR_MIG_7SERIES_0_DEVICE_ID 0U
#define XPAR_MIG_7SERIES_0_DDR2_ROW_WIDTH 13U
#define XPAR_MIG_7SERIES_0_DDR2_COL_WIDTH 0U
#define XPAR_MIG_7SERIES_0_DDR2_BANK_WIDTH 3U
#define XPAR_MIG_7SERIES_0_DDR2_DQ_WIDTH 16U


/******************************************************************/


/* Definitions for peripheral MIG_7SERIES_0 */
#define XPAR_MIG_7SERIES_0_BASEADDR 0x80000000
#define XPAR_MIG_7SERIES_0_HIGHADDR 0x87FFFFFF


/******************************************************************/

/* Canonical definitions for peripheral MIG_7SERIES_0 */
#define XPAR_MIG7SERIES_0_DEVICE_ID XPAR_MIG_7SERIES_0_DEVICE_ID
#define XPAR_MIG7SERIES_0_DDR_ROW_WIDTH 13U
#define XPAR_MIG7SERIES_0_DDR_COL_WIDTH 0U
#define XPAR_MIG7SERIES_0_DDR_BANK_WIDTH 3U
#define XPAR_MIG7SERIES_0_DDR_DQ_WIDTH 16U
#define XPAR_MIG7SERIES_0_BASEADDR 0x80000000U
#define XPAR_MIG7SERIES_0_HIGHADDR 0x87FFFFFFU


/******************************************************************/

/* Definitions for driver UARTLITE */
#define XPAR_XUARTLITE_NUM_INSTANCES 1

/* Definitions for peripheral UARTLITE */
#define XPAR_UARTLITE_BASEADDR 0x40140000
#define XPAR_UARTLITE_HIGHADDR 0x40140FFF
#define XPAR_UARTLITE_DEVICE_ID 0
#define XPAR_UARTLITE_BAUDRATE 9600
#define XPAR_UARTLITE_USE_PARITY 0
#define XPAR_UARTLITE_ODD_PARITY 0
#define XPAR_UARTLITE_DATA_BITS 8


/******************************************************************/

/* Canonical definitions for peripheral UARTLITE */
#define XPAR_UARTLITE_0_DEVICE_ID XPAR_UARTLITE_DEVICE_ID
#define XPAR_UARTLITE_0_BASEADDR 0x40140000
#define XPAR_UARTLITE_0_HIGHADDR 0x40140FFF
#define XPAR_UARTLITE_0_BAUDRATE 9600
#define XPAR_UARTLITE_0_USE_PARITY 0
#define XPAR_UARTLITE_0_ODD_PARITY 0
#define XPAR_UARTLITE_0_DATA_BITS 8


/******************************************************************/

#endif  /* end of protection macro */
