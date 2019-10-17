#ifndef LCD_H
#define LCD_H
#include "sys.h"
#include "type.h"
#define OLED_CMD  0	
#define OLED_DATA 1	


#define LCD_W 240
#define LCD_H 320


#define OLED_MODE 0
#define SIZE 16
#define XLevelL		0x00
#define XLevelH		0x10
#define Max_Column	128
#define Max_Row		64
#define	Brightness	0xFF 
#define X_WIDTH 	128

#define GPIO_BASE       0x40120000


#define DATA_OFFSET     0x0
#define TRI_OFFSET      0x4

#define GPIO_DATA   (*(volatile unsigned long *)(GPIO_BASE+DATA_OFFSET))
#define GPIO_TRI    (*(volatile unsigned long *)(GPIO_BASE+TRI_OFFSET))

#define PIN0 (u8)1<<0
#define PIN1 (u8)1<<1
#define PIN2 (u8)1<<2
#define PIN3 (u8)1<<3

#define OLED_SCLK_Clr() reset_pin(PIN0)
#define OLED_SCLK_Set() set_pin(PIN0)

#define OLED_SDIN_Clr() reset_pin(PIN1)
#define OLED_SDIN_Set() set_pin(PIN1)

#define OLED_RST_Clr() reset_pin(PIN2)
#define OLED_RST_Set() set_pin(PIN2)

#define OLED_DC_Clr() reset_pin(PIN3)
#define OLED_DC_Set() set_pin(PIN3)



#define WHITE         	 0xFFFF
#define BLACK         	 0x0000	  
#define BLUE         	 0x001F  
#define BRED             0XF81F
#define GRED 			 0XFFE0
#define GBLUE			 0X07FF
#define RED           	 0xF800
#define MAGENTA       	 0xF81F
#define GREEN         	 0x07E0
#define CYAN          	 0x7FFF
#define YELLOW        	 0xFFE0
#define BROWN 			 0XBC40 
#define BRRED 			 0XFC07
#define GRAY  			 0X8430


#define DARKBLUE      	 0X01CF
#define LIGHTBLUE      	 0X7D7C	
#define GRAYBLUE       	 0X5458

 
#define LIGHTGREEN     	 0X841F
#define LGRAY 			 0XC618 

#define LGRAYBLUE        0XA651
#define LBBLUE           0X2B12



void LCD_init(void);

void LCD_Clear(u16 Color);
void Address_set(unsigned int x1,unsigned int y1,unsigned int x2,unsigned int y2);

void LCD_WR_DATA8(char da);
void LCD_WR_DATA(int da);
void LCD_WR_REG(char da);

//void LCD_DrawPoint(u16 x,u16 y,u16 color);
u16  LCD_ReadPoint(u16 x,u16 y);

void Draw_Circle(u16 x0,u16 y0,u8 r);
//void LCD_DrawLine(u16 x1, u16 y1, u16 x2, u16 y2,u16 color);
void LCD_DrawRectangle(u16 x1, u16 y1, u16 x2, u16 y2,u16 color);		   
void LCD_Fill(u16 xsta,u16 ysta,u16 xend,u16 yend,u16 color);

void LCD_draw_picture(const u32 *p,int, int);
// by xuzhenyu//
void show_pic(EbGrayImg *);
void clear_pic(EbGrayImg *);
/*********************/
void gpio_init(void);

void set_pin(u8);

void reset_pin(u8);

//void trans_point(const u16* x,const u16 *y,u16* x1,u16* y1);

void LCD_DrawLine(u16 x1, u16 y1, u16 x2, u16 y2,u16 color);

void LCD_DrawPoint(u16 x,u16 y,u16 color);

uint32_t R565T888(uint16_t color);

uint16_t R888T565(uint32_t color);

void LCD_DrawPic(u16 x1, u16 y1,EbGrayImg *);

void LCD_DrawFont(uint16_t x, uint16_t y, uint8_t chars, uint8_t size, uint16_t forColor, uint16_t backColor);

void LCD_DrawString(uint16_t x, uint16_t y, uint8_t *s, uint8_t size, uint16_t forColor, uint16_t backColor);


void debug_Pic(EbGrayImg *img);

#endif