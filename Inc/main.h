/**
  ******************************************************************************
  * @file    Demonstrations/Adafruit_LCD_1_8_SD_Joystick/Inc/main.h 
  * @author  MCD Application Team
  * @brief   Header for main.c module
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2016 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"
#include "stm32f1xx_nucleo.h"
#include "stm32f1xx_hal_uart.h"
//==#include "stm32_adafruit_sd.h"
//==#include "stm32_adafruit_lcd.h"

#include <stdio.h>
#include <stdlib.h>

/* FatFs includes component */
#include "ff_gen_drv.h"
#include "sd_diskio.h"
#include "fatfs_storage.h"

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
#define  MAX_BMP_FILES  25
#define  MAX_BMP_FILE_NAME 11

//=============================Налаштування плат і дисплеїв==============================
//Контролер
#define TFT_LCD_7735
//#define TFT_LCD_7789

//Відлагоджувальна плата плата
//#define STM32F103_SMART
#define STM32F103_BLUE_BILL

//Типорозмір дисплея
//#define TFT_LCD_1_3 //Типорозмір 240х240
//#define TFT_LCD_1_44 //Типорозмір 128х128
#define TFT_LCD_1_77 //Типорозмір 160х128

//Підключення DCF77
//#difine DCF77

//Підключення дамача MLX90614
#define MLX90614

//=======================================================================================



/* User can use this section to tailor USARTx/UARTx instance used and associated
   resources */
/* Definition for USARTx clock resources */
#define USARTx                           USART2
#define USARTx_CLK_ENABLE()              __HAL_RCC_USART2_CLK_ENABLE();
#define USARTx_RX_GPIO_CLK_ENABLE()      __HAL_RCC_GPIOA_CLK_ENABLE()
#define USARTx_TX_GPIO_CLK_ENABLE()      __HAL_RCC_GPIOA_CLK_ENABLE()

#define USARTx_FORCE_RESET()             __HAL_RCC_USART2_FORCE_RESET()
#define USARTx_RELEASE_RESET()           __HAL_RCC_USART2_RELEASE_RESET()

/* Definition for USARTx Pins */
#define USARTx_TX_PIN                    GPIO_PIN_2
#define USARTx_TX_GPIO_PORT              GPIOA
#define USARTx_RX_PIN                    GPIO_PIN_3
#define USARTx_RX_GPIO_PORT              GPIOA

/* Definition for USARTx's NVIC */
#define USARTx_IRQn                      USART2_IRQn
#define USARTx_IRQHandler                USART2_IRQHandler

/* Size of Trasmission buffer */
#define TXBUFFERSIZE                      (COUNTOF(aTxBuffer) - 1)
/* Size of Reception buffer */
#define RXBUFFERSIZE                      TXBUFFERSIZE

/* Exported macro ------------------------------------------------------------*/
#define COUNTOF(__BUFFER__)   (sizeof(__BUFFER__) / sizeof(*(__BUFFER__)))


#ifdef STM32F103_SMART
	#define SPIx                                 SPI2 
	#define SPIx_CLK_ENABLE()                    __HAL_RCC_SPI2_CLK_ENABLE() 

	#define SPIx_SCK_PIN                         GPIO_PIN_13 
	#define SPIx_SCK_GPIO_PORT                   GPIOB  //SPI SCK PB13
	#define SPIx_SCK_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOB_CLK_ENABLE() 
	#define SPIx_SCK_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOB_CLK_DISABLE()


	#define SPIx_MOSI_PIN                        GPIO_PIN_15
	#define SPIx_MOSI_GPIO_PORT             			GPIOB 
	#define SPIx_MOSI_GPIO_CLK_ENABLE()    		 __HAL_RCC_GPIOB_CLK_ENABLE()
	#define SPIx_MOSI_GPIO_CLK_DISABLE()    		 __HAL_RCC_GPIOB_CLK_DISABLE()

	#define SPIx_MISO_PIN                        GPIO_PIN_14 
	#define SPIx_MISO_GPIO_PORT             			GPIOB 
	#define SPIx__MISO_GPIO_CLK_ENABLE()    		  __HAL_RCC_GPIOB_CLK_ENABLE()
	#define SPIx__MISO_GPIO_CLK_DISABLE()    		__HAL_RCC_GPIOB_CLK_DISABLE()

	/* Definition for SPIx's NVIC */
	#define SPIx_IRQn                        SPI2_IRQn
	#define SPIx_IRQHandler                  SPI2_IRQHandler
	
//Визначення пінів GPIO	
	#define LCD_CS_PIN                                 GPIO_PIN_12 //SPI2_NSS - не використовую
	#define LCD_CS_GPIO_PORT                           GPIOB
	#define LCD_CS_GPIO_CLK_ENABLE()                   __HAL_RCC_GPIOB_CLK_ENABLE()
	#define LCD_CS_GPIO_CLK_DISABLE()                  __HAL_RCC_GPIOB_CLK_DISABLE()

// Використовую PB PIN_11 в платі з проводочком
// Використовую PA PIN_7 в платі без проводочк
	#define LCD_RST_PIN                              GPIO_PIN_7  //PA7
	#define LCD_RST_GPIO_PORT                        GPIOA 
	#define LCD_RST_GPIO_CLK_ENABLE()                __HAL_RCC_GPIOA_CLK_ENABLE() //__HAL_RCC_GPIOB_CLK_ENABLE()
	#define LCD_RST_GPIO_CLK_DISABLE()               __HAL_RCC_GPIOA_CLK_DISABLE() //__HAL_RCC_GPIOB _CLK_DISABLE()

	#define LCD_DC_PIN                                 GPIO_PIN_1 //PB1
	#define LCD_DC_GPIO_PORT                           GPIOB 
	#define LCD_DC_GPIO_CLK_ENABLE()                   __HAL_RCC_GPIOB_CLK_ENABLE() //__HAL_RCC_GPIOA_CLK_ENABLE()
	#define LCD_DC_GPIO_CLK_DISABLE()                  __HAL_RCC_GPIOB_CLK_DISABLE() //__HAL_RCC_GPIOA_CLK_DISABLE()
	
	#define IN_DCF77_PIN                                 GPIO_PIN_1 //LED DCF77
	#define IN_DCF77_GPIO_PORT                           GPIOA 
	#define IN_DCF77_GPIO_CLK_ENABLE()                   __HAL_RCC_GPIOA_CLK_ENABLE() //__HAL_RCC_GPIOA_CLK_ENABLE()
	#define IN_DCF77_GPIO_CLK_DISABLE()                  __HAL_RCC_GPIOA_CLK_DISABLE() //__HAL_RCC_GPIOA_CLK_DISABLE()

#endif

/*###################### SPI ###################################*/
#ifdef STM32F103_BLUE_BILL
	#define SPIx                                 SPI1 
	#define SPIx_CLK_ENABLE()                    __HAL_RCC_SPI1_CLK_ENABLE() 

	#define SPIx_SCK_PIN                         GPIO_PIN_5
	#define SPIx_SCK_GPIO_PORT                   GPIOA //SPI SCK PB13
	#define SPIx_SCK_GPIO_CLK_ENABLE()           __HAL_RCC_GPIOA_CLK_ENABLE() 
	#define SPIx_SCK_GPIO_CLK_DISABLE()          __HAL_RCC_GPIOA_CLK_DISABLE()

	#define SPIx_MOSI_PIN                        GPIO_PIN_7
	#define SPIx_MOSI_GPIO_PORT             			GPIOA 
	#define SPIx_MOSI_GPIO_CLK_ENABLE()    		 __HAL_RCC_GPIOA_CLK_ENABLE()
	#define NUCLEO_SPIx_MOSI_GPIO_CLK_DISABLE()    		 __HAL_RCC_GPIOA_CLK_DISABLE()

	#define SPIx_MISO_PIN                        GPIO_PIN_6 
	#define SPIx_MISO_GPIO_PORT             			GPIOA 
	#define SPIx__MISO_GPIO_CLK_ENABLE()    		  __HAL_RCC_GPIOA_CLK_ENABLE()
	#define SPIx__MISO_GPIO_CLK_DISABLE()    		__HAL_RCC_GPIOA_CLK_DISABLE()
/* Definition for SPIx's NVIC */
	#define SPIx_IRQn                        SPI1_IRQn
	#define SPIx_IRQHandler                  SPI1_IRQHandler

//Визначення пінів GPIO
	#define LCD_CS_PIN                                 GPIO_PIN_10 //SPI1_NSS - не використовую
	#define LCD_CS_GPIO_PORT                           GPIOB
	#define LCD_CS_GPIO_CLK_ENABLE()                   __HAL_RCC_GPIOB_CLK_ENABLE()
	#define LCD_CS_GPIO_CLK_DISABLE()                  __HAL_RCC_GPIOB_CLK_DISABLE()

	#define LCD_RST_PIN                              GPIO_PIN_1  //PB1
	#define LCD_RST_GPIO_PORT                        GPIOB 
	#define LCD_RST_GPIO_CLK_ENABLE()                __HAL_RCC_GPIOB_CLK_ENABLE() //
	#define LCD_RST_GPIO_CLK_DISABLE()               __HAL_RCC_GPIOB_CLK_DISABLE() //

	#define LCD_DC_PIN                                 GPIO_PIN_0 
	#define LCD_DC_GPIO_PORT                           GPIOB 
	#define LCD_DC_GPIO_CLK_ENABLE()                   __HAL_RCC_GPIOB_CLK_ENABLE() 
	#define LCD_DC_GPIO_CLK_DISABLE()                  __HAL_RCC_GPIOB_CLK_DISABLE() 
#endif

#define I2Cx                            I2C1
#define I2Cx_CLK_ENABLE()               __HAL_RCC_I2C1_CLK_ENABLE()
#define I2Cx_SDA_GPIO_CLK_ENABLE()      __HAL_RCC_GPIOB_CLK_ENABLE()
#define I2Cx_SCL_GPIO_CLK_ENABLE()      __HAL_RCC_GPIOB_CLK_ENABLE() 

#define I2Cx_FORCE_RESET()              __HAL_RCC_I2C1_FORCE_RESET()
#define I2Cx_RELEASE_RESET()            __HAL_RCC_I2C1_RELEASE_RESET()

/* Definition for I2Cx Pins */
#define I2Cx_SCL_PIN                    GPIO_PIN_6
#define I2Cx_SCL_GPIO_PORT              GPIOB
#define I2Cx_SDA_PIN                    GPIO_PIN_7
#define I2Cx_SDA_GPIO_PORT              GPIOB




typedef struct
{
	char *ATstring; //Вказівники на адреси команд AT
	char *ATversion;
	char	*ATbaud;
	char *ATname;
}commandAT;

typedef struct
{
	char *ATresponse; // Вказівники на адреси відповідей на команди AT
	char *VESIONresponse;
	char *BAUDresponse;
	char *NAMEresponse;
	char *BLUETOOTH_shield;
}answerAT;

/* Defines related to Clock configuration */
/* Uncomment to enable the adaquate Clock Source */
/*#define RTC_CLOCK_SOURCE_LSI*/
#define RTC_CLOCK_SOURCE_LSE


/* Exported functions ------------------------------------------------------- */
void Error_Handler(char *myError);
void Test_Colors(void);
//void concat_data(char * mytemp, char *s1, char *s2, char *s3);
void concat_date(char * myconcat, char *s1, char *s2, char *s3);
void concat_time(char * myconcat, char *s1, char *s2, char *s3);
void LCD_RESET_SET(void);
HAL_StatusTypeDef myExchange(char *myAT, char *myRES);
static int Buffercmp(uint8_t * pBuffer1, uint8_t * pBuffer2, uint16_t BufferLength);
uint8_t RTC_Data_Update(uint8_t index);
static void RTC_SECUpdate(void);
char calcModulo256(char *aRxBuffer, uint16_t BufferLength);
//HAL_StatusTypeDef checkDCF77(uint8_t *lineDCF77, uint8_t lineLength);
HAL_StatusTypeDef checkDCF77(uint8_t *lineDCF77);


#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
