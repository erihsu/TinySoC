#include "lenet5_8bit.h"

//void lenet5(din_t* img_in,dre_t* result,bool enable,bool clear){   //change from [28][28] to [784]
dre_t lenet5(din_t* img_in,bool enable,bool clear){
//#pragma HLS INTERFACE axis port=cnn_img
	int i,j,k;
	dre_t prediction;
	din_t cnn_img[28][28];
	if(clear){
	for(i=0;i<20;i++)
		for(j=0;j<24;j++)
			for(k=0;k<24;k++)
				image1Q[i][j][k]=0;
	for( i=0;i<20;i++)
		for( j=0;j<12;j++)
			for( k=0;k<12;k++)
				image1mQ[i][j][k]=0;
	for( i=0;i<50;i++)
		for( j=0;j<8;j++)
			for( k=0;k<8;k++)
				image2Q[i][j][k]=0;
	for( i=0;i<50;i++)
		for( j=0;j<4;j++)
			for( k=0;k<4;k++)
				image2mQ[i][j][k]=0;
	for( i=0;i<800;i++)
		image2fQ[i]=0;
	for( i=0;i<10;i++)
		image3Q[i]=0;
	}
 if(!enable){
	//*result = 0;
	 return 0;
 }
 else
 {
 	for ( i=0;i<28;i++)
 		for ( j=0;j<28;j++)
 			cnn_img[i][j] = img_in[i*28+j];

 	conv2d_1Q(cnn_img,image1Q);
     maxpool_1Q(image1Q,image1mQ);
     conv2d_2Q(image1mQ,image2Q);
     maxpool_2Q(image2Q,image2mQ);
     flatQ(image2mQ,image2fQ);
     dense_Q(image2fQ,image3Q);
     prediction = save(image3Q);
     //*result = encoder(prediction);
     return save(image3Q);
 	}
}
