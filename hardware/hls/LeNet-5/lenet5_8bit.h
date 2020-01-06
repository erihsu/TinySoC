#ifndef _lenet5_8bit_H_
#define _lenet5_8bit_H_


#include "common.h"
#include "layers.h"
#include "stdbool.h"
//#include "reset.h"



//void lenet5(din_t*,dre_t*); //change from [28][28] to [784]
//void lenet5(din_t*,dre_t*,bool enble,bool clear);
dre_t lenet5(din_t*,bool enble,bool clear);
//extern dwg_t filter1Q[20][5][5];
//extern dwg_t bias1Q[20];
//extern dwg_t filter2Q[50][20][5][5];
//extern dwg_t bias2Q[50];
//extern dwg_t filter3Q[500][800];
//extern dwg_t bias3Q[500];
//extern dwg_t filter4Q[10][500];
//extern dwg_t bias4Q[10];

static dou_t image1Q[20][24][24];
static dou_t image1mQ[20][12][12];
static dou_t image2Q[50][8][8];
static dou_t image2mQ[50][4][4];
static dou_t image2fQ[800];
static dou_t image3Q[10];

#endif


