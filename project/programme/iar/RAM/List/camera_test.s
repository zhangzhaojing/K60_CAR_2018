///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.10.1.12857/W32 for ARM      26/Jan/2018  13:20:18
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  F:\K60_CAR_2018\project\programme\app\camera_test.c
//    Command line =  
//        -f C:\Users\19071_~1\AppData\Local\Temp\EW7D98.tmp
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

        EXTERN LPLD_UART_Init
        EXTERN LPLD_UART_PutChar
        EXTERN Pix_Data
        EXTERN __aeabi_memcpy4
        EXTERN ov7620__config

        PUBLIC app__camera_test
        PUBLIC uart0_init_struct
        PUBLIC uart_init

// F:\K60_CAR_2018\project\programme\app\camera_test.c
//    1 #include "program.h"
//    2 //static uint8 Pix_Data[240][320];
//    3 
//    4 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    5 UART_InitTypeDef uart0_init_struct;
uart0_init_struct:
        DS8 28
//    6 
//    7 
//    8 
//    9 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   10 void uart_init(void)
//   11 {
uart_init:
        PUSH     {R5-R7,LR}
//   12   uart0_init_struct.UART_Uartx = UART0; //使用UART0
        LDR.N    R0,??DataTable1  ;; 0x4006a000
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//   13   uart0_init_struct.UART_BaudRate = 9600; //设置波特率9600
        MOV      R0,#+9600
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+4]
//   14   uart0_init_struct.UART_RxPin = PTA15;  //接收引脚为PTE15
        MOVS     R0,#+15
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+9]
//   15   uart0_init_struct.UART_TxPin = PTA14;  //发送引脚为PTE14
        MOVS     R0,#+14
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+8]
//   16   //初始化UART
//   17   LPLD_UART_Init(uart0_init_struct);
        LDR.N    R1,??DataTable1_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   18 }
        POP      {R0-R2,PC}       ;; return
//   19 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   20 extern void app__camera_test(void){
app__camera_test:
        PUSH     {R3-R5,LR}
//   21     
//   22     int i,j;
//   23     int tem;
//   24     
//   25     uart_init();
        BL       uart_init
//   26     ov7620__config();
        BL       ov7620__config
//   27     //camera__take_a_photo_please_();
//   28    // camera__take_a_photo_please_();
//   29    // camera__take_a_photo_please_();
//   30     //camera__take_a_photo_please_();
//   31     //camera__take_a_photo_please_();
//   32     for(i=0;i<240;i++){
        MOVS     R4,#+0
        B.N      ??app__camera_test_0
//   33       for(j=0;j<320;j++){
//   34        // if(Pix_Data[i][j]>128) tem=0;else tem=1;
//   35         LPLD_UART_PutChar(UART0, Pix_Data[i][j]);
??app__camera_test_1:
        LDR.N    R0,??DataTable1_2
        MOV      R1,#+320
        MUL      R1,R1,R4
        ADD      R0,R0,R1
        LDRSB    R0,[R0, R5]
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable1  ;; 0x4006a000
        BL       LPLD_UART_PutChar
//   36       } 
        ADDS     R5,R5,#+1
??app__camera_test_2:
        CMP      R5,#+320
        BLT.N    ??app__camera_test_1
        ADDS     R4,R4,#+1
??app__camera_test_0:
        CMP      R4,#+240
        BGE.N    ??app__camera_test_3
        MOVS     R5,#+0
        B.N      ??app__camera_test_2
//   37     }
//   38 }
??app__camera_test_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x4006a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     uart0_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     Pix_Data

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  28 bytes in section .bss
// 118 bytes in section .text
// 
// 118 bytes of CODE memory
//  28 bytes of DATA memory
//
//Errors: none
//Warnings: 1
