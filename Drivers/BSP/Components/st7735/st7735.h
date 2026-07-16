/**
  ******************************************************************************
  * @file    st7735.h
  * @author  MCD Application Team
  * @version V1.1.1
  * @date    24-November-2014
  * @brief   This file contains all the functions prototypes for the st7735.c
  *          driver.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT(c) 2014 STMicroelectronics</center></h2>
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

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __ST7735_H
#define __ST7735_H

#ifdef __cplusplus
 extern "C" {
#endif 

/* Includes ------------------------------------------------------------------*/
#include "../Common/lcd.h"
#include "fonts.h"

/** @addtogroup BSP
  * @{
  */ 

/** @addtogroup Components
  * @{
  */ 
  
/** @addtogroup ST7735
  * @{
  */

/** @defgroup ST7735_Exported_Types
  * @{
  */
   
/**
  * @}
  */ 

/** @defgroup ST7735_Exported_Constants
  * @{
  */
      
/** 
  * @brief  ST7735 Size  
  */  
#define  ST7735_LCD_PIXEL_WIDTH    ((uint16_t)128)
#define  ST7735_LCD_PIXEL_HEIGHT   ((uint16_t)128)


/** 
  * @brief  ST7735 Registers  
  */ 
#define  LCD_REG_0               0x00 /* No Operation: NOP */
#define  LCD_REG_1               0x01 /* Software reset: SWRESET */
#define  LCD_REG_4               0x04 /* Read Display ID: RDDID */
#define  LCD_REG_9               0x09 /* Read Display Statu: RDDST */
#define  LCD_REG_10              0x0A /* Read Display Power: RDDPM */
#define  LCD_REG_11              0x0B /* Read Display: RDDMADCTL */
#define  LCD_REG_12              0x0C /* Read Display Pixel: RDDCOLMOD */  
#define  LCD_REG_13              0x0D /* Read Display Image: RDDIM */
#define  LCD_REG_14              0x0E /* Read Display Signal: RDDSM */                           
#define  LCD_REG_16              0x10 /* Sleep in & booster off: SLPIN */ 
#define  LCD_REG_17              0x11 /* Sleep out & booster on: SLPOUT */
#define  LCD_REG_18              0x12 /* Partial mode on: PTLON */ 
#define  LCD_REG_19              0x13 /* Partial off (Normal): NORON */
#define  LCD_REG_32              0x20 /* Display inversion off: INVOFF */
#define  LCD_REG_33              0x21 /* Display inversion on: INVON */
#define  LCD_REG_38              0x26 /* Gamma curve select: GAMSET */
#define  LCD_REG_40              0x28 /* Display off: DISPOFF */
#define  LCD_REG_41              0x29 /* Display on: DISPON */
#define  LCD_REG_42              0x2A /* Column address set: CASET */ 
#define  LCD_REG_43              0x2B /* Row address set: RASET */
#define  LCD_REG_44              0x2C /* Memory write: RAMWR */  
#define  LCD_REG_45              0x2D /* LUT for 4k,65k,262k color: RGBSET */
#define  LCD_REG_46              0x2E /* Memory read: RAMRD*/
#define  LCD_REG_48              0x30 /* Partial start/end address set: PTLAR */ 
#define  LCD_REG_52              0x34 /* Tearing effect line off: TEOFF */ 
#define  LCD_REG_53              0x35 /* Tearing effect mode set & on: TEON */ 
#define  LCD_REG_54              0x36 /* Memory data access control: MADCTL */ 
#define  LCD_REG_56              0x38 /* Idle mode off: IDMOFF */ 
#define  LCD_REG_57              0x39 /* Idle mode on: IDMON */ 
#define  LCD_REG_58              0x3A /* Interface pixel format: COLMOD */
#define  LCD_REG_177             0xB1 /* In normal mode (Full colors): FRMCTR1 */
#define  LCD_REG_178             0xB2 /* In Idle mode (8-colors): FRMCTR2 */   
#define  LCD_REG_179             0xB3 /* In partial mode + Full colors: FRMCTR3 */ 
#define  LCD_REG_180             0xB4 /* Display inversion control: INVCTR */
#define  LCD_REG_192             0xC0 /* Power control setting: PWCTR1 */ 
#define  LCD_REG_193             0xC1 /* Power control setting: PWCTR2 */ 
#define  LCD_REG_194             0xC2 /* In normal mode (Full colors): PWCTR3 */
#define  LCD_REG_195             0xC3 /* In Idle mode (8-colors): PWCTR4 */ 
#define  LCD_REG_196             0xC4 /* In partial mode + Full colors: PWCTR5 */ 
#define  LCD_REG_197             0xC5 /* VCOM control 1: VMCTR1 */ 
#define  LCD_REG_199             0xC7 /* Set VCOM offset control: VMOFCTR */ 
#define  LCD_REG_209             0xD1 /* Set LCM version code: WRID2 */ 
#define  LCD_REG_210             0xD2 /* Customer Project code: WRID3 */ 
#define  LCD_REG_217             0xD9 /* NVM control status: NVCTR1 */
#define  LCD_REG_218             0xDA /* Read ID1: RDID1 */ 
#define  LCD_REG_219             0xDB /* Read ID2: RDID2 */ 
#define  LCD_REG_220             0xDC /* Read ID3: RDID3 */ 
#define  LCD_REG_222             0xDE /* NVM Read Command: NVCTR2 */ 
#define  LCD_REG_223             0xDF /* NVM Write Command: NVCTR3 */
#define  LCD_REG_224             0xE0 /* Set Gamma adjustment (+ polarity): GAMCTRP1 */                          
#define  LCD_REG_225             0xE1 /* Set Gamma adjustment (- polarity): GAMCTRN1 */ 

/** 
  * @brief  LCD Lines depending on the chosen fonts.  
  */
#define LCD_LINE_0               LINE(0)
#define LCD_LINE_1               LINE(1)
#define LCD_LINE_2               LINE(2)
#define LCD_LINE_3               LINE(3)
#define LCD_LINE_4               LINE(4)
#define LCD_LINE_5               LINE(5)
#define LCD_LINE_6               LINE(6)
#define LCD_LINE_7               LINE(7)
#define LCD_LINE_8               LINE(8)
#define LCD_LINE_9               LINE(9)
#define LCD_LINE_10              LINE(10)
#define LCD_LINE_11              LINE(11)
#define LCD_LINE_12              LINE(12)
#define LCD_LINE_13              LINE(13)
#define LCD_LINE_14              LINE(14)
#define LCD_LINE_15              LINE(15)
#define LCD_LINE_16              LINE(16)
#define LCD_LINE_17              LINE(17)
#define LCD_LINE_18              LINE(18)
#define LCD_LINE_19              LINE(19) 
   
/**
  * @}
  */

/** @defgroup ADAFRUIT_SPI_LCD_Exported_Functions
  * @{
  */ 

uint16_t st7735_ReadID(void);
void 		 st7735_Init(void);
void     st7735_DisplayOn(void);
void     st7735_DisplayOff(void);
void     st7735_SetCursor(uint16_t Xpos, uint16_t Ypos);
void     st7735_WritePixel(uint16_t Xpos, uint16_t Ypos, uint16_t RGBCode);
void     st7735_WriteReg(uint8_t LCDReg, uint8_t LCDRegValue);
uint8_t  st7735_ReadReg(uint8_t LCDReg);

void     st7735_SetDisplayWindow(uint16_t Xpos, uint16_t Ypos, uint16_t Width, uint16_t Height);
void     st7735_DrawHLine(uint16_t RGBCode, uint16_t Xpos, uint16_t Ypos, uint16_t Length);
void     st7735_DrawVLine(uint16_t RGBCode, uint16_t Xpos, uint16_t Ypos, uint16_t Length);

void ST7735_WriteChar(uint16_t x, uint16_t y, char ch, FontDef font, uint16_t color, uint16_t bgcolor);

uint16_t st7735_GetLcdPixelWidth(void);
uint16_t st7735_GetLcdPixelHeight(void);
void     st7735_DrawBitmap(uint16_t Xpos, uint16_t Ypos, uint8_t *pbmp);

/* LCD driver structure */
//extern LCD_DrvTypeDef   st7735_drv;

/* LCD IO functions */
void     LCD_IO_Init(void);
void     LCD_SendMultipleData(uint8_t *pData, uint32_t Size);
//void     LCD_IO_WriteReg(uint8_t Reg);
void     LCD_Delay(uint32_t delay);
/**
  * @}
  */

#ifdef __cplusplus
}
#endif

//#endif /* __ST7735_H */

//=======================================================================
#include "fonts.h"
#include "st7735_cfg.h"
#include <stdbool.h>


#define ST7735_MADCTL_MY  0x80
#define ST7735_MADCTL_MX  0x40
#define ST7735_MADCTL_MV  0x20
#define ST7735_MADCTL_RGB 0x00
#define ST7735_MADCTL_BGR 0x08
// AliExpress/eBay 1.8" display, default orientation
#ifdef ST7735_1_8_DEFAULT_ORIENTATION
#define ST7735_IS_160X128   1
#define ST7735_WIDTH        128
#define ST7735_HEIGHT       160
#define ST7735_XSTART       0
#define ST7735_YSTART       0
#define ST7735_DATA_ROTATION  (ST7735_MADCTL_MX | ST7735_MADCTL_MY)
#endif //ST7735_1_8_DEFAULT_ORIENTATION
// WaveShare ST7735S-based 1.8" display, default orientation
#ifdef ST7735S_1_8_DEFAULT_ORIENTATION
#define ST7735_IS_120X128     1
#define ST7735_WIDTH        128
#define ST7735_HEIGHT       128
#define ST7735_XSTART       2
#define ST7735_YSTART       1
#define ST7735_DATA_ROTATION  (ST7735_MADCTL_MX | ST7735_MADCTL_MY | ST7735_MADCTL_RGB)
#endif //ST7735S_1_8_DEFAULT_ORIENTATION
// 1.44" display, default orientation
#ifdef ST7735_1_44_DEFAULT_ORIENTATION
#define ST7735_IS_128X128     1
#define ST7735_WIDTH        128
#define ST7735_HEIGHT       128
#define ST7735_XSTART       2
#define ST7735_YSTART       3
//#define ST7735_VALUE_ROTATION 0
#define ST7735_DATA_ROTATION  (ST7735_MADCTL_MX | ST7735_MADCTL_MY | ST7735_MADCTL_BGR)
#endif //ST7735_1_44_DEFAULT_ORIENTATION
// mini 160x80 display (it's unlikely you want the default orientation)
#ifdef ST7735_MINI_DEFAULT_ORIENTATION
#define ST7735_IS_128X80    1
#define ST7735_XSTART       26
#define ST7735_YSTART       1
#define ST7735_WIDTH        80
#define ST7735_HEIGHT       160
//#define ST7735_VALUE_ROTATION 0
#define ST7735_DATA_ROTATION  (ST7735_MADCTL_MX | ST7735_MADCTL_MY | ST7735_MADCTL_BGR)
#endif //ST7735_MINI_DEFAULT_ORIENTATION
/****************************/
#define ST7735_NOP     0x00
#define ST7735_SWRESET 0x01
#define ST7735_RDDID   0x04
#define ST7735_RDDST   0x09
#define ST7735_SLPIN   0x10
#define ST7735_SLPOUT  0x11
#define ST7735_PTLON   0x12
#define ST7735_NORON   0x13
#define ST7735_INVOFF  0x20
#define ST7735_INVON   0x21
#define ST7735_DISPOFF 0x28
#define ST7735_DISPON  0x29
#define ST7735_CASET   0x2A
#define ST7735_RASET   0x2B
#define ST7735_RAMWR   0x2C
#define ST7735_RAMRD   0x2E
#define ST7735_PTLAR   0x30
#define ST7735_COLMOD  0x3A
#define ST7735_MADCTL  0x36
#define ST7735_FRMCTR1 0xB1
#define ST7735_FRMCTR2 0xB2
#define ST7735_FRMCTR3 0xB3
#define ST7735_INVCTR  0xB4
#define ST7735_DISSET5 0xB6
#define ST7735_PWCTR1  0xC0
#define ST7735_PWCTR2  0xC1
#define ST7735_PWCTR3  0xC2
#define ST7735_PWCTR4  0xC3
#define ST7735_PWCTR5  0xC4
#define ST7735_VMCTR1  0xC5
#define ST7735_RDID1   0xDA
#define ST7735_RDID2   0xDB
#define ST7735_RDID3   0xDC
#define ST7735_RDID4   0xDD
#define ST7735_PWCTR6  0xFC
#define ST7735_GMCTRP1 0xE0
#define ST7735_GMCTRN1 0xE1
// Color definitions
#define ST7735_BLACK   0x0000
#define ST7735_BLUE    0x001F
#define ST7735_RED     0xF800
#define ST7735_GREEN   0x07E0
#define ST7735_CYAN    0x07FF
#define ST7735_MAGENTA 0xF81F
#define ST7735_YELLOW  0xFFE0
#define ST7735_WHITE   0xFFFF
void ST7735_Backlight_On(void);
void ST7735_Backlight_Off(void);

void ST7735_DrawPixel(uint16_t x, uint16_t y, uint16_t color);
void ST7735_DrawString(uint16_t x, uint16_t y, const char* str, FontDef font, uint16_t color, uint16_t bgcolor);
void ST7735_FillRectangle(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t color);
void ST7735_FillScreen(uint16_t color);
void ST7735_DrawImage(uint16_t x, uint16_t y, uint16_t w, uint16_t h, const uint16_t* data);
void ST7735_DrawTouchGFX(uint16_t x, uint16_t y, uint16_t w, uint16_t h, const uint16_t* data);
void ST7735_InvertColors(bool invert);
void ST7735_DrawCircle(int16_t x0, int16_t y0, int16_t r, uint16_t color);
void ST7735_DrawCircleHelper( int16_t x0, int16_t y0, int16_t r, uint8_t cornername, uint16_t color);
void ST7735_FillCircle(int16_t x0, int16_t y0, int16_t r, uint16_t color);
void ST7735_FillCircleHelper(int16_t x0, int16_t y0, int16_t r, uint8_t cornername, int16_t delta, uint16_t color);
void ST7735_DrawEllipse(int16_t x0, int16_t y0, int16_t rx, int16_t ry, uint16_t color);
void ST7735_FillEllipse(int16_t x0, int16_t y0, int16_t rx, int16_t ry, uint16_t color);
void ST7735_DrawRect(int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color);
void ST7735_DrawRoundRect(int16_t x, int16_t y, int16_t w, int16_t h, int16_t r, uint16_t color);
void ST7735_FillRoundRect(int16_t x, int16_t y, int16_t w, int16_t h, int16_t r, uint16_t color);
void ST7735_DrawTriangle(int16_t x0, int16_t y0, int16_t x1, int16_t y1, int16_t x2, int16_t y2, uint16_t color);
void ST7735_FillTriangle( int16_t x0, int16_t y0, int16_t x1, int16_t y1, int16_t x2, int16_t y2, uint16_t color);
void ST7735_DrawLine(int16_t x0, int16_t y0, int16_t x1, int16_t y1, uint16_t color);
void ST7735_DrawFastVLine(int16_t x, int16_t y, int16_t h, uint16_t color);
void ST7735_DrawFastHLine(int16_t x, int16_t y, int16_t w, uint16_t color);
void ST7735_SetRotation(uint8_t m);
uint8_t ST7735_GetRotation(void);
int16_t ST7735_GetHeight(void);
int16_t ST7735_GetWidth(void);
#endif /* ST7735_H_ */


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
