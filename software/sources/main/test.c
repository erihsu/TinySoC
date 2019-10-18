#include "memalloc.h"

#include "xparameters.h"
//#include "OV5640.h"
#include "sys.h"
#include "DMA.h"
#include "OV5640_1.h"
#include "lcd.h"
/********************************************/
/***************by xuzhenyu******************/
/*******************************************/
#include "image.h"
#include <stdlib.h>

#define MAX_WIDTH 320
#define MAX_HEIGHT 240
#define MAX_LEN    MAX_WIDTH*MAX_HEIGHT

#define POINT_COLOR BLACK

static XUartLite UART0_instance;

#define MEM_BASE_ADDR		0x80000000
#define BYTES_PER_PIXEL 4
#define MAX_PKT_LEN		(MAX_WIDTH * MAX_HEIGHT * BYTES_PER_PIXEL)
XGpio BTN;
int flag = 0;
char char_result = 0;
u32 img_test4[784]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,13,56,0,0,0,0,0,0,0,18,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,30,58,0,0,0,0,0,0,0,37,42,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,49,58,0,0,0,0,0,0,0,24,53,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,17,63,34,0,0,0,0,0,0,0,29,63,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11,59,54,3,0,0,0,0,0,0,0,48,63,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,42,62,13,0,0,0,0,0,0,0,5,64,63,5,0,0,0,0,0,0,0,0,0,0,0,0,0,21,61,53,0,0,0,0,0,0,0,0,35,63,47,1,0,0,0,0,0,0,0,0,0,0,0,0,0,42,63,27,0,0,0,0,0,0,0,8,58,63,17,0,0,0,0,0,0,0,0,0,0,0,0,0,4,56,63,0,0,0,0,0,0,0,0,34,63,53,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,63,41,0,0,0,0,0,0,0,0,42,63,42,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,51,52,5,0,0,0,0,0,0,6,63,63,27,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,42,63,50,21,21,21,21,32,41,49,63,63,27,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,43,61,63,63,63,63,58,58,63,63,63,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,21,21,21,21,0,0,40,63,63,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,63,63,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,63,63,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,63,63,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,34,63,61,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,58,59,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,45,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
int main()
{
		XGpio_Initialize(&BTN, XPAR_BTN_DEVICE_ID);
		SNVIC_ClearAllPendingIRQ();
		SNVIC_EnableIRQ(0);
		SNVIC_EnableIRQ(3);
		SNVIC_EnableIRQ(4);
		SNVIC_EnableIRQ(5);
		SNVIC_EnableIRQ(6);
		SNVIC_EnableIRQ(7);
		SNVIC_EnableIRQ(8);
		SNVIC_EnableIRQ(9);
		SNVIC_EnableIRQ(10);
		SNVIC_EnableIRQ(11);
		SNVIC_EnableIRQ(12);
		pool_init();
		XGpio_SetDataDirection(&BTN,1,0xf);
		XGpio_InterruptEnable(&BTN,0x01);
		XGpio_InterruptGlobalEnable(&BTN);
		DMA_Trans((u32)MEM_BASE_ADDR,MAX_PKT_LEN, DEVICE_TO_DMA);
		//delayms(10000);
		DMA_Trans((u32)img_test4,28*28*4, DMA_TO_DEVICE);
		print("finished\n");
		while(1);
}

void GPIO0_Handler( void )
{
	/*
    volatile uint32_t gpio_dip_switches;

    // Read dip switches, change LEDs to match
    gpio_dip_switches = XGpio_DiscreteRead(&Gpio_Led_DIPSw, ARTY_A7_DIP_CHANNEL);   // Capture DIP status
    XGpio_DiscreteWrite(&Gpio_Led_DIPSw, ARTY_A7_LED_CHANNEL, gpio_dip_switches);   // Set LEDs

    // Clear interrupt from GPIO
    XGpio_InterruptClear(&Gpio_Led_DIPSw, XGPIO_IR_MASK);
    // Clear interrupt in NVIC
    NVIC_ClearPendingIRQ(GPIO0_IRQn);
	*/
	print("trigger button\n");
	//delayms(10);
	XGpio_InterruptClear(&BTN, 0x01);
	SNVIC_ClearPendingIRQ(0);
}
