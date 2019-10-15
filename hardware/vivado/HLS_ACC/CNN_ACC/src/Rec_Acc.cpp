#include "Rec_Acc.h"


//u10 encoder(din_t input){
//	u10 result;
//switch(input){
//case 0:result = 1;break;
//case 1:result = 2;break;
//case 2:result = 4;break;
//case 3:result = 8;break;
//case 4:result = 16;break;
//case 5:result = 32;break;
//case 6:result = 64;break;
//case 7:result = 128;break;
//case 8:result = 256;break;
//case 9:result = 512;break;
//default:result = 0;break;
//}
//return result;
//}



void lenet5(axis<32>* img_in,u4* result,bit enable,bit clear){
	din_t sum[10]={0};
	int i,j,k;
	din_t max= 0 ;
	u4 temp=0 ;

	if(clear){
		*result = 0;
		L0:for (i=0;i<10;i++)
			sum[i]=0;
	}

	 if(!enable){
		 *result = 0;
	 }
	else{
		*result = 0;
	L1_1:for (i=0;i<28;i++)
		L1_2:for (j=0;j<28;j++){
			L1_3:for (k=0;k<10;k++){
			sum[k] += (((img_in->data[28*i+j] ==255) && (num[k][28*i+j]==255)) ? 1:0) ;
			}
		}

	L2_1:for(i=0;i<10;i++)
		if(sum[i]>max){
			max = sum[i];
			temp = i;
		}
	*result = temp;
	}

}
