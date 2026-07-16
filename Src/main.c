/**
  ******************************************************************************
  * @file    Demonstrations/Adafruit_LCD_1_8_SD_Joystick/Src/main.c 
  * @author  MCD Application Team
  * @brief   This demo describes how display bmp images from SD card on LCD using
             the Adafruit 1.8" TFT shield with Joystick and microSD mounted on top
             of the STM32 Nucleo board.
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
	Дистанційний вимірювач температури на сенсорі MLX90614
  */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include <stdio.h>
#include <string.h>
#include "stm32_adafruit_lcd.h"
#include "math.h"
#include "stdlib.h"



extern FontDef Font_7x10;
extern FontDef Font_11x18;
extern FontDef Font_16x26;
extern const uint16_t saber;
//uint32_t BSP_DCF77_GetState();

//#include "stm32f1xx_nucleo.h"
//#include "../HARDWARE/LCD/lcd.h"
//#include "../SYSTEM/delay/delay.h"
//#include "../SYSTEM/sys/sys.h"
//#include "../HARDWARE/TOUCH/touch.h"
//#include "GUI.h"
//#include "test.h"

//#include "EventRecorder.h"


/** @addtogroup STM32F1xx_HAL_Demonstrations
  * @{
  */

/** @addtogroup Demo
  * @{
  */ 

///* Private typedef -----------------------------------------------------------*/
///* RTC handler declaration */
RTC_HandleTypeDef RtcHandle;
UART_HandleTypeDef UartHandle;
__IO ITStatus UartReady = RESET;

RTC_DateTypeDef  sdatestructure;
RTC_TimeTypeDef  stimestructure;
RTC_AlarmTypeDef salarmstructure;

SPI_HandleTypeDef SpiHandle;
I2C_HandleTypeDef hi2c3;

/* Buffer used for displaying Date */
	uint8_t aShowDate[50] = {0};
/* Buffer used for displaying Date */
	uint8_t aShowTime[50] = {0};

typedef enum 
{
  SHIELD_NOT_DETECTED = 0, 
  SHIELD_DETECTED
}ShieldStatus;

/* Private define ------------------------------------------------------------*/
/* ==========Для реалізації printf================== 
https://www.keil.com/support/man/docs/jlink/jlink_trace_itm_viewer.asp 
Це є в retarget.c:
#define ITM_Port8(n) (*((volatile unsigned char *)(0xE0000000+4*n)))
#define ITM_Port16(n) (*((volatile unsigned short*)(0xE0000000+4*n)))
#define ITM_Port32(n) (*((volatile unsigned long *)(0xE0000000+4*n)))

#define DEMCR (*((volatile unsigned long *)(0xE000EDFC)))
#define TRCENA 0x01000000
=================================================*/

#define SD_CARD_NOT_FORMATTED                    0
#define SD_CARD_FILE_NOT_SUPPORTED               1
#define SD_CARD_OPEN_FAIL                        2
#define FATFS_NOT_MOUNTED                        3
#define BSP_SD_INIT_FAILED                       4

#define POSITION_X_BITMAP                        0
#define POSITION_Y_BITMAP                        0

/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
uint8_t BlinkSpeed = 0, str[20];

char* pDirectoryFiles[MAX_BMP_FILES];
FATFS SD_FatFs;  /* File system object for SD card logical drive */
char SD_Path[4]; /* SD card logical drive path */

char realdate[2]; //Це масив, а не string, тобто не закінчується \0
char realmonth[2];
char realyear[2];
char realhours[2];
char reatminutes[2];
char reatseconds[2];
char realdatatime[20];

///* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);

static void MX_UART2_Init(void);
//static void MX_SPI_Init(void);

static void RTC_AlarmConfig(void);
static void RTC_SECConfig(void);

static void RTC_DateShow(uint16_t x, uint16_t y); //, uint8_t* showdate);
static void RTC_TimeShow(uint16_t x, uint16_t y); //, uint8_t* showtime);

//static void LED0_Blink(void);
//static ShieldStatus TFT_ShieldDetect(void);
//static void SDCard_Config(void);
//static void TFT_DisplayErrorMessage(uint8_t message);
//static void TFT_DisplayMenu(void);
//static void TFT_DisplayImages(void);


/* ==========Для реалізації printf================== 
https://www.keil.com/support/man/docs/jlink/jlink_trace_itm_viewer.asp */

#define ECHO_FGETC
//volatile int ITM_RxBuffer=0x5AA55AA5; /* Buffer to transmit data towards debug system. */

#define GPIOAEN (*((volatile unsigned long *)(0x40021034)))	// GPIOA clock enable
#define MODER5 	(*((volatile unsigned long *)(0x50000000)))	// GPIOA OUTPUT
#define ODR5 		(*((volatile unsigned long *)(0x50000014)))		// Output Data Register

struct __FILE { int handle; /* Add whatever you need here */ };
FILE __stdout;
FILE __stdin;

int fputc(int ch, FILE *f) {

  return (ITM_SendChar((uint32_t)ch)); // Це виводить в Debug printf, с ST Link|V2 працює
  //ITM_SendChar((uint32_t)ch);
	//return ch;
	
/*	if (DEMCR & TRCENA) {
    while (ITM_Port32(0) == 0);
    ITM_Port8(0) = ch;
  }
  return(ch); */
	
	/*	==============Якщо треба вивести в UART Працює =============	
	//ITM_SendChar(ch); Якщо розремити, то не працює
	HAL_UART_Transmit(&UartHandle, (uint8_t *)&ch, 1, 0xFFFF);
	return ch;
	========================================================= */
	
	//HAL_UART_Transmit(&UartHandle, (uint8_t *)&ch, 1, 0xFFFF); //Це виводить в UART PA9-Tx, PA10-Rx. Через перехідник UART-USB треба подати на Віртуальний компорт РС.
	//return ch;
} 

unsigned char backspace_called;
unsigned char last_char_read;
int r;

//!!!!!!!!!!!!!!!!!Перед запуском обов'язково зняти /r/d  в налаштуваннях додатка на мобільному!!!!!!!!!!!!!!!!!!!!
int fgetc(FILE *f)
{
    /* if we just backspaced, then return the backspaced character */
    /* otherwise output the next character in the stream */
    if (backspace_called == 1)
    {
      backspace_called = 0;
    }
    else{
        do {
            r = ITM_ReceiveChar();
        } while (r == -1);
        
        last_char_read = (unsigned char)r;

#ifdef ECHO_FGETC
        ITM_SendChar(r);
#endif
    }

    return last_char_read;
}

/*
** The effect of __backspace() should be to return the last character
** read from the stream, such that a subsequent fgetc() will
** return the same character again.
*/

int __backspace(FILE *f)
{
    backspace_called = 1;
    return 0;
}

//UART_HandleTypeDef UartHandle;

/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program
  * @param  None
  * @retval None
  */
//		uint8_t in, jn;
	const uint16_t * mydata;
	RTC_TimeTypeDef stimestructureget; //Зробив публічною структурою Година, Хвилина, Секунда, щоб визначати час 24:59
	RTC_DateTypeDef sdatestructureget; //Зробив публічною структурою Година, Хвилина, Секунда, щоб визначати час 24:59

/* Buffer used for transmission */
	char *aTxBuffer;
	char aRxBuffer[14]; //12 символів рядка дати і часую далі їх треба перетворити в формат BCD data (двійково-дестковий код)
	uint8_t mycrc;
/* Buffer used for reception */
	commandAT myCommandAT;
	answerAT	myAnswerAT;
	uint8_t curentTimeSecond;	
	ShieldStatus Bluetooth_present;
	
	uint8_t myFlag_Show_Date = 0;
	uint16_t currentHours_Minutes_Seconds;
	
	char myTemp[2];
	uint32_t isrflags;  
	uint32_t cr1its;
	uint32_t tempTime;
	
	char outString[61];
	char outPoint[61];
	char strNull = 0x30;
	char strOne = 0x31;
	char strPoint = 0x2A;
	int amountOne = 0;
	int amountNull = 0;
	int iCycle = 0;
	uint8_t lineDCF77[60]; // = {0,0,0,1,1,1,0,1,1,1,1,1,1,1,0,0,0,0,1,0,1,1,1,1,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,0,0,1,0,1,0,1,0,1,0,0,1,0,1,0,0,1,0,0,1,0};
	bool bWork = false; //ознака находження в режимі від паузи до паузи
	uint8_t DCF77_Fine;
	GPIO_PinState sensorValue;
	GPIO_PinState prevSensorValue = GPIO_PIN_RESET;
	
	//#define I2C_ADDRESS        0x30F

	/* I2C SPEEDCLOCK define to max value: 400 KHz on STM32F1xx*/
	//#define I2C_SPEEDCLOCK   400000
	//#define I2C_DUTYCYCLE    I2C_DUTYCYCLE_2

	/* I2C handler declaration */
	//I2C_HandleTypeDef I2cHandle;
	I2C_HandleTypeDef hi2c3;
	uint8_t buf[3];
	uint32_t temp_data_a;
	uint32_t temp_data_o;
	__IO float T;
	__IO float To;
	char myconcat[50];


//==================================
//Підключення MLX90614
//000x х ххх Доступ до ОЗУ
//001x х ххх Доступ до ПЗЗУ
//1111 0000 Доступ до флажків
#define MLX90614_I2CADDR 0x5A
// RAM
#define MLX90614_RAWIR1 0x04
#define MLX90614_RAWIR2 0x05
#define MLX90614_TA 0x06
#define MLX90614_TOBJ1 0x07
#define MLX90614_TOBJ2 0x08
// EEPROM
#define MLX90614_TOMAX 0x20
#define MLX90614_TOMIN 0x21
#define MLX90614_PWMCTRL 0x22
#define MLX90614_TARANGE 0x23
#define MLX90614_EMISS 0x24
#define MLX90614_CONFIG 0x25
#define MLX90614_ADDR 0x2E
#define MLX90614_ID1 0x3C
#define MLX90614_ID2 0x3D
#define MLX90614_ID3 0x3E
#define MLX90614_ID4 0x3F
//==================================

int main(void)
{	
	//Початкова дата встановлюеться в  RTC_AlarmConfig
                                                                                                                                                                                                                                                                                         {  
  /* STM32F103xB HAL library initialization:
       - Configure the Flash prefetch
       - Systick timer is configured by default as source of time base, but user 
         can eventually implement his proper time base source (a general purpose 
         timer for example or other time source), keeping in mind that Time base 
         duration should be kept 1ms since PPP_TIMEOUT_VALUEs are defined and 
         handled in milliseconds basis.
       - Set NVIC Group Priority to 4
       - Low Level Initialization
     */
		HAL_Init();  //Тут встановлюється пріорітет і група пріорітетів
  
  /* Configure the system clock = 64 MHz */
		SystemClock_Config();

		BSP_LED_Init(LED_GREEN);	//Ініціалізація світлодіода Користувача		
	

/* -------------TFT LCD--------------*/	
  /* Check the availability of adafruit 1.8" TFT shield on top of STM32NUCLEO
     board. This is done by reading the state of IO PB.00 pin (mapped to JoyStick
     available on adafruit 1.8" TFT shield). If the state of PB.00 is high then
     the adafruit 1.8" TFT shield is available. */  
	
		LCD_IO_Init(); //Визначаються піни для RESET (OUTPUT), DC(OUTPUT), CS(OUTPUT), DCF77PIN(INPUT)
		// LCD SPI Config: SCK, SDA 
 
		SPIx_MspInit(); //Конфігурація пінів для MOSI, MOSO, SCK SPIx 
		SPIx_Init(); //Конфігурація параметрів SPI

		I2Cx_MspInit(); //Конфігурація пінів для MOSI, SCL, SCK SDA 
		I2Cx_Init(); //Конфігурація пінів для I2C1 

/* Initialize the LCD */
		BSP_LCD_Init(); //Спочатку через PA7 RESET, потім керується через Регістри
	
		//ВАЖЛИВО!!!! ST7789_SetRotation(ST7789_ROTATION) впливаэ на очищення через зміну координат x=0, 	y=0	екрану !!!!!!
		//Для 1.44 128x128  x=0, 	y=0 знаходиться навпроти роз'єму в кінці зліва. Це відповідає для st7789: #define ST7789_ROTATION 2	
		//Але при #define ST7789_ROTATION 2	 точка  x=0, 	y=0	знаходиться біля роз'єму справа!! 

#ifdef TFT_LCD_1_77
		//FontDef Font_Size = Font_16x26;
		//uint16_t	LCD_WIDTH = ST7789_WIDTH;
		//uint16_t	LCD_HEIGHT = ST7789_HEIGHT;	
#endif		
#ifdef TFT_LCD_7735
		FontDef Font_Size = Font_11x18;
		uint16_t	LCD_WIDTH = ST7735_WIDTH;
		uint16_t	LCD_HEIGHT = ST7735_HEIGHT;
#endif
	
		LCD_Fill_Color(LCD_WHITE);
		//LCD_WriteString(10, 20, "Real Date:", Font_16x26, LCD_RED, LCD_WHITE);	
LCD_WriteString((LCD_WIDTH * 4) / 100, (LCD_HEIGHT * 5) / 100, "Temperature Ambient:", Font_Size, LCD_RED, LCD_WHITE);
	
		//LCD_WriteString(10, 100, "Real Time:", Font_16x26, LCD_RED, LCD_WHITE);
LCD_WriteString((LCD_WIDTH * 4) / 100, (LCD_HEIGHT * 40) / 100, "Temperature Object:", Font_Size, LCD_RED, LCD_WHITE);	
	  /* Configure RTC Alarm */

//====================================================================previous=================================================
		while (1)
		{
			
				HAL_Delay(500);
				HAL_I2C_Mem_Read(&hi2c3, 0x00, MLX90614_ADDR, I2C_MEMADD_SIZE_8BIT, buf, 2, 1000);

			buf[0] = 0x00;
			buf[1] = 0x00;
			HAL_I2C_Mem_Read(&hi2c3, 0x00, 0x06, I2C_MEMADD_SIZE_8BIT, buf, 3, 1000);
			buf[0] = 0x00;
			buf[1] = 0x00;	
			buf[2] = 0x00;
			HAL_I2C_Mem_Read(&hi2c3, 0x00, MLX90614_TA, I2C_MEMADD_SIZE_8BIT, buf, 3, 1000);
			temp_data_a = buf[1]*256 + buf[0];
			buf[0] = 0x00;
			buf[1] = 0x00;	
			buf[2] = 0x00;
			HAL_I2C_Mem_Read(&hi2c3, 0x00, MLX90614_TOBJ1, I2C_MEMADD_SIZE_8BIT, buf, 3, 1000); // Read Object temperature from Register 0x07
			temp_data_o = buf[1]*256 + buf[0];
			To = temp_data_o*0.02;
			if(To >= 273.15){
				To = To - 273.15;
			}else{
				To = -(273.15 - To);
			}
			T = temp_data_a*0.02;	
			if(T >= 273.15){
				T = T - 273.15;
			}else{
				T = -(273.15 - T);
			}

	//==char * myDel = "1002251254185f";
	//==char mycrc2 = calcModulo256(myDel, 12); //mycrc це byte. aRxBuffer[12] і aRxBuffer[13] це ASCII коди
	//Перетворення символа в байт	
	//printf("mycrc2 = %x\d\r", mycrc2); //https://metanit.com/c/tutorial/2.4.php
	//sprintf(&myTemp[0], "%x", (T & 0xf0)>>4);
	//sprintf(&myTemp[1], "%x",  T & 0x0f);
		char char_temp[50]; //size of the number
		char mypoint[6] = " grC";

		sprintf(char_temp, "%g", T);
		
		memcpy(&myconcat[0], char_temp, sizeof(char_temp)); //"-173.343344"
		memcpy(&myconcat[7], mypoint, sizeof(mypoint)); //"-173.343344°C"
		myconcat[11] = 0x00;
		LCD_WriteString((LCD_WIDTH * 4) / 100, (LCD_HEIGHT * 30) / 100, myconcat, Font_Size, LCD_RED, LCD_WHITE);	
			
		sprintf(char_temp, "%g", To);
		memcpy(&myconcat[0], char_temp, sizeof(char_temp)); //"-173.343344"
		memcpy(&myconcat[7], mypoint, sizeof(mypoint)); //"-173.343344°C"
		myconcat[11] = 0x00;	
		LCD_WriteString((LCD_WIDTH * 4) / 100, (LCD_HEIGHT * 70) / 100, myconcat, Font_Size, LCD_BLUE, LCD_WHITE);
			
			//printf ("temperature = %f\n\r", T); //printf не працює з зеленим ST Link Debuger
			HAL_Delay(500);
		}
	}
}

/**
  * @brief  System Clock Configuration
  *         The system Clock is configured as follow : 
  *            System Clock source            = PLL (HSI)
  *            SYSCLK(Hz)                     = 64000000
  *            HCLK(Hz)                       = 64000000
  *            AHB Prescaler                  = 1
  *            APB1 Prescaler                 = 2
  *            APB2 Prescaler                 = 1
  *            PLLMUL                         = 16
  *            Flash Latency(WS)              = 2
  * @param  None
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};

  //==/** Initializes the RCC Oscillators according to the specified parameters
  //* in the RCC_OscInitTypeDef structure.
  //
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE|RCC_OSCILLATORTYPE_LSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.LSEState = RCC_LSE_ON;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    char *myError = "HAL_RCC_OscConfig";
		Error_Handler(myError);
  }
  //==/** Initializes the CPU, AHB and APB buses clocks
  //
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    char *myError = "HAL_RCC_ClockConfig";
		Error_Handler(myError);
  }
  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_RTC;
  PeriphClkInit.RTCClockSelection = RCC_RTCCLKSOURCE_LSE;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    char *myError = "HAL_RCCEx_PeriphCLKConfig";
		Error_Handler(myError);
  }
} 

HAL_StatusTypeDef checkOdd(uint8_t *lineDCF77_1, uint8_t lineLength_1) //Перевірка на парність
{
	uint8_t iL;
	uint8_t amountOne_1 = 0;
	//підрахунок парності
		for (iL = 0; iL < lineLength_1; iL++)
		{
			if ((*(lineDCF77_1+iL) & 0x01) == 1){ 
				amountOne_1++; //Підрахунок кількості рдиниць
			}
		}
		if(amountOne_1%2 == 0){ //Залишок від ділення
			if (*(lineDCF77_1+iL) == 0x01){ //парна кількість
					return HAL_ERROR;
				}
		}else{
			if (*(lineDCF77_1+iL) == 0x00){ //непарна кылькість
						return HAL_ERROR;
			}
		}
		return HAL_OK;
}


HAL_StatusTypeDef checkDCF77(uint8_t *lineDCF77_1) //Перевірка рядка lineDCF77_1
{
	if(*(lineDCF77_1+20) == 0x00){ //Перевірка на віт Start  = 1
		return HAL_ERROR;
	}
//	
	if (checkOdd(lineDCF77_1+29, 6) == HAL_ERROR) //Перевірка на парність годин
	{
		return HAL_ERROR;
	}
  stimestructure.Hours = *(lineDCF77_1+29) + (*(lineDCF77_1+30))*2 + (*(lineDCF77_1+31))*4 + (*(lineDCF77_1+32))*8 + (*(lineDCF77_1+33))*10 + (*(lineDCF77_1+34))*20;
//	
	if (checkOdd(lineDCF77_1+21, 7) == HAL_ERROR) //Перевірка на парність хвилин
	{
		return HAL_ERROR;
	}
  stimestructure.Minutes = *(lineDCF77_1+21) + (*(lineDCF77_1+22))*2 + (*(lineDCF77_1+23))*4 + (*(lineDCF77_1+24))*8 + (*(lineDCF77_1+25))*10 + (*(lineDCF77_1+26))*20+ (*(lineDCF77_1+27))*40;
  stimestructure.Seconds = 0x00;	
//
	if (checkOdd(lineDCF77_1+36, 22) == HAL_ERROR) //Перевірка на парність День Місяця + День тижня + Місяць + Рік
	{
		return HAL_ERROR;
	}
  sdatestructure.Date = *(lineDCF77_1+36) + (*(lineDCF77_1+37))*2 + (*(lineDCF77_1+38))*4 + (*(lineDCF77_1+39))*8 + (*(lineDCF77_1+40))*10 + (*(lineDCF77_1+41))*20;
	sdatestructure.WeekDay = *(lineDCF77_1+42) + (*(lineDCF77_1+43))*2 + (*(lineDCF77_1+44))*4;
  sdatestructure.Month = *(lineDCF77_1+45) + (*(lineDCF77_1+46))*2 + (*(lineDCF77_1+47))*4 + (*(lineDCF77_1+48))*8 + (*(lineDCF77_1+49))*10;	
	sdatestructure.Year = *(lineDCF77_1+50) + (*(lineDCF77_1+51))*2 + (*(lineDCF77_1+52))*4 + (*(lineDCF77_1+53))*8 + (*(lineDCF77_1+54))*10 + (*(lineDCF77_1+55))*20 + (*(lineDCF77_1+56))*40 + (*(lineDCF77_1+57))*80;
		
	
	DCF77_Fine = 0x01;
  return HAL_OK;
}


/**
  * @brief  Tx Transfer completed callback
  * @param  UartHandle: UART handle. 
  * @note   This example shows a simple way to report end of IT Tx transfer, and 
  *         you can add your own implementation. 
  * @retval None
  */
void HAL_UART_TxCpltCallback(UART_HandleTypeDef *UartHandle)
{
  /* Set transmission flag: transfer complete */
  UartReady = SET;
}

/**
  * @brief  Rx Transfer completed callback
  * @param  UartHandle: UART handle
  * @note   This example shows a simple way to report end of DMA Rx transfer, and 
  *         you can add your own implementation.
  * @retval None
  */
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *UartHandle)
{
  /* Set transmission flag: transfer complete */
  UartReady = SET;
}

/**
  * @brief  UART error callbacks
  * @param  UartHandle: UART handle
  * @note   This example shows a simple way to report transfer error, and you can
  *         add your own implementation.
  * @retval None
  */
void HAL_UART_ErrorCallback(UART_HandleTypeDef *UartHandle)
{
	char *myError = "HAL_UART_ErrorCallback";
	
	//Error_Handler(myError);
}


static void MX_UART2_Init(void)
{
	UartHandle.Instance        = USARTx;

  UartHandle.Init.BaudRate   = 9600;
  UartHandle.Init.WordLength = UART_WORDLENGTH_8B;
  UartHandle.Init.StopBits   = UART_STOPBITS_1;
  UartHandle.Init.Parity     = UART_PARITY_NONE;
  UartHandle.Init.HwFlowCtl  = UART_HWCONTROL_NONE;
  UartHandle.Init.Mode       = UART_MODE_TX_RX;
  if (HAL_UART_Init(&UartHandle) != HAL_OK)
  {
    //== Initialization Error 
    char *myError = "HAL_UART_Init";
		Error_Handler(myError);
  }
} 

void LCD_RESET_SET(void)
{
		LCD_RST_LOW();  //ST7789_RST_Clr(); //Керується через PB11. В платі не використовується
    HAL_Delay(20);
   
		LCD_RST_HIGH();  //ST7789_RST_Set();
    HAL_Delay(10);
	  //delay_ms(20);
}


/**
  * @brief  Alarm callback
  * @param  hrtc : RTC handle
  * @retval None
  */
void HAL_RTC_AlarmAEventCallback(RTC_HandleTypeDef *hrtc)
{
  // Turn LED_GREEN on: Alarm generation 
  BSP_LED_On(LED_GREEN);
} 

/**
  * @brief  Configure the current time and date.
  * @param  None
  * @retval None
  */
static void RTC_AlarmConfig(void)
{
  //RTC_DateTypeDef  sdatestructure;
  //RTC_TimeTypeDef  stimestructure;
  //RTC_AlarmTypeDef salarmstructure;
 
  // ##-1- Configure the Date #################################################
  // Set Date: 25.01.20.02 2х10+5
  //sdatestructure.Year = 0x25; //2х10+5
  //sdatestructure.Month = 0x04; //RTC_MONTH_JANUARY; //01 = 0x10+1
  //sdatestructure.Date = 0x24; //0x10+7
  //sdatestructure.WeekDay = 0x04; //RTC_WEEKDAY_TUESDAY; 02=0x10+2
  
  if(HAL_RTC_SetDate(&RtcHandle,&sdatestructure,RTC_FORMAT_BCD) != HAL_OK)
  {
    // Initialization Error 
    char *myError = "HAL_RTC_SetDate";
		Error_Handler(myError); 
  } 
  
 // ##-2- Configure the Time #################################################
 //  Set Time: 14:45:01 
  //stimestructure.Hours = 0x23; //1x10+4 14 годин
  //stimestructure.Minutes = 0x59; //4x10+5 45 хвилин
  //stimestructure.Seconds = 0x55; //0x10+1 1 секунда
  
  if(HAL_RTC_SetTime(&RtcHandle,&stimestructure,RTC_FORMAT_BCD) != HAL_OK)
  {
     //Initialization Error 
    char *myError = "HAL_RTC_SetTime";
		printf("%s", myError); 
		
		//Error_Handler(myError); 
  }  

  //##-3- Configure the RTC Alarm peripheral #################################
 // Set Alarm to 14:45:01 
  //RTC Alarm Generation: Alarm on Hours, Minutes and Seconds 
  salarmstructure.Alarm = RTC_ALARM_A; //0U
	salarmstructure.AlarmTime.Hours = 0x14;
  salarmstructure.AlarmTime.Minutes = 0x45;
  salarmstructure.AlarmTime.Seconds = 0x01; //0x30; //Встановлюю 1 сек, щоб змінювалось покази кожну секунду
	
  if(HAL_RTC_SetAlarm_IT(&RtcHandle,&salarmstructure,RTC_FORMAT_BCD) != HAL_OK)
  {
   // Initialization Error
    char *myError = "HAL_RTC_SetAlarm_IT";
		printf("%s", myError);  
  }
}

static void RTC_SECConfig(void)
{
  //RTC_DateTypeDef  sdatestructure;
  //RTC_TimeTypeDef  stimestructure;
  //RTC_AlarmTypeDef salarmstructure;
 
 //##-1- Configure the Date #################################################
  // Set Date: 07.01.25
  sdatestructure.Year = 0x25; //0x14;
  sdatestructure.Month = 0x01; //RTC_MONTH_JANUARY; //01 = 0x10+01
  sdatestructure.Date = 0x07; //0x10+7
  sdatestructure.WeekDay = 0x02; //RTC_WEEKDAY_TUESDAY; 02 = 0x10+02
  
  if(HAL_RTC_SetDate(&RtcHandle,&sdatestructure,RTC_FORMAT_BCD) != HAL_OK)
  {
    // Initialization Error //
    char *myError = "HAL_RTC_SetDate";
		printf("%s", myError); 
		//Error_Handler(myError);
  } 
  
  //##-2- Configure the Time #################################################
  // Set Time: 23:59:50 година.хвилина.секунда 
  stimestructure.Hours = 0x23;
  stimestructure.Minutes = 0x59;
  stimestructure.Seconds = 0x55;
  
  if(HAL_RTC_SetTime(&RtcHandle,&stimestructure,RTC_FORMAT_BCD) != HAL_OK)
  {
    // Initialization Error 
    char *myError = "HAL_RTC_SetTime";
		printf("%s", myError); 
		//Error_Handler(myError); 
  }  

  //##-3- Configure the RTC Alarm peripheral #################################
  // Set Alarm to 02:20:30 
  //   RTC Alarm Generation: Alarm on Hours, Minutes and Seconds 
	//Alarm спрацьовує Відносно HAL_RTC_SetTime
  //salarmstructure.Alarm = RTC_ALARM_A; //0U
	//salarmstructure.AlarmTime.Hours = 0x14;
  //salarmstructure.AlarmTime.Minutes = 0x50;
  //salarmstructure.AlarmTime.Seconds = 0x01; //0x30; //В цей час спрацьовує Alarm
  
 	//HAL_RTCEx_SetSecond_IT(RTC_HandleTypeDef *hrtc);
	if(HAL_RTCEx_SetSecond_IT(&RtcHandle) != HAL_OK)
  {
    // Initialization Error 
		char *myError = "HAL_RTCEx_SetSecond_IT";
		printf("%s", myError); 
		//Error_Handler(myError); 
  }
} 

uint8_t RTC_Data_Update(uint8_t index) //Оновити дату і час
{
	//Нові дата і час знаходяться в массиві uint8_t aRxBuffer[12] = 30 37 30 31 32 35 31 32 32 38 30 31
	//їх треба перетворити в 	BCD (двійково-дестковий) код
	uint8_t mydata[2];
	mydata[0] = (aRxBuffer[index] & 0x0F) << 4;
	mydata[1] = aRxBuffer[index + 1] & 0x0F;

	return (uint8_t) (mydata[0] + mydata[1]);
}

//Оновлення RtcHandle новими даними Дати Часу з aRxBuffer[12]
static void RTC_SECUpdate(void)
{
  //RTC_DateTypeDef  sdatestructure;
  //RTC_TimeTypeDef  stimestructure;
  //RTC_AlarmTypeDef salarmstructure;
 
 //##-1- Configure the Date #################################################
  // Set Date: 25.
  
	sdatestructureget.Date = RTC_Data_Update(0); //0x10+7
	sdatestructureget.Month = RTC_Data_Update(2); //RTC_MONTH_JANUARY; //01 = 0x10+01
	sdatestructureget.Year = RTC_Data_Update(4); //0x25; //0x14;
  //sdatestructure.WeekDay = RTC_Data_Update(6); //RTC_WEEKDAY_TUESDAY; 02 = 0x10+02
  
  if(HAL_RTC_SetDate(&RtcHandle, &sdatestructureget, RTC_FORMAT_BCD) != HAL_OK) //Запис Дати з sdatestructure в RtcHandle
  {
    // Initialization Error //
    char *myError = "HAL_RTC_SetDate";
		printf("%s", myError); 
		//Error_Handler(myError);  
  } 
  
  //##-2- Configure the Time #################################################
  // Set Time: 23:59:50 година.хвилина.секунда 
  stimestructureget.Hours = RTC_Data_Update(6);
  stimestructureget.Minutes = RTC_Data_Update(8);
  stimestructureget.Seconds = RTC_Data_Update(10);
  
  if(HAL_RTC_SetTime(&RtcHandle, &stimestructureget,RTC_FORMAT_BCD) != HAL_OK) //Запис Часу з sdatestructure в RtcHandle
  {
    // Initialization Error 
    char *myError = "HAL_RTC_SetTime";
		printf("%s", myError); 
		//Error_Handler(myError); 
  }  
}


static void RTC_DateShow(uint16_t x, uint16_t y) //Відображення Дати в точці х,у дисплея
{
#ifdef TFT_LCD_7789
	FontDef Font_Size = Font_16x26;
#elif defined (TFT_LCD_7735)
	FontDef Font_Size = Font_11x18;
#endif

 //RTC_DateTypeDef sdatestructureget;
  
  HAL_RTC_GetDate(&RtcHandle, &sdatestructureget, RTC_FORMAT_BIN);
  
  //printf("%02d.%02d.20%02d %02d:%02d:%02d\n\r",sdatestructureget.Date, sdatestructureget.Month, sdatestructureget.Year, stimestructureget.Hours, stimestructureget.Minutes, stimestructureget.Seconds);
	
	//snprintf(realdate, sizeof realdate, "%s", &sdatestructureget.Date);
	
	sprintf(realdate, "%02d", sdatestructureget.Date);
	sprintf(realmonth, "%02d", sdatestructureget.Month);
	sprintf(realyear, "%02d", sdatestructureget.Year);
		
	char temp1[11];

	concat_date(temp1, realdate, realmonth, realyear); //соединить строки -> *temp2
	printf("date = %s\n\r", temp1);
		
	LCD_WriteString(x, y, temp1, Font_Size, LCD_RED, LCD_WHITE);	 //& "." & realmonth
	//free(temp1);

} 

/**
  * @brief  Display the current time.
  * @param  showtime : pointer to buffer
  * @retval None
	Відображення часу в точці х,у дисплея
	*/
static void RTC_TimeShow(uint16_t x, uint16_t y) //х, у -координати початкової точки рядка дисплея 
{
#ifdef TFT_LCD_7789
	FontDef Font_Size = Font_16x26;
#elif defined (TFT_LCD_7735)
	FontDef Font_Size = Font_11x18;
#endif

  //stimestructureget; //Структура Година, Хвилина, Секунда
 
 	HAL_RTC_GetTime(&RtcHandle, &stimestructureget, RTC_FORMAT_BIN); //З лічильника CNTH_CNTL RTC формується структура stimestructureget
 
  //printf("%02d.%02d.20%02d %02d:%02d:%02d\n\r",sdatestructureget.Date, sdatestructureget.Month, sdatestructureget.Year, stimestructureget.Hours, stimestructureget.Minutes, stimestructureget.Seconds);
	
	//snprintf(realdate, sizeof realdate, "%s", &sdatestructureget.Date);
	
	sprintf(realhours, "%02d", stimestructureget.Hours);
	sprintf(reatminutes, "%02d", stimestructureget.Minutes);
	sprintf(reatseconds, "%02d", stimestructureget.Seconds);
	
	char temp1[9];
	concat_time(temp1, realhours, reatminutes, reatseconds); //соединить строки -> *temp2
	//printf("time = %s\n\r", temp1);
			
	LCD_WriteString(x, y, temp1, Font_Size, LCD_RED, LCD_WHITE);	 //& "." & realmonth
	//free(temp1);

} 

void concat_date(char * myconcat, char *s1, char *s2, char *s3)
{
	char mypoint[1] = ".";
	//char myspace[1] = " ";
	char mydate[2] = "20";
	
	memcpy(&myconcat[0], s1, 2); //"30"
	memcpy(&myconcat[2], mypoint, 1); //"30."
	
	memcpy(&myconcat[3], s2, 2); //"30.09"
	memcpy(&myconcat[5], mypoint, 1); //"30.09."
	
	memcpy(&myconcat[6], mydate, 2); //"30.09.20"
	
	memcpy(&myconcat[8], s3, 2); ////"30.09.2024"
	myconcat[10] = 0x00;
}

void concat_time(char * myconcat, char *s1, char *s2, char *s3)
{
	char mypoint[1] = ":";
	char mydate[2] = "20";
	
	memcpy(&myconcat[0], s1, 2); //"16"
	memcpy(&myconcat[2], mypoint, 1); //"16:"
	
	memcpy(&myconcat[3], s2, 2); //"16:20"
	memcpy(&myconcat[5], mypoint, 1); //"16:20:"
	
	memcpy(&myconcat[6], s3, 2); ////"316:20:02"
	myconcat[8] = 0x00;
}	

void HAL_RTCEx_RTCEventCallback(RTC_HandleTypeDef *hrtc)
{

#ifdef TFT_LCD_7789
	FontDef Font_Size = Font_16x26;
	uint16_t	LCD_WIDTH = ST7789_WIDTH;
	uint16_t	LCD_HEIGHT = ST7789_HEIGHT;	
#elif defined (TFT_LCD_7735)
	FontDef Font_Size = Font_11x18;
	uint16_t	LCD_WIDTH = ST7735_WIDTH;
	uint16_t	LCD_HEIGHT = ST7735_HEIGHT;
#endif


	//RTC_TimeTypeDef stimestructureget; 
	HAL_RTC_GetTime(hrtc, &stimestructureget, RTC_FORMAT_BIN); //Це потрібно, щоб в main було видно stimestructureget
	//RTC_TimeShow(10, 130);  //, aShowTime);
	RTC_TimeShow((LCD_WIDTH * 4) / 100, (LCD_HEIGHT * 55) / 100);	
	if (((stimestructureget.Hours*60*60) + stimestructureget.Minutes*60 + (stimestructureget.Seconds) > 86155) && myFlag_Show_Date == 0)
		 {
			 //Для цього зробив структуру stimestructureget публычною
			  //HAL_Delay(2000);
				//RTC_DateShow(10, 50); //показати дату після 24:00;
			 //printf("Year = %d Month = %d Date = %d\n\r", sdatestructureget.Date, sdatestructureget.Month, sdatestructureget.Year);	
			 //RTC_DateShow((LCD_WIDTH * 4) / 100, (LCD_HEIGHT * 20) / 100); //показати дату після 24:00;
			 currentHours_Minutes_Seconds = stimestructureget.Hours*60*60 +  stimestructureget.Minutes*60 + stimestructureget.Seconds;
			 myFlag_Show_Date = 1;
	   } 	
	HAL_GPIO_TogglePin(LED0_GPIO_PORT, LED0_PIN);

	
	//Перевірка на підключення bluetooth

	//Перевожу UART в режим готовності і перевіряю командою AT
	//UART_EndRxTransfer(&UartHandle);
/*	if	(myExchange(myCommandAT.ATstring, myAnswerAT.ATresponse) != HAL_OK)
		{
			Bluetooth_present = SHIELD_NOT_DETECTED;
			myAnswerAT.BLUETOOTH_shield = "BL not present";
			ST7789_DrawFilledRectangle(0, 180, 240, 240, WHITE);
			ST7789_WriteString(10, 206, myAnswerAT.BLUETOOTH_shield, Font_16x26, RED, WHITE);
		}else
		{
			Bluetooth_present = SHIELD_DETECTED;
			//HAL_GPIO_TogglePin(LED0_GPIO_PORT, LED0_PIN);
			myAnswerAT.BLUETOOTH_shield = "BL present";
			ST7789_DrawFilledRectangle(0, 180, 240, 240, WHITE);
			ST7789_WriteString(10, 206, myAnswerAT.BLUETOOTH_shield, Font_16x26, RED, WHITE);
		} */
		
}

HAL_StatusTypeDef myExchange(char *myAT, char *myRES) //Обмін командой АТ 
{
	aTxBuffer = myAT;

	char *myint1 = memchr(aTxBuffer, 0x00, 20);
	uint8_t COUNTmycommandAT = (myint1 - aTxBuffer) / sizeof(*aTxBuffer); 
		
	if(HAL_UART_Transmit_IT(&UartHandle, (uint8_t*)aTxBuffer, COUNTmycommandAT)!= HAL_OK)
  {
    char *myError = "HAL_UART_Transmit_IT";
		printf("%s", myError); 
		//Error_Handler(myError);
  } 
  /*##-3- Wait for the end of the transfer ###################################*/   
  while (UartReady != SET)
  {
  }
  UartReady = RESET;

	//Перехожу на прийом відповіді на команду AT

	char *myint2 = memchr(myRES, 0x00, 20);
	uint16_t COUNTmyresponseAT = (myint2 - myRES) / sizeof(*aRxBuffer);  
	
  /*##-4- Put UART peripheral in reception process ###########################*/  
	UartHandle.RxXferSize = 12;
	//HAL_UARTEx_ReceiveToIdle_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
  //switch (HAL_UARTEx_ReceiveToIdle(&UartHandle, (uint8_t *)aRxBuffer, COUNTmyresponseAT, (uint16_t*) &UartHandle.RxXferSize , 2000))
	//HAL_UARTEx_ReceiveToIdle_IT(&UartHandle, (uint8_t *)aRxBuffer, COUNTmyresponseAT);

	switch (HAL_UARTEx_ReceiveToIdle(&UartHandle, (uint8_t *)aRxBuffer, COUNTmyresponseAT, (uint16_t*) &UartHandle.RxXferSize , 2000))
	{
				case HAL_OK:
				if(Buffercmp((uint8_t *) aRxBuffer, (uint8_t *) myRES, COUNTmyresponseAT))  //перевірка на відповідність AT команди і відповіді
				{
					return HAL_ERROR;
				}
				return HAL_OK;
			case HAL_ERROR:
				break;			
			case HAL_BUSY:
				return HAL_BUSY;
			case HAL_TIMEOUT:
				return HAL_TIMEOUT;
	}
	return HAL_OK;
}

/**
  * @brief  Compares two buffers.
  * @param  pBuffer1, pBuffer2: buffers to be compared.
  * @param  BufferLength: buffer's length
  * @retval 0  : pBuffer1 identical to pBuffer2
  *         >0 : pBuffer1 differs from pBuffer2
  */
static int Buffercmp(uint8_t * pBuffer1, uint8_t * pBuffer2, uint16_t BufferLength)
{
  while (BufferLength--)
  {
    if ((*pBuffer1) != *pBuffer2)
    {
      return BufferLength;
    }
    pBuffer1++;
    pBuffer2++;
  }

  return 0;
}

static char calcModulo256(char *myString, uint16_t BufferLength)
    {
      int crc = 0; //48 49 48 50 48 51 48 52 48 53 48 55
			uint8_t i = 0;
			uint8_t mymod = 0;
			//char *mycrc;
      for (i = 0; i < BufferLength; i++) {
				crc += (uint16_t) *(myString + i);
      } //598 (0x0256)
      mymod = crc - (uint16_t) (crc % 256) * 256; // 598 - 2*256 = 597- 512 = 86 (0x056)
			return mymod;
		}   

//==============================================================================

void Error_Handler(char *myError)
{
	printf("Error in %s\n\r", myError);
	while (1)
  {
    /*Toggle LED2 with a period of one second */
    BSP_LED_Toggle(LED_GREEN);
    HAL_Delay(100);
		
  }
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

/**
  * @}
  */

/**
  * @}
  */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
