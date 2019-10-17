#include "sys.h"

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
	print("0\n");
	SNVIC_ClearPendingIRQ(3);
}
void NUM1_Handler(){
		print("1\n");
	SNVIC_ClearPendingIRQ(4);
}
void NUM2_Handler(){
		print("2\n");
	SNVIC_ClearPendingIRQ(5);
}
void NUM3_Handler(){
		print("3\n");
	SNVIC_ClearPendingIRQ(6);
}
void NUM4_Handler(){
		print("4\n");
	SNVIC_ClearPendingIRQ(7);
}  
void NUM5_Handler(){
		print("5\n");
	SNVIC_ClearPendingIRQ(8);
}   
void NUM6_Handler(){
		print("6\n");
	SNVIC_ClearPendingIRQ(9);
} 
void NUM7_Handler(){
		print("7\n");
	SNVIC_ClearPendingIRQ(10);
}
void NUM8_Handler(){
		print("8\n");
	SNVIC_ClearPendingIRQ(11);
}
void NUM9_Handler(){
		print("9\n");
	SNVIC_ClearPendingIRQ(12);
}



