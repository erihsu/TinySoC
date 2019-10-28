#include "binary.h"
void binary(u32* img_in, u32* img_out,byte threshold)
{


	int rows = 240;
	int cols = 320;
	int i, j;
	byte gray[76800];
	byte R,G,B;
	float temp;
	L3_1:for (i = 0; i < rows; i++)
	{
		L3_2:for (j = 0; j < cols; j++)
		{
			R = (img_in[i*cols + j] >> 16)&0xff;
			G = (img_in[i*cols + j] >> 8)&0xff;
			B = (img_in[i*cols + j])&0xff;
			temp = 0.299 * R + 0.587 * G + 0.114 * B;
			gray[i*cols + j] = (byte)temp;
			img_out[i*cols + j] = (gray[i*cols + j]>threshold)?255:0;

		}
	}



}
