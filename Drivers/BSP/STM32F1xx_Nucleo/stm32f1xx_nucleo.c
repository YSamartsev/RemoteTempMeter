/**
  ******************************************************************************
  * @file    stm32f1xx_nucleo.c
  * @author  MCD Application Team
  * @version V1.0.4
  * @date    14-April-2017
  * @brief   This file provides set of firmware functions to manage:
  *          - LEDs and push-button available on STM32F1XX-Nucleo Kit 
  *            from STMicroelectronics
  *          - LCD, joystick and microSD available on Adafruit 1.8" TFT LCD 
  *            shield (reference ID 802)
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_nucleo.h"

extern SPI_HandleTypeDef SpiHandle;
extern I2C_HandleTypeDef hi2c3;

	#define I2C_SPEEDCLOCK   400000
	#define I2C_DUTYCYCLE    I2C_DUTYCYCLE_2
	#define I2C_ADDRESS        0x30F

/** @addtogroup BSP
  * @{
  */ 

/** @defgroup STM32F1XX_NUCLEO STM32F103RB Nucleo
  * @brief This file provides set of firmware functions to manage Leds and push-button
  *        available on STM32F1XX-Nucleo Kit from STMicroelectronics.
  *        It provides also LCD, joystick and uSD functions to communicate with 
  *        Adafruit 1.8" TFT LCD shield (reference ID 802)
  * @{
  */ 


/** @defgroup STM32F1XX_NUCLEO_Private_Defines STM32F1XX NUCLEO Private Defines
  * @{
  */ 
  
/**
* @brief STM32F103RB NUCLEO BSP Driver version
*/
#define __STM32F1XX_NUCLEO_BSP_VERSION_MAIN   (0x01) /*!< [31:24] main version */
#define __STM32F1XX_NUCLEO_BSP_VERSION_SUB1   (0x00) /*!< [23:16] sub1 version */
#define __STM32F1XX_NUCLEO_BSP_VERSION_SUB2   (0x04) /*!< [15:8]  sub2 version */
#define __STM32F1XX_NUCLEO_BSP_VERSION_RC     (0x00) /*!< [7:0]  release candidate */ 
#define __STM32F1XX_NUCLEO_BSP_VERSION       ((__STM32F1XX_NUCLEO_BSP_VERSION_MAIN << 24)\
                                             |(__STM32F1XX_NUCLEO_BSP_VERSION_SUB1 << 16)\
                                             |(__STM32F1XX_NUCLEO_BSP_VERSION_SUB2 << 8 )\
                                             |(__STM32F1XX_NUCLEO_BSP_VERSION_RC))

/**
  * @brief LINK SD Card
  */
#define SD_DUMMY_BYTE            0xFF    
#define SD_NO_RESPONSE_EXPECTED  0x80
   
/**
  * @}
  */ 


/** @defgroup STM32F1XX_NUCLEO_Private_Variables STM32F1XX NUCLEO Private Variables
  * @{
  */ 
GPIO_TypeDef* LED_PORT[LEDn] = {LED0_GPIO_PORT};

const uint16_t LED_PIN[LEDn] = {LED0_PIN};

GPIO_TypeDef* BUTTON_PORT[BUTTONn]  = {USER_BUTTON_GPIO_PORT}; 
const uint16_t BUTTON_PIN[BUTTONn]  = {USER_BUTTON_PIN}; 
const uint8_t  BUTTON_IRQn[BUTTONn] = {USER_BUTTON_EXTI_IRQn };

/**
 * @brief BUS variables
 */

#ifdef HAL_SPI_MODULE_ENABLED
uint32_t SpixTimeout = SPIx_TIMEOUT_MAX;        /*<! Value of Timeout when SPI communication fails */

#endif /* HAL_SPI_MODULE_ENABLED */

#ifdef HAL_ADC_MODULE_ENABLED
static ADC_HandleTypeDef hnucleo_Adc;
/* ADC channel configuration structure declaration */
static ADC_ChannelConfTypeDef sConfig;
#endif /* HAL_ADC_MODULE_ENABLED */

/**
  * @}
  */ 

/** @defgroup STM32F1XX_NUCLEO_Private_Functions STM32F1XX NUCLEO Private Functions
  * @{
  */ 


/**
  * @}
  */ 

/** @defgroup STM32F1XX_NUCLEO_Exported_Functions STM32F1XX NUCLEO Exported Functions
  * @{
  */ 


/**
 * @brief Write command to ST7789 controller
 * @param cmd -> command to write
 * @return none
 */
void LCD_SendCommand(uint8_t cmd)
{
	LCD_CS_LOW();
	LCD_DC_LOW();
	HAL_SPI_Transmit(&SpiHandle, &cmd, sizeof(cmd), HAL_MAX_DELAY);
	LCD_CS_HIGH();
}

/**
 * @brief Write data to ST7789 controller
 * @param buff -> pointer of data buffer
 * @param buff_size -> size of the data buffer
 * @return none
 */
void LCD_SendData(uint8_t *buff, size_t buff_size)
{
	LCD_CS_LOW();
	LCD_DC_HIGH();

	// split data in small chunks because HAL can't send more than 64K at once

	while (buff_size > 0) {
		uint16_t chunk_size = buff_size > 65535 ? 65535 : buff_size;
		#ifdef USE_DMA
			if (DMA_MIN_SIZE <= buff_size)
			{
				HAL_SPI_Transmit_DMA(&SpiHandle, buff, chunk_size);
				while (SpiHandle.hdmatx->State != HAL_DMA_STATE_READY)
				{}
			}
			else
				HAL_SPI_Transmit(SpiHandle, buff, chunk_size, HAL_MAX_DELAY);
		#else
			HAL_SPI_Transmit(&SpiHandle, buff, chunk_size, HAL_MAX_DELAY);
		#endif
		buff += chunk_size;
		buff_size -= chunk_size;
	}

	LCD_CS_HIGH();
}
/**
 * @brief Write data to ST7789 controller, simplify for 8bit data.
 * data -> data to write
 * @return none
 */
void LCD_SendSmallData(uint8_t data)
{
	LCD_CS_LOW();
	LCD_DC_Set();
	HAL_SPI_Transmit(&SpiHandle, &data, sizeof(data), HAL_MAX_DELAY);
	LCD_CS_HIGH();
}





/**
  * @brief  This method returns the STM32F1XX NUCLEO BSP Driver revision
  * @retval version : 0xXYZR (8bits for each decimal, R for RC)
  */
uint32_t BSP_GetVersion(void)
{
  return __STM32F1XX_NUCLEO_BSP_VERSION;
}

/** @defgroup STM32F1XX_NUCLEO_LED_Functions STM32F1XX NUCLEO LED Functions
  * @{
  */ 

/**
  * @brief  Configures LED GPIO.
  * @param  Led: Led to be configured. 
  *          This parameter can be one of the following values:
  *     @arg LED2
  */
void BSP_LED_Init(Led_TypeDef Led)
{
  GPIO_InitTypeDef  gpioinitstruct;
  
  /* Enable the GPIO_LED Clock */
  LEDx_GPIO_CLK_ENABLE(Led);

  /* Configure the GPIO_LED pin */
  gpioinitstruct.Pin    = LED_PIN[Led];
  gpioinitstruct.Mode   = GPIO_MODE_OUTPUT_PP;
  gpioinitstruct.Pull   = GPIO_NOPULL;
  gpioinitstruct.Speed  = GPIO_SPEED_FREQ_HIGH;
  
  HAL_GPIO_Init(LED_PORT[Led], &gpioinitstruct);

  /* Reset PIN to switch off the LED */
  HAL_GPIO_WritePin(LED_PORT[Led],LED_PIN[Led], GPIO_PIN_RESET);
}

/**
  * @brief  DeInit LEDs.
  * @param  Led: LED to be de-init. 
  *   This parameter can be one of the following values:
  *     @arg  LED2
  * @note Led DeInit does not disable the GPIO clock nor disable the Mfx 
  */
void BSP_LED_DeInit(Led_TypeDef Led)
{
  GPIO_InitTypeDef  gpio_init_structure;

  /* Turn off LED */
  HAL_GPIO_WritePin(LED_PORT[Led],LED_PIN[Led], GPIO_PIN_RESET);
  /* DeInit the GPIO_LED pin */
  gpio_init_structure.Pin = LED_PIN[Led];
  HAL_GPIO_DeInit(LED_PORT[Led], gpio_init_structure.Pin);
}

/**
  * @brief  Turns selected LED On.
  * @param  Led: Specifies the Led to be set on. 
  *   This parameter can be one of following parameters:
  *     @arg LED2
  */
void BSP_LED_On(Led_TypeDef Led)
{
  HAL_GPIO_WritePin(LED_PORT[Led], LED_PIN[Led], GPIO_PIN_SET); 
}

/**
  * @brief  Turns selected LED Off.
  * @param  Led: Specifies the Led to be set off. 
  *   This parameter can be one of following parameters:
  *     @arg LED2
  */
void BSP_LED_Off(Led_TypeDef Led)
{
  HAL_GPIO_WritePin(LED_PORT[Led], LED_PIN[Led], GPIO_PIN_RESET); 
}

/**
  * @brief  Toggles the selected LED.
  * @param  Led: Specifies the Led to be toggled. 
  *   This parameter can be one of following parameters:
  *            @arg  LED2
  */
void BSP_LED_Toggle(Led_TypeDef Led)
{
  HAL_GPIO_TogglePin(LED_PORT[Led], LED_PIN[Led]);
}

/**
  * @}
  */ 

/** @defgroup STM32F1XX_NUCLEO_BUTTON_Functions STM32F1XX NUCLEO BUTTON Functions
  * @{
  */ 

/**
  * @brief  Configures Button GPIO and EXTI Line.
  * @param  Button: Specifies the Button to be configured.
  *   This parameter should be: BUTTON_USER
  * @param  ButtonMode: Specifies Button mode.
  *   This parameter can be one of following parameters:   
  *     @arg BUTTON_MODE_GPIO: Button will be used as simple IO 
  *     @arg BUTTON_MODE_EXTI: Button will be connected to EXTI line with interrupt
  *                     generation capability  
  */
void BSP_PB_Init(Button_TypeDef Button, ButtonMode_TypeDef ButtonMode)
{
  GPIO_InitTypeDef gpioinitstruct;

  /* Enable the BUTTON Clock */
  BUTTONx_GPIO_CLK_ENABLE(Button);

  gpioinitstruct.Pin = BUTTON_PIN[Button];
  gpioinitstruct.Pull = GPIO_PULLUP;
  gpioinitstruct.Speed = GPIO_SPEED_FREQ_MEDIUM;

  if (ButtonMode == BUTTON_MODE_GPIO)
  {
    /* Configure Button pin as input */
    gpioinitstruct.Mode   = GPIO_MODE_INPUT;
  
    HAL_GPIO_Init(BUTTON_PORT[Button], &gpioinitstruct);
  }
 
  if (ButtonMode == BUTTON_MODE_EXTI)
  {
    /* Configure Button pin as input with External interrupt */
    gpioinitstruct.Mode   = GPIO_MODE_IT_FALLING; 
    HAL_GPIO_Init(BUTTON_PORT[Button], &gpioinitstruct);

    /* Enable and set Button EXTI Interrupt to the lowest priority */
    HAL_NVIC_SetPriority((IRQn_Type)(BUTTON_IRQn[Button]), 0x0F, 0);
    HAL_NVIC_EnableIRQ((IRQn_Type)(BUTTON_IRQn[Button]));
  }
}

/**
  * @brief  Push Button DeInit.
  * @param  Button: Button to be configured
  *   This parameter should be: BUTTON_USER  
  * @note PB DeInit does not disable the GPIO clock
  */
void BSP_PB_DeInit(Button_TypeDef Button)
{
  GPIO_InitTypeDef gpio_init_structure;

  gpio_init_structure.Pin = BUTTON_PIN[Button];
  HAL_NVIC_DisableIRQ((IRQn_Type)(BUTTON_IRQn[Button]));
  HAL_GPIO_DeInit(BUTTON_PORT[Button], gpio_init_structure.Pin);
}

/**
  * @brief  Returns the selected Button state.
  * @param  Button: Specifies the Button to be checked.
  *   This parameter should be: BUTTON_USER
  * @retval Button state.
  */
uint32_t BSP_PB_GetState(Button_TypeDef Button)
  {
  return HAL_GPIO_ReadPin(BUTTON_PORT[Button], BUTTON_PIN[Button]);
  }
	

/**
  * @}
  */ 

/**
  * @}
  */

/** @addtogroup STM32F1XX_NUCLEO_Private_Functions
  * @{
  */ 
  
/******************************************************************************
                            BUS OPERATIONS
*******************************************************************************/
/**
  * @brief  Initialize SPI MSP: SCK, MOSI, MISO.
  */


/**
  * @brief  Initialize SPI HAL.
  */
void SPIx_Init(void)
{
  if(HAL_SPI_GetState(&SpiHandle) == HAL_SPI_STATE_RESET)
  {
		
    SpiHandle.Instance = SPIx;
      /* SPI baudrate is set to 8 MHz maximum (PCLK2/SPI_BaudRatePrescaler = 64/8 = 8 MHz) 
       to verify these constraints:
          - ST7735 LCD SPI interface max baudrate is 15MHz for write and 6.66MHz for read
            Since the provided driver doesn't use read capability from LCD, only constraint 
            on write baudrate is considered.
          - SD card SPI interface max baudrate is 25MHz for write/read
          - PCLK2 max frequency is 32 MHz 
       */
    SpiHandle.Init.BaudRatePrescaler  = SPI_BAUDRATEPRESCALER_2;
    SpiHandle.Init.Direction          = SPI_DIRECTION_2LINES;
    SpiHandle.Init.CLKPhase           = SPI_PHASE_2EDGE; //ВАЖЛИВО!!! при SPI_PHASE_1EDGE виникають збої
    SpiHandle.Init.CLKPolarity        = SPI_POLARITY_HIGH;
    SpiHandle.Init.CRCCalculation     = SPI_CRCCALCULATION_DISABLE;
    SpiHandle.Init.CRCPolynomial      = 7;
    SpiHandle.Init.DataSize           = SPI_DATASIZE_8BIT;
    SpiHandle.Init.FirstBit           = SPI_FIRSTBIT_MSB;
    SpiHandle.Init.NSS                = SPI_NSS_SOFT;
    SpiHandle.Init.TIMode             = SPI_TIMODE_DISABLE;
    SpiHandle.Init.Mode               = SPI_MODE_MASTER;
				
		HAL_SPI_Init(&SpiHandle);
		//SPI_Cmd(SPI2, ENABLE);
  }
}



void I2Cx_Init(void)
{
  if(HAL_I2C_GetState(&hi2c3) == HAL_I2C_STATE_RESET)
  {
		
    hi2c3.Instance = I2Cx;
		/*##-1- Configure the I2C peripheral ######################################*/
		hi2c3.Instance             = I2Cx;
		hi2c3.Init.ClockSpeed      = 100000; //I2C_SPEEDCLOCK;
		hi2c3.Init.DutyCycle       = I2C_DUTYCYCLE;
		hi2c3.Init.OwnAddress1     = I2C_ADDRESS;
		hi2c3.Init.AddressingMode  = I2C_ADDRESSINGMODE_10BIT;
		hi2c3.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
		hi2c3.Init.OwnAddress2     = 0xFF;
		hi2c3.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
		hi2c3.Init.NoStretchMode   = I2C_NOSTRETCH_DISABLE;  
  
		if(HAL_I2C_Init(&hi2c3) != HAL_OK)
		{
			/* Initialization Error */
			char *myError = "HAL_I2C_Config";
			Error_Handler(myError);
		}
	}
}
	

/**
  * @brief  SPI Write a byte to device
  * @param  Value: value to be written
*/
void SPIx_WriteReadData(const uint8_t *DataIn, uint8_t *DataOut, uint16_t DataLength)
{
  HAL_StatusTypeDef status = HAL_OK;
  
  status = HAL_SPI_TransmitReceive(&SpiHandle, (uint8_t*) DataIn, DataOut, DataLength, SpixTimeout);
  
  /* Check the communication status */
  if(status != HAL_OK)
  {
    /* Execute user timeout callback */
    SPIx_Error();
  }
}

/**
  * @brief  SPI Write an amount of data to device
  * @param  Value: value to be written
  * @param  DataLength: number of bytes to write
  */
void SPIx_WriteData(uint8_t *DataIn, uint16_t DataLength)
{
  HAL_StatusTypeDef status = HAL_OK;

  status = HAL_SPI_Transmit(&SpiHandle, DataIn, DataLength, SpixTimeout);
  
  /* Check the communication status */
  if(status != HAL_OK)
  {
    /* Execute user timeout callback */
    SPIx_Error();
  }
}

/**
  * @brief  SPI Write a byte to device
  * @param  Value: value to be written
  */
void SPIx_Write(uint8_t Value)
{
  HAL_StatusTypeDef status = HAL_OK;
  uint8_t data;

  status = HAL_SPI_TransmitReceive(&SpiHandle, (uint8_t*) &Value, &data, 1, SpixTimeout);
	//HAL_StatusTypeDef HAL_SPI_Transmit(SPI_HandleTypeDef *hspi, const uint8_t *pData, uint16_t Size, uint32_t Timeout)
	
	//status = HAL_SPI_Transmit(&SpiHandle, (uint8_t*) &Value, 1, SpixTimeout);
	
  /* Check the communication status */
  if(status != HAL_OK)
  {
    /* Execute user timeout callback */
    SPIx_Error();
  }
}

/**
  * @brief  SPI error treatment function
  */
void SPIx_Error (void)
{
  /* De-initialize the SPI communication BUS */
  HAL_SPI_DeInit(&SpiHandle);

  /* Re-Initiaize the SPI communication BUS */
  SPIx_Init();
}

/******************************************************************************
                            LINK OPERATIONS
*******************************************************************************/
/**
  * @brief  Initialize the LCD
  */
void LCD_IO_Init(void)
{
  GPIO_InitTypeDef  gpioinitstruct;

  /* LCD_CS_GPIO and LCD_DC_GPIO Periph clock enable */
  LCD_CS_GPIO_CLK_ENABLE(); //Не використовую
  LCD_DC_GPIO_CLK_ENABLE(); //PB1 CLK
  LCD_RST_GPIO_CLK_ENABLE(); //PA7 CLK
#ifdef DCF77
	DCF77_GPIO_CLK_ENABLE();
#endif	
  /* Configure типу роботи піна PB12: LCD_CS_PIN pin : LCD Card CS pin */
  gpioinitstruct.Pin    = LCD_CS_PIN; //PB12 Не використовую
  gpioinitstruct.Mode   = GPIO_MODE_OUTPUT_PP;
  gpioinitstruct.Speed  = GPIO_SPEED_FREQ_HIGH;
  HAL_GPIO_Init(LCD_CS_GPIO_PORT, &gpioinitstruct); 
      
  /* Configure типу роботи піна PB1: LCD_DC_PIN pin: LCD Card DC pin */
  gpioinitstruct.Pin    = LCD_DC_PIN; //PB1 Команда / Дані
  HAL_GPIO_Init(LCD_DC_GPIO_PORT, &gpioinitstruct); 
	
	/* Configure типу роботи піна PB11 LCD_RST_PIN pin */
  gpioinitstruct.Pin    = LCD_RST_PIN; //PA7 Скидання дисплея
	gpioinitstruct.Mode   = GPIO_MODE_OUTPUT_PP;
  HAL_GPIO_Init(LCD_RST_GPIO_PORT, &gpioinitstruct); 
	
	gpioinitstruct.Pin    = DCF77_PIN; //PA1 
  gpioinitstruct.Mode   = GPIO_MODE_INPUT;
  HAL_GPIO_Init(DCF77_GPIO_PORT, &gpioinitstruct); 
	
	

	/* LCD chip select high */
  LCD_CS_HIGH(); //Використовую PB12. В платі не використовується
	
	LCD_RST_HIGH(); //Піднімаю RST
}


/**
* @brief  Write register value.
* @param  pData Pointer on the register value
* @param  Size Size of byte to transmit to the register
*/
void LCD_SendMultipleData(uint8_t *pData, uint32_t Size)
{
  uint32_t counter = 0;
  
  /* Reset LCD control line CS */
  LCD_CS_LOW();
  
  /* Set LCD data/command line DC to High */
  LCD_DC_HIGH();

  if (Size == 1)
  {
    /* Only 1 byte to be sent to LCD - general interface can be used */
    /* Send Data */
    SPIx_Write(*pData);
  }
  else
{
    /* Several data should be sent in a raw */
    /* Direct SPI accesses for optimization */
    for (counter = Size; counter != 0; counter--)
  {
      while(((SpiHandle.Instance->SR) & SPI_FLAG_TXE) != SPI_FLAG_TXE)
  {
}
      /* Need to invert bytes for LCD*/
      *((__IO uint8_t*)&SpiHandle.Instance->DR) = *(pData+1);

      while(((SpiHandle.Instance->SR) & SPI_FLAG_TXE) != SPI_FLAG_TXE)
{
}
      *((__IO uint8_t*)&SpiHandle.Instance->DR) = *pData;
      counter--;
      pData += 2;
  }  
  
    /* Wait until the bus is ready before releasing Chip select */ 
    while(((SpiHandle.Instance->SR) & SPI_FLAG_BSY) != RESET)
  {
  } 
  } 
  
  /* Deselect : Chip Select high */
  LCD_CS_HIGH();
}

/**
  * @brief  Wait for loop in ms.
  * @param  Delay in ms.
  * @retval None
  */
void LCD_Delay(uint32_t Delay)
{
  HAL_Delay(Delay);
}

/******************************* LINK JOYSTICK ********************************/
/**
  * @brief  Initialize ADC MSP.
  */
static void ADCx_MspInit(ADC_HandleTypeDef *hadc)
{
  GPIO_InitTypeDef  gpioinitstruct;
  
  /*** Configure the GPIOs ***/  
  /* Enable GPIO clock */
  NUCLEO_ADCx_GPIO_CLK_ENABLE();
  
  /* Configure ADC1 Channel8 as analog input */
  gpioinitstruct.Pin    = NUCLEO_ADCx_GPIO_PIN ;
  gpioinitstruct.Mode   = GPIO_MODE_ANALOG;
  gpioinitstruct.Pull   = GPIO_NOPULL;
  gpioinitstruct.Speed  = GPIO_SPEED_FREQ_MEDIUM;
  HAL_GPIO_Init(NUCLEO_ADCx_GPIO_PORT, &gpioinitstruct);

  /*** Configure the ADC peripheral ***/ 
  /* Enable ADC clock */
  NUCLEO_ADCx_CLK_ENABLE(); 
}

/**
  * @brief  DeInitializes ADC MSP.
  * @note ADC DeInit does not disable the GPIO clock
  */
static void ADCx_MspDeInit(ADC_HandleTypeDef *hadc)
{
  GPIO_InitTypeDef  gpioinitstruct;

  /*** DeInit the ADC peripheral ***/ 
  /* Disable ADC clock */
  NUCLEO_ADCx_CLK_DISABLE(); 

  /* Configure the selected ADC Channel as analog input */
  gpioinitstruct.Pin = NUCLEO_ADCx_GPIO_PIN ;
  HAL_GPIO_DeInit(NUCLEO_ADCx_GPIO_PORT, gpioinitstruct.Pin);

  /* Disable GPIO clock has to be done by the application*/
  /* NUCLEO_ADCx_GPIO_CLK_DISABLE(); */
}

/**
  * @brief  Initializes ADC HAL.
  */
static HAL_StatusTypeDef ADCx_Init(void)
{
  /* Set ADC instance */
  hnucleo_Adc.Instance = NUCLEO_ADCx;

  if(HAL_ADC_GetState(&hnucleo_Adc) == HAL_ADC_STATE_RESET)
  {
    /* ADC Config */
    hnucleo_Adc.Init.DataAlign = ADC_DATAALIGN_RIGHT;
    hnucleo_Adc.Init.ScanConvMode = ADC_SCAN_DISABLE;
    hnucleo_Adc.Init.ContinuousConvMode = DISABLE;
    hnucleo_Adc.Init.NbrOfConversion = 1;
    hnucleo_Adc.Init.DiscontinuousConvMode = DISABLE;
    hnucleo_Adc.Init.NbrOfDiscConversion = 1;
    hnucleo_Adc.Init.ExternalTrigConv = ADC_SOFTWARE_START;
    
    /* Initialize MSP related to ADC */
    ADCx_MspInit(&hnucleo_Adc);
    
    /* Initialize ADC */
    if (HAL_ADC_Init(&hnucleo_Adc) != HAL_OK)
    {
      return HAL_ERROR;
    }
    
    /* Run ADC calibration */
    if (HAL_ADCEx_Calibration_Start(&hnucleo_Adc) != HAL_OK)
    {
      return HAL_ERROR;
    }
  }

  return HAL_OK;
}  

/**
  * @brief  Initializes ADC HAL.
  */
static void ADCx_DeInit(void)
{
    hnucleo_Adc.Instance   = NUCLEO_ADCx;
    
    HAL_ADC_DeInit(&hnucleo_Adc);
    ADCx_MspDeInit(&hnucleo_Adc);
}

/******************************* LINK JOYSTICK ********************************/

/**
  * @brief  Configures joystick available on adafruit 1.8" TFT shield 
  *         managed through ADC to detect motion.
  * @retval Joystickstatus (0=> success, 1=> fail) 
  */
uint8_t BSP_JOY_Init(void)
{
  if (ADCx_Init() != HAL_OK)
  {
    return (uint8_t) HAL_ERROR; 
  }
  
  /* Select Channel 8 to be converted */
  sConfig.Channel       = ADC_CHANNEL_8;
  sConfig.SamplingTime  = ADC_SAMPLETIME_71CYCLES_5;
  sConfig.Rank          = 1;

  /* Return Joystick initialization status */
  return (uint8_t)HAL_ADC_ConfigChannel(&hnucleo_Adc, &sConfig);
}

/**
  * @brief  DeInit joystick GPIOs.
  * @note   JOY DeInit does not disable the Mfx, just set the Mfx pins in Off mode
  */
void BSP_JOY_DeInit(void)
{
    ADCx_DeInit();
}

/**
  * @brief  Returns the Joystick key pressed.
  * @note   To know which Joystick key is pressed we need to detect the voltage
  *         level on each key output
  *           - None  : 3.3 V / 4095
  *           - SEL   : 1.055 V / 1308
  *           - DOWN  : 0.71 V / 88
  *           - LEFT  : 3.0 V / 3720 
  *           - RIGHT : 0.595 V / 737
  *           - UP    : 1.65 V / 2046
  * @retval JOYState_TypeDef: Code of the Joystick key pressed.
  */
JOYState_TypeDef BSP_JOY_GetState(void)
{
  JOYState_TypeDef state = JOY_NONE;
  uint16_t  keyconvertedvalue = 0; 

 /* Start the conversion process */
  HAL_ADC_Start(&hnucleo_Adc);
  
  /* Wait for the end of conversion */
  if (HAL_ADC_PollForConversion(&hnucleo_Adc, 10) != HAL_TIMEOUT)
  {
    /* Get the converted value of regular channel */
    keyconvertedvalue = HAL_ADC_GetValue(&hnucleo_Adc);
  }
  
  if((keyconvertedvalue > 1800) && (keyconvertedvalue < 2090))
  {
    state = JOY_UP;
  }
  else if((keyconvertedvalue > 500) && (keyconvertedvalue < 780))
  {
    state = JOY_RIGHT;
  }
  else if((keyconvertedvalue > 1200) && (keyconvertedvalue < 1350))
  {
    state = JOY_SEL;
  }
  else if((keyconvertedvalue > 10) && (keyconvertedvalue < 130))
  {
    state = JOY_DOWN;
  }
  else if((keyconvertedvalue > 3500) && (keyconvertedvalue < 3760))
  {
    state = JOY_LEFT;
  }
  else
  {
    state = JOY_NONE;
  }
  
  /* Return the code of the Joystick key pressed*/
  return state;
}


/**
  * @}
  */
  
/**
  * @}
  */    

/**
  * @}
  */ 
    
/**
  * @}
  */ 
    
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
