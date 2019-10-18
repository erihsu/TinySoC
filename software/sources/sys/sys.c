#include "sys.h"
extern char char_result;
extern u8 num;
extern u8 ready;
void delay_us(u32 nus) {
    if (nus == 0)
        return;
    u32 temp;
    SYSTICK_VAL = 0;
    SYSTICK_LOAD = SYSCLK * nus;
		SYSTICK_CSR |= 1<<2;
    SYSTICK_CSR |= 1;

    do {
        temp = SYSTICK_CSR;
    } while (temp & (0x01) && !(temp & (1 << 16)));
    SYSTICK_CSR &= ~0x1;
    SYSTICK_VAL = 0x0;
}

void delay_ms(u16 nms) {
   /* if (nms == 0)
        return;
    u32 temp;
    SYSTICK_LOAD = SYSCLK *1000* nms;
    SYSTICK_VAL = 0;
		SYSTICK_CSR |= 1<<2;
    SYSTICK_CSR |= 1;

    do {
        temp = SYSTICK_CSR;
    } while ((temp & 0x01) && !(temp & (1 << 16)));  
    SYSTICK_CSR &= ~0x1;
    SYSTICK_VAL = 0;*/
	u16 i=0;
	for(i;i<nms;i++){
		delay_us(1000);
	}
	
}

void usleep(u32 nms){
    delay_us(nms);
}

void delayus(u32 nus){
	delay_us(nus);
}

void delayms(u16 nms){
	delay_ms(nms);
}

void debug(const uint8_t *s, ...) {

    va_list arg;
		uint8_t i = 0;
		uint32_t k = 0;
		uint32_t j = 0;
		uint8_t *p;
		uint32_t vag =0;
		uint32_t tmp =0;
		uint8_t num =0;
		uint32_t tmp1 =0;
		uint8_t a = 0;
		uint8_t vag1 = 0;
    va_start(arg, s);

    for (i = 0; i < strlen(s); ++i) {
        switch (s[i]) {
            case '%': {
                switch (s[i + 1]) {
                    case 'd': {
                         vag = va_arg(arg, uint32_t);
                         tmp = vag;
                         num = 0;
                        if (tmp == 0) {
                            num = 1;
                        }
                        while (tmp) {
                            num++;
                            tmp /= 10;
                        }

                        tmp = vag;
                        tmp1 = 1;
                        for ( k = 0; k < num - 1; ++k) {
                            tmp1 *= 10;
                        }
                        for ( j = 0; j < num; ++j) {
                            a = (uint8_t) (tmp / tmp1);
                            outbyte(a + '0');
                            tmp = tmp % tmp1;
                            tmp1 /= 10;
                        }
                    };
                        break;
                    case 'c': {
                        vag1 = va_arg(arg, uint32_t);
                        outbyte(vag1);
                    };
                        break;
                    case 's': {
                        p = va_arg(arg, uint8_t*);
                        for (j = 0; j < strlen(p); ++j) {
                            outbyte(p[j]);
                        }
                    };
                        break;
                    default:
                        break;
                }

            };
                i += 1;
                break;
            default:
                outbyte(s[i]);
                break;
        }
    }
    va_end(arg);
}



void SNVIC_ClearAllPendingIRQ(){
	NVIC->ICPR[0] = 0xFFFFFFFF; 
}

void SNVIC_EnableIRQ(u32 IRQn)
{
  NVIC->ISER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* enable interrupt */
}

void SNVIC_ClearPendingIRQ(u32 IRQn)
{
  NVIC->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* Clear pending interrupt */
}

void NUM0_Handler(){
	SNVIC_ClearPendingIRQ(3);
	flag = 0;
	num = 0;
	print("0\n");
	ready = 1;
}
void NUM1_Handler(){
	SNVIC_ClearPendingIRQ(4);
	flag = 0;
	num = 1;
	print("1\n");
	ready = 1;
}
void NUM2_Handler(){
	SNVIC_ClearPendingIRQ(5);
	flag = 0;
  num = 2;
	print("2\n");
	ready = 1;
}
void NUM3_Handler(){
	SNVIC_ClearPendingIRQ(6);
	flag = 0;
  num = 3;
  print("3\n");
	ready = 1;
	
}
void NUM4_Handler(){
	SNVIC_ClearPendingIRQ(7);
	flag = 0;
	num = 4;
	print("4\n");
	ready = 1;
	
}  
void NUM5_Handler(){
	SNVIC_ClearPendingIRQ(8);
	flag = 0;
	num = 5;
	print("5\n");
	ready = 1;
	
}   
void NUM6_Handler(){
	SNVIC_ClearPendingIRQ(9);
	flag = 0;
	num = 6;
	print("6\n");
	ready = 1;
	
} 
void NUM7_Handler(){
	SNVIC_ClearPendingIRQ(10);
	flag = 0;
	num = 7;
	print("7\n");
	ready = 1;
	
}
void NUM8_Handler(){
	SNVIC_ClearPendingIRQ(11);
	flag = 0;
	num = 8;
	print("8\n");
	ready = 1;
	
}
void NUM9_Handler(){
	SNVIC_ClearPendingIRQ(12);
	flag = 0;
	num = 9;
	print("9\n");
	ready = 1;
	
}

void set_IO(XGpio* gpio,u8 channel,u8 pin){
	u32 data = XGpio_DiscreteRead(gpio,channel);
	u8 mask = 0x01<<pin;
	data |= mask;
	XGpio_DiscreteWrite(gpio,channel,data);

}
void reset_IO(XGpio* gpio,u8 channel,u8 pin){
	u32 data = XGpio_DiscreteRead(gpio,channel);
	u8 mask = 0x01<<pin;
	data &= ~mask;
	XGpio_DiscreteWrite(gpio,channel,data);
}
void xil_printf( const char8 *ctrl1, ...){};
