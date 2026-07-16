#line 1 "..\\Drivers\\BSP\\Components\\st7789\\st7789.c"
#line 1 "..\\Drivers\\BSP\\Components\\st7789\\st7789.h"



#line 1 "../Inc/main.h"

















 

 



 
#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

















 

 







 
#line 1 "../Inc/stm32f1xx_hal_conf.h"

















 

 







 
 

 


 


 
 
 

 
 

 
 


 
 
 
 
 
 
 
 
 
#line 63 "../Inc/stm32f1xx_hal_conf.h"
 
 

 
 

 




 
#line 82 "../Inc/stm32f1xx_hal_conf.h"









 






 









 









 

 


      





#line 152 "../Inc/stm32f1xx_hal_conf.h"

 



 
 

 

 

 
#line 171 "../Inc/stm32f1xx_hal_conf.h"

    






 

  

  

 





 



 
#line 206 "../Inc/stm32f1xx_hal_conf.h"




  
 




 










 




 





 


 

#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"















 

 







 
#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"

















 

 







 
#line 1 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"


























 



 



 
    






  


 



 






 

#line 77 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"



 
  
#line 90 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"



 
#line 102 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"



 



 

#line 1 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
























 




 



 
    









 


 







 



 




 

  
typedef enum
{
 
  NonMaskableInt_IRQn         = -14,     
  HardFault_IRQn              = -13,     
  MemoryManagement_IRQn       = -12,     
  BusFault_IRQn               = -11,     
  UsageFault_IRQn             = -10,     
  SVCall_IRQn                 = -5,      
  DebugMonitor_IRQn           = -4,      
  PendSV_IRQn                 = -2,      
  SysTick_IRQn                = -1,      

 
  WWDG_IRQn                   = 0,       
  PVD_IRQn                    = 1,       
  TAMPER_IRQn                 = 2,       
  RTC_IRQn                    = 3,       
  FLASH_IRQn                  = 4,       
  RCC_IRQn                    = 5,       
  EXTI0_IRQn                  = 6,       
  EXTI1_IRQn                  = 7,       
  EXTI2_IRQn                  = 8,       
  EXTI3_IRQn                  = 9,       
  EXTI4_IRQn                  = 10,      
  DMA1_Channel1_IRQn          = 11,      
  DMA1_Channel2_IRQn          = 12,      
  DMA1_Channel3_IRQn          = 13,      
  DMA1_Channel4_IRQn          = 14,      
  DMA1_Channel5_IRQn          = 15,      
  DMA1_Channel6_IRQn          = 16,      
  DMA1_Channel7_IRQn          = 17,      
  ADC1_2_IRQn                 = 18,      
  USB_HP_CAN1_TX_IRQn         = 19,      
  USB_LP_CAN1_RX0_IRQn        = 20,      
  CAN1_RX1_IRQn               = 21,      
  CAN1_SCE_IRQn               = 22,      
  EXTI9_5_IRQn                = 23,      
  TIM1_BRK_IRQn               = 24,      
  TIM1_UP_IRQn                = 25,      
  TIM1_TRG_COM_IRQn           = 26,      
  TIM1_CC_IRQn                = 27,      
  TIM2_IRQn                   = 28,      
  TIM3_IRQn                   = 29,      
  TIM4_IRQn                   = 30,      
  I2C1_EV_IRQn                = 31,      
  I2C1_ER_IRQn                = 32,      
  I2C2_EV_IRQn                = 33,      
  I2C2_ER_IRQn                = 34,      
  SPI1_IRQn                   = 35,      
  SPI2_IRQn                   = 36,      
  USART1_IRQn                 = 37,      
  USART2_IRQn                 = 38,      
  USART3_IRQn                 = 39,      
  EXTI15_10_IRQn              = 40,      
  RTC_Alarm_IRQn              = 41,      
  USBWakeUp_IRQn              = 42,      
} IRQn_Type;



 

#line 1 "../Drivers/CMSIS/Include/core_cm3.h"
 




 
















 










#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 35 "../Drivers/CMSIS/Include/core_cm3.h"

















 




 



 

#line 1 "../Drivers/CMSIS/Include/cmsis_version.h"
 




 
















 










 
#line 64 "../Drivers/CMSIS/Include/core_cm3.h"

 









 







#line 114 "../Drivers/CMSIS/Include/core_cm3.h"

#line 1 "../Drivers/CMSIS/Include/cmsis_compiler.h"
 




 
















 




#line 29 "../Drivers/CMSIS/Include/cmsis_compiler.h"



 
#line 1 "../Drivers/CMSIS/Include/cmsis_armcc.h"
 




 
















 









 













   
   


 
#line 103 "../Drivers/CMSIS/Include/cmsis_armcc.h"

 



 





 
 






 
 





 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}






 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}






 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}






 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}






 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}






 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}






 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}






 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}






 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}






 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}






 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}









 







 







 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}






 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xFFU);
}







 
static __inline void __set_BASEPRI_MAX(uint32_t basePri)
{
  register uint32_t __regBasePriMax      __asm("basepri_max");
  __regBasePriMax = (basePri & 0xFFU);
}






 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}






 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1U);
}









 
static __inline uint32_t __get_FPSCR(void)
{





   return(0U);

}






 
static __inline void __set_FPSCR(uint32_t fpscr)
{





  (void)fpscr;

}


 


 



 




 






 







 






 








 










 










 






                  





 








 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 

__attribute__((section(".revsh_text"))) static __inline __asm int16_t __REVSH(int16_t value)
{
  revsh r0, r0
  bx lr
}









 









 








 
#line 532 "../Drivers/CMSIS/Include/cmsis_armcc.h"







 











 












 












 














 














 














 










 









 









 









 

__attribute__((section(".rrx_text"))) static __inline __asm uint32_t __RRX(uint32_t value)
{
  rrx r0, r0
  bx lr
}








 








 








 








 








 








 


#line 780 "../Drivers/CMSIS/Include/cmsis_armcc.h"

   


 



 

#line 862 "../Drivers/CMSIS/Include/cmsis_armcc.h"
 


#line 35 "../Drivers/CMSIS/Include/cmsis_compiler.h"




 
#line 263 "../Drivers/CMSIS/Include/cmsis_compiler.h"




#line 116 "../Drivers/CMSIS/Include/core_cm3.h"

















 
#line 155 "../Drivers/CMSIS/Include/core_cm3.h"

 






 
#line 171 "../Drivers/CMSIS/Include/core_cm3.h"

 




 












 



 






 



 
typedef union
{
  struct
  {
    uint32_t _reserved0:27;               
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;

 


















 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;

 






 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:1;                
    uint32_t ICI_IT_1:6;                  
    uint32_t _reserved1:8;                
    uint32_t T:1;                         
    uint32_t ICI_IT_2:2;                  
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;

 






























 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t _reserved1:30;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 







 



 
typedef struct
{
  volatile uint32_t ISER[8U];                
        uint32_t RESERVED0[24U];
  volatile uint32_t ICER[8U];                
        uint32_t RSERVED1[24U];
  volatile uint32_t ISPR[8U];                
        uint32_t RESERVED2[24U];
  volatile uint32_t ICPR[8U];                
        uint32_t RESERVED3[24U];
  volatile uint32_t IABR[8U];                
        uint32_t RESERVED4[56U];
  volatile uint8_t  IP[240U];                
        uint32_t RESERVED5[644U];
  volatile  uint32_t STIR;                    
}  NVIC_Type;

 



 







 



 
typedef struct
{
  volatile const  uint32_t CPUID;                   
  volatile uint32_t ICSR;                    
  volatile uint32_t VTOR;                    
  volatile uint32_t AIRCR;                   
  volatile uint32_t SCR;                     
  volatile uint32_t CCR;                     
  volatile uint8_t  SHP[12U];                
  volatile uint32_t SHCSR;                   
  volatile uint32_t CFSR;                    
  volatile uint32_t HFSR;                    
  volatile uint32_t DFSR;                    
  volatile uint32_t MMFAR;                   
  volatile uint32_t BFAR;                    
  volatile uint32_t AFSR;                    
  volatile const  uint32_t PFR[2U];                 
  volatile const  uint32_t DFR;                     
  volatile const  uint32_t ADR;                     
  volatile const  uint32_t MMFR[4U];                
  volatile const  uint32_t ISAR[5U];                
        uint32_t RESERVED0[5U];
  volatile uint32_t CPACR;                   
} SCB_Type;

 















 






























 




#line 457 "../Drivers/CMSIS/Include/core_cm3.h"

 





















 









 


















 










































 









 















 


















 


















 









 















 







 



 
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile const  uint32_t ICTR;                    

  volatile uint32_t ACTLR;                   



} SCnSCB_Type;

 



 










 







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t LOAD;                    
  volatile uint32_t VAL;                     
  volatile const  uint32_t CALIB;                   
} SysTick_Type;

 












 



 



 









 







 



 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                  
    volatile  uint16_t   u16;                 
    volatile  uint32_t   u32;                 
  }  PORT [32U];                          
        uint32_t RESERVED0[864U];
  volatile uint32_t TER;                     
        uint32_t RESERVED1[15U];
  volatile uint32_t TPR;                     
        uint32_t RESERVED2[15U];
  volatile uint32_t TCR;                     
        uint32_t RESERVED3[29U];
  volatile  uint32_t IWR;                     
  volatile const  uint32_t IRR;                     
  volatile uint32_t IMCR;                    
        uint32_t RESERVED4[43U];
  volatile  uint32_t LAR;                     
  volatile const  uint32_t LSR;                     
        uint32_t RESERVED5[6U];
  volatile const  uint32_t PID4;                    
  volatile const  uint32_t PID5;                    
  volatile const  uint32_t PID6;                    
  volatile const  uint32_t PID7;                    
  volatile const  uint32_t PID0;                    
  volatile const  uint32_t PID1;                    
  volatile const  uint32_t PID2;                    
  volatile const  uint32_t PID3;                    
  volatile const  uint32_t CID0;                    
  volatile const  uint32_t CID1;                    
  volatile const  uint32_t CID2;                    
  volatile const  uint32_t CID3;                    
} ITM_Type;

 



 



























 



 



 



 









   







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t CYCCNT;                  
  volatile uint32_t CPICNT;                  
  volatile uint32_t EXCCNT;                  
  volatile uint32_t SLEEPCNT;                
  volatile uint32_t LSUCNT;                  
  volatile uint32_t FOLDCNT;                 
  volatile const  uint32_t PCSR;                    
  volatile uint32_t COMP0;                   
  volatile uint32_t MASK0;                   
  volatile uint32_t FUNCTION0;               
        uint32_t RESERVED0[1U];
  volatile uint32_t COMP1;                   
  volatile uint32_t MASK1;                   
  volatile uint32_t FUNCTION1;               
        uint32_t RESERVED1[1U];
  volatile uint32_t COMP2;                   
  volatile uint32_t MASK2;                   
  volatile uint32_t FUNCTION2;               
        uint32_t RESERVED2[1U];
  volatile uint32_t COMP3;                   
  volatile uint32_t MASK3;                   
  volatile uint32_t FUNCTION3;               
} DWT_Type;

 






















































 



 



 



 



 



 



 



























   







 



 
typedef struct
{
  volatile const  uint32_t SSPSR;                   
  volatile uint32_t CSPSR;                   
        uint32_t RESERVED0[2U];
  volatile uint32_t ACPR;                    
        uint32_t RESERVED1[55U];
  volatile uint32_t SPPR;                    
        uint32_t RESERVED2[131U];
  volatile const  uint32_t FFSR;                    
  volatile uint32_t FFCR;                    
  volatile const  uint32_t FSCR;                    
        uint32_t RESERVED3[759U];
  volatile const  uint32_t TRIGGER;                 
  volatile const  uint32_t FIFO0;                   
  volatile const  uint32_t ITATBCTR2;               
        uint32_t RESERVED4[1U];
  volatile const  uint32_t ITATBCTR0;               
  volatile const  uint32_t FIFO1;                   
  volatile uint32_t ITCTRL;                  
        uint32_t RESERVED5[39U];
  volatile uint32_t CLAIMSET;                
  volatile uint32_t CLAIMCLR;                
        uint32_t RESERVED7[8U];
  volatile const  uint32_t DEVID;                   
  volatile const  uint32_t DEVTYPE;                 
} TPI_Type;

 



 



 












 






 



 





















 






 





















 






 



 


















 






   


#line 1242 "../Drivers/CMSIS/Include/core_cm3.h"







 



 
typedef struct
{
  volatile uint32_t DHCSR;                   
  volatile  uint32_t DCRSR;                   
  volatile uint32_t DCRDR;                   
  volatile uint32_t DEMCR;                   
} CoreDebug_Type;

 




































 






 







































 







 






 







 


 







 

 
#line 1391 "../Drivers/CMSIS/Include/core_cm3.h"

#line 1400 "../Drivers/CMSIS/Include/core_cm3.h"






 










 


 



 





 

#line 1451 "../Drivers/CMSIS/Include/core_cm3.h"

#line 1461 "../Drivers/CMSIS/Include/core_cm3.h"




 













 
static __inline void __NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);              

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((uint32_t)((0xFFFFUL << 16U) | (7UL << 8U)));  
  reg_value  =  (reg_value                                   |
                ((uint32_t)0x5FAUL << 16U) |
                (PriorityGroupTmp << 8U) );                
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}






 
static __inline uint32_t __NVIC_GetPriorityGrouping(void)
{
  return ((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) >> 8U));
}







 
static __inline void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}









 
static __inline uint32_t __NVIC_GetEnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}







 
static __inline void __NVIC_DisableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);
    do { __schedule_barrier(); __isb(0xF); __schedule_barrier(); } while (0U);
  }
}









 
static __inline uint32_t __NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}







 
static __inline void __NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}







 
static __inline void __NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}









 
static __inline uint32_t __NVIC_GetActive(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}










 
static __inline void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - 4U)) & (uint32_t)0xFFUL);
  }
  else
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - 4U)) & (uint32_t)0xFFUL);
  }
}










 
static __inline uint32_t __NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) >= 0)
  {
    return(((uint32_t)((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)IRQn)]               >> (8U - 4U)));
  }
  else
  {
    return(((uint32_t)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] >> (8U - 4U)));
  }
}












 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4U)) ? (uint32_t)(4U) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4U)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4U));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
         );
}












 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4U)) ? (uint32_t)(4U) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4U)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4U));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL);
}










 
static __inline void __NVIC_SetVector(IRQn_Type IRQn, uint32_t vector)
{
  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  vectors[(int32_t)IRQn + 16] = vector;
}









 
static __inline uint32_t __NVIC_GetVector(IRQn_Type IRQn)
{
  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  return vectors[(int32_t)IRQn + 16];
}





 
__declspec(noreturn) static __inline void __NVIC_SystemReset(void)
{
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);                                                          
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = (uint32_t)((0x5FAUL << 16U)    |
                           (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) |
                            (1UL << 2U)    );          
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);                                                           

  for(;;)                                                            
  {
    __nop();
  }
}

 

 







 





 








 
static __inline uint32_t SCB_GetFPUType(void)
{
    return 0U;            
}


 



 





 













 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);                                                    
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (uint32_t)(ticks - 1UL);                          
  __NVIC_SetPriority (SysTick_IRQn, (1UL << 4U) - 1UL);  
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0UL;                                              
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2U) |
                   (1UL << 1U)   |
                   (1UL );                          
  return (0UL);                                                      
}



 



 





 

extern volatile int32_t ITM_RxBuffer;                               










 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if (((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL )) != 0UL) &&       
      ((((ITM_Type *) (0xE0000000UL) )->TER & 1UL               ) != 0UL)   )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0U].u32 == 0UL)
    {
      __nop();
    }
    ((ITM_Type *) (0xE0000000UL) )->PORT[0U].u8 = (uint8_t)ch;
  }
  return (ch);
}







 
static __inline int32_t ITM_ReceiveChar (void)
{
  int32_t ch = -1;                            

  if (ITM_RxBuffer != ((int32_t)0x5AA55AA5U))
  {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = ((int32_t)0x5AA55AA5U);        
  }

  return (ch);
}







 
static __inline int32_t ITM_CheckChar (void)
{

  if (ITM_RxBuffer == ((int32_t)0x5AA55AA5U))
  {
    return (0);                               
  }
  else
  {
    return (1);                               
  }
}

 










#line 132 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
#line 1 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"
















 



 



   
  


 









 



 




 

extern uint32_t SystemCoreClock;           
extern const uint8_t  AHBPrescTable[16U];   
extern const uint8_t  APBPrescTable[8U];    



 



 



 



 



 



 
  
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);


 









 
  


 
#line 133 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
#line 134 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



    



 

typedef struct
{
  volatile uint32_t SR;
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t SMPR1;
  volatile uint32_t SMPR2;
  volatile uint32_t JOFR1;
  volatile uint32_t JOFR2;
  volatile uint32_t JOFR3;
  volatile uint32_t JOFR4;
  volatile uint32_t HTR;
  volatile uint32_t LTR;
  volatile uint32_t SQR1;
  volatile uint32_t SQR2;
  volatile uint32_t SQR3;
  volatile uint32_t JSQR;
  volatile uint32_t JDR1;
  volatile uint32_t JDR2;
  volatile uint32_t JDR3;
  volatile uint32_t JDR4;
  volatile uint32_t DR;
} ADC_TypeDef;

typedef struct
{
  volatile uint32_t SR;                
  volatile uint32_t CR1;               
  volatile uint32_t CR2;               
  uint32_t  RESERVED[16];
  volatile uint32_t DR;                
} ADC_Common_TypeDef;



 

typedef struct
{
  uint32_t  RESERVED0;
  volatile uint32_t DR1;
  volatile uint32_t DR2;
  volatile uint32_t DR3;
  volatile uint32_t DR4;
  volatile uint32_t DR5;
  volatile uint32_t DR6;
  volatile uint32_t DR7;
  volatile uint32_t DR8;
  volatile uint32_t DR9;
  volatile uint32_t DR10;
  volatile uint32_t RTCCR;
  volatile uint32_t CR;
  volatile uint32_t CSR;
} BKP_TypeDef;
  


 

typedef struct
{
  volatile uint32_t TIR;
  volatile uint32_t TDTR;
  volatile uint32_t TDLR;
  volatile uint32_t TDHR;
} CAN_TxMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t RIR;
  volatile uint32_t RDTR;
  volatile uint32_t RDLR;
  volatile uint32_t RDHR;
} CAN_FIFOMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t FR1;
  volatile uint32_t FR2;
} CAN_FilterRegister_TypeDef;



 
  
typedef struct
{
  volatile uint32_t MCR;
  volatile uint32_t MSR;
  volatile uint32_t TSR;
  volatile uint32_t RF0R;
  volatile uint32_t RF1R;
  volatile uint32_t IER;
  volatile uint32_t ESR;
  volatile uint32_t BTR;
  uint32_t  RESERVED0[88];
  CAN_TxMailBox_TypeDef sTxMailBox[3];
  CAN_FIFOMailBox_TypeDef sFIFOMailBox[2];
  uint32_t  RESERVED1[12];
  volatile uint32_t FMR;
  volatile uint32_t FM1R;
  uint32_t  RESERVED2;
  volatile uint32_t FS1R;
  uint32_t  RESERVED3;
  volatile uint32_t FFA1R;
  uint32_t  RESERVED4;
  volatile uint32_t FA1R;
  uint32_t  RESERVED5[8];
  CAN_FilterRegister_TypeDef sFilterRegister[14];
} CAN_TypeDef;



 

typedef struct
{
  volatile uint32_t DR;            
  volatile uint8_t  IDR;           
  uint8_t       RESERVED0;     
  uint16_t      RESERVED1;       
  volatile uint32_t CR;             
} CRC_TypeDef;




 

typedef struct
{
  volatile uint32_t IDCODE;
  volatile uint32_t CR;
}DBGMCU_TypeDef;



 

typedef struct
{
  volatile uint32_t CCR;
  volatile uint32_t CNDTR;
  volatile uint32_t CPAR;
  volatile uint32_t CMAR;
} DMA_Channel_TypeDef;

typedef struct
{
  volatile uint32_t ISR;
  volatile uint32_t IFCR;
} DMA_TypeDef;





 

typedef struct
{
  volatile uint32_t IMR;
  volatile uint32_t EMR;
  volatile uint32_t RTSR;
  volatile uint32_t FTSR;
  volatile uint32_t SWIER;
  volatile uint32_t PR;
} EXTI_TypeDef;



 

typedef struct
{
  volatile uint32_t ACR;
  volatile uint32_t KEYR;
  volatile uint32_t OPTKEYR;
  volatile uint32_t SR;
  volatile uint32_t CR;
  volatile uint32_t AR;
  volatile uint32_t RESERVED;
  volatile uint32_t OBR;
  volatile uint32_t WRPR;
} FLASH_TypeDef;



 
  
typedef struct
{
  volatile uint16_t RDP;
  volatile uint16_t USER;
  volatile uint16_t Data0;
  volatile uint16_t Data1;
  volatile uint16_t WRP0;
  volatile uint16_t WRP1;
  volatile uint16_t WRP2;
  volatile uint16_t WRP3;
} OB_TypeDef;



 

typedef struct
{
  volatile uint32_t CRL;
  volatile uint32_t CRH;
  volatile uint32_t IDR;
  volatile uint32_t ODR;
  volatile uint32_t BSRR;
  volatile uint32_t BRR;
  volatile uint32_t LCKR;
} GPIO_TypeDef;



 

typedef struct
{
  volatile uint32_t EVCR;
  volatile uint32_t MAPR;
  volatile uint32_t EXTICR[4];
  uint32_t RESERVED0;
  volatile uint32_t MAPR2;  
} AFIO_TypeDef;


 

typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t OAR1;
  volatile uint32_t OAR2;
  volatile uint32_t DR;
  volatile uint32_t SR1;
  volatile uint32_t SR2;
  volatile uint32_t CCR;
  volatile uint32_t TRISE;
} I2C_TypeDef;



 

typedef struct
{
  volatile uint32_t KR;            
  volatile uint32_t PR;            
  volatile uint32_t RLR;           
  volatile uint32_t SR;            
} IWDG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CSR;
} PWR_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFGR;
  volatile uint32_t CIR;
  volatile uint32_t APB2RSTR;
  volatile uint32_t APB1RSTR;
  volatile uint32_t AHBENR;
  volatile uint32_t APB2ENR;
  volatile uint32_t APB1ENR;
  volatile uint32_t BDCR;
  volatile uint32_t CSR;


} RCC_TypeDef;



 

typedef struct
{
  volatile uint32_t CRH;
  volatile uint32_t CRL;
  volatile uint32_t PRLH;
  volatile uint32_t PRLL;
  volatile uint32_t DIVH;
  volatile uint32_t DIVL;
  volatile uint32_t CNTH;
  volatile uint32_t CNTL;
  volatile uint32_t ALRH;
  volatile uint32_t ALRL;
} RTC_TypeDef;



 

typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t SR;
  volatile uint32_t DR;
  volatile uint32_t CRCPR;
  volatile uint32_t RXCRCR;
  volatile uint32_t TXCRCR;
  volatile uint32_t I2SCFGR;
} SPI_TypeDef;



 
typedef struct
{
  volatile uint32_t CR1;              
  volatile uint32_t CR2;              
  volatile uint32_t SMCR;             
  volatile uint32_t DIER;             
  volatile uint32_t SR;               
  volatile uint32_t EGR;              
  volatile uint32_t CCMR1;            
  volatile uint32_t CCMR2;            
  volatile uint32_t CCER;             
  volatile uint32_t CNT;              
  volatile uint32_t PSC;              
  volatile uint32_t ARR;              
  volatile uint32_t RCR;              
  volatile uint32_t CCR1;             
  volatile uint32_t CCR2;             
  volatile uint32_t CCR3;             
  volatile uint32_t CCR4;             
  volatile uint32_t BDTR;             
  volatile uint32_t DCR;              
  volatile uint32_t DMAR;             
  volatile uint32_t OR;               
}TIM_TypeDef;




 
 
typedef struct
{
  volatile uint32_t SR;          
  volatile uint32_t DR;          
  volatile uint32_t BRR;         
  volatile uint32_t CR1;         
  volatile uint32_t CR2;         
  volatile uint32_t CR3;         
  volatile uint32_t GTPR;        
} USART_TypeDef;



 
  
typedef struct
{
  volatile uint16_t EP0R;                   
  volatile uint16_t RESERVED0;                  
  volatile uint16_t EP1R;                  
  volatile uint16_t RESERVED1;                    
  volatile uint16_t EP2R;                  
  volatile uint16_t RESERVED2;                    
  volatile uint16_t EP3R;                   
  volatile uint16_t RESERVED3;                    
  volatile uint16_t EP4R;                  
  volatile uint16_t RESERVED4;                    
  volatile uint16_t EP5R;                  
  volatile uint16_t RESERVED5;                    
  volatile uint16_t EP6R;                  
  volatile uint16_t RESERVED6;                    
  volatile uint16_t EP7R;                  
  volatile uint16_t RESERVED7[17];              
  volatile uint16_t CNTR;                  
  volatile uint16_t RESERVED8;                    
  volatile uint16_t ISTR;                  
  volatile uint16_t RESERVED9;                    
  volatile uint16_t FNR;                   
  volatile uint16_t RESERVEDA;                    
  volatile uint16_t DADDR;                 
  volatile uint16_t RESERVEDB;                    
  volatile uint16_t BTABLE;                
  volatile uint16_t RESERVEDC;                    
} USB_TypeDef;




 

typedef struct
{
  volatile uint32_t CR;    
  volatile uint32_t CFR;   
  volatile uint32_t SR;    
} WWDG_TypeDef;



 
  


 











 




#line 612 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"


#line 624 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"










 






 
  


   

#line 688 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"




 



 

  

 

  

 

  

 
    
 
 
 

 
 
 
 
 

 




 




 




 
 
 
 
 

 
#line 757 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 764 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 774 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 784 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"






 
#line 803 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
 
 
 
 

 




 




 




 




 




 




 




 




 




 






 
#line 875 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 883 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 900 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
 
 
 
 

 
#line 938 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"


 
 










 










 
#line 971 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 981 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 989 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







 
#line 1003 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







 



















 
#line 1038 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"




#line 1088 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 1096 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







  
#line 1113 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 1166 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"


 
#line 1187 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





#line 1201 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"









 
#line 1226 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





#line 1237 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 1250 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"










 
#line 1273 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"




 
#line 1296 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





#line 1310 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"









 
#line 1335 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





#line 1346 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 1359 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"










 
#line 1379 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







 





#line 1398 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

   
#line 1427 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"


 
 
 
 
 
 

 








































































































 








































































































 
#line 1695 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 1745 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 1795 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 1844 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 1894 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 1947 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 

 
#line 1958 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2006 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 2013 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2028 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 
#line 2046 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







 
#line 2061 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







 
#line 2076 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







 
#line 2094 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







 
#line 2109 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"











 
#line 2128 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 
#line 2140 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 2151 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"


 
#line 2166 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2187 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2208 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

   
#line 2229 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2250 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2264 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2285 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2306 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

   
#line 2327 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2348 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2362 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2383 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2404 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

   
#line 2425 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2446 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2460 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2481 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2502 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

   
#line 2523 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2544 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 



 
 
 
 
 

 
#line 2613 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2635 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
 
 
#line 2694 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2715 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2774 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2795 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2854 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2875 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2934 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2955 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3014 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3035 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
 
 
 
 

 
#line 3127 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3213 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3239 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"























 




 




 




 
 
 
 
 



 


 
#line 3304 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 



 
#line 3318 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3343 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3350 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3358 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3365 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 



 
#line 3389 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3396 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





#line 3407 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3420 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3428 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3435 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3442 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3449 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3456 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3463 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3470 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3477 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3485 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3492 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3499 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3506 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3513 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3520 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3527 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3534 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3541 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3548 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 




 




 




 




 




 
#line 3588 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3597 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3606 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3615 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3623 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3633 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3642 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3651 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3660 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3669 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3678 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3688 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3697 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3706 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3715 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3724 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3733 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3743 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3752 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3761 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3770 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







 




 




 




 




 
#line 3804 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"


 
 
 
 
 
 
#line 3827 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

















 
#line 3854 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3861 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3886 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3894 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3901 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





#line 3913 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







#line 3926 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3973 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 4011 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 4037 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 






#line 4051 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 4058 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"











#line 4075 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 4082 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 







#line 4102 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







#line 4116 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 






#line 4130 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 4137 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"











#line 4154 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 4161 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 







#line 4181 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







#line 4195 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 4239 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 




 




 




 




 




 




 




 
#line 4292 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







#line 4317 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 4327 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 4336 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 
 
 
 
 

 
#line 4358 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 4378 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 




 




 




 




 




 




 




 
 
 
 
 

 




 
#line 4437 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 
#line 4450 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
 
 
 
 

 
#line 4468 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 4477 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 
#line 4493 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 4502 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







 







 




 
 
 
 
 

 
#line 4537 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

  
#line 4569 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 

                                                                            
#line 4581 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"


                                                                                
#line 4591 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
                                                                                
#line 4599 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 










#line 4620 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
                                                                           
















#line 4643 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 



                                                                          






#line 4664 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"










                                                                           






#line 4687 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 










#line 4708 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

















#line 4731 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 










#line 4752 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

















#line 4775 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 










#line 4796 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

















#line 4819 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 










#line 4840 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

















#line 4863 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 










#line 4884 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

















#line 4907 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 










#line 4928 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

















#line 4951 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
 
#line 4993 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5025 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5042 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5068 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





     




 
 




 




 




 




 




 




 




 




 

 




 




 




 




 




 




 




 




 

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 

 




 




 




 




 




 




 




 




 

 




#line 5268 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 




#line 5286 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 




#line 5304 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 




#line 5322 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 




#line 5340 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 




#line 5358 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 




#line 5376 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 




#line 5394 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 

 


#line 5410 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5422 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5434 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5446 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5458 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5470 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5482 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5494 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5506 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5518 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5530 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5542 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5554 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5566 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5578 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5590 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 
 
 
 
 

 
 
#line 5631 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5660 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5710 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 5723 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 5736 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5750 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5764 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5808 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5819 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 5826 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 5833 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5862 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
 
#line 5880 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5891 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5905 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5919 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5936 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5947 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5961 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5975 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5992 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

   
#line 6003 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6017 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6031 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6045 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6056 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6070 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6084 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6098 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6109 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6123 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6137 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
 
#line 6146 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6193 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6240 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6287 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6334 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6432 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6530 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6628 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6726 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6824 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6922 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 7020 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 7118 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 7216 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 7314 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 7412 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 7510 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 7608 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 7706 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 7804 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 7902 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8000 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8098 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8196 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8294 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8392 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8490 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8588 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8686 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8784 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8882 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8980 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9078 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
 
 
 
 

 
#line 9095 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 9102 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 9133 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9153 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9179 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 




 




 








 
 
 
 
 

 
#line 9253 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9264 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 9280 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 



#line 9315 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 
#line 9327 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 
#line 9376 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9402 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9413 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 
 
 
 
 

 
#line 9456 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 
#line 9469 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9513 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9536 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"











 
#line 9581 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9594 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 
 
 
 
 

 




#line 9629 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9643 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







#line 9677 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
 
 
 
 
 
#line 9690 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 9700 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




#line 9715 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 







 
#line 9737 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9769 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 
#line 9782 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 9801 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 

 
#line 9816 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9824 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9832 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9840 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9848 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9856 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9864 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9872 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 



  



 

 









     


 


 

 
#line 9913 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
  
 






 


 


 



 


 


 



 
 































































































#line 10062 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



























    





    















 


                                            




 




 




 




                                     




 




 




 




 




 


 


 











  
 
 
 
 
  
 
 

 
#line 10203 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"


 
#line 10222 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"




 



 





  

  
  

#line 131 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"
#line 142 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"



 



   
typedef enum 
{
  RESET = 0, 
  SET = !RESET
} FlagStatus, ITStatus;

typedef enum 
{
  DISABLE = 0, 
  ENABLE = !DISABLE
} FunctionalState;


typedef enum
{
  SUCCESS = 0U,
  ERROR = !SUCCESS
} ErrorStatus;



 




 
















 
 
#line 202 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"

 
#line 211 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"

 
#line 220 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"

 
#line 229 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"

 
#line 238 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"

 
#line 247 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"




 

#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

















 

 
#line 356 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"


#line 255 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"










 



 
  



#line 30 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"
#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

















 

 







 
 
 



 
#line 46 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


 



 
#line 93 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 101 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"
















 



 





 



 
#line 150 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 217 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"







 



 
#line 235 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


 



 
#line 249 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


 



 






 



 

#line 277 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"






#line 289 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"














 



 
#line 322 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"





#line 367 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 377 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 439 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"






 



 

#line 563 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"



 



 

#line 580 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"



 



 

#line 605 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 704 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"




 




 
#line 725 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


 



 





 



 


















#line 776 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"





#line 788 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 795 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"









#line 811 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 826 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


 



 
#line 854 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


 



 
#line 870 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 879 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 890 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 1002 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 1019 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


 



 
#line 1043 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


 



 





 



 






 



 















 
 







 



 








 



 














 



 










 



 







































 



 


#line 1200 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"






 



 

 
#line 1222 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

 












 



 

































#line 1283 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"
















#line 1305 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"



 




 















 




 
#line 1346 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


 



 









#line 1376 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"



 



 



#line 1414 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 1424 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 1443 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"










#line 1470 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"







 



 




 



 

























 




 








 



 




 



 
#line 1554 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"



 



 

#line 1571 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 1583 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 1624 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"





 



 











 

#line 1674 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 1688 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"



 



 

 



 



 



 








 




 




 



 
#line 1739 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

 












#line 1776 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


 



 
#line 1809 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"



 



 
#line 1824 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"



 



 









#line 1857 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 1868 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


 



 

#line 1898 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 1906 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"






#line 1922 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"



#line 2011 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"



 



 
#line 2025 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"



 



 





 



 



 



 
#line 2064 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


 



 



 



 






 




 



 

 



 





 



 
#line 2125 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"









 




 
#line 2153 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 2174 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 2185 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 2194 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 2207 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 2216 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"



 



 







 



 
#line 2252 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 2267 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


#line 2300 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"



 



 
#line 2468 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"



#line 2478 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


 

#line 2494 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"



 







 



 

#line 2517 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"



 



 

#line 2545 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


 



 










 



 














 




 




 




 







 




 
#line 2623 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"



 




 
#line 2673 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 2687 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


 




 








#line 2967 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 2981 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 3198 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 3217 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 3224 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 3245 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 3393 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

 



#line 3418 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 3439 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 3556 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 3565 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 3582 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 3597 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"






#line 3626 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

















#line 3652 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"





#line 3679 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"





#line 3690 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 3699 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 3732 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 3750 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"












#line 3768 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 3791 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 3831 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 3917 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"



 



 




 



 
#line 3943 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"










#line 3971 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 3978 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 3993 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"











 



 




#line 4021 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 4047 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 4073 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 4080 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 4092 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


 



 

#line 4106 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"








 



 
#line 4127 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


 



 







 



 













 




 









#line 4181 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


 



 












#line 4207 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 4216 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"

#line 4225 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"








 



 








#line 4258 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"







 



 

#line 4278 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"






 



 




 



 
#line 4312 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


 



 







 



 
#line 4339 "../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy/stm32_hal_legacy.h"


 



 





 



 





 



 



 








#line 31 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"
 






 

 
 
 





 





#line 34 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"




  typedef signed int ptrdiff_t;



  



    typedef unsigned int size_t;    
#line 57 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



   



      typedef unsigned short wchar_t;  
#line 82 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



    




   




  typedef long double max_align_t;









#line 114 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



 

#line 32 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"

 



 
typedef enum
{
  HAL_OK       = 0x00U,
  HAL_ERROR    = 0x01U,
  HAL_BUSY     = 0x02U,
  HAL_TIMEOUT  = 0x03U
} HAL_StatusTypeDef;



 
typedef enum
{
  HAL_UNLOCKED = 0x00U,
  HAL_LOCKED   = 0x01U
} HAL_LockTypeDef;

 





























 


#line 103 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"







#line 125 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"


 
#line 154 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"




 









 


#line 187 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"



 



 


#line 204 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"








#line 28 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"




 



 

 



 



 
typedef struct
{
  uint32_t PLLState;      
 

  uint32_t PLLSource;     
 

  uint32_t PLLMUL;        
 
} RCC_PLLInitTypeDef;



 
typedef struct
{
  uint32_t ClockType;             
 

  uint32_t SYSCLKSource;          
 

  uint32_t AHBCLKDivider;         
 

  uint32_t APB1CLKDivider;        
 

  uint32_t APB2CLKDivider;        
 
} RCC_ClkInitTypeDef;



 

 


 



 






 



 







 



 





 



 






 



 







 



 





 



 






 



 







 



 






 



 






 



 
#line 212 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"



 



 








 



 






 




 





 



 




 



 
#line 270 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"


 









 
 




 
#line 296 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

 




 



 

 



 







 
#line 328 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 336 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 344 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 352 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"








 







 

#line 378 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"



 







 
#line 397 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 405 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 413 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 421 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 429 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 437 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 445 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"












 







 

#line 481 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"



 







 
#line 500 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 508 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 516 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 524 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 532 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 540 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 548 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 556 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 564 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 571 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"







 







 

#line 606 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"



 




 
#line 621 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"




#line 631 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"






 




 
#line 650 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"





#line 662 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"







 



 










 









 





 



 





 






 




 



 






















 
#line 772 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"



 



 

















 
#line 820 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"



 



 






 




 































 








 




 



 








 









 




 



 

#line 937 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"











 








 



 






















 








 




 




 





 



 




 




 
















 

















 


















 



















 





 
























 






 



 

 
#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"















 

 







 
#line 28 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 



 



 

#line 54 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"






 



 






#line 85 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 107 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"










#line 171 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"






#line 184 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"










 

 



 

#line 222 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 
typedef struct
{
  uint32_t OscillatorType;       
 






  uint32_t HSEState;              
 

  uint32_t HSEPredivValue;       
 

  uint32_t LSEState;              
 

  uint32_t HSIState;              
 

  uint32_t HSICalibrationValue;   
 

  uint32_t LSIState;              
 

  RCC_PLLInitTypeDef PLL;          




} RCC_OscInitTypeDef;

#line 277 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 
typedef struct
{
  uint32_t PeriphClockSelection;      
 

  uint32_t RTCClockSelection;         
 

  uint32_t AdcClockSelection;         
 

#line 306 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"




  uint32_t UsbClockSelection;         
 


} RCC_PeriphCLKInitTypeDef;



 

 



 



 
#line 341 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 



 







 

#line 385 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"






 





 




#line 431 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 444 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 



#line 471 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 

#line 532 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 

#line 559 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 



 
#line 578 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"


 

#line 606 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 

 


 







 

#line 637 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 650 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 663 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 676 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 724 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 







 

#line 764 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 







 

#line 786 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"




#line 801 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 809 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 817 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 825 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"







#line 841 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"




#line 911 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 950 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1016 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1028 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1058 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 







 

#line 1149 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 







 

#line 1172 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"




#line 1205 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1217 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"




#line 1242 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1263 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1284 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1314 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 







 

#line 1375 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 

#line 1401 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"




 








#line 1422 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"













#line 1453 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1465 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1483 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"







#line 1499 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 




 









#line 1526 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"










#line 1544 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1552 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1560 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1570 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 



 

#line 1591 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"







 





#line 1612 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"


 






 

#line 1665 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"




 








 







 




#line 1710 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"








 









 




 

#line 1844 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"


 

 


 



 

HAL_StatusTypeDef HAL_RCCEx_PeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit);
void              HAL_RCCEx_GetPeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit);
uint32_t          HAL_RCCEx_GetPeriphCLKFreq(uint32_t PeriphClk);



 

#line 1886 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 



 



 








#line 1143 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

 


 



 

 
HAL_StatusTypeDef HAL_RCC_DeInit(void);
HAL_StatusTypeDef HAL_RCC_OscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct);
HAL_StatusTypeDef HAL_RCC_ClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t FLatency);



 



 

 
void              HAL_RCC_MCOConfig(uint32_t RCC_MCOx, uint32_t RCC_MCOSource, uint32_t RCC_MCODiv);
void              HAL_RCC_EnableCSS(void);
void              HAL_RCC_DisableCSS(void);
uint32_t          HAL_RCC_GetSysClockFreq(void);
uint32_t          HAL_RCC_GetHCLKFreq(void);
uint32_t          HAL_RCC_GetPCLK1Freq(void);
uint32_t          HAL_RCC_GetPCLK2Freq(void);
void              HAL_RCC_GetOscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct);
void              HAL_RCC_GetClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t *pFLatency);

 
void              HAL_RCC_NMI_IRQHandler(void);

 
void              HAL_RCC_CSSCallback(void);



 



 



 



 

 

 
#line 1208 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"



 



 
#line 1222 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"



 




 






 
 


 


 


 



 
 



 



 
 



 



 



 





 

 


 


 


 








 



 


 






 

#line 1331 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 1356 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"



 



 



 








#line 245 "../Inc/stm32f1xx_hal_conf.h"


#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio.h"
















 

 







 
#line 29 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio.h"



 



 

 


 



 
typedef struct
{
  uint32_t Pin;       
 

  uint32_t Mode;      
 

  uint32_t Pull;      
 

  uint32_t Speed;     
 
} GPIO_InitTypeDef;



 
typedef enum
{
  GPIO_PIN_RESET = 0u,
  GPIO_PIN_SET
} GPIO_PinState;


 

 



 



 
#line 99 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio.h"




 










 
#line 121 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio.h"













 




 






 




 





 



 

 


 






 







 







 







 







 



 

 
#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"
















 

 







 
#line 29 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"



 



 
 
 



 




 



 

#line 69 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 86 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"


 



 














 



 




 





 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 






 







 







 







 







 







 








 






 






 











 









 


#line 346 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 364 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 383 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 401 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"





 






 






 






 


#line 446 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 463 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"





 






 






 







 


#line 511 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 530 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 549 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 566 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 583 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 599 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 616 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 633 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 650 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 667 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 684 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 701 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 718 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 735 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 752 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 771 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 798 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"



 



 



 
#line 827 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"













#line 846 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"









 

 
 



 



 
void HAL_GPIOEx_ConfigEventout(uint32_t GPIO_PortSource, uint32_t GPIO_PinSource);
void HAL_GPIOEx_EnableEventout(void);
void HAL_GPIOEx_DisableEventout(void);



 



 



 



 







#line 213 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio.h"

 


 



 
 
void  HAL_GPIO_Init(GPIO_TypeDef  *GPIOx, GPIO_InitTypeDef *GPIO_Init);
void  HAL_GPIO_DeInit(GPIO_TypeDef  *GPIOx, uint32_t GPIO_Pin);


 



 
 
GPIO_PinState HAL_GPIO_ReadPin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin);
void HAL_GPIO_WritePin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState);
void HAL_GPIO_TogglePin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin);
HAL_StatusTypeDef HAL_GPIO_LockPin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin);
void HAL_GPIO_EXTI_IRQHandler(uint16_t GPIO_Pin);
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin);



 



 
 
 
 


 



 

 


 
#line 280 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio.h"


 

 


 



 



 



 







#line 249 "../Inc/stm32f1xx_hal_conf.h"

   




#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma.h"
















 

 







 
#line 29 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma.h"



 



 

 



 



 
typedef struct
{
  uint32_t Direction;                 

 

  uint32_t PeriphInc;                 
 

  uint32_t MemInc;                    
 

  uint32_t PeriphDataAlignment;       
 

  uint32_t MemDataAlignment;          
 

  uint32_t Mode;                      


 

  uint32_t Priority;                  
 
} DMA_InitTypeDef;



 
typedef enum
{
  HAL_DMA_STATE_RESET             = 0x00U,   
  HAL_DMA_STATE_READY             = 0x01U,   
  HAL_DMA_STATE_BUSY              = 0x02U,   
  HAL_DMA_STATE_TIMEOUT           = 0x03U    
}HAL_DMA_StateTypeDef;



 
typedef enum
{
  HAL_DMA_FULL_TRANSFER           = 0x00U,     
  HAL_DMA_HALF_TRANSFER           = 0x01U      
}HAL_DMA_LevelCompleteTypeDef;



 
typedef enum
{
  HAL_DMA_XFER_CPLT_CB_ID          = 0x00U,     
  HAL_DMA_XFER_HALFCPLT_CB_ID      = 0x01U,     
  HAL_DMA_XFER_ERROR_CB_ID         = 0x02U,      
  HAL_DMA_XFER_ABORT_CB_ID         = 0x03U,      
  HAL_DMA_XFER_ALL_CB_ID           = 0x04U       
    
}HAL_DMA_CallbackIDTypeDef;



 
typedef struct __DMA_HandleTypeDef
{
  DMA_Channel_TypeDef        *Instance;                                                     
  
  DMA_InitTypeDef            Init;                                                          
  
  HAL_LockTypeDef            Lock;                                                          
  
  volatile HAL_DMA_StateTypeDef  State;                                                         
  
  void                       *Parent;                                                       
  
  void                       (* XferCpltCallback)( struct __DMA_HandleTypeDef * hdma);      
  
  void                       (* XferHalfCpltCallback)( struct __DMA_HandleTypeDef * hdma);  
  
  void                       (* XferErrorCallback)( struct __DMA_HandleTypeDef * hdma);     

  void                       (* XferAbortCallback)( struct __DMA_HandleTypeDef * hdma);     
  
  volatile uint32_t              ErrorCode;                                                     

  DMA_TypeDef                *DmaBaseAddress;                                              
  
  uint32_t                   ChannelIndex;                                                 

} DMA_HandleTypeDef;    


 

 



 



 







 



 






 



 




 



 




 



 





 



 





 



 




 



 






 




 





 



 
#line 270 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma.h"


 



 


 


 




 






 






 



 










 











 











 






 




 

 
#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma_ex.h"
















 

 







 
#line 29 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma_ex.h"



 



 

  
 
 


 
 
#line 162 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma_ex.h"


 





 
#line 179 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma_ex.h"





 
#line 193 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma_ex.h"





 
#line 207 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma_ex.h"





 
#line 221 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma_ex.h"












 














 




 


  


 



 



 




        



#line 356 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma.h"

 


 



 
 
HAL_StatusTypeDef HAL_DMA_Init(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_DeInit (DMA_HandleTypeDef *hdma);


 



 
 
HAL_StatusTypeDef HAL_DMA_Start (DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMA_Start_IT(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMA_Abort(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_Abort_IT(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_PollForTransfer(DMA_HandleTypeDef *hdma, uint32_t CompleteLevel, uint32_t Timeout);
void HAL_DMA_IRQHandler(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_RegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef CallbackID, void (* pCallback)( DMA_HandleTypeDef * _hdma));
HAL_StatusTypeDef HAL_DMA_UnRegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef CallbackID);



 



 
 
HAL_DMA_StateTypeDef HAL_DMA_GetState(DMA_HandleTypeDef *hdma);
uint32_t HAL_DMA_GetError(DMA_HandleTypeDef *hdma);


 



 

 


 































  

 



 



 







#line 257 "../Inc/stm32f1xx_hal_conf.h"

   



   












#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_cortex.h"
















 

 







 
#line 29 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_cortex.h"



 



  
 


 

#line 75 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_cortex.h"



 

 



 



 
#line 99 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_cortex.h"


 



 





 

#line 244 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_cortex.h"



 


 

 


 
  


 
 
void HAL_NVIC_SetPriorityGrouping(uint32_t PriorityGroup);
void HAL_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority);
void HAL_NVIC_EnableIRQ(IRQn_Type IRQn);
void HAL_NVIC_DisableIRQ(IRQn_Type IRQn);
void HAL_NVIC_SystemReset(void);
uint32_t HAL_SYSTICK_Config(uint32_t TicksNumb);


 



 
 
uint32_t HAL_NVIC_GetPriorityGrouping(void);
void HAL_NVIC_GetPriority(IRQn_Type IRQn, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority);
uint32_t HAL_NVIC_GetPendingIRQ(IRQn_Type IRQn);
void HAL_NVIC_SetPendingIRQ(IRQn_Type IRQn);
void HAL_NVIC_ClearPendingIRQ(IRQn_Type IRQn);
uint32_t HAL_NVIC_GetActive(IRQn_Type IRQn);
void HAL_SYSTICK_CLKSourceConfig(uint32_t CLKSource);
void HAL_SYSTICK_IRQHandler(void);
void HAL_SYSTICK_Callback(void);

#line 292 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_cortex.h"


 



 

 
 
 
 


 















#line 389 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_cortex.h"



 

 



  



 
  





 

#line 277 "../Inc/stm32f1xx_hal_conf.h"


#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"

















 

 







 
#line 30 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"


 



  

  


 








 
typedef struct
{
  uint32_t DataAlign;                        

 
  uint32_t ScanConvMode;                     









 
  FunctionalState ContinuousConvMode;         

 
  uint32_t NbrOfConversion;                  

 
  FunctionalState  DiscontinuousConvMode;    


 
  uint32_t NbrOfDiscConversion;              

 
  uint32_t ExternalTrigConv;                 


 
}ADC_InitTypeDef;





  
typedef struct 
{
  uint32_t Channel;                





 
  uint32_t Rank;                   

 
  uint32_t SamplingTime;           







 
}ADC_ChannelConfTypeDef;





 
typedef struct
{
  uint32_t WatchdogMode;      
 
  uint32_t Channel;           

 
  FunctionalState  ITMode;    
 
  uint32_t HighThreshold;     
 
  uint32_t LowThreshold;      
 
  uint32_t WatchdogNumber;     
}ADC_AnalogWDGConfTypeDef;



  
 





 




 






 





 




 





  
typedef struct __ADC_HandleTypeDef
{
  ADC_TypeDef                   *Instance;               

  ADC_InitTypeDef               Init;                    

  DMA_HandleTypeDef             *DMA_Handle;             

  HAL_LockTypeDef               Lock;                    
  
  volatile uint32_t                 State;                   

  volatile uint32_t                 ErrorCode;               

#line 197 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"
}ADC_HandleTypeDef;


#line 221 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"



 



 



 



 











 




 




 



 
 
 
 




 



 




 



 
 
 
#line 304 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"





 



 
#line 322 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"


 



 
#line 345 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"


 



 
#line 359 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"


 



 





 



 





 



 





 



 







 




  

 



 



 
 
 
 
#line 430 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"


 



 
#line 444 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"

#line 452 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"

#line 460 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"

#line 469 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"

#line 478 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"


 

 




 


 



 
 
     









 


    




 


    








 


    








 











 













 


    










 






 
#line 597 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"



 

 



 
 
 





 









 








 









 






 







 








 








 








 








 








 







 












 







 







 







 
 
 
















    
#line 782 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"










#line 810 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"

#line 819 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"

#line 836 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"

#line 844 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"











 



 



 



 



 



 
      


 
    
 
#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"
















 

 







 
#line 29 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"



 



  

  


 











 
typedef struct 
{
  uint32_t InjectedChannel;                       





 
  uint32_t InjectedRank;                          

 
  uint32_t InjectedSamplingTime;                  







 
  uint32_t InjectedOffset;                        


 
  uint32_t InjectedNbrOfConversion;               



 
  FunctionalState InjectedDiscontinuousConvMode;  





 
  FunctionalState AutoInjectedConv;               






 
  uint32_t ExternalTrigInjecConv;                 






 
}ADC_InjectionConfTypeDef;






 
typedef struct
{
  uint32_t Mode;              







 

  
}ADC_MultiModeTypeDef;                                                          




 


 
   


 



 






 



 




 
    


 
 
 

 
#line 175 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"

#line 184 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"

 


#line 201 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"




 



 
 
 

 






#line 227 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"

 



#line 245 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"




 




 
#line 265 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"


 




 


 



 



 
 
 
 

 
#line 300 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"

#line 310 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"

 




 



 
 
 
 

 
#line 336 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"

#line 345 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"

 





 



 


 

 



 
 
 

    









 
#line 397 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"










 
#line 425 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"






 
#line 444 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"





 
#line 462 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"





 
#line 480 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"







 










 


       












 



 

#line 564 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"

#line 612 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"

#line 625 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc_ex.h"



       
   
    

    
    
   
 


 

 


 

 
HAL_StatusTypeDef       HAL_ADCEx_Calibration_Start(ADC_HandleTypeDef* hadc);

 
HAL_StatusTypeDef       HAL_ADCEx_InjectedStart(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef       HAL_ADCEx_InjectedStop(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef       HAL_ADCEx_InjectedPollForConversion(ADC_HandleTypeDef* hadc, uint32_t Timeout);

 
HAL_StatusTypeDef       HAL_ADCEx_InjectedStart_IT(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef       HAL_ADCEx_InjectedStop_IT(ADC_HandleTypeDef* hadc);


 
HAL_StatusTypeDef       HAL_ADCEx_MultiModeStart_DMA(ADC_HandleTypeDef *hadc, uint32_t *pData, uint32_t Length);
HAL_StatusTypeDef       HAL_ADCEx_MultiModeStop_DMA(ADC_HandleTypeDef *hadc); 


 
uint32_t                HAL_ADCEx_InjectedGetValue(ADC_HandleTypeDef* hadc, uint32_t InjectedRank);

uint32_t                HAL_ADCEx_MultiModeGetValue(ADC_HandleTypeDef *hadc);


 
void                    HAL_ADCEx_InjectedConvCpltCallback(ADC_HandleTypeDef* hadc);


 


 


 
HAL_StatusTypeDef       HAL_ADCEx_InjectedConfigChannel(ADC_HandleTypeDef* hadc,ADC_InjectionConfTypeDef* sConfigInjected);

HAL_StatusTypeDef       HAL_ADCEx_MultiModeConfigChannel(ADC_HandleTypeDef *hadc, ADC_MultiModeTypeDef *multimode);



 




 




  



 
  




#line 883 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_adc.h"

 


 



 


 
HAL_StatusTypeDef       HAL_ADC_Init(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef       HAL_ADC_DeInit(ADC_HandleTypeDef *hadc);
void                    HAL_ADC_MspInit(ADC_HandleTypeDef* hadc);
void                    HAL_ADC_MspDeInit(ADC_HandleTypeDef* hadc);









 

 



 


 
HAL_StatusTypeDef       HAL_ADC_Start(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef       HAL_ADC_Stop(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef       HAL_ADC_PollForConversion(ADC_HandleTypeDef* hadc, uint32_t Timeout);
HAL_StatusTypeDef       HAL_ADC_PollForEvent(ADC_HandleTypeDef* hadc, uint32_t EventType, uint32_t Timeout);

 
HAL_StatusTypeDef       HAL_ADC_Start_IT(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef       HAL_ADC_Stop_IT(ADC_HandleTypeDef* hadc);

 
HAL_StatusTypeDef       HAL_ADC_Start_DMA(ADC_HandleTypeDef* hadc, uint32_t* pData, uint32_t Length);
HAL_StatusTypeDef       HAL_ADC_Stop_DMA(ADC_HandleTypeDef* hadc);

 
uint32_t                HAL_ADC_GetValue(ADC_HandleTypeDef* hadc);

 
void                    HAL_ADC_IRQHandler(ADC_HandleTypeDef* hadc);
void                    HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc);
void                    HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef* hadc);
void                    HAL_ADC_LevelOutOfWindowCallback(ADC_HandleTypeDef* hadc);
void                    HAL_ADC_ErrorCallback(ADC_HandleTypeDef *hadc);


 


 


 
HAL_StatusTypeDef       HAL_ADC_ConfigChannel(ADC_HandleTypeDef* hadc, ADC_ChannelConfTypeDef* sConfig);
HAL_StatusTypeDef       HAL_ADC_AnalogWDGConfig(ADC_HandleTypeDef* hadc, ADC_AnalogWDGConfTypeDef* AnalogWDGConfig);


 


 


 
uint32_t                HAL_ADC_GetState(ADC_HandleTypeDef* hadc);
uint32_t                HAL_ADC_GetError(ADC_HandleTypeDef *hadc);


 




 


 


 
HAL_StatusTypeDef ADC_Enable(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef ADC_ConversionStop_Disable(ADC_HandleTypeDef* hadc);
void              ADC_StabilizationTime(uint32_t DelayUs);
void              ADC_DMAConvCplt(DMA_HandleTypeDef *hdma);
void              ADC_DMAHalfConvCplt(DMA_HandleTypeDef *hdma);
void              ADC_DMAError(DMA_HandleTypeDef *hdma);


  




  



 






#line 281 "../Inc/stm32f1xx_hal_conf.h"










#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash.h"















 

 







 
#line 28 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash.h"
   


 



 
  


 



 



 















   

  


   



 
typedef enum 
{
  FLASH_PROC_NONE              = 0U, 
  FLASH_PROC_PAGEERASE         = 1U,
  FLASH_PROC_MASSERASE         = 2U,
  FLASH_PROC_PROGRAMHALFWORD   = 3U,
  FLASH_PROC_PROGRAMWORD       = 4U,
  FLASH_PROC_PROGRAMDOUBLEWORD = 5U
} FLASH_ProcedureTypeDef;



 
typedef struct
{
  volatile FLASH_ProcedureTypeDef ProcedureOnGoing;  
  
  volatile uint32_t               DataRemaining;     

  volatile uint32_t               Address;           

  volatile uint64_t               Data;              

  HAL_LockTypeDef             Lock;              

  volatile uint32_t               ErrorCode;        
 
} FLASH_ProcessTypeDef;



 

 


   



 








 



  






 




 






 

#line 158 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash.h"


   
  
 




 
 



 






 







 




 





  
  





  







  




 





    



  





 




 
  


  

 
#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"















 

 







 
#line 28 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"



 



  



 







   



 





















 





 
#line 86 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"

 






 





 








#line 116 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"

 






 








 
#line 140 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"

 






 
#line 155 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"



   

  


   



 
typedef struct
{
  uint32_t TypeErase;   
 
  
  uint32_t Banks;       
     
  
  uint32_t PageAddress; 

 
  
  uint32_t NbPages;     
 
                                                          
} FLASH_EraseInitTypeDef;



 
typedef struct
{
  uint32_t OptionType;  
 

  uint32_t WRPState;    
 

  uint32_t WRPPage;     
 

  uint32_t Banks;        
  
    
  uint8_t RDPLevel;     
 

#line 211 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"
  uint8_t USERConfig;   


 


  uint32_t DATAAddress; 
 
  
  uint8_t DATAData;     
 
} FLASH_OBProgramInitTypeDef;



 

 


   



  



  



        




         
        



 



  





 



 
#line 276 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"


 



 



  



 







 



  





 



 
 
#line 326 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"
        
       
 
#line 355 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"


 
#line 396 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"
         
        


 
 




 
#line 413 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"
       
 
#line 421 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"

 
#line 429 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"
      
 
#line 437 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"



 



 




 
  


  




 



  




  



  




 

#line 488 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"



 




 



 



  




 
#line 527 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"










 
  



 
#line 554 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"







   



 
  



 

 


 




  

#line 673 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"







  









  












 












 
#line 728 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"





 



 

 


 



 
 
HAL_StatusTypeDef  HAL_FLASHEx_Erase(FLASH_EraseInitTypeDef *pEraseInit, uint32_t *PageError);
HAL_StatusTypeDef  HAL_FLASHEx_Erase_IT(FLASH_EraseInitTypeDef *pEraseInit);



 



 
 
HAL_StatusTypeDef  HAL_FLASHEx_OBErase(void);
HAL_StatusTypeDef  HAL_FLASHEx_OBProgram(FLASH_OBProgramInitTypeDef *pOBInit);
void               HAL_FLASHEx_OBGetConfig(FLASH_OBProgramInitTypeDef *pOBInit);
uint32_t           HAL_FLASHEx_OBGetUserData(uint32_t DATAAdress);


 



 



 



 






#line 247 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash.h"

 


 
  


 
 
HAL_StatusTypeDef HAL_FLASH_Program(uint32_t TypeProgram, uint32_t Address, uint64_t Data);
HAL_StatusTypeDef HAL_FLASH_Program_IT(uint32_t TypeProgram, uint32_t Address, uint64_t Data);

 
void       HAL_FLASH_IRQHandler(void);
  
void       HAL_FLASH_EndOfOperationCallback(uint32_t ReturnValue);
void       HAL_FLASH_OperationErrorCallback(uint32_t ReturnValue);



 



 
 
HAL_StatusTypeDef HAL_FLASH_Unlock(void);
HAL_StatusTypeDef HAL_FLASH_Lock(void);
HAL_StatusTypeDef HAL_FLASH_OB_Unlock(void);
HAL_StatusTypeDef HAL_FLASH_OB_Lock(void);
void HAL_FLASH_OB_Launch(void);



 



 
 
uint32_t HAL_FLASH_GetError(void);



 



 

 


 
HAL_StatusTypeDef       FLASH_WaitForLastOperation(uint32_t Timeout);






 



 



 








#line 293 "../Inc/stm32f1xx_hal_conf.h"






















#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_pwr.h"
















 

 







 
#line 29 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_pwr.h"



 



 

 



  



 
typedef struct
{
  uint32_t PVDLevel;   
 

  uint32_t Mode;      
 
}PWR_PVDTypeDef;




 


 



  





 

 
 



  



 
#line 92 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_pwr.h"
                                                          


 



 
#line 107 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_pwr.h"



 




 





 



 





 



 





 



 





 



 







 



 

 


 















 







 





 





 





 





 






 






 






 






 





 






 







 





 





 



 

 


 






















 



 



 
  


 

 
void HAL_PWR_DeInit(void);
void HAL_PWR_EnableBkUpAccess(void);
void HAL_PWR_DisableBkUpAccess(void);



 



 

 
void HAL_PWR_ConfigPVD(PWR_PVDTypeDef *sConfigPVD);
 
void HAL_PWR_EnablePVD(void);
void HAL_PWR_DisablePVD(void);

 
void HAL_PWR_EnableWakeUpPin(uint32_t WakeUpPinx);
void HAL_PWR_DisableWakeUpPin(uint32_t WakeUpPinx);

 
void HAL_PWR_EnterSTOPMode(uint32_t Regulator, uint8_t STOPEntry);
void HAL_PWR_EnterSLEEPMode(uint32_t Regulator, uint8_t SLEEPEntry);
void HAL_PWR_EnterSTANDBYMode(void);

void HAL_PWR_EnableSleepOnExit(void);
void HAL_PWR_DisableSleepOnExit(void);
void HAL_PWR_EnableSEVOnPend(void);
void HAL_PWR_DisableSEVOnPend(void);



void HAL_PWR_PVD_IRQHandler(void);
void HAL_PWR_PVDCallback(void);


 



 



 



 






#line 317 "../Inc/stm32f1xx_hal_conf.h"


#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rtc.h"
















 

 







 
#line 29 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rtc.h"



 



 



 

#line 55 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rtc.h"




 



 


 



 



 



 




 

 


 


 
typedef struct
{
  uint8_t Hours;            
 

  uint8_t Minutes;          
 

  uint8_t Seconds;          
 

} RTC_TimeTypeDef;



 
typedef struct
{
  RTC_TimeTypeDef AlarmTime;      

  uint32_t Alarm;                
 
} RTC_AlarmTypeDef;



 
typedef enum
{
  HAL_RTC_STATE_RESET             = 0x00U,   
  HAL_RTC_STATE_READY             = 0x01U,   
  HAL_RTC_STATE_BUSY              = 0x02U,   
  HAL_RTC_STATE_TIMEOUT           = 0x03U,   
  HAL_RTC_STATE_ERROR             = 0x04U    

} HAL_RTCStateTypeDef;



 
typedef struct
{
  uint32_t AsynchPrediv;    

 

  uint32_t OutPut;          
 

} RTC_InitTypeDef;



 
typedef struct
{
  uint8_t WeekDay;  
 

  uint8_t Month;    
 

  uint8_t Date;     
 

  uint8_t Year;     
 

} RTC_DateTypeDef;



 



typedef struct

{
  RTC_TypeDef                 *Instance;   

  RTC_InitTypeDef             Init;        

  RTC_DateTypeDef             DateToUpdate;        

  HAL_LockTypeDef             Lock;        

  volatile HAL_RTCStateTypeDef    State;       

#line 191 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rtc.h"

} RTC_HandleTypeDef;

#line 211 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rtc.h"



 

 


 



 




 



 





 



 

 
#line 257 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rtc.h"



 



 
#line 272 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rtc.h"



 



 




 




 








 



 






 



 
#line 320 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rtc.h"



 



 

 


 




 
#line 347 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rtc.h"





 






 









 









 









 









 









 









 





 





 





 





 






 






 






 






 





 










 









 





 





 



 

 
#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rtc_ex.h"
















 

 







 
#line 29 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rtc_ex.h"



 



 



 



 




 



 





#line 65 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rtc_ex.h"



 



 

 


 


 
typedef struct
{
  uint32_t Tamper;                      
 

  uint32_t Trigger;                     
 

} RTC_TamperTypeDef;



 

 


 



 




 



 





 



 
#line 134 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rtc_ex.h"

#line 169 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rtc_ex.h"



 



 

 


 








 









 









 









 









 









 









 









 









 









 









 









 









 









 









 









 




 

 


 

 


 
HAL_StatusTypeDef HAL_RTCEx_SetTamper(RTC_HandleTypeDef *hrtc, RTC_TamperTypeDef *sTamper);
HAL_StatusTypeDef HAL_RTCEx_SetTamper_IT(RTC_HandleTypeDef *hrtc, RTC_TamperTypeDef *sTamper);
HAL_StatusTypeDef HAL_RTCEx_DeactivateTamper(RTC_HandleTypeDef *hrtc, uint32_t Tamper);
void              HAL_RTCEx_TamperIRQHandler(RTC_HandleTypeDef *hrtc);
void              HAL_RTCEx_Tamper1EventCallback(RTC_HandleTypeDef *hrtc);
HAL_StatusTypeDef HAL_RTCEx_PollForTamper1Event(RTC_HandleTypeDef *hrtc, uint32_t Timeout);



 

 


 
HAL_StatusTypeDef HAL_RTCEx_SetSecond_IT(RTC_HandleTypeDef *hrtc);
HAL_StatusTypeDef HAL_RTCEx_DeactivateSecond(RTC_HandleTypeDef *hrtc);
void              HAL_RTCEx_RTCIRQHandler(RTC_HandleTypeDef *hrtc);
void              HAL_RTCEx_RTCEventCallback(RTC_HandleTypeDef *hrtc);
void              HAL_RTCEx_RTCEventErrorCallback(RTC_HandleTypeDef *hrtc);



 

 


 
void              HAL_RTCEx_BKUPWrite(RTC_HandleTypeDef *hrtc, uint32_t BackupRegister, uint32_t Data);
uint32_t          HAL_RTCEx_BKUPRead(RTC_HandleTypeDef *hrtc, uint32_t BackupRegister);

HAL_StatusTypeDef HAL_RTCEx_SetSmoothCalib(RTC_HandleTypeDef *hrtc, uint32_t SmoothCalibPeriod, uint32_t SmoothCalibPlusPulses, uint32_t SmouthCalibMinusPulsesValue);


 



 



 



 





#line 518 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rtc.h"

 


 


 


 
HAL_StatusTypeDef HAL_RTC_Init(RTC_HandleTypeDef *hrtc);
HAL_StatusTypeDef HAL_RTC_DeInit(RTC_HandleTypeDef *hrtc);
void              HAL_RTC_MspInit(RTC_HandleTypeDef *hrtc);
void              HAL_RTC_MspDeInit(RTC_HandleTypeDef *hrtc);

 






 

 


 
HAL_StatusTypeDef HAL_RTC_SetTime(RTC_HandleTypeDef *hrtc, RTC_TimeTypeDef *sTime, uint32_t Format);
HAL_StatusTypeDef HAL_RTC_GetTime(RTC_HandleTypeDef *hrtc, RTC_TimeTypeDef *sTime, uint32_t Format);
HAL_StatusTypeDef HAL_RTC_SetDate(RTC_HandleTypeDef *hrtc, RTC_DateTypeDef *sDate, uint32_t Format);
HAL_StatusTypeDef HAL_RTC_GetDate(RTC_HandleTypeDef *hrtc, RTC_DateTypeDef *sDate, uint32_t Format);


 

 


 
HAL_StatusTypeDef HAL_RTC_SetAlarm(RTC_HandleTypeDef *hrtc, RTC_AlarmTypeDef *sAlarm, uint32_t Format);
HAL_StatusTypeDef HAL_RTC_SetAlarm_IT(RTC_HandleTypeDef *hrtc, RTC_AlarmTypeDef *sAlarm, uint32_t Format);
HAL_StatusTypeDef HAL_RTC_DeactivateAlarm(RTC_HandleTypeDef *hrtc, uint32_t Alarm);
HAL_StatusTypeDef HAL_RTC_GetAlarm(RTC_HandleTypeDef *hrtc, RTC_AlarmTypeDef *sAlarm, uint32_t Alarm, uint32_t Format);
void              HAL_RTC_AlarmIRQHandler(RTC_HandleTypeDef *hrtc);
HAL_StatusTypeDef HAL_RTC_PollForAlarmAEvent(RTC_HandleTypeDef *hrtc, uint32_t Timeout);
void              HAL_RTC_AlarmAEventCallback(RTC_HandleTypeDef *hrtc);


 

 


 
HAL_RTCStateTypeDef HAL_RTC_GetState(RTC_HandleTypeDef *hrtc);


 

 


 
HAL_StatusTypeDef   HAL_RTC_WaitForSynchro(RTC_HandleTypeDef *hrtc);


 



 



 



 





#line 321 "../Inc/stm32f1xx_hal_conf.h"






#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_sd.h"
















  

 







#line 752 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_sd.h"






#line 329 "../Inc/stm32f1xx_hal_conf.h"






#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_spi.h"
















 

 







 
#line 29 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_spi.h"



 



 

 


 



 
typedef struct
{
  uint32_t Mode;                
 

  uint32_t Direction;           
 

  uint32_t DataSize;            
 

  uint32_t CLKPolarity;         
 

  uint32_t CLKPhase;            
 

  uint32_t NSS;                 

 

  uint32_t BaudRatePrescaler;   



 

  uint32_t FirstBit;            
 

  uint32_t TIMode;              
 

  uint32_t CRCCalculation;      
 

  uint32_t CRCPolynomial;       
 
} SPI_InitTypeDef;



 
typedef enum
{
  HAL_SPI_STATE_RESET      = 0x00U,     
  HAL_SPI_STATE_READY      = 0x01U,     
  HAL_SPI_STATE_BUSY       = 0x02U,     
  HAL_SPI_STATE_BUSY_TX    = 0x03U,     
  HAL_SPI_STATE_BUSY_RX    = 0x04U,     
  HAL_SPI_STATE_BUSY_TX_RX = 0x05U,     
  HAL_SPI_STATE_ERROR      = 0x06U,     
  HAL_SPI_STATE_ABORT      = 0x07U      
} HAL_SPI_StateTypeDef;



 
typedef struct __SPI_HandleTypeDef
{
  SPI_TypeDef                *Instance;       

  SPI_InitTypeDef            Init;            

  const uint8_t              *pTxBuffPtr;     

  uint16_t                   TxXferSize;      

  volatile uint16_t              TxXferCount;     

  uint8_t                    *pRxBuffPtr;     

  uint16_t                   RxXferSize;      

  volatile uint16_t              RxXferCount;     

  void (*RxISR)(struct __SPI_HandleTypeDef *hspi);    

  void (*TxISR)(struct __SPI_HandleTypeDef *hspi);    

  DMA_HandleTypeDef          *hdmatx;         

  DMA_HandleTypeDef          *hdmarx;         

  HAL_LockTypeDef            Lock;            

  volatile HAL_SPI_StateTypeDef  State;           

  volatile uint32_t              ErrorCode;       

#line 149 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_spi.h"
} SPI_HandleTypeDef;

#line 176 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_spi.h"


 

 


 



 
#line 198 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_spi.h"


 



 




 



 





 



 




 



 




 



 




 



 





 



 
#line 269 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_spi.h"


 



 




 



 



 



 




 



 





 



 
#line 320 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_spi.h"


 



 

 


 





 
#line 348 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_spi.h"










 











 











 















 






 






 
#line 420 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_spi.h"





 
#line 433 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_spi.h"





 






 




 

 


 




 

 


 





 






 






 

















 











 







 







 







 





 







 







 







 







 








 
#line 595 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_spi.h"





 







 






 







 







 




 

 


 
uint8_t SPI_ISCRCErrorValid(SPI_HandleTypeDef *hspi);


 

 


 



 
 
HAL_StatusTypeDef HAL_SPI_Init(SPI_HandleTypeDef *hspi);
HAL_StatusTypeDef HAL_SPI_DeInit(SPI_HandleTypeDef *hspi);
void HAL_SPI_MspInit(SPI_HandleTypeDef *hspi);
void HAL_SPI_MspDeInit(SPI_HandleTypeDef *hspi);

 







 



 
 
HAL_StatusTypeDef HAL_SPI_Transmit(SPI_HandleTypeDef *hspi, const uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_SPI_Receive(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_SPI_TransmitReceive(SPI_HandleTypeDef *hspi, const uint8_t *pTxData, uint8_t *pRxData,
                                          uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_SPI_Transmit_IT(SPI_HandleTypeDef *hspi, const uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_SPI_Receive_IT(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_SPI_TransmitReceive_IT(SPI_HandleTypeDef *hspi, const uint8_t *pTxData, uint8_t *pRxData,
                                             uint16_t Size);
HAL_StatusTypeDef HAL_SPI_Transmit_DMA(SPI_HandleTypeDef *hspi, const uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_SPI_Receive_DMA(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_SPI_TransmitReceive_DMA(SPI_HandleTypeDef *hspi, const uint8_t *pTxData, uint8_t *pRxData,
                                              uint16_t Size);
HAL_StatusTypeDef HAL_SPI_DMAPause(SPI_HandleTypeDef *hspi);
HAL_StatusTypeDef HAL_SPI_DMAResume(SPI_HandleTypeDef *hspi);
HAL_StatusTypeDef HAL_SPI_DMAStop(SPI_HandleTypeDef *hspi);
 
HAL_StatusTypeDef HAL_SPI_Abort(SPI_HandleTypeDef *hspi);
HAL_StatusTypeDef HAL_SPI_Abort_IT(SPI_HandleTypeDef *hspi);

void HAL_SPI_IRQHandler(SPI_HandleTypeDef *hspi);
void HAL_SPI_TxCpltCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_RxCpltCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_TxRxCpltCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_TxHalfCpltCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_RxHalfCpltCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_TxRxHalfCpltCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_ErrorCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_AbortCpltCallback(SPI_HandleTypeDef *hspi);


 



 
 
HAL_SPI_StateTypeDef HAL_SPI_GetState(const SPI_HandleTypeDef *hspi);
uint32_t             HAL_SPI_GetError(const SPI_HandleTypeDef *hspi);


 



 



 



 







#line 337 "../Inc/stm32f1xx_hal_conf.h"






#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_uart.h"
















 

 







 
#line 29 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_uart.h"



 



 

 


 



 
typedef struct
{
  uint32_t BaudRate;                  


 

  uint32_t WordLength;                
 

  uint32_t StopBits;                  
 

  uint32_t Parity;                    




 

  uint32_t Mode;                      
 

  uint32_t HwFlowCtl;                 
 

  uint32_t OverSampling;              

 
} UART_InitTypeDef;







































 
typedef enum
{
  HAL_UART_STATE_RESET             = 0x00U,    
 
  HAL_UART_STATE_READY             = 0x20U,    
 
  HAL_UART_STATE_BUSY              = 0x24U,    
 
  HAL_UART_STATE_BUSY_TX           = 0x21U,    
 
  HAL_UART_STATE_BUSY_RX           = 0x22U,    
 
  HAL_UART_STATE_BUSY_TX_RX        = 0x23U,    

 
  HAL_UART_STATE_TIMEOUT           = 0xA0U,    
 
  HAL_UART_STATE_ERROR             = 0xE0U     
 
} HAL_UART_StateTypeDef;







 
typedef uint32_t HAL_UART_RxTypeTypeDef;









 
typedef uint32_t HAL_UART_RxEventTypeTypeDef;



 
typedef struct __UART_HandleTypeDef
{
  USART_TypeDef                 *Instance;         

  UART_InitTypeDef              Init;              

  const uint8_t                 *pTxBuffPtr;       

  uint16_t                      TxXferSize;        

  volatile uint16_t                 TxXferCount;       

  uint8_t                       *pRxBuffPtr;       

  uint16_t                      RxXferSize;        

  volatile uint16_t                 RxXferCount;       

  volatile HAL_UART_RxTypeTypeDef ReceptionType;       

  volatile HAL_UART_RxEventTypeTypeDef RxEventType;    

  DMA_HandleTypeDef             *hdmatx;           

  DMA_HandleTypeDef             *hdmarx;           

  HAL_LockTypeDef               Lock;              

  volatile HAL_UART_StateTypeDef    gState;           

 

  volatile HAL_UART_StateTypeDef    RxState;          
 

  volatile uint32_t                 ErrorCode;         

#line 212 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_uart.h"

} UART_HandleTypeDef;

#line 243 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_uart.h"



 

 


 



 
#line 265 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_uart.h"


 



 




 



 




 



 





 



 






 



 





 



 




 



 






 



 




 



 




 





 
#line 371 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_uart.h"


 









 













 



 




 



 





 



 

 


 






 
#line 446 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_uart.h"





 



















 























 







 
#line 511 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_uart.h"






 







 







 







 

















 



















 


















 
















 



















 



















 



















 
#line 696 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_uart.h"




 





 



 

 


 



 

 
HAL_StatusTypeDef HAL_UART_Init(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_HalfDuplex_Init(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_LIN_Init(UART_HandleTypeDef *huart, uint32_t BreakDetectLength);
HAL_StatusTypeDef HAL_MultiProcessor_Init(UART_HandleTypeDef *huart, uint8_t Address, uint32_t WakeUpMethod);
HAL_StatusTypeDef HAL_UART_DeInit(UART_HandleTypeDef *huart);
void HAL_UART_MspInit(UART_HandleTypeDef *huart);
void HAL_UART_MspDeInit(UART_HandleTypeDef *huart);

 
#line 739 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_uart.h"



 



 

 
HAL_StatusTypeDef HAL_UART_Transmit(UART_HandleTypeDef *huart, const uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_UART_Receive(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_UART_Transmit_IT(UART_HandleTypeDef *huart, const uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UART_Receive_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UART_Transmit_DMA(UART_HandleTypeDef *huart, const uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UART_Receive_DMA(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UART_DMAPause(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_DMAResume(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_DMAStop(UART_HandleTypeDef *huart);

HAL_StatusTypeDef HAL_UARTEx_ReceiveToIdle(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint16_t *RxLen,
                                           uint32_t Timeout);
HAL_StatusTypeDef HAL_UARTEx_ReceiveToIdle_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UARTEx_ReceiveToIdle_DMA(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);

HAL_UART_RxEventTypeTypeDef HAL_UARTEx_GetRxEventType(UART_HandleTypeDef *huart);

 
HAL_StatusTypeDef HAL_UART_Abort(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_AbortTransmit(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_AbortReceive(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_Abort_IT(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_AbortTransmit_IT(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_AbortReceive_IT(UART_HandleTypeDef *huart);

void HAL_UART_IRQHandler(UART_HandleTypeDef *huart);
void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_TxHalfCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_RxHalfCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_ErrorCallback(UART_HandleTypeDef *huart);
void HAL_UART_AbortCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_AbortTransmitCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_AbortReceiveCpltCallback(UART_HandleTypeDef *huart);

void HAL_UARTEx_RxEventCallback(UART_HandleTypeDef *huart, uint16_t Size);



 



 
 
HAL_StatusTypeDef HAL_LIN_SendBreak(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_MultiProcessor_EnterMuteMode(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_MultiProcessor_ExitMuteMode(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_HalfDuplex_EnableTransmitter(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_HalfDuplex_EnableReceiver(UART_HandleTypeDef *huart);


 



 
 
HAL_UART_StateTypeDef HAL_UART_GetState(const UART_HandleTypeDef *huart);
uint32_t              HAL_UART_GetError(const UART_HandleTypeDef *huart);


 



 
 
 
 


 


 







 

 


 
#line 865 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_uart.h"






 









 






 

 


 

HAL_StatusTypeDef UART_Start_Receive_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef UART_Start_Receive_DMA(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);



 



 



 







#line 345 "../Inc/stm32f1xx_hal_conf.h"










#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_smartcard.h"
















 

 







 
#line 29 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_smartcard.h"



 



 

 


 



 
typedef struct
{
  uint32_t BaudRate;                  


 

  uint32_t WordLength;                
 

  uint32_t StopBits;                  
 

  uint32_t Parity;                    




 

  uint32_t Mode;                      
 

  uint32_t CLKPolarity;               
 

  uint32_t CLKPhase;                  
 

  uint32_t CLKLastBit;                

 

  uint32_t Prescaler;                 


 

  uint32_t GuardTime;                  

  uint32_t NACKState;                 
 
}SMARTCARD_InitTypeDef;







































 
typedef enum
{
  HAL_SMARTCARD_STATE_RESET             = 0x00U,    
 
  HAL_SMARTCARD_STATE_READY             = 0x20U,    
 
  HAL_SMARTCARD_STATE_BUSY              = 0x24U,    
 
  HAL_SMARTCARD_STATE_BUSY_TX           = 0x21U,    
 
  HAL_SMARTCARD_STATE_BUSY_RX           = 0x22U,    
 
  HAL_SMARTCARD_STATE_BUSY_TX_RX        = 0x23U,    

 
  HAL_SMARTCARD_STATE_TIMEOUT           = 0xA0U,    
 
  HAL_SMARTCARD_STATE_ERROR             = 0xE0U     
 
}HAL_SMARTCARD_StateTypeDef;



 
typedef struct __SMARTCARD_HandleTypeDef
{
  USART_TypeDef                    *Instance;         

  SMARTCARD_InitTypeDef            Init;              

  const uint8_t                    *pTxBuffPtr;       

  uint16_t                         TxXferSize;        

  volatile uint16_t                    TxXferCount;       

  uint8_t                          *pRxBuffPtr;       

  uint16_t                         RxXferSize;        

  volatile uint16_t                    RxXferCount;       

  DMA_HandleTypeDef                *hdmatx;           

  DMA_HandleTypeDef                *hdmarx;           

  HAL_LockTypeDef                  Lock;              

  volatile HAL_SMARTCARD_StateTypeDef  gState;           

 

  volatile HAL_SMARTCARD_StateTypeDef  RxState;          
 

  volatile uint32_t                    ErrorCode;         

#line 203 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_smartcard.h"

} SMARTCARD_HandleTypeDef;

#line 230 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_smartcard.h"



 

 


 



 
#line 252 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_smartcard.h"


 



 



 



 




 



 




 



 





 



 




 



 




 



 




 



 




 



 




 



 
#line 371 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_smartcard.h"


 





 
#line 388 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_smartcard.h"


 








 
#line 406 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_smartcard.h"


 



 

 


 





 
#line 437 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_smartcard.h"





 
















 


















 






 
#line 493 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_smartcard.h"





 






 






 






 














 















 














 






 






 









 









 




 

 


 



 
 
HAL_StatusTypeDef HAL_SMARTCARD_Init(SMARTCARD_HandleTypeDef *hsc);
HAL_StatusTypeDef HAL_SMARTCARD_ReInit(SMARTCARD_HandleTypeDef *hsc);
HAL_StatusTypeDef HAL_SMARTCARD_DeInit(SMARTCARD_HandleTypeDef *hsc);
void HAL_SMARTCARD_MspInit(SMARTCARD_HandleTypeDef *hsc);
void HAL_SMARTCARD_MspDeInit(SMARTCARD_HandleTypeDef *hsc);







 



 
 
HAL_StatusTypeDef HAL_SMARTCARD_Transmit(SMARTCARD_HandleTypeDef *hsc, const uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_SMARTCARD_Receive(SMARTCARD_HandleTypeDef *hsc, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_SMARTCARD_Transmit_IT(SMARTCARD_HandleTypeDef *hsc, const uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_SMARTCARD_Receive_IT(SMARTCARD_HandleTypeDef *hsc, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_SMARTCARD_Transmit_DMA(SMARTCARD_HandleTypeDef *hsc, const uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_SMARTCARD_Receive_DMA(SMARTCARD_HandleTypeDef *hsc, uint8_t *pData, uint16_t Size);
 
HAL_StatusTypeDef HAL_SMARTCARD_Abort(SMARTCARD_HandleTypeDef *hsc);
HAL_StatusTypeDef HAL_SMARTCARD_AbortTransmit(SMARTCARD_HandleTypeDef *hsc);
HAL_StatusTypeDef HAL_SMARTCARD_AbortReceive(SMARTCARD_HandleTypeDef *hsc);
HAL_StatusTypeDef HAL_SMARTCARD_Abort_IT(SMARTCARD_HandleTypeDef *hsc);
HAL_StatusTypeDef HAL_SMARTCARD_AbortTransmit_IT(SMARTCARD_HandleTypeDef *hsc);
HAL_StatusTypeDef HAL_SMARTCARD_AbortReceive_IT(SMARTCARD_HandleTypeDef *hsc);

void HAL_SMARTCARD_IRQHandler(SMARTCARD_HandleTypeDef *hsc);
void HAL_SMARTCARD_TxCpltCallback(SMARTCARD_HandleTypeDef *hsc);
void HAL_SMARTCARD_RxCpltCallback(SMARTCARD_HandleTypeDef *hsc);
void HAL_SMARTCARD_ErrorCallback(SMARTCARD_HandleTypeDef *hsc);
void HAL_SMARTCARD_AbortCpltCallback(SMARTCARD_HandleTypeDef *hsc);
void HAL_SMARTCARD_AbortTransmitCpltCallback(SMARTCARD_HandleTypeDef *hsc);
void HAL_SMARTCARD_AbortReceiveCpltCallback(SMARTCARD_HandleTypeDef *hsc);


 



 
 
HAL_SMARTCARD_StateTypeDef HAL_SMARTCARD_GetState(const SMARTCARD_HandleTypeDef *hsc);
uint32_t HAL_SMARTCARD_GetError(const SMARTCARD_HandleTypeDef *hsc);


 



 
 
 
 


 



 







 

 


 
#line 707 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_smartcard.h"





 






 

 


 



 



 



 







#line 357 "../Inc/stm32f1xx_hal_conf.h"














   

 
#line 389 "../Inc/stm32f1xx_hal_conf.h"








 
#line 30 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"



 



 

 



 



 
typedef enum
{
  HAL_TICK_FREQ_10HZ         = 100U,
  HAL_TICK_FREQ_100HZ        = 10U,
  HAL_TICK_FREQ_1KHZ         = 1U,
  HAL_TICK_FREQ_DEFAULT      = HAL_TICK_FREQ_1KHZ
} HAL_TickFreqTypeDef;


 
 
extern volatile uint32_t uwTick;
extern uint32_t uwTickPrio;
extern HAL_TickFreqTypeDef uwTickFreq;



 
 


 











 

 


 





 






 




#line 111 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

#line 119 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

#line 127 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

#line 135 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

#line 143 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

#line 151 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"



 





 





 






 







 




#line 193 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

 



 




#line 210 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

#line 218 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

#line 226 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

#line 234 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"


#line 243 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

#line 251 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

#line 259 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"



 



 





 

 


 


 
 
HAL_StatusTypeDef HAL_Init(void);
HAL_StatusTypeDef HAL_DeInit(void);
void HAL_MspInit(void);
void HAL_MspDeInit(void);
HAL_StatusTypeDef HAL_InitTick(uint32_t TickPriority);


 



 
 
void HAL_IncTick(void);
void HAL_Delay(uint32_t Delay);
uint32_t HAL_GetTick(void);
uint32_t HAL_GetTickPrio(void);
HAL_StatusTypeDef HAL_SetTickFreq(HAL_TickFreqTypeDef Freq);
HAL_TickFreqTypeDef HAL_GetTickFreq(void);
void HAL_SuspendTick(void);
void HAL_ResumeTick(void);
uint32_t HAL_GetHalVersion(void);
uint32_t HAL_GetREVID(void);
uint32_t HAL_GetDEVID(void);
uint32_t HAL_GetUIDw0(void);
uint32_t HAL_GetUIDw1(void);
uint32_t HAL_GetUIDw2(void);
void HAL_DBGMCU_EnableDBGSleepMode(void);
void HAL_DBGMCU_DisableDBGSleepMode(void);
void HAL_DBGMCU_EnableDBGStopMode(void);
void HAL_DBGMCU_DisableDBGStopMode(void);
void HAL_DBGMCU_EnableDBGStandbyMode(void);
void HAL_DBGMCU_DisableDBGStandbyMode(void);


 



 



 
 
 


 


 
 


 


 
 
 


 



 








#line 26 "../Inc/main.h"
#line 1 "..\\Drivers\\BSP\\STM32F1xx_Nucleo\\stm32f1xx_nucleo.h"







































 

 









  



  

 
#line 60 "..\\Drivers\\BSP\\STM32F1xx_Nucleo\\stm32f1xx_nucleo.h"





 
typedef enum 
{
  LED2 = 0,
  LED_GREEN = LED2
} Led_TypeDef;

typedef enum 
{  
  BUTTON_USER = 0,
   
  BUTTON_KEY  = BUTTON_USER
} Button_TypeDef;

typedef enum 
{  
  BUTTON_MODE_GPIO = 0,
  BUTTON_MODE_EXTI = 1
} ButtonMode_TypeDef; 

typedef enum 
{ 
  JOY_NONE = 0,
  JOY_SEL = 1,
  JOY_DOWN = 2,
  JOY_LEFT = 3,
  JOY_RIGHT = 4,
  JOY_UP = 5
} JOYState_TypeDef;



  



  



  



  


 












  



   




 





 










 
    


 
 

















    





   


    


 











 







 














 






 



 



    




    


 
    



 
    


 
uint32_t        BSP_GetVersion(void);


  

void            BSP_LED_Init(Led_TypeDef Led);
void            BSP_LED_DeInit(Led_TypeDef Led);
void            BSP_LED_On(Led_TypeDef Led);
void            BSP_LED_Off(Led_TypeDef Led);
void            BSP_LED_Toggle(Led_TypeDef Led);
void            LCD_IO_Init(void);


 



 

void             BSP_PB_Init(Button_TypeDef Button, ButtonMode_TypeDef ButtonMode);
void             BSP_PB_DeInit(Button_TypeDef Button);
uint32_t         BSP_PB_GetState(Button_TypeDef Button);


uint8_t          BSP_JOY_Init(void);
JOYState_TypeDef BSP_JOY_GetState(void);
void             BSP_JOY_DeInit(void);

void               SPIx_Init(void);
void               SPIx_Write(uint8_t Value);
void               SPIx_WriteData(uint8_t *DataIn, uint16_t DataLength);
void               SPIx_WriteReadData(const uint8_t *DataIn, uint8_t *DataOut, uint16_t DataLegnth);
void               SPIx_Error (void);
void               SPIx_MspInit(void);

 
void               SD_IO_Init(void);
void               SD_IO_CSState(uint8_t state);
void               SD_IO_WriteReadData(const uint8_t *DataIn, uint8_t *DataOut, uint16_t DataLength);
void               SD_IO_ReadData(uint8_t *DataOut, uint16_t DataLength);
void               SD_IO_WriteData(const uint8_t *Data, uint16_t DataLength);
uint8_t            SD_IO_WriteByte(uint8_t Data);
uint8_t                   SD_IO_ReadByte(void);

 
void               LCD_IO_WriteData(uint8_t Data);
void               LCD_IO_WriteMultipleData(uint8_t *pData, uint32_t Size);
void               LCD_IO_WriteReg(uint8_t LCDReg);
void               LCD_Delay(uint32_t delay);



HAL_StatusTypeDef  ADCx_Init(void);
void               ADCx_DeInit(void);
void               ADCx_MspInit(ADC_HandleTypeDef *hadc);
void               ADCx_MspDeInit(ADC_HandleTypeDef *hadc);






 



 



  



  








 
#line 27 "../Inc/main.h"



#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
 
 
 





 






 







 




  
 








#line 47 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


  



    typedef unsigned int size_t;    









 
 

 



    typedef struct __va_list __va_list;






   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

#line 136 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 166 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));


#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int __ARM_vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int __ARM_vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int __ARM_vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));
   








 

extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 











#line 1021 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"



 

#line 31 "../Inc/main.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
 
 
 




 
 



 






   














  


 








#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


  



    typedef unsigned int size_t;    
#line 70 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"






    



    typedef unsigned short wchar_t;  
#line 91 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

typedef struct div_t { int quot, rem; } div_t;
    
typedef struct ldiv_t { long int quot, rem; } ldiv_t;
    

typedef struct lldiv_t { long long quot, rem; } lldiv_t;
    


#line 112 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   



 

   




 
#line 131 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   


 
extern __declspec(__nothrow) int __aeabi_MB_CUR_MAX(void);

   




 

   




 




extern __declspec(__nothrow) double atof(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int atoi(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) long int atol(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) long long atoll(const char *  ) __attribute__((__nonnull__(1)));
   



 


extern __declspec(__nothrow) double strtod(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

















 

extern __declspec(__nothrow) float strtof(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) long double strtold(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

 

extern __declspec(__nothrow) long int strtol(const char * __restrict  ,
                        char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



























 
extern __declspec(__nothrow) unsigned long int strtoul(const char * __restrict  ,
                                       char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   


























 

 
extern __declspec(__nothrow) long long strtoll(const char * __restrict  ,
                                  char ** __restrict  , int  )
                          __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) unsigned long long strtoull(const char * __restrict  ,
                                            char ** __restrict  , int  )
                                   __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) int rand(void);
   







 
extern __declspec(__nothrow) void srand(unsigned int  );
   






 

struct _rand_state { int __x[57]; };
extern __declspec(__nothrow) int _rand_r(struct _rand_state *);
extern __declspec(__nothrow) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __declspec(__nothrow) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __declspec(__nothrow) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);
   


 

extern __declspec(__nothrow) void *calloc(size_t  , size_t  );
   



 
extern __declspec(__nothrow) void free(void *  );
   





 
extern __declspec(__nothrow) void *malloc(size_t  );
   



 
extern __declspec(__nothrow) void *realloc(void *  , size_t  );
   













 

extern __declspec(__nothrow) int posix_memalign(void **  , size_t  , size_t  );
   









 

typedef int (*__heapprt)(void *, char const *, ...);
extern __declspec(__nothrow) void __heapstats(int (*  )(void *  ,
                                           char const *  , ...),
                        void *  ) __attribute__((__nonnull__(1)));
   










 
extern __declspec(__nothrow) int __heapvalid(int (*  )(void *  ,
                                           char const *  , ...),
                       void *  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
   







 

extern __declspec(__nothrow) int atexit(void (*  )(void)) __attribute__((__nonnull__(1)));
   




 
#line 436 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern __declspec(__nothrow) __declspec(__noreturn) void exit(int  );
   












 

extern __declspec(__nothrow) __declspec(__noreturn) void _Exit(int  );
   







      

extern __declspec(__nothrow) char *getenv(const char *  ) __attribute__((__nonnull__(1)));
   









 

extern __declspec(__nothrow) int  system(const char *  );
   









 

extern  void *bsearch(const void *  , const void *  ,
              size_t  , size_t  ,
              int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
   












 
#line 524 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern  void qsort(void *  , size_t  , size_t  ,
           int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
   









 

#line 553 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

extern __declspec(__nothrow) __attribute__((const)) int abs(int  );
   



 

extern __declspec(__nothrow) __attribute__((const)) div_t div(int  , int  );
   









 
extern __declspec(__nothrow) __attribute__((const)) long int labs(long int  );
   



 




extern __declspec(__nothrow) __attribute__((const)) ldiv_t ldiv(long int  , long int  );
   











 







extern __declspec(__nothrow) __attribute__((const)) long long llabs(long long  );
   



 




extern __declspec(__nothrow) __attribute__((const)) lldiv_t lldiv(long long  , long long  );
   











 
#line 634 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"




 
typedef struct __sdiv32by16 { int quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned int quot, rem; } __udiv32by16;
    
typedef struct __sdiv64by32 { int rem, quot; } __sdiv64by32;

__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv32by16 __rt_sdiv32by16(
     int  ,
     short int  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __udiv32by16 __rt_udiv32by16(
     unsigned int  ,
     unsigned short  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv64by32 __rt_sdiv64by32(
     int  , unsigned int  ,
     int  );
   

 




 
extern __declspec(__nothrow) unsigned int __fp_status(unsigned int  , unsigned int  );
   







 























 
extern __declspec(__nothrow) int mblen(const char *  , size_t  );
   












 
extern __declspec(__nothrow) int mbtowc(wchar_t * __restrict  ,
                   const char * __restrict  , size_t  );
   















 
extern __declspec(__nothrow) int wctomb(char *  , wchar_t  );
   













 





 
extern __declspec(__nothrow) size_t mbstowcs(wchar_t * __restrict  ,
                      const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 
extern __declspec(__nothrow) size_t wcstombs(char * __restrict  ,
                      const wchar_t * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 

extern __declspec(__nothrow) void __use_realtime_heap(void);
extern __declspec(__nothrow) void __use_realtime_division(void);
extern __declspec(__nothrow) void __use_two_region_memory(void);
extern __declspec(__nothrow) void __use_no_heap(void);
extern __declspec(__nothrow) void __use_no_heap_region(void);

extern __declspec(__nothrow) char const *__C_library_version_string(void);
extern __declspec(__nothrow) int __C_library_version_number(void);











#line 892 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"





 
#line 32 "../Inc/main.h"

 
#line 1 "..\\Middlewares\\Third_Party\\FatFs\\src\\ff_gen_drv.h"












































 

 







 
#line 1 "..\\Middlewares\\Third_Party\\FatFs\\src\\diskio.h"


 











#line 1 "..\\Middlewares\\Third_Party\\FatFs\\src\\integer.h"
 
 
 




#line 14 "..\\Middlewares\\Third_Party\\FatFs\\src\\integer.h"

 
typedef unsigned char	BYTE;

 
typedef short			SHORT;
typedef unsigned short	WORD;
typedef unsigned short	WCHAR;

 
typedef int				INT;
typedef unsigned int	UINT;

 
typedef long			LONG;
typedef unsigned long	DWORD;



#line 16 "..\\Middlewares\\Third_Party\\FatFs\\src\\diskio.h"


 
typedef BYTE	DSTATUS;

 
typedef enum {
	RES_OK = 0,		 
	RES_ERROR,		 
	RES_WRPRT,		 
	RES_NOTRDY,		 
	RES_PARERR		 
} DRESULT;


 
 


DSTATUS disk_initialize (BYTE pdrv);
DSTATUS disk_status (BYTE pdrv);
DRESULT disk_read (BYTE pdrv, BYTE* buff, DWORD sector, UINT count);
DRESULT disk_write (BYTE pdrv, const BYTE* buff, DWORD sector, UINT count);
DRESULT disk_ioctl (BYTE pdrv, BYTE cmd, void* buff);
DWORD get_fattime (void);

 






 

 






 





 






 








#line 57 "..\\Middlewares\\Third_Party\\FatFs\\src\\ff_gen_drv.h"
#line 1 "..\\Middlewares\\Third_Party\\FatFs\\src\\ff.h"















 









#line 27 "..\\Middlewares\\Third_Party\\FatFs\\src\\ff.h"
#line 1 "../Inc/ffconf.h"


 






 

#line 1 "..\\Drivers\\BSP\\Adafruit_Shield\\stm32_adafruit_sd.h"


































  

 







 
#line 47 "..\\Drivers\\BSP\\Adafruit_Shield\\stm32_adafruit_sd.h"



  

   


 
    


     



 
   


      
enum {    
      BSP_SD_OK = 0x00,      
      MSD_OK = 0x00,
      BSP_SD_ERROR = 0x01,
      BSP_SD_TIMEOUT
};
   
typedef struct              
{
  uint8_t  Reserved1:2;                
  uint16_t DeviceSize:12;              
  uint8_t  MaxRdCurrentVDDMin:3;       
  uint8_t  MaxRdCurrentVDDMax:3;       
  uint8_t  MaxWrCurrentVDDMin:3;       
  uint8_t  MaxWrCurrentVDDMax:3;       
  uint8_t  DeviceSizeMul:3;            
} struct_v1;


typedef struct              
{
  uint8_t  Reserved1:6;                
  uint32_t DeviceSize:22;              
  uint8_t  Reserved2:1;                
} struct_v2;



  
typedef struct
{
   
  uint8_t  CSDStruct:2;             
  uint8_t  Reserved1:6;             
  uint8_t  TAAC:8;                  
  uint8_t  NSAC:8;                  
  uint8_t  MaxBusClkFrec:8;         
  uint16_t CardComdClasses:12;       
  uint8_t  RdBlockLen:4;            
  uint8_t  PartBlockRead:1;         
  uint8_t  WrBlockMisalign:1;       
  uint8_t  RdBlockMisalign:1;       
  uint8_t  DSRImpl:1;               
  
   
  union csd_version {
    struct_v1 v1;
    struct_v2 v2;
  } version;
  
  uint8_t  EraseSingleBlockEnable:1;   
  uint8_t  EraseSectorSize:7;          
  uint8_t  WrProtectGrSize:7;          
  uint8_t  WrProtectGrEnable:1;        
  uint8_t  Reserved2:2;                
  uint8_t  WrSpeedFact:3;              
  uint8_t  MaxWrBlockLen:4;            
  uint8_t  WriteBlockPartial:1;        
  uint8_t  Reserved3:5;                
  uint8_t  FileFormatGrouop:1;         
  uint8_t  CopyFlag:1;                 
  uint8_t  PermWrProtect:1;            
  uint8_t  TempWrProtect:1;            
  uint8_t  FileFormat:2;               
  uint8_t  Reserved4:2;                
  uint8_t  crc:7;                      
  uint8_t  Reserved5:1;                
  
} SD_CSD;



 
typedef struct
{
  volatile uint8_t  ManufacturerID;        
  volatile uint16_t OEM_AppliID;           
  volatile uint32_t ProdName1;             
  volatile uint8_t  ProdName2;             
  volatile uint8_t  ProdRev;               
  volatile uint32_t ProdSN;                
  volatile uint8_t  Reserved1;             
  volatile uint16_t ManufactDate;          
  volatile uint8_t  CID_CRC;               
  volatile uint8_t  Reserved2;             
} SD_CID;



 
typedef struct
{
  SD_CSD Csd;
  SD_CID Cid;
  uint32_t CardCapacity;               
  uint32_t CardBlockSize;              
  uint32_t LogBlockNbr;                
  uint32_t LogBlockSize;               
} SD_CardInfo;



 
  


  
  


 




 







    




 
  


  



  



    
uint8_t BSP_SD_Init(void);
uint8_t BSP_SD_ReadBlocks(uint32_t *pData, uint32_t ReadAddr, uint32_t NumOfBlocks, uint32_t Timeout);
uint8_t BSP_SD_WriteBlocks(uint32_t *pData, uint32_t WriteAddr, uint32_t NumOfBlocks, uint32_t Timeout);
uint8_t BSP_SD_Erase(uint32_t StartAddr, uint32_t EndAddr);
uint8_t BSP_SD_GetCardState(void);
uint8_t BSP_SD_GetCardInfo(SD_CardInfo *pCardInfo);
   
 
void    SD_IO_Init(void);
void    SD_IO_CSState(uint8_t state);
void    SD_IO_WriteReadData(const uint8_t *DataIn, uint8_t *DataOut, uint16_t DataLength);
uint8_t SD_IO_WriteByte(uint8_t Data);

 
void HAL_Delay(volatile uint32_t Delay);









  



  



  



  

 
#line 13 "../Inc/ffconf.h"



 






 






 









 








 




 



 



 




 




 










 




 






























 















 





 











 









 




 


 








 







 









 





 











 





 












 











 



















 























 


#line 28 "..\\Middlewares\\Third_Party\\FatFs\\src\\ff.h"






 

#line 48 "..\\Middlewares\\Third_Party\\FatFs\\src\\ff.h"





 

#line 67 "..\\Middlewares\\Third_Party\\FatFs\\src\\ff.h"
typedef char TCHAR;








 

typedef struct {
  union{
	UINT	d32[512/4];       
	BYTE	d8[512];	   
  }win;
	BYTE	fs_type;		 
	BYTE	drv;			 
	BYTE	csize;			 
	BYTE	n_fats;			 
	BYTE	wflag;			 
	BYTE	fsi_flag;		 
	WORD	id;				 
	WORD	n_rootdir;		 
#line 98 "..\\Middlewares\\Third_Party\\FatFs\\src\\ff.h"
	DWORD	last_clust;		 
	DWORD	free_clust;		 




	DWORD	n_fatent;		 
	DWORD	fsize;			 
	DWORD	volbase;		 
	DWORD	fatbase;		 
	DWORD	dirbase;		 
	DWORD	database;		 
	DWORD	winsect;		 
	
} FATFS;



 

typedef struct {

  union{  
	UINT	d32[512/4];       
	BYTE	d8[512];	 
  }buf;

	FATFS*	fs;				 
	WORD	id;				 
	BYTE	flag;			 
	BYTE	err;			 
	DWORD	fptr;			 
	DWORD	fsize;			 
	DWORD	sclust;			 
	DWORD	clust;			 
	DWORD	dsect;			 

	DWORD	dir_sect;		 
	BYTE*	dir_ptr;		 


	DWORD*	cltbl;			 


	UINT	lockid;			 


} FIL;



 

typedef struct {

  union{  
            UINT     d32[512/4];     
            BYTE   d8[512];   
  }buf;

	FATFS*	fs;				 
	WORD	id;				 
	WORD	index;			 
	DWORD	sclust;			 
	DWORD	clust;			 
	DWORD	sect;			 
	BYTE*	dir;			 
	BYTE*	fn;				 

	UINT	lockid;			 
#line 176 "..\\Middlewares\\Third_Party\\FatFs\\src\\ff.h"
} DIR;



 

typedef struct {
	DWORD	fsize;			 
	WORD	fdate;			 
	WORD	ftime;			 
	BYTE	fattrib;		 
	TCHAR	fname[13];		 




} FILINFO;



 

typedef enum {
	FR_OK = 0,				 
	FR_DISK_ERR,			 
	FR_INT_ERR,				 
	FR_NOT_READY,			 
	FR_NO_FILE,				 
	FR_NO_PATH,				 
	FR_INVALID_NAME,		 
	FR_DENIED,				 
	FR_EXIST,				 
	FR_INVALID_OBJECT,		 
	FR_WRITE_PROTECTED,		 
	FR_INVALID_DRIVE,		 
	FR_NOT_ENABLED,			 
	FR_NO_FILESYSTEM,		 
	FR_MKFS_ABORTED,		 
	FR_TIMEOUT,				 
	FR_LOCKED,				 
	FR_NOT_ENOUGH_CORE,		 
	FR_TOO_MANY_OPEN_FILES,	 
	FR_INVALID_PARAMETER	 
} FRESULT;



 
 

FRESULT f_open (FIL* fp, const TCHAR* path, BYTE mode);				 
FRESULT f_close (FIL* fp);											 
FRESULT f_read (FIL* fp, void* buff, UINT btr, UINT* br);			 
FRESULT f_write (FIL* fp, const void* buff, UINT btw, UINT* bw);	 
FRESULT f_forward (FIL* fp, UINT(*func)(const BYTE*,UINT), UINT btf, UINT* bf);	 
FRESULT f_lseek (FIL* fp, DWORD ofs);								 
FRESULT f_truncate (FIL* fp);										 
FRESULT f_sync (FIL* fp);											 
FRESULT f_opendir (DIR* dp, const TCHAR* path);						 
FRESULT f_closedir (DIR* dp);										 
FRESULT f_readdir (DIR* dp, FILINFO* fno);							 
FRESULT f_findfirst (DIR* dp, FILINFO* fno, const TCHAR* path, const TCHAR* pattern);	 
FRESULT f_findnext (DIR* dp, FILINFO* fno);							 
FRESULT f_mkdir (const TCHAR* path);								 
FRESULT f_unlink (const TCHAR* path);								 
FRESULT f_rename (const TCHAR* path_old, const TCHAR* path_new);	 
FRESULT f_stat (const TCHAR* path, FILINFO* fno);					 
FRESULT f_chmod (const TCHAR* path, BYTE attr, BYTE mask);			 
FRESULT f_utime (const TCHAR* path, const FILINFO* fno);			 
FRESULT f_chdir (const TCHAR* path);								 
FRESULT f_chdrive (const TCHAR* path);								 
FRESULT f_getcwd (TCHAR* buff, UINT len);							 
FRESULT f_getfree (const TCHAR* path, DWORD* nclst, FATFS** fatfs);	 
FRESULT f_getlabel (const TCHAR* path, TCHAR* label, DWORD* vsn);	 
FRESULT f_setlabel (const TCHAR* label);							 
FRESULT f_mount (FATFS* fs, const TCHAR* path, BYTE opt);			 
FRESULT f_mkfs (const TCHAR* path, BYTE sfd, UINT au);				 
FRESULT f_fdisk (BYTE pdrv, const DWORD szt[], void* work);			 
int f_putc (TCHAR c, FIL* fp);										 
int f_puts (const TCHAR* str, FIL* cp);								 
int f_printf (FIL* fp, const TCHAR* str, ...);						 
TCHAR* f_gets (TCHAR* buff, int len, FIL* fp);						 

#line 265 "..\\Middlewares\\Third_Party\\FatFs\\src\\ff.h"








 
 

 




 
#line 290 "..\\Middlewares\\Third_Party\\FatFs\\src\\ff.h"

 
#line 298 "..\\Middlewares\\Third_Party\\FatFs\\src\\ff.h"




 
 


 




#line 319 "..\\Middlewares\\Third_Party\\FatFs\\src\\ff.h"


 






 

#line 338 "..\\Middlewares\\Third_Party\\FatFs\\src\\ff.h"


 




 
 

#line 359 "..\\Middlewares\\Third_Party\\FatFs\\src\\ff.h"





#line 58 "..\\Middlewares\\Third_Party\\FatFs\\src\\ff_gen_drv.h"

 



  
typedef struct
{
  DSTATUS (*disk_initialize) (BYTE);                      
  DSTATUS (*disk_status)     (BYTE);                      
  DRESULT (*disk_read)       (BYTE, BYTE*, DWORD, UINT);        

  DRESULT (*disk_write)      (BYTE, const BYTE*, DWORD, UINT);  


  DRESULT (*disk_ioctl)      (BYTE, BYTE, void*);               


}Diskio_drvTypeDef;



  
typedef struct
{ 
  uint8_t                 is_initialized[1];
  Diskio_drvTypeDef       *drv[1];
  uint8_t                 lun[1];
  volatile uint8_t            nbr;

}Disk_drvTypeDef;

 
 
 
uint8_t FATFS_LinkDriverEx(Diskio_drvTypeDef *drv, char *path, uint8_t lun);
uint8_t FATFS_LinkDriver(Diskio_drvTypeDef *drv, char *path);
uint8_t FATFS_UnLinkDriver(char *path);
uint8_t FATFS_LinkDriverEx(Diskio_drvTypeDef *drv, char *path, BYTE lun);
uint8_t FATFS_UnLinkDriverEx(char *path, BYTE lun);
uint8_t FATFS_GetAttachedDriversNbr(void);







 

#line 35 "../Inc/main.h"
#line 1 "..\\Middlewares\\Third_Party\\FatFs\\src\\drivers\\sd_diskio.h"












































 

 



 
 
 
 
extern Diskio_drvTypeDef  SD_Driver;



 

#line 36 "../Inc/main.h"
#line 1 "../Inc/fatfs_storage.h"


















 

 








 
 
  
 
#pragma pack(1)  
typedef struct BmpHeader
{
  uint8_t  B;
  uint8_t  M;
  uint32_t fsize;
  uint16_t res1;
  uint16_t res2;
  uint32_t offset;
  uint32_t hsize;
  uint32_t w;
  uint32_t h;
  uint16_t planes;
  uint16_t bpp;
  uint32_t ctype;
  uint32_t dsize;
  uint32_t hppm;
  uint32_t vppm;
  uint32_t colorsused;
  uint32_t colorreq;
}BmpHeader;

 
 
 
uint32_t Storage_OpenReadFile(uint8_t Xpoz, uint16_t Ypoz, const char *BmpName);
uint32_t Storage_CopyFile(const char *BmpName1, const char *BmpName2);
uint32_t Storage_GetDirectoryBitmapFiles(const char* DirName, char* Files[]);
uint32_t Storage_CheckBitmapFile(const char *BmpName, uint32_t *FileLen);
uint8_t  Buffercmp(uint8_t *pBuffer1, uint8_t *pBuffer2, uint16_t BufferLength);








 



 



 

 
#line 37 "../Inc/main.h"

 
 




 
 








 






 






 
#line 75 "../Inc/main.h"

 






 
 
 


 
void Error_Handler(void);
void Test_Colors(void);
char* concat_data(char *s1, char *s2, char *s3);
char* concat_time(char *s1, char *s2, char *s3);
void LCD_RESET_SET(void);




 
#line 5 "..\\Drivers\\BSP\\Components\\st7789\\st7789.h"
#line 1 "..\\Drivers\\BSP\\Components\\st7789\\fonts.h"



#line 5 "..\\Drivers\\BSP\\Components\\st7789\\fonts.h"

typedef struct {
    const uint8_t width;
    uint8_t height;
    const uint16_t *data;
} FontDef;














 

 





 
#line 6 "..\\Drivers\\BSP\\Components\\st7789\\st7789.h"
#line 7 "..\\Drivers\\BSP\\Components\\st7789\\st7789.h"




 


 


 


 










 









 

 




 





#line 85 "..\\Drivers\\BSP\\Components\\st7789\\st7789.h"






#line 104 "..\\Drivers\\BSP\\Components\\st7789\\st7789.h"



#line 138 "..\\Drivers\\BSP\\Components\\st7789\\st7789.h"




 

#line 161 "..\\Drivers\\BSP\\Components\\st7789\\st7789.h"






 










#line 186 "..\\Drivers\\BSP\\Components\\st7789\\st7789.h"










 

















typedef struct  
{										    
	uint16_t width;			
	uint16_t height;			
	uint16_t id;				  
	uint8_t  dir;			  	
	uint16_t	 wramcmd;		
	uint16_t  setxcmd;		
	uint16_t  setycmd;			
  uint8_t   xoffset;    
  uint8_t	 yoffset;
}_lcd_dev; 	


extern _lcd_dev lcddev;	













 

 

 

 

 







 



 











 
void ST7789_Init(void);
void ST7789_SetRotation(uint8_t m);
void ST7789_Fill_Color(uint16_t color);
void ST7789_DrawPixel(uint16_t x, uint16_t y, uint16_t color);
void ST7789_Fill(uint16_t xSta, uint16_t ySta, uint16_t xEnd, uint16_t yEnd, uint16_t color);
void ST7789_DrawPixel_4px(uint16_t x, uint16_t y, uint16_t color);

 
void ST7789_DrawLine(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2, uint16_t color);
void ST7789_DrawRectangle(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2, uint16_t color);
void ST7789_DrawCircle(uint16_t x0, uint16_t y0, uint8_t r, uint16_t color);
void ST7789_DrawImage(uint16_t x, uint16_t y, uint16_t w, uint16_t h, const uint16_t *data);
void ST7789_InvertColors(uint8_t invert);

 
void ST7789_WriteChar(uint16_t x, uint16_t y, char ch, FontDef font, uint16_t color, uint16_t bgcolor);
void ST7789_WriteString(uint16_t x, uint16_t y, const char *str, FontDef font, uint16_t color, uint16_t bgcolor);

 
void ST7789_DrawFilledRectangle(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t color);
void ST7789_DrawTriangle(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2, uint16_t x3, uint16_t y3, uint16_t color);
void ST7789_DrawFilledTriangle(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2, uint16_t x3, uint16_t y3, uint16_t color);
void ST7789_DrawFilledCircle(int16_t x0, int16_t y0, int16_t r, uint16_t color);

 
void ST7789_TearEffect(uint8_t tear);

 
void ST7789_Test(void);


void LCD_WR_REG(uint8_t data);
void LCD_WR_DATA(uint8_t data);
uint8_t SPI_WriteByte(SPI_HandleTypeDef* hspi, uint8_t Byte);
void LCD_WriteReg(uint8_t LCD_Reg, uint16_t LCD_RegValue);
void LCD_direction(uint8_t direction);
void LCD_Clear(uint16_t Color);
void LCD_SetWindows(uint16_t xStar, uint16_t yStar, uint16_t xEnd, uint16_t yEnd);
void LCD_WriteRAM_Prepare(void);






#line 2 "..\\Drivers\\BSP\\Components\\st7789\\st7789.c"
extern SPI_HandleTypeDef SpiHandle;

extern FontDef Font_7x10;
extern FontDef Font_11x18;
extern FontDef Font_16x26;
extern const uint16_t saber[][128];

#line 20 "..\\Drivers\\BSP\\Components\\st7789\\st7789.c"





 
static void ST7789_WriteCommand(uint8_t cmd)
{
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_RESET);
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x0002), GPIO_PIN_RESET);
	HAL_SPI_Transmit(&SpiHandle, &cmd, sizeof(cmd), 0xFFFFFFFFU);
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_SET);
}






 
static void ST7789_WriteData(uint8_t *buff, size_t buff_size)
{
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_RESET);
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x0002), GPIO_PIN_SET);

	

	while (buff_size > 0) {
		uint16_t chunk_size = buff_size > 65535 ? 65535 : buff_size;
#line 59 "..\\Drivers\\BSP\\Components\\st7789\\st7789.c"
			HAL_SPI_Transmit(&SpiHandle, buff, chunk_size, 0xFFFFFFFFU);

		buff += chunk_size;
		buff_size -= chunk_size;
	}

	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_SET);
}




 
static void ST7789_WriteSmallData(uint8_t data)
{
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_RESET);
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x0002), GPIO_PIN_SET);
	HAL_SPI_Transmit(&SpiHandle, &data, sizeof(data), 0xFFFFFFFFU);
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_SET);
}





 
void ST7789_SetRotation(uint8_t m)
{
	ST7789_WriteCommand(0x36);	
	switch (m) {
	case 0:
		ST7789_WriteSmallData(0x40 | 0x80 | 0x00);
		break;
	case 1:
		ST7789_WriteSmallData(0x80 | 0x20 | 0x00);
		break;
	case 2:
		ST7789_WriteSmallData(0x00);
		break;
	case 3:
		ST7789_WriteSmallData(0x40 | 0x20 | 0x00);
		break;
	default:
		break;
	}
}





 
static void ST7789_SetAddressWindow(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1)
{
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_RESET);
	uint16_t x_start = x0 + 0, x_end = x1 + 0;
	uint16_t y_start = y0 + 0, y_end = y1 + 0;
	
	 
	ST7789_WriteCommand(0x2A); 
	{
		uint8_t data[] = {x_start >> 8, x_start & 0xFF, x_end >> 8, x_end & 0xFF};
		ST7789_WriteData(data, sizeof(data));
	}

	 
	ST7789_WriteCommand(0x2B);
	{
		uint8_t data[] = {y_start >> 8, y_start & 0xFF, y_end >> 8, y_end & 0xFF};
		ST7789_WriteData(data, sizeof(data));
	}
	 
	ST7789_WriteCommand(0x2C);
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_SET);
}





 
void ST7789_Init(void)
{



	HAL_Delay(10);
  LCD_RESET_SET();

	ST7789_WriteCommand(0x3A);		
    ST7789_WriteSmallData(0x55);
  	ST7789_WriteCommand(0xB2);				
	{
		uint8_t data[] = {0x0C, 0x0C, 0x00, 0x33, 0x33};
		ST7789_WriteData(data, sizeof(data));
	}
	ST7789_SetRotation(2);	
	
	 
    ST7789_WriteCommand(0XB7);				
    ST7789_WriteSmallData(0x35);			
    ST7789_WriteCommand(0xBB);				
    ST7789_WriteSmallData(0x19);			
    ST7789_WriteCommand(0xC0);				
    ST7789_WriteSmallData (0x2C);			
    ST7789_WriteCommand (0xC2);				
    ST7789_WriteSmallData (0x01);			
    ST7789_WriteCommand (0xC3);				
    ST7789_WriteSmallData (0x12);			
    ST7789_WriteCommand (0xC4);				
    ST7789_WriteSmallData (0x20);			
    ST7789_WriteCommand (0xC6);				
    ST7789_WriteSmallData (0x0F);			
    ST7789_WriteCommand (0xD0);				
    ST7789_WriteSmallData (0xA4);			
    ST7789_WriteSmallData (0xA1);			
	 

	ST7789_WriteCommand(0xE0);
	{
		uint8_t data[] = {0xD0, 0x04, 0x0D, 0x11, 0x13, 0x2B, 0x3F, 0x54, 0x4C, 0x18, 0x0D, 0x0B, 0x1F, 0x23};
		ST7789_WriteData(data, sizeof(data));
	}

    ST7789_WriteCommand(0xE1);
	{
		uint8_t data[] = {0xD0, 0x04, 0x0C, 0x11, 0x13, 0x2C, 0x3F, 0x44, 0x51, 0x2F, 0x1F, 0x1F, 0x20, 0x23};
		ST7789_WriteData(data, sizeof(data));
	}
    ST7789_WriteCommand (0x21);		
	ST7789_WriteCommand (0x11);	
  	ST7789_WriteCommand (0x13);		
  	ST7789_WriteCommand (0x29);	

	HAL_Delay(50);
	ST7789_Fill_Color(0xFFFF);				
}





 
void ST7789_Fill_Color(uint16_t color)
{
	uint16_t i = 0, j = 0, z = 0;
	ST7789_SetAddressWindow(0, 0, 240 - 1, 240 - 1);
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_RESET);

#line 215 "..\\Drivers\\BSP\\Components\\st7789\\st7789.c"
			for (i = 0; i < 240; i++)
			{
				for (j = 0; j < 240; j++) 
				{
					uint8_t data[] = {color >> 8, color & 0xFF};
					ST7789_WriteData(data, sizeof(data));
					z++;
				}
			}

			printf("------------z = %04d\n\r", z);
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_SET);
}






 
void ST7789_DrawPixel(uint16_t x, uint16_t y, uint16_t color)
{
	if ((x < 0) || (x >= 240) ||
		 (y < 0) || (y >= 240))	return;
	
	ST7789_SetAddressWindow(x, y, x, y);
	uint8_t data[] = {color >> 8, color & 0xFF};
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_RESET);
	ST7789_WriteData(data, sizeof(data));
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_SET);
}







 
void ST7789_Fill(uint16_t xSta, uint16_t ySta, uint16_t xEnd, uint16_t yEnd, uint16_t color)
{
	if ((xEnd < 0) || (xEnd >= 240) ||
		 (yEnd < 0) || (yEnd >= 240))	return;
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_RESET);
	uint16_t i, j;
	ST7789_SetAddressWindow(xSta, ySta, xEnd, yEnd);
	for (i = ySta; i <= yEnd; i++)
		for (j = xSta; j <= xEnd; j++) {
			uint8_t data[] = {color >> 8, color & 0xFF};
			ST7789_WriteData(data, sizeof(data));
		}
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_SET);
}






 
void ST7789_DrawPixel_4px(uint16_t x, uint16_t y, uint16_t color)
{
	if ((x <= 0) || (x > 240) ||
		 (y <= 0) || (y > 240))	return;
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_RESET);
	ST7789_Fill(x - 1, y - 1, x + 1, y + 1, color);
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_SET);
}







 
void ST7789_DrawLine(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1,
        uint16_t color) {
	uint16_t swap;
    uint16_t steep = ((y1 - y0) > 0 ? (y1 - y0) : -(y1 - y0)) > ((x1 - x0) > 0 ? (x1 - x0) : -(x1 - x0));
    if (steep) {
		swap = x0;
		x0 = y0;
		y0 = swap;

		swap = x1;
		x1 = y1;
		y1 = swap;
        
        
    }

    if (x0 > x1) {
		swap = x0;
		x0 = x1;
		x1 = swap;

		swap = y0;
		y0 = y1;
		y1 = swap;
        
        
    }

    int16_t dx, dy;
    dx = x1 - x0;
    dy = ((y1 - y0) > 0 ? (y1 - y0) : -(y1 - y0));

    int16_t err = dx / 2;
    int16_t ystep;

    if (y0 < y1) {
        ystep = 1;
    } else {
        ystep = -1;
    }

    for (; x0<=x1; x0++) {
        if (steep) {
            ST7789_DrawPixel(y0, x0, color);
        } else {
            ST7789_DrawPixel(x0, y0, color);
        }
        err -= dy;
        if (err < 0) {
            y0 += ystep;
            err += dx;
        }
    }
}






 
void ST7789_DrawRectangle(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2, uint16_t color)
{
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_RESET);
	ST7789_DrawLine(x1, y1, x2, y1, color);
	ST7789_DrawLine(x1, y1, x1, y2, color);
	ST7789_DrawLine(x1, y2, x2, y2, color);
	ST7789_DrawLine(x2, y1, x2, y2, color);
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_SET);
}







 
void ST7789_DrawCircle(uint16_t x0, uint16_t y0, uint8_t r, uint16_t color)
{
	int16_t f = 1 - r;
	int16_t ddF_x = 1;
	int16_t ddF_y = -2 * r;
	int16_t x = 0;
	int16_t y = r;

	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_RESET);
	ST7789_DrawPixel(x0, y0 + r, color);
	ST7789_DrawPixel(x0, y0 - r, color);
	ST7789_DrawPixel(x0 + r, y0, color);
	ST7789_DrawPixel(x0 - r, y0, color);

	while (x < y) {
		if (f >= 0) {
			y--;
			ddF_y += 2;
			f += ddF_y;
		}
		x++;
		ddF_x += 2;
		f += ddF_x;

		ST7789_DrawPixel(x0 + x, y0 + y, color);
		ST7789_DrawPixel(x0 - x, y0 + y, color);
		ST7789_DrawPixel(x0 + x, y0 - y, color);
		ST7789_DrawPixel(x0 - x, y0 - y, color);

		ST7789_DrawPixel(x0 + y, y0 + x, color);
		ST7789_DrawPixel(x0 - y, y0 + x, color);
		ST7789_DrawPixel(x0 + y, y0 - x, color);
		ST7789_DrawPixel(x0 - y, y0 - x, color);
	}
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_SET);
}







 
void ST7789_DrawImage(uint16_t x, uint16_t y, uint16_t w, uint16_t h, const uint16_t *data)
{
	if ((x >= 240) || (y >= 240))
		return;
	if ((x + w - 1) >= 240)
		return;
	if ((y + h - 1) >= 240)
		return;

	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_RESET);
	ST7789_SetAddressWindow(x, y, x + w - 1, y + h - 1);
	ST7789_WriteData((uint8_t *)data, sizeof(uint16_t) * w * h);
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_SET);
}





 
void ST7789_InvertColors(uint8_t invert)
{
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_RESET);
	ST7789_WriteCommand(invert ? 0x21   : 0x20  );
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_SET);
}









 
void ST7789_WriteChar(uint16_t x, uint16_t y, char ch, FontDef font, uint16_t color, uint16_t bgcolor)
{
	uint32_t i, b, j;
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_RESET);
	ST7789_SetAddressWindow(x, y, x + font.width - 1, y + font.height - 1);

	for (i = 0; i < font.height; i++) {
		b = font.data[(ch - 32) * font.height + i];
		for (j = 0; j < font.width; j++) {
			if ((b << j) & 0x8000) {
				uint8_t data[] = {color >> 8, color & 0xFF};
				ST7789_WriteData(data, sizeof(data));
			}
			else {
				uint8_t data[] = {bgcolor >> 8, bgcolor & 0xFF};
				ST7789_WriteData(data, sizeof(data));
			}
		}
	}
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_SET);
}









 
void ST7789_WriteString(uint16_t x, uint16_t y, const char *str, FontDef font, uint16_t color, uint16_t bgcolor)
{
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_RESET);
	while (*str) {
		if (x + font.width >= 240) {
			x = 0;
			y += font.height;
			if (y + font.height >= 240) {
				break;
			}

			if (*str == ' ') {
				
				str++;
				continue;
			}
		}
		ST7789_WriteChar(x, y, *str, font, color, bgcolor);
		x += font.width;
		str++;
	}
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_SET);
}







 
void ST7789_DrawFilledRectangle(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t color)
{
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_RESET);
	uint8_t i;

	 
	if (x >= 240 ||
		y >= 240) {
		 
		return;
	}

	 
	if ((x + w) >= 240) {
		w = 240 - x;
	}
	if ((y + h) >= 240) {
		h = 240 - y;
	}

	 
	for (i = 0; i <= h; i++) {
		 
		ST7789_DrawLine(x, y + i, x + w, y + i, color);
	}
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_SET);
}






 
void ST7789_DrawTriangle(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2, uint16_t x3, uint16_t y3, uint16_t color)
{
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_RESET);
	 
	ST7789_DrawLine(x1, y1, x2, y2, color);
	ST7789_DrawLine(x2, y2, x3, y3, color);
	ST7789_DrawLine(x3, y3, x1, y1, color);
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_SET);
}






 
void ST7789_DrawFilledTriangle(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2, uint16_t x3, uint16_t y3, uint16_t color)
{
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_RESET);
	int16_t deltax = 0, deltay = 0, x = 0, y = 0, xinc1 = 0, xinc2 = 0,
			yinc1 = 0, yinc2 = 0, den = 0, num = 0, numadd = 0, numpixels = 0,
			curpixel = 0;

	deltax = ((x2 - x1) > 0 ? (x2 - x1) : -(x2 - x1));
	deltay = ((y2 - y1) > 0 ? (y2 - y1) : -(y2 - y1));
	x = x1;
	y = y1;

	if (x2 >= x1) {
		xinc1 = 1;
		xinc2 = 1;
	}
	else {
		xinc1 = -1;
		xinc2 = -1;
	}

	if (y2 >= y1) {
		yinc1 = 1;
		yinc2 = 1;
	}
	else {
		yinc1 = -1;
		yinc2 = -1;
	}

	if (deltax >= deltay) {
		xinc1 = 0;
		yinc2 = 0;
		den = deltax;
		num = deltax / 2;
		numadd = deltay;
		numpixels = deltax;
	}
	else {
		xinc2 = 0;
		yinc1 = 0;
		den = deltay;
		num = deltay / 2;
		numadd = deltax;
		numpixels = deltay;
	}

	for (curpixel = 0; curpixel <= numpixels; curpixel++) {
		ST7789_DrawLine(x, y, x3, y3, color);

		num += numadd;
		if (num >= den) {
			num -= den;
			x += xinc1;
			y += yinc1;
		}
		x += xinc2;
		y += yinc2;
	}
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_SET);
}







 
void ST7789_DrawFilledCircle(int16_t x0, int16_t y0, int16_t r, uint16_t color)
{
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_RESET);
	int16_t f = 1 - r;
	int16_t ddF_x = 1;
	int16_t ddF_y = -2 * r;
	int16_t x = 0;
	int16_t y = r;

	ST7789_DrawPixel(x0, y0 + r, color);
	ST7789_DrawPixel(x0, y0 - r, color);
	ST7789_DrawPixel(x0 + r, y0, color);
	ST7789_DrawPixel(x0 - r, y0, color);
	ST7789_DrawLine(x0 - r, y0, x0 + r, y0, color);

	while (x < y) {
		if (f >= 0) {
			y--;
			ddF_y += 2;
			f += ddF_y;
		}
		x++;
		ddF_x += 2;
		f += ddF_x;

		ST7789_DrawLine(x0 - x, y0 + y, x0 + x, y0 + y, color);
		ST7789_DrawLine(x0 + x, y0 - y, x0 - x, y0 - y, color);

		ST7789_DrawLine(x0 + y, y0 + x, x0 - y, y0 + x, color);
		ST7789_DrawLine(x0 + y, y0 - x, x0 - y, y0 - x, color);
	}
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_SET);
}






 
void ST7789_TearEffect(uint8_t tear)
{
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_RESET);
	ST7789_WriteCommand(tear ? 0x35   : 0x34  );
	HAL_GPIO_WritePin(((GPIO_TypeDef *)((0x40000000UL + 0x00010000UL) + 0x00000C00UL)), ((uint16_t)0x1000), GPIO_PIN_SET);
}






 
void ST7789_Test(void)
{
	ST7789_Fill_Color(0xFFFF);
	HAL_Delay(1000);
	ST7789_Fill_Color(0x7FFF);
    HAL_Delay(500);
	ST7789_Fill_Color(0xF800);
    HAL_Delay(500);
	ST7789_Fill_Color(0x001F);
    HAL_Delay(500);
	ST7789_Fill_Color(0x07E0);
    HAL_Delay(500);
	ST7789_Fill_Color(0xFFE0);
    HAL_Delay(500);
	ST7789_Fill_Color(0xBC40);
    HAL_Delay(500);
	ST7789_Fill_Color(0x01CF);
    HAL_Delay(500);
	ST7789_Fill_Color(0xF81F);
    HAL_Delay(500);
	ST7789_Fill_Color(0X841F);
    HAL_Delay(500);
	ST7789_Fill_Color(0XC618);
    HAL_Delay(500);
	ST7789_Fill_Color(0X2B12);
    HAL_Delay(500);
	ST7789_Fill_Color(0xFFFF);
	HAL_Delay(500);

	ST7789_Fill_Color(0xF800);
	
	ST7789_DrawRectangle(30, 30, 100, 100, 0xFFFF);
	HAL_Delay(1000);

	ST7789_Fill_Color(0xF800);
	
	ST7789_DrawFilledRectangle(30, 30, 50, 50, 0xFFFF);
	HAL_Delay(1000);

	ST7789_Fill_Color(0xF800);
	
	ST7789_DrawCircle(60, 60, 25, 0xFFFF);
	HAL_Delay(1000);

	ST7789_Fill_Color(0xF800);
	
	ST7789_DrawFilledCircle(60, 60, 25, 0xFFFF);
	HAL_Delay(1000);

	ST7789_Fill_Color(0xF800);
	
	ST7789_DrawTriangle(30, 30, 30, 70, 60, 40, 0xFFFF);
	HAL_Delay(1000);

	ST7789_Fill_Color(0xF800);
	
	ST7789_DrawFilledTriangle(30, 30, 30, 70, 60, 40, 0xFFFF);
	HAL_Delay(1000);

	ST7789_WriteString(10, 10, "Font test.", Font_16x26, 0x07FF, 0xFFFF);
	ST7789_WriteString(10, 50, "Hello Steve!", Font_7x10, 0xF800, 0xFFFF);
	ST7789_WriteString(10, 75, "Hello Steve!", Font_11x18, 0xFFE0, 0xFFFF);
	ST7789_WriteString(10, 100, "Hello Steve!", Font_16x26, 0xF81F, 0xFFFF);
	HAL_Delay(1000);


	
	ST7789_Fill_Color(0xFFFF);
	ST7789_DrawImage(0, 0, 128, 128, (uint16_t *)saber);
	HAL_Delay(3000);
}
