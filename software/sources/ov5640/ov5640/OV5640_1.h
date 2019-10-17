#ifndef OV5640_1_H
#define OV5640_1_H
#include "sys.h"
#include "SCCB.h"
void ov5640_init_rgb(void);
uchar wrOV5640Reg(u16 regID, uchar regDat);
u8 OV5640_OutSize_Set(u16 offx,u16 offy,u16 width,u16 height);
#endif