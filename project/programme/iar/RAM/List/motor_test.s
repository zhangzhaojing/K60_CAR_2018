///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.10.1.12857/W32 for ARM      20/Jan/2018  23:55:06
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  F:\K60_CAR_2018\project\programme\app\motor_test.c
//    Command line =  
//        -f C:\Users\19071_~1\AppData\Local\Temp\EW4DBF.tmp
//        (F:\K60_CAR_2018\project\programme\app\motor_test.c -D LPLD_K60 -D
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
//        F:\K60_CAR_2018\project\programme\iar\RAM\List\motor_test.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN motor_control__config
        EXTERN motor_control__enable
        EXTERN motor_control__set_duty

        PUBLIC app__motor_dev

// F:\K60_CAR_2018\project\programme\app\motor_test.c
//    1 #include "program.h"
//    2 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//    3 static motor_control_t mtrctrl = {
mtrctrl:
        DC8 0, 0, 0, 0
        DC32 10
        DC8 1, 2, 0, 0
        DC32 40038000H
        DC8 0, 61, 0, 0
        DC32 30000, 40038000H
        DC8 1, 62, 0, 0
        DC32 30000, 40038000H
        DC8 2, 63, 0, 0
        DC32 30000, 40038000H
        DC8 3, 64, 0, 0
        DC32 30000
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
//    4     PIT0, 10, 
//    5     {LPTMR_ALT1}, {LPTMR_ALT2}, 
//    6     {{FTM0, FTM_Ch0, PTC1, 30000},  {FTM0, FTM_Ch1, PTC2, 30000}, 
//    7  {FTM0, FTM_Ch2, PTC3, 30000},{FTM0, FTM_Ch3, PTC4, 30000} /*RR*/   }
//    8 };
//    9 
//   10 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   11 extern void app__motor_dev(void){
app__motor_dev:
        PUSH     {R7,LR}
//   12 
//   13     motor_control__config(&mtrctrl);
        LDR.N    R0,??app__motor_dev_0
        BL       motor_control__config
//   14     motor_control__enable();
        BL       motor_control__enable
//   15    
//   16     motor_control__set_duty(Left_Motor, (int32)(2000.0f));
        MOV      R1,#+2000
        MOVS     R0,#+0
        BL       motor_control__set_duty
//   17     motor_control__set_duty(Right_Motor, (int32)(-2000.0f));
        LDR.N    R1,??app__motor_dev_0+0x4  ;; 0xfffff830
        MOVS     R0,#+1
        BL       motor_control__set_duty
//   18 
//   19 }
        POP      {R0,PC}          ;; return
        DATA
??app__motor_dev_0:
        DC32     mtrctrl
        DC32     0xfffff830

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 136 bytes in section .data
//  40 bytes in section .text
// 
//  40 bytes of CODE memory
// 136 bytes of DATA memory
//
//Errors: none
//Warnings: none
