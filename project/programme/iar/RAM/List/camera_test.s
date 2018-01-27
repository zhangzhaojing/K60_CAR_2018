///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.10.1.12857/W32 for ARM      27/Jan/2018  16:58:34
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  F:\K60_CAR_2018\project\programme\app\camera_test.c
//    Command line =  
//        -f C:\Users\19071_~1\AppData\Local\Temp\EWE774.tmp
//        (F:\K60_CAR_2018\project\programme\app\camera_test.c -D LPLD_K60 -D
//        USE_K60DZ10 -lCN F:\K60_CAR_2018\project\programme\iar\RAM\List -lB
//        F:\K60_CAR_2018\project\programme\iar\RAM\List -o
//        F:\K60_CAR_2018\project\programme\iar\RAM\Obj --no_cse --no_unroll
//        --no_inline --no_code_motion --no_tbaa --no_clustering
//        --no_scheduling --debug --endian=little --cpu=Cortex-M4 -e --fpu=None
//        --dlib_config "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        8.0\arm\INC\c\DLib_Config_Normal.h" -I
//        F:\K60_CAR_2018\project\programme\iar\..\app\ -I
//        F:\K60_CAR_2018\project\programme\iar\..\..\..\lib\CPU\ -I
//        F:\K60_CAR_2018\project\programme\iar\..\..\..\lib\common\ -I
//        F:\K60_CAR_2018\project\programme\iar\..\..\..\lib\LPLD\ -I
//        F:\K60_CAR_2018\project\programme\iar\..\..\..\lib\LPLD\HW\ -I
//        F:\K60_CAR_2018\project\programme\iar\..\..\..\lib\LPLD\DEV\ -I
//        F:\K60_CAR_2018\project\programme\iar\..\..\..\lib\LPLD\FUNC\ -I
//        F:\K60_CAR_2018\project\programme\iar\..\..\..\lib\uCOS-II\Ports\ -I
//        F:\K60_CAR_2018\project\programme\iar\..\..\..\lib\uCOS-II\Source\ -I
//        F:\K60_CAR_2018\project\programme\iar\..\..\..\lib\FatFs\ -I
//        F:\K60_CAR_2018\project\programme\iar\..\..\..\lib\FatFs\option\ -I
//        F:\K60_CAR_2018\project\programme\iar\..\..\..\lib\USB\common\ -I
//        F:\K60_CAR_2018\project\programme\iar\..\..\..\lib\USB\driver\ -I
//        F:\K60_CAR_2018\project\programme\iar\..\..\..\lib\USB\descriptor\ -I
//        F:\K60_CAR_2018\project\programme\iar\..\..\..\lib\USB\class\ -I
//        F:\K60_CAR_2018\project\programme\iar\..\..\..\lib\peripheral\ -Ol -I
//        "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        8.0\arm\CMSIS\Include\" -D ARM_MATH_CM4)
//    Locale       =  C
//    List file    =  
//        F:\K60_CAR_2018\project\programme\iar\RAM\List\camera_test.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN ov7620__config

        PUBLIC app__camera_test

// F:\K60_CAR_2018\project\programme\app\camera_test.c
//    1 #include "program.h"
//    2 //static uint8 Pix_Data[240][320];
//    3 
//    4 
//    5 //UART_InitTypeDef uart0_init_struct;
//    6 //
//    7 //
//    8 //
//    9 //
//   10 //void uart_init(void)
//   11 //{
//   12 //  uart0_init_struct.UART_Uartx = UART0; //使用UART0
//   13 //  uart0_init_struct.UART_BaudRate = 9600; //设置波特率9600
//   14 //  uart0_init_struct.UART_RxPin = PTA15;  //接收引脚为PTE15
//   15 //  uart0_init_struct.UART_TxPin = PTA14;  //发送引脚为PTE14
//   16 //  //初始化UART
//   17 //  LPLD_UART_Init(uart0_init_struct);
//   18 //}
//   19 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   20 extern void app__camera_test(void){
app__camera_test:
        PUSH     {R7,LR}
//   21     
//   22 //    int i,j;
//   23 //    int tem;
//   24     
//   25 //    uart_init();
//   26     ov7620__config();
        BL       ov7620__config
//   27     
//   28 //    for(i=0;i<240;i++){
//   29 //      for(j=0;j<320;j++){
//   30 //        LPLD_UART_PutChar(UART0, Pix_Data[i][j]);
//   31 //      } 
//   32 //    }
//   33 }
        POP      {R0,PC}          ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 8 bytes in section .text
// 
// 8 bytes of CODE memory
//
//Errors: none
//Warnings: none
