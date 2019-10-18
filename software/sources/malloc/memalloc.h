//
// Created by song on 17-5-12.
//



#ifndef MOS_MEMALLOC_H
#define MOS_MEMALLOC_H

#include "stdint.h"

#define POOLSTART   0x80100000 //前面的空间用作lcd显存
#define MANAGESTART 0x81100000 //内存管理块的首地址
#define MAXSIZE     0x200000  //用来管理2M的空间
#define BLOCKSIZE 512
#define TABLESIZE MAXSIZE/BLOCKSIZE
#define malloc(size)	mapply(size)
#define free(p)				mfree(p)

void *mapply(uint32_t size);

void mfree(void *p);

void pool_init();

#endif //MOS_MEMALLOC_H
