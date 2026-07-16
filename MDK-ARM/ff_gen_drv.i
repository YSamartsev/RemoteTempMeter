#line 1 "..\\Middlewares\\Third_Party\\FatFs\\src\\ff_gen_drv.c"












































  

 
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







 

#line 49 "..\\Middlewares\\Third_Party\\FatFs\\src\\ff_gen_drv.c"

 
 
 
Disk_drvTypeDef disk = {{0},{0},{0},0};

 
 










 
uint8_t FATFS_LinkDriverEx(Diskio_drvTypeDef *drv, char *path, uint8_t lun)
{
  uint8_t ret = 1;
  uint8_t DiskNum = 0;
  
  if(disk.nbr <= 1)
  {
    disk.is_initialized[disk.nbr] = 0;
    disk.drv[disk.nbr] = drv;  
    disk.lun[disk.nbr] = lun;  
    DiskNum = disk.nbr++;
    path[0] = DiskNum + '0';
    path[1] = ':';
    path[2] = '/';
    path[3] = 0;
    ret = 0;
  }
  
  return ret;
}








 
uint8_t FATFS_LinkDriver(Diskio_drvTypeDef *drv, char *path)
{
  return FATFS_LinkDriverEx(drv, path, 0);
}







 
uint8_t FATFS_UnLinkDriverEx(char *path, uint8_t lun)
{ 
  uint8_t DiskNum = 0;
  uint8_t ret = 1;
  
  if(disk.nbr >= 1)
  {    
    DiskNum = path[0] - '0';
    if(disk.drv[DiskNum] != 0)
    {
      disk.drv[DiskNum] = 0;
      disk.lun[DiskNum] = 0;
      disk.nbr--;
      ret = 0;
    }
  }
  
  return ret;
}






 
uint8_t FATFS_UnLinkDriver(char *path)
{ 
  return FATFS_UnLinkDriverEx(path, 0);
}





 
uint8_t FATFS_GetAttachedDriversNbr(void)
{
  return disk.nbr;
}
 
 

