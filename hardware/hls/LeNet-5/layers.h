#ifndef _LAYERS_H_
#define _LAYERS_H_

#include "product.h"
#include "common.h"
dou_t sum(dou_t , dou_t);
dou_t maxQ(dou_t , dou_t , dou_t , dou_t );
void conv2d_1Q(dou_t testQ[28][28], dou_t image1Q[20][24][24]);
void maxpool_1Q(dou_t image1Q[20][24][24], dou_t image1mQ[20][12][12]);
void conv2d_2Q(dou_t image1mQ[20][12][12], dou_t image2Q[50][8][8]);
void maxpool_2Q(dou_t image2Q[50][8][8], dou_t image2mQ[50][4][4]);
void flatQ(dou_t image2mQ[50][4][4], dou_t image2fQ[800]);
void dense_Q(dou_t image2fQ[800], dou_t image3Q[10]);
dou_t save(dou_t image3Q[10]);
dre_t encoder(dre_t);



#endif

