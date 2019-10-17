#include "lcd.h"
#include "fonts.h"
void LCD_init(void){
	
// 	GPIO_InitTypeDef  GPIO_InitStruct;
  
//   /* Enable the GPIO_LED Clock */
//   LED3_GPIO_CLK_ENABLE();

//   /* Configure the GPIO_LED pin */
//   GPIO_InitStruct.Pin = GPIO_PIN_9|GPIO_PIN_10|GPIO_PIN_11|GPIO_PIN_12|GPIO_PIN_13;
//   GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
//   GPIO_InitStruct.Pull = GPIO_PULLUP;
//   GPIO_InitStruct.Speed = GPIO_SPEED_FAST;
  
//   HAL_GPIO_Init(GPIOG, &GPIO_InitStruct);
  
//   HAL_GPIO_WritePin(GPIOG, GPIO_PIN_9|GPIO_PIN_10|GPIO_PIN_11|GPIO_PIN_12|GPIO_PIN_13, GPIO_PIN_SET);
	gpio_init();
	set_pin(PIN0|PIN1|PIN2|PIN3);
	OLED_RST_Clr();
	delay_ms(20);
	OLED_RST_Set();
	delay_ms(20);
	// OLED_BLK_Set();
	
//************* Start Initial Sequence **********// 

/*
LCD_WR_REG(0xCF);  
LCD_WR_DATA8(0x00); 
LCD_WR_DATA8(0xD9); 
LCD_WR_DATA8(0X30); 
 
LCD_WR_REG(0xED);  
LCD_WR_DATA8(0x64); 
LCD_WR_DATA8(0x03); 
LCD_WR_DATA8(0X12); 
LCD_WR_DATA8(0X81); 
 
LCD_WR_REG(0xE8);  
LCD_WR_DATA8(0x85); 
LCD_WR_DATA8(0x10); 
LCD_WR_DATA8(0x78); 
 
LCD_WR_REG(0xCB);  
LCD_WR_DATA8(0x39); 
LCD_WR_DATA8(0x2C); 
LCD_WR_DATA8(0x00); 
LCD_WR_DATA8(0x34); 
LCD_WR_DATA8(0x02); 
 
LCD_WR_REG(0xF7);  
LCD_WR_DATA8(0x20); 
 
LCD_WR_REG(0xEA);  
LCD_WR_DATA8(0x00); 
LCD_WR_DATA8(0x00); 
 
LCD_WR_REG(0xC0);    //Power control 
LCD_WR_DATA8(0x21);   //VRH[5:0] 
 
LCD_WR_REG(0xC1);    //Power control 
LCD_WR_DATA8(0x12);   //SAP[2:0];BT[3:0] 
 
LCD_WR_REG(0xC5);    //VCM control 
LCD_WR_DATA8(0x32); 
LCD_WR_DATA8(0x3C); 
 
LCD_WR_REG(0xC7);    //VCM control2 
LCD_WR_DATA8(0XC1); 
 
LCD_WR_REG(0x36);    // Memory Access Control 
LCD_WR_DATA8(0x08); 
 
LCD_WR_REG(0x3A);   
LCD_WR_DATA8(0x55); 

LCD_WR_REG(0xB1);   
LCD_WR_DATA8(0x00);   
LCD_WR_DATA8(0x18); 
 
LCD_WR_REG(0xB6);    // Display Function Control 
LCD_WR_DATA8(0x0A); 
LCD_WR_DATA8(0xA2); 

 
 
LCD_WR_REG(0xF2);    // 3Gamma Function Disable 
LCD_WR_DATA8(0x00); 
 
LCD_WR_REG(0x26);    //Gamma curve selected 
LCD_WR_DATA8(0x01); 
 
LCD_WR_REG(0xE0);    //Set Gamma 
LCD_WR_DATA8(0x0F); 
LCD_WR_DATA8(0x20); 
LCD_WR_DATA8(0x1E); 
LCD_WR_DATA8(0x09); 
LCD_WR_DATA8(0x12); 
LCD_WR_DATA8(0x0B); 
LCD_WR_DATA8(0x50); 
LCD_WR_DATA8(0XBA); 
LCD_WR_DATA8(0x44); 
LCD_WR_DATA8(0x09); 
LCD_WR_DATA8(0x14); 
LCD_WR_DATA8(0x05); 
LCD_WR_DATA8(0x23); 
LCD_WR_DATA8(0x21); 
LCD_WR_DATA8(0x00); 
 
LCD_WR_REG(0XE1);    //Set Gamma 
LCD_WR_DATA8(0x00); 
LCD_WR_DATA8(0x19); 
LCD_WR_DATA8(0x19); 
LCD_WR_DATA8(0x00); 
LCD_WR_DATA8(0x12); 
LCD_WR_DATA8(0x07); 
LCD_WR_DATA8(0x2D); 
LCD_WR_DATA8(0x28); 
LCD_WR_DATA8(0x3F); 
LCD_WR_DATA8(0x02); 
LCD_WR_DATA8(0x0A); 
LCD_WR_DATA8(0x08); 
LCD_WR_DATA8(0x25); 
LCD_WR_DATA8(0x2D); 
LCD_WR_DATA8(0x0F); 
 
LCD_WR_REG(0x11);    //Exit Sleep 
delay_ms(120); 
LCD_WR_REG(0x29);    //Display on 
 
	*/
	LCD_WR_REG(0xCF);  
LCD_WR_DATA8(0x00); 
LCD_WR_DATA8(0xD9); 
LCD_WR_DATA8(0X30); 
 
LCD_WR_REG(0xED);  
LCD_WR_DATA8(0x64); 
LCD_WR_DATA8(0x03); 
LCD_WR_DATA8(0X12); 
LCD_WR_DATA8(0X81); 
 
LCD_WR_REG(0xE8);  
LCD_WR_DATA8(0x85); 
LCD_WR_DATA8(0x10); 
LCD_WR_DATA8(0x78); 
 
LCD_WR_REG(0xCB);  
LCD_WR_DATA8(0x39); 
LCD_WR_DATA8(0x2C); 
LCD_WR_DATA8(0x00); 
LCD_WR_DATA8(0x34); 
LCD_WR_DATA8(0x02); 
 
LCD_WR_REG(0xF7);  
LCD_WR_DATA8(0x20); 
 
LCD_WR_REG(0xEA);  
LCD_WR_DATA8(0x00); 
LCD_WR_DATA8(0x00); 
 
LCD_WR_REG(0xC0);    //Power control 
LCD_WR_DATA8(0x21);   //VRH[5:0] 
 
LCD_WR_REG(0xC1);    //Power control 
LCD_WR_DATA8(0x12);   //SAP[2:0];BT[3:0] 
 
LCD_WR_REG(0xC5);    //VCM control 
LCD_WR_DATA8(0x32); 
LCD_WR_DATA8(0x3C); 
 
LCD_WR_REG(0xC7);    //VCM control2 
LCD_WR_DATA8(0XC1); 
 
LCD_WR_REG(0x36);    // Memory Access Control 
LCD_WR_DATA8(0xA8); 
 
LCD_WR_REG(0x3A);   
LCD_WR_DATA8(0x55); 

LCD_WR_REG(0xB1);   
LCD_WR_DATA8(0x00);   
LCD_WR_DATA8(0x18); 
 
LCD_WR_REG(0xB6);    // Display Function Control 
LCD_WR_DATA8(0x0A); 
LCD_WR_DATA8(0xA2); 

 
 
LCD_WR_REG(0xF2);    // 3Gamma Function Disable 
LCD_WR_DATA8(0x00); 
 
LCD_WR_REG(0x26);    //Gamma curve selected 
LCD_WR_DATA8(0x01); 
 
LCD_WR_REG(0xE0);    //Set Gamma 
LCD_WR_DATA8(0x0F); 
LCD_WR_DATA8(0x20); 
LCD_WR_DATA8(0x1E); 
LCD_WR_DATA8(0x09); 
LCD_WR_DATA8(0x12); 
LCD_WR_DATA8(0x0B); 
LCD_WR_DATA8(0x50); 
LCD_WR_DATA8(0XBA); 
LCD_WR_DATA8(0x44); 
LCD_WR_DATA8(0x09); 
LCD_WR_DATA8(0x14); 
LCD_WR_DATA8(0x05); 
LCD_WR_DATA8(0x23); 
LCD_WR_DATA8(0x21); 
LCD_WR_DATA8(0x00); 
 
LCD_WR_REG(0XE1);    //Set Gamma 
LCD_WR_DATA8(0x00); 
LCD_WR_DATA8(0x19); 
LCD_WR_DATA8(0x19); 
LCD_WR_DATA8(0x00); 
LCD_WR_DATA8(0x12); 
LCD_WR_DATA8(0x07); 
LCD_WR_DATA8(0x2D); 
LCD_WR_DATA8(0x28); 
LCD_WR_DATA8(0x3F); 
LCD_WR_DATA8(0x02); 
LCD_WR_DATA8(0x0A); 
LCD_WR_DATA8(0x08); 
LCD_WR_DATA8(0x25); 
LCD_WR_DATA8(0x2D); 
LCD_WR_DATA8(0x0F); 
 
LCD_WR_REG(0x11);    //Exit Sleep 
delayms(120); 
LCD_WR_REG(0x29);    //Display on 
 

}



u16 BACK_COLOR, POINT_COLOR;   

void LCD_Writ_Bus(const char dat)  
{
	u8 i;			  
  char tmp = dat;

	for(i=0;i<8;i++)
	{
		OLED_SCLK_Clr();
		if(tmp&0x80)
		   OLED_SDIN_Set();
		else 
		   OLED_SDIN_Clr();
		OLED_SCLK_Set();
		tmp<<=1;   
	}			
}

void LCD_Clear(u16 Color)
{
	u16 i,j;  	
	Address_set(0,0,LCD_H-1,LCD_W-1);
    for(i=0;i<LCD_W;i++)
	 {
	  for (j=0;j<LCD_H;j++)
	   	{
        	LCD_WR_DATA(Color);	 			 
	    }

	  }
}



void LCD_WR_DATA8(char da)
{	//OLED_CS_Clr();
    OLED_DC_Set();
		LCD_Writ_Bus(da);
	//OLED_CS_Set();
}  
 void LCD_WR_DATA(int da)
{//	OLED_CS_Clr();
    OLED_DC_Set();
		LCD_Writ_Bus(da>>8);
    LCD_Writ_Bus(da);
//	OLED_CS_Set();
}	  
void LCD_WR_REG(char da)	 
{	//	OLED_CS_Clr();
    OLED_DC_Clr();
	LCD_Writ_Bus(da);
//	OLED_CS_Set();
}
 void LCD_WR_REG_DATA(int reg,int da)
{//	OLED_CS_Clr();
    LCD_WR_REG(reg);
	LCD_WR_DATA(da);
//	OLED_CS_Set();
}

void Address_set(unsigned int x1,unsigned int y1,unsigned int x2,unsigned int y2)
{ 
	LCD_WR_REG(0x2a);
   LCD_WR_DATA8(x1>>8);
   LCD_WR_DATA8(x1);
   LCD_WR_DATA8(x2>>8);
   LCD_WR_DATA8(x2);
  
   LCD_WR_REG(0x2b);
   LCD_WR_DATA8(y1>>8);
   LCD_WR_DATA8(y1);
   LCD_WR_DATA8(y2>>8);
   LCD_WR_DATA8(y2);

   LCD_WR_REG(0x2C);					 						 
}


void gpio_init(){
	
    GPIO_TRI = 0xfffffff0;
}

void set_pin(u8 pin){
    GPIO_DATA |= pin; 
}

void reset_pin(u8 pin){
    GPIO_DATA &= ~pin;
}


uint16_t R888T565(uint32_t color) {
    uint16_t c;
    uint8_t r = (uint8_t) (color >> 16) >> 3;
    uint8_t g = (uint8_t) ((color << 16) >> 24) >> 2;
    uint8_t b = (uint8_t) ((color << 24) >> 24) >> 3;
    c = (r << 11) | (g << 5) | (b << 0);
    return c;
}

uint32_t R565T888(uint16_t color) {
    uint32_t c;
    uint8_t r = (uint8_t) (color >> 11) << 3;
    uint8_t g = (uint8_t) ((color << 5) >> 11) << 2;
    uint8_t b = (uint8_t) ((color << 11) >> 11) << 3;
    c = (r << 16) | (g << 8) | (b << 0);
    return c;
}

void LCD_draw_picture(const u32 *p,int height, int width){
		signed short i,j;//j是x
		u16 x,y;
		Address_set(0,0,width-1,height-1);
   /* for(j=0;j<1280;j+=4)
		{
	  for (i=719;i>=0;i-=3)
	   	{		
        	//LCD_WR_DATA(R888T565(p[i*320*4+j*240*3]));
					LCD_WR_DATA(R888T565(*((u32*)0x80000000+(i*320*4+j))));
	    }
	  }*/
	/*for(i=0;i<LCD_H;i++){
			for(j=0;j<LCD_W;j++){
					LCD_WR_DATA(R888T565(p[i*LCD_W+j]));
			}
	}*/
	/*for(j=0;j<320;j++)
		{
	  for (i=239;i>=0;i--)
	   	{		
        	LCD_WR_DATA(R888T565(p[i*5120+j*4]));
					//LCD_WR_DATA(R888T565(*((u32*)0x80000000+(i*510+j*4))));
	    }
		}*/
		
	/*	for (i=0;i<1280;i++){
			for(j=0;j<720;j++){
				LCD_WR_DATA(R888T565(p[i*720+j])
			}
		}*/
		/*for(i=0;i<240;i++){
			for(j=0;j<320;j++){
				LCD_WR_DATA(R888T565(p[i*1280*3+j*4]));
			}
		}*/
		
			for(i=0;i<height;i++){
				for(j=0;j<width;j++){
					LCD_WR_DATA(R888T565(p[i*width+j]));
			}
		}
}

void show_pic(EbGrayImg *img){
	u32* imgData = (u32*)img->imageData;
	int imgHeight = img->height;
	int imgWidth  = img->width;
	signed short i,j;//j是x
	Address_set(0,0,imgWidth-1,imgHeight-1);
			for(i=0;i<imgHeight;i++){
				for(j=0;j<imgWidth;j++){
					LCD_WR_DATA(R888T565(imgData[i*imgWidth+j]));
			}
		}
}

void clear_pic(EbGrayImg *img){
	u32* imgData = (u32*)img->imageData;
	int imgHeight = img->height;
	int imgWidth  = img->width;
	signed short i,j;//j是x
	Address_set(0,0,imgWidth-1,imgHeight-1);
			for(i=0;i<imgHeight;i++){
				for(j=0;j<imgWidth;j++){
					LCD_WR_DATA(R888T565(0x00ffffff));
			}
		}
}
/*
void LCD_DrawLine(u16 x1, u16 y1, u16 x2, u16 y2,u16 color)
{
	u16 t; 
	int xerr=0,yerr=0,delta_x,delta_y,distance; 
	int incx,incy,uRow,uCol; 

	delta_x=x2-x1; //?????? 
	delta_y=y2-y1; 
	uRow=x1; 
	uCol=y1; 
	if(delta_x>0)incx=1; //?????? 
	else if(delta_x==0)incx=0;//??? 
	else {incx=-1;delta_x=-delta_x;} 
	if(delta_y>0)incy=1; 
	else if(delta_y==0)incy=0;//??? 
	else{incy=-1;delta_y=-delta_y;} 
	if( delta_x>delta_y)distance=delta_x; //????????? 
	else distance=delta_y; 
	for(t=0;t<=distance+1;t++ )//???? 
	{  
		LCD_DrawPoint(uRow,uCol,color);//?? 
		xerr+=delta_x ; 
		yerr+=delta_y ; 
		if(xerr>distance) 
		{ 
			xerr-=distance; 
			uRow+=incx; 
		} 
		if(yerr>distance) 
		{ 
			yerr-=distance; 
			uCol+=incy; 
		} 
	}  
}*/

void LCD_DrawLine(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1, uint16_t color) {
    float slope = ((float) (y1 - y0) / (x1 - x0));
    uint16_t y;
    if (x0 == x1) {
        if (y1 >= y0) {
            for (uint16_t i = y0; i <= y1; ++i) {
                LCD_DrawPoint(x0, i, color);
            }
        } else {
            for (uint16_t i = y1; i <= y0; ++i) {
                LCD_DrawPoint(x0, i, color);
            }
        }
    } else if(y0 == y1){
        if (x1 >= x0) {
            for (uint16_t i = x0; i <= x1; ++i) {
                LCD_DrawPoint(i, y0, color);
            }
        } else {
            for (uint16_t i = x1; i <= x0; ++i) {
                LCD_DrawPoint(i, y0, color);
            }
        }
    }

}


void LCD_DrawPoint(u16 x,u16 y,u16 color)
{
	Address_set(x,y,x,y);
	LCD_WR_DATA(color); 	    
} 	 



void LCD_DrawRectangle(u16 x1, u16 y1, u16 x2, u16 y2,u16 color)
{
	LCD_DrawLine(x1,y1,x2,y1,color);
	LCD_DrawLine(x1,y1,x1,y2,color);
	LCD_DrawLine(x1,y2,x2,y2,color);
	LCD_DrawLine(x2,y1,x2,y2,color);
}

void LCD_DrawFont(uint16_t x, uint16_t y, uint8_t chars, uint8_t size, uint16_t forColor, uint16_t backColor) {
    uint8_t num = (uint8_t) (chars - ' ');
    sFONT font;
    uint8_t bsize = 0;
    switch (size) {
        case 20:
            font = Font20;
            bsize = 2;
            break;
        case 24:
            font = Font24;
            bsize = 3;
            break;
        default:
            font = Font20;
            bsize = 2;
            break;
    }

    for (uint8_t i = 0; i < font.Height; ++i) {
        for (uint8_t j = 0; j < bsize; ++j) {
            uint8_t tmp = font.table[num * (font.Height) * bsize + i * bsize + j];
            for (uint8_t k = 0; k < 8; ++k) {
                if (tmp & 0x80) {
                    LCD_DrawPoint((uint16_t) (x + j * 8 + k), y + i, forColor);
                } else {
                    LCD_DrawPoint((uint16_t) (x + j * 8 + k), y + i, backColor);
                }
                tmp <<= 1;
            }
        }
    }

//    for (uint8_t i = 0; i < font.Height; ++i) {
//        uint8_t tmp = font.table[num * 12 + i];
//        for (uint8_t j = 0; j < 8; ++j) {
//            if (tmp & 0x80) {
//                ltdc_draw_point(x + j, y + i, WHITE);
//            } else {
//                ltdc_draw_point(x + j, y + i, BLACK);
//            }
//            tmp <<= 1;
//        }
//    }
}


void LCD_DrawString(uint16_t x, uint16_t y, uint8_t *s, uint8_t size, uint16_t forColor, uint16_t backColor) {
    uint8_t len = strlen(s);
    uint16_t x1 = x;
    uint16_t y1 = y;

    sFONT font;
    uint8_t bsize = 0;
    switch (size) {
        case 20:
            font = Font20;
            bsize = 2;
            break;
        case 24:
            font = Font24;
            bsize = 3;
            break;
        default:
            font = Font20;
            bsize = 2;
            break;
    }

    for (uint16_t i = 0; i < len; ++i) {
        x1 = (uint16_t) (x1 + font.Width);
//        x1 = (uint16_t) (x1 + bsize*8);
        if (x1 > 239 - 7) {
            x1 = 0;
            y1 = (uint16_t) (y1 + font.Height);
        }
        LCD_DrawFont(x1, y1, *(s + i), size, forColor, backColor);
    }
}

void LCD_DrawPic(u16 x1, u16 y1,EbGrayImg *img){
	
	u32* imgData = (u32*)img->imageData;
	int imgHeight = img->height;
	int imgWidth  = img->width;
	signed short i,j;//j是x
	Address_set(x1,y1,imgWidth-1+x1,imgHeight-1+y1);
			for(i=0;i<imgHeight;i++){
				for(j=0;j<imgWidth;j++){
					LCD_WR_DATA(R888T565(imgData[i*imgWidth+j]));
			}
		}
}


void debug_Pic(EbGrayImg *img){
	
	u32* imgData = (u32*)img->imageData;
	int imgHeight = img->height;
	int imgWidth  = img->width;
	signed short i,j;//j是x
			for(i=0;i<imgHeight;i++){
				for(j=0;j<imgWidth;j++){
					debug("%d, ",imgData[i*imgWidth+j]);
					//delayms(10);
			}
				//debug("\n");
		}
			debug("\n");

}
