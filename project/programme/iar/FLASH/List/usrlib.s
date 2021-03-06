///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.10.1.12857/W32 for ARM      29/Jan/2018  14:08:16
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  F:\K60_CAR_2018\lib\peripheral\usrlib.c
//    Command line =  
//        -f C:\Users\19071_~1\AppData\Local\Temp\EWAAB7.tmp
//        (F:\K60_CAR_2018\lib\peripheral\usrlib.c -D LPLD_K60 -D USE_K60DZ10
//        -lCN F:\K60_CAR_2018\project\programme\iar\FLASH\List -lB
//        F:\K60_CAR_2018\project\programme\iar\FLASH\List -o
//        F:\K60_CAR_2018\project\programme\iar\FLASH\Obj --no_cse --no_unroll
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
//        F:\K60_CAR_2018\project\programme\iar\..\..\..\lib\USB\class\ -Ol -I
//        "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        8.0\arm\CMSIS\Include\" -D ARM_MATH_CM4)
//    Locale       =  C
//    List file    =  F:\K60_CAR_2018\project\programme\iar\FLASH\List\usrlib.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC dummy_delay_ms

// F:\K60_CAR_2018\lib\peripheral\usrlib.c
//    1 #include "usrlib.h"
//    2 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    3 void dummy_delay_ms(uint16 ms){
//    4     uint16 ii,jj;
//    5     if (ms<1) ms=1;
dummy_delay_ms:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??dummy_delay_ms_0
        MOVS     R0,#+1
//    6     ms=ms*12;
??dummy_delay_ms_0:
        MOVS     R1,#+12
        SMULBB   R0,R0,R1
//    7     for(ii=0;ii<ms;ii++)
        MOVS     R1,#+0
        B.N      ??dummy_delay_ms_1
//    8       for(jj=0;jj<8010;jj++);
??dummy_delay_ms_2:
        ADDS     R2,R2,#+1
??dummy_delay_ms_3:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVW     R3,#+8010
        CMP      R2,R3
        BLT.N    ??dummy_delay_ms_2
        ADDS     R1,R1,#+1
??dummy_delay_ms_1:
        MOVS     R2,R1
        MOVS     R3,R0
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        CMP      R2,R3
        BCS.N    ??dummy_delay_ms_4
        MOVS     R2,#+0
        B.N      ??dummy_delay_ms_3
//    9 }
??dummy_delay_ms_4:
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 50 bytes in section .text
// 
// 50 bytes of CODE memory
//
//Errors: none
//Warnings: none
