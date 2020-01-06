#ifndef _RESET_H_
#define _RESET_H_ 

#include <stdlib.h>
#include <stdio.h>

void reset();


extern unsigned char prediction;
extern unsigned short testQ[28][28];
extern unsigned short image1Q[20][24][24];
extern unsigned short image1mQ[20][12][12];
extern unsigned short image2Q[50][8][8];
extern unsigned short image2mQ[50][4][4];
extern unsigned short image2fQ[800];
extern unsigned short image3Q[10];

#endif
