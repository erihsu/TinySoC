#include "DMA.h"

void DMA_Trans(u32 addr,u32 length,u8 direction){
    //TODO
    if(direction==DMA_TO_DEVICE){
				MM2S_DMACR |= 0x01<<2;
				delay_ms(20);
				MM2S_DMACR |= 0x01;
        MM2S_DMASA = addr;
        MM2S_DMALEN = length;
     // MM2S_DMACR |= 0x01;

    } else if(direction==DEVICE_TO_DMA){
				S2MM_DMACR |= 0x01<<2;
				delay_ms(20);
				S2MM_DMACR |= 0x01;
        S2MM_DMASA = addr;
        S2MM_DMALEN = length;
        
    }
}

//返回1表示空闲
u8   DMA_Status(u8 direction){
    u8 status = 0;//
    //TODO
    if(direction==DMA_TO_DEVICE){
        status =  MM2S_DMASR & 0x00000002;
    }else if(direction==DEVICE_TO_DMA){
        status =  S2MM_DMASR & 0x00000002;
    }
    return status;
}