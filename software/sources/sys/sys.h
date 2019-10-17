#ifndef SYS_H
#define SYS_H

#include "xgpio.h"
#include "xparameters.h"
#include "xuartlite.h"
#define SYSCLK 25

#define SYSTICK_CAL     (*((volatile unsigned long *)0xE000E01C)) 
#define SYSTICK_VAL     (*((volatile unsigned long *)0xE000E018)) 
#define SYSTICK_LOAD    (*((volatile unsigned long *)0xE000E014)) 
#define SYSTICK_CSR     (*((volatile unsigned long *)0xE000E010)) 
	
//#define NVIC_BASE				0xE000E100
#define SCS_BASE            (0xE000E000UL)  
#define NVIC_BASE           (SCS_BASE +  0x0100UL)   
//#define ICPR						(*((volatile unsigned long *)NVIC_BASE + 0x180))

#define     __O     volatile  
#define     __IO    volatile

typedef struct
{
  __IO uint32_t ISER[8];                 /*!< Offset: 0x000 (R/W)  Interrupt Set Enable Register           */
       uint32_t RESERVED0[24];
  __IO uint32_t ICER[8];                 /*!< Offset: 0x080 (R/W)  Interrupt Clear Enable Register         */
       uint32_t RSERVED1[24];
  __IO uint32_t ISPR[8];                 /*!< Offset: 0x100 (R/W)  Interrupt Set Pending Register          */
       uint32_t RESERVED2[24];
  __IO uint32_t ICPR[8];                 /*!< Offset: 0x180 (R/W)  Interrupt Clear Pending Register        */
       uint32_t RESERVED3[24];
  __IO uint32_t IABR[8];                 /*!< Offset: 0x200 (R/W)  Interrupt Active bit Register           */
       uint32_t RESERVED4[56];
  __IO uint8_t  IP[240];                 /*!< Offset: 0x300 (R/W)  Interrupt Priority Register (8Bit wide) */
       uint32_t RESERVED5[644];
  __O  uint32_t STIR;                    /*!< Offset: 0xE00 ( /W)  Software Trigger Interrupt Register     */
}  NVIC_Type;

#define NVIC                ((NVIC_Type      *)     NVIC_BASE     ) 



void CLOCK_HIGH();

void DATA_HIGH();

void CLOCK_LOW();

void DATA_LOW();

void usleep(u32 nms);

void delay_us(u32 nus);

void delay_ms(u16 nms);

void SNVIC_ClearAllPendingIRQ();

void SNVIC_EnableIRQ(u32 IRQn);

void SNVIC_ClearPendingIRQ(u32 IRQn);

void NUM0_Handler();
void NUM1_Handler();
void NUM2_Handler();
void NUM3_Handler();
void NUM4_Handler();   
void NUM5_Handler();   
void NUM6_Handler(); 
void NUM7_Handler();
void NUM8_Handler();
void NUM9_Handler();

#endif
