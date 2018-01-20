///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.10.1.12857/W32 for ARM      20/Jan/2018  23:55:06
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  F:\K60_CAR_2018\project\programme\app\blind.c
//    Command line =  
//        -f C:\Users\19071_~1\AppData\Local\Temp\EW4D9F.tmp
//        (F:\K60_CAR_2018\project\programme\app\blind.c -D LPLD_K60 -D
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
//    List file    =  F:\K60_CAR_2018\project\programme\iar\RAM\List\blind.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN motor_control__config
        EXTERN motor_control__enable
        EXTERN motor_control__set_duty
        EXTERN servo__config
        EXTERN servo__set_radius_dir

        PUBLIC app__blind

// F:\K60_CAR_2018\project\programme\app\blind.c
//    1 #include "program.h"
//    2 
//    3 #define R 80 //cm   80
//    4 #define CIRCLE 2*3.1415926535*R //Ô²µÄÖÜ³¤
//    5 #define MIL CIRCLE*0.01*1965
//    6 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    7 static int dir=0;
dir:
        DS8 4
//    8 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//    9 static servo_t steer={
steer:
        DC32 40039000H
        DC8 1, 9, 0, 0
        DC32 50, 625, 80, 41A80000H, 441F4000H, 43260000H, 441C4000H
        DC32 0C3320000H
        DC8 0, 0, 0, 0, 0, 0, 0, 0
//   10   FTM1,FTM_Ch1,PTA9,50,  625, 80, 21, 637,166,625,-178//,median,amplitude, paramL, paramK
//   11 };
//   12 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   13 static motor_control_t mtrctrl = {
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
//   14     PIT0, 10, 
//   15     {LPTMR_ALT1}, {LPTMR_ALT2}, 
//   16     {{FTM0, FTM_Ch0, PTC1, 30000},  {FTM0, FTM_Ch1, PTC2, 30000}, 
//   17  {FTM0, FTM_Ch2, PTC3, 30000},{FTM0, FTM_Ch3, PTC4, 30000}    }
//   18 };
//   19 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   20 extern void app__blind(void){
app__blind:
        PUSH     {R7,LR}
//   21   servo__config(&steer);
        LDR.N    R0,??app__blind_0
        BL       servo__config
//   22   motor_control__config(&mtrctrl);
        LDR.N    R0,??app__blind_0+0x4
        BL       motor_control__config
//   23   motor_control__enable();
        BL       motor_control__enable
//   24   motor_control__set_duty(Left_Motor, (int32)(1500.0f));
        MOVW     R1,#+1500
        MOVS     R0,#+0
        BL       motor_control__set_duty
//   25   motor_control__set_duty(Right_Motor, (int32)(-1500.0f));
        LDR.N    R1,??app__blind_0+0x8  ;; 0xfffffa24
        MOVS     R0,#+1
        BL       motor_control__set_duty
//   26   
//   27   servo__set_radius_dir(R,dir);
        LDR.N    R0,??app__blind_0+0xC
        LDR      R1,[R0, #+0]
        LDR.N    R0,??app__blind_0+0x10  ;; 0x42a00000
        BL       servo__set_radius_dir
        B.N      ??app__blind_1
//   28 
//   29   while(1){
//   30      if(mtrctrl.ecdlft.mileage>MIL){
//   31      if(dir==0)dir=1;else dir=0;
??app__blind_2:
        MOVS     R0,#+0
        LDR.N    R1,??app__blind_0+0xC
        STR      R0,[R1, #+0]
//   32      servo__set_radius_dir(R,dir);
??app__blind_3:
        LDR.N    R0,??app__blind_0+0xC
        LDR      R1,[R0, #+0]
        LDR.N    R0,??app__blind_0+0x10  ;; 0x42a00000
        BL       servo__set_radius_dir
//   33      mtrctrl.ecdlft.mileage=0;
        MOVS     R0,#+0
        LDR.N    R1,??app__blind_0+0x4
        STR      R0,[R1, #+124]
??app__blind_1:
        LDR.N    R0,??app__blind_0+0x4
        LDR      R0,[R0, #+124]
        MOVW     R1,#+9878
        CMP      R0,R1
        BLT.N    ??app__blind_1
        LDR.N    R0,??app__blind_0+0xC
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??app__blind_2
        MOVS     R0,#+1
        LDR.N    R1,??app__blind_0+0xC
        STR      R0,[R1, #+0]
        B.N      ??app__blind_3
        Nop      
        DATA
??app__blind_0:
        DC32     steer
        DC32     mtrctrl
        DC32     0xfffffa24
        DC32     dir
        DC32     0x42a00000
//   34     }
//   35   }
//   36   
//   37 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//   4 bytes in section .bss
// 184 bytes in section .data
// 120 bytes in section .text
// 
// 120 bytes of CODE memory
// 188 bytes of DATA memory
//
//Errors: none
//Warnings: none
