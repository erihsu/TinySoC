#ifndef DMA_H
#define DMA_H

#include "sys.h"
#define DMA_BASE                0x40400000
#define MM2S_DMACR_OFFSET       0x0
#define MM2S_DMASR_OFFSET       0x4
#define MM2S_DMASA_OFFSET       0x18
#define MM2S_DMASA_MSB_OFFSET   0x1c
#define MM2S_DMALEN_OFFSET      0x28
#define S2MM_DMACR_OFFSET       0x30
#define S2MM_DMASR_OFFSET       0x34
#define S2MM_DMASA_OFFSET       0x48
#define S2MM_DMASA_MSB_OFFSET   0x4c
#define S2MM_DMALEN_OFFSET      0x58

#define MM2S_DMACR      (*(volatile unsigned long *)(DMA_BASE+MM2S_DMACR_OFFSET))
#define MM2S_DMASR      (*(volatile unsigned long *)(DMA_BASE+MM2S_DMASR_OFFSET))
#define MM2S_DMASA      (*(volatile unsigned long *)(DMA_BASE+MM2S_DMASA_OFFSET))
#define MM2S_DMASA_MSB  (*(volatile unsigned long *)(DMA_BASE+MM2S_DMASA_MSB_OFFSET))
#define MM2S_DMALEN     (*(volatile unsigned long *)(DMA_BASE+MM2S_DMALEN_OFFSET))
#define S2MM_DMACR      (*(volatile unsigned long *)(DMA_BASE+S2MM_DMACR_OFFSET))
#define S2MM_DMASR      (*(volatile unsigned long *)(DMA_BASE+S2MM_DMASR_OFFSET))
#define S2MM_DMASA      (*(volatile unsigned long *)(DMA_BASE+S2MM_DMASA_OFFSET))
#define S2MM_DMASA_MSB  (*(volatile unsigned long *)(DMA_BASE+S2MM_DMASA_MSB_OFFSET))
#define S2MM_DMALEN     (*(volatile unsigned long *)(DMA_BASE+S2MM_DMALEN_OFFSET))

#define DMA_TO_DEVICE   0x00
#define DEVICE_TO_DMA   0x01


void DMA_Trans(u32 addr,u32 length,u8 direction);
u8   DMA_Status(u8 direction);


#endif
