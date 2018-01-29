///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.10.1.12857/W32 for ARM      29/Jan/2018  14:08:15
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  F:\K60_CAR_2018\lib\peripheral\oled.c
//    Command line =  
//        -f C:\Users\19071_~1\AppData\Local\Temp\EWA694.tmp
//        (F:\K60_CAR_2018\lib\peripheral\oled.c -D LPLD_K60 -D USE_K60DZ10
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
//    List file    =  F:\K60_CAR_2018\project\programme\iar\FLASH\List\oled.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN __aeabi_memcpy4
        EXTERN assert_failed
        EXTERN dummy_delay_ms
        EXTERN strlen

        PUBLIC F6x8
        PUBLIC OLED_FULLSCREEN
        PUBLIC OLED__init
        PUBLIC OLED__show_img
        PUBLIC OLED__show_text


        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "F:\\K60_CAR_2018\\lib\\peripheral\\oled.c"
        DC8 0, 0
// F:\K60_CAR_2018\lib\peripheral\oled.c
//    1 #include "oled.h"
//    2 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//    3 const uint8 F6x8[][6] =
F6x8:
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 7, 0, 7, 0, 0, 20, 127
        DC8 20, 127, 20, 0, 36, 42, 127, 42, 18, 0, 98, 100, 8, 19, 35, 0, 54
        DC8 73, 85, 34, 80, 0, 0, 5, 3, 0, 0, 0, 0, 28, 34, 65, 0, 0, 0, 65, 34
        DC8 28, 0, 0, 20, 8, 62, 8, 20, 0, 8, 8, 62, 8, 8, 0, 0, 0, 160, 96, 0
        DC8 0, 8, 8, 8, 8, 8, 0, 0, 96, 96, 0, 0, 0, 32, 16, 8, 4, 2, 0, 62, 81
        DC8 73, 69, 62, 0, 0, 66, 127, 64, 0, 0, 66, 97, 81, 73, 70, 0, 33, 65
        DC8 69, 75, 49, 0, 24, 20, 18, 127, 16, 0, 39, 69, 69, 69, 57, 0, 60
        DC8 74, 73, 73, 48, 0, 1, 113, 9, 5, 3, 0, 54, 73, 73, 73, 54, 0, 6, 73
        DC8 73, 41, 30, 0, 0, 54, 54, 0, 0, 0, 0, 86, 54, 0, 0, 0, 8, 20, 34
        DC8 65, 0, 0, 20, 20, 20, 20, 20, 0, 0, 65, 34, 20, 8, 0, 2, 1, 81, 9
        DC8 6, 0, 50, 73, 89, 81, 62, 0, 124, 18, 17, 18, 124, 0, 127, 73, 73
        DC8 73, 54, 0, 62, 65, 65, 65, 34, 0, 127, 65, 65, 34, 28, 0, 127, 73
        DC8 73, 73, 65, 0, 127, 9, 9, 9, 1, 0, 62, 65, 73, 73, 122, 0, 127, 8
        DC8 8, 8, 127, 0, 0, 65, 127, 65, 0, 0, 32, 64, 65, 63, 1, 0, 127, 8
        DC8 20, 34, 65, 0, 127, 64, 64, 64, 64, 0, 127, 2, 12, 2, 127, 0, 127
        DC8 4, 8, 16, 127, 0, 62, 65, 65, 65, 62, 0, 127, 9, 9, 9, 6, 0, 62, 65
        DC8 81, 33, 94, 0, 127, 9, 25, 41, 70, 0, 70, 73, 73, 73, 49, 0, 1, 1
        DC8 127, 1, 1, 0, 63, 64, 64, 64, 63, 0, 31, 32, 64, 32, 31, 0, 63, 64
        DC8 56, 64, 63, 0, 99, 20, 8, 20, 99, 0, 7, 8, 112, 8, 7, 0, 97, 81, 73
        DC8 69, 67, 0, 0, 127, 65, 65, 0, 0, 85, 42, 85, 42, 85, 0, 0, 65, 65
        DC8 127, 0, 0, 4, 2, 1, 2, 4, 0, 64, 64, 64, 64, 64, 0, 0, 1, 2, 4, 0
        DC8 0, 32, 84, 84, 84, 120, 0, 127, 72, 68, 68, 56, 0, 56, 68, 68, 68
        DC8 32, 0, 56, 68, 68, 72, 127, 0, 56, 84, 84, 84, 24, 0, 8, 126, 9, 1
        DC8 2, 0, 24, 164, 164, 164, 124, 0, 127, 8, 4, 4, 120, 0, 0, 68, 125
        DC8 64, 0, 0, 64, 128, 132, 125, 0, 0, 127, 16, 40, 68, 0, 0, 0, 65
        DC8 127, 64, 0, 0, 124, 4, 24, 4, 120, 0, 124, 8, 4, 4, 120, 0, 56, 68
        DC8 68, 68, 56, 0, 252, 36, 36, 36, 24, 0, 24, 36, 36, 24, 252, 0, 124
        DC8 8, 4, 4, 8, 0, 72, 84, 84, 84, 32, 0, 4, 63, 68, 64, 32, 0, 60, 64
        DC8 64, 32, 124, 0, 28, 32, 64, 32, 28, 0, 60, 64, 48, 64, 60, 0, 68
        DC8 40, 16, 40, 68, 0, 28, 160, 160, 160, 124, 0, 68, 100, 84, 76, 68
        DC8 20, 20, 20, 20, 20, 20
//    4 {
//    5     { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },   // sp
//    6     { 0x00, 0x00, 0x00, 0x2f, 0x00, 0x00 },   // !
//    7     { 0x00, 0x00, 0x07, 0x00, 0x07, 0x00 },   // "
//    8     { 0x00, 0x14, 0x7f, 0x14, 0x7f, 0x14 },   // #
//    9     { 0x00, 0x24, 0x2a, 0x7f, 0x2a, 0x12 },   // $
//   10     { 0x00, 0x62, 0x64, 0x08, 0x13, 0x23 },   // %
//   11     { 0x00, 0x36, 0x49, 0x55, 0x22, 0x50 },   // &
//   12     { 0x00, 0x00, 0x05, 0x03, 0x00, 0x00 },   // '
//   13     { 0x00, 0x00, 0x1c, 0x22, 0x41, 0x00 },   // (
//   14     { 0x00, 0x00, 0x41, 0x22, 0x1c, 0x00 },   // )
//   15     { 0x00, 0x14, 0x08, 0x3E, 0x08, 0x14 },   // *
//   16     { 0x00, 0x08, 0x08, 0x3E, 0x08, 0x08 },   // +
//   17     { 0x00, 0x00, 0x00, 0xA0, 0x60, 0x00 },   // ,
//   18     { 0x00, 0x08, 0x08, 0x08, 0x08, 0x08 },   // -
//   19     { 0x00, 0x00, 0x60, 0x60, 0x00, 0x00 },   // .
//   20     { 0x00, 0x20, 0x10, 0x08, 0x04, 0x02 },   // /
//   21     { 0x00, 0x3E, 0x51, 0x49, 0x45, 0x3E },   // 0
//   22     { 0x00, 0x00, 0x42, 0x7F, 0x40, 0x00 },   // 1
//   23     { 0x00, 0x42, 0x61, 0x51, 0x49, 0x46 },   // 2
//   24     { 0x00, 0x21, 0x41, 0x45, 0x4B, 0x31 },   // 3
//   25     { 0x00, 0x18, 0x14, 0x12, 0x7F, 0x10 },   // 4
//   26     { 0x00, 0x27, 0x45, 0x45, 0x45, 0x39 },   // 5
//   27     { 0x00, 0x3C, 0x4A, 0x49, 0x49, 0x30 },   // 6
//   28     { 0x00, 0x01, 0x71, 0x09, 0x05, 0x03 },   // 7
//   29     { 0x00, 0x36, 0x49, 0x49, 0x49, 0x36 },   // 8
//   30     { 0x00, 0x06, 0x49, 0x49, 0x29, 0x1E },   // 9
//   31     { 0x00, 0x00, 0x36, 0x36, 0x00, 0x00 },   // :
//   32     { 0x00, 0x00, 0x56, 0x36, 0x00, 0x00 },   // ;
//   33     { 0x00, 0x08, 0x14, 0x22, 0x41, 0x00 },   // <
//   34     { 0x00, 0x14, 0x14, 0x14, 0x14, 0x14 },   // =
//   35     { 0x00, 0x00, 0x41, 0x22, 0x14, 0x08 },   // >
//   36     { 0x00, 0x02, 0x01, 0x51, 0x09, 0x06 },   // ?
//   37     { 0x00, 0x32, 0x49, 0x59, 0x51, 0x3E },   // @
//   38     { 0x00, 0x7C, 0x12, 0x11, 0x12, 0x7C },   // A
//   39     { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x36 },   // B
//   40     { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x22 },   // C
//   41     { 0x00, 0x7F, 0x41, 0x41, 0x22, 0x1C },   // D
//   42     { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x41 },   // E
//   43     { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x01 },   // F
//   44     { 0x00, 0x3E, 0x41, 0x49, 0x49, 0x7A },   // G
//   45     { 0x00, 0x7F, 0x08, 0x08, 0x08, 0x7F },   // H
//   46     { 0x00, 0x00, 0x41, 0x7F, 0x41, 0x00 },   // I
//   47     { 0x00, 0x20, 0x40, 0x41, 0x3F, 0x01 },   // J
//   48     { 0x00, 0x7F, 0x08, 0x14, 0x22, 0x41 },   // K
//   49     { 0x00, 0x7F, 0x40, 0x40, 0x40, 0x40 },   // L
//   50     { 0x00, 0x7F, 0x02, 0x0C, 0x02, 0x7F },   // M
//   51     { 0x00, 0x7F, 0x04, 0x08, 0x10, 0x7F },   // N
//   52     { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x3E },   // O
//   53     { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x06 },   // P
//   54     { 0x00, 0x3E, 0x41, 0x51, 0x21, 0x5E },   // Q
//   55     { 0x00, 0x7F, 0x09, 0x19, 0x29, 0x46 },   // R
//   56     { 0x00, 0x46, 0x49, 0x49, 0x49, 0x31 },   // S
//   57     { 0x00, 0x01, 0x01, 0x7F, 0x01, 0x01 },   // T
//   58     { 0x00, 0x3F, 0x40, 0x40, 0x40, 0x3F },   // U
//   59     { 0x00, 0x1F, 0x20, 0x40, 0x20, 0x1F },   // V
//   60     { 0x00, 0x3F, 0x40, 0x38, 0x40, 0x3F },   // W
//   61     { 0x00, 0x63, 0x14, 0x08, 0x14, 0x63 },   // X
//   62     { 0x00, 0x07, 0x08, 0x70, 0x08, 0x07 },   // Y
//   63     { 0x00, 0x61, 0x51, 0x49, 0x45, 0x43 },   // Z
//   64     { 0x00, 0x00, 0x7F, 0x41, 0x41, 0x00 },   // [
//   65     { 0x00, 0x55, 0x2A, 0x55, 0x2A, 0x55 },   // 55
//   66     { 0x00, 0x00, 0x41, 0x41, 0x7F, 0x00 },   // ]
//   67     { 0x00, 0x04, 0x02, 0x01, 0x02, 0x04 },   // ^
//   68     { 0x00, 0x40, 0x40, 0x40, 0x40, 0x40 },   // _
//   69     { 0x00, 0x00, 0x01, 0x02, 0x04, 0x00 },   // '
//   70     { 0x00, 0x20, 0x54, 0x54, 0x54, 0x78 },   // a
//   71     { 0x00, 0x7F, 0x48, 0x44, 0x44, 0x38 },   // b
//   72     { 0x00, 0x38, 0x44, 0x44, 0x44, 0x20 },   // c
//   73     { 0x00, 0x38, 0x44, 0x44, 0x48, 0x7F },   // d
//   74     { 0x00, 0x38, 0x54, 0x54, 0x54, 0x18 },   // e
//   75     { 0x00, 0x08, 0x7E, 0x09, 0x01, 0x02 },   // f
//   76     { 0x00, 0x18, 0xA4, 0xA4, 0xA4, 0x7C },   // g
//   77     { 0x00, 0x7F, 0x08, 0x04, 0x04, 0x78 },   // h
//   78     { 0x00, 0x00, 0x44, 0x7D, 0x40, 0x00 },   // i
//   79     { 0x00, 0x40, 0x80, 0x84, 0x7D, 0x00 },   // j
//   80     { 0x00, 0x7F, 0x10, 0x28, 0x44, 0x00 },   // k
//   81     { 0x00, 0x00, 0x41, 0x7F, 0x40, 0x00 },   // l
//   82     { 0x00, 0x7C, 0x04, 0x18, 0x04, 0x78 },   // m
//   83     { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x78 },   // n
//   84     { 0x00, 0x38, 0x44, 0x44, 0x44, 0x38 },   // o
//   85     { 0x00, 0xFC, 0x24, 0x24, 0x24, 0x18 },   // p
//   86     { 0x00, 0x18, 0x24, 0x24, 0x18, 0xFC },   // q
//   87     { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x08 },   // r
//   88     { 0x00, 0x48, 0x54, 0x54, 0x54, 0x20 },   // s
//   89     { 0x00, 0x04, 0x3F, 0x44, 0x40, 0x20 },   // t
//   90     { 0x00, 0x3C, 0x40, 0x40, 0x20, 0x7C },   // u
//   91     { 0x00, 0x1C, 0x20, 0x40, 0x20, 0x1C },   // v
//   92     { 0x00, 0x3C, 0x40, 0x30, 0x40, 0x3C },   // w
//   93     { 0x00, 0x44, 0x28, 0x10, 0x28, 0x44 },   // x
//   94     { 0x00, 0x1C, 0xA0, 0xA0, 0xA0, 0x7C },   // y
//   95     { 0x00, 0x44, 0x64, 0x54, 0x4C, 0x44 },   // z
//   96     { 0x14, 0x14, 0x14, 0x14, 0x14, 0x14 }    // horiz lines
//   97 };
//   98 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   99 static oled_cfg_t * oc;
oc:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  100 static oled_t * oled;
oled:
        DS8 4

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
//  101 const oled_region_t OLED_FULLSCREEN = {0, 0, OLED_PAGE, OLED_COL};
OLED_FULLSCREEN:
        DC8 0, 0, 8, 128
//  102 
//  103 #define OLED_SCL (_DO(oc->scl))
//  104 #define OLED_SDA (_DO(oc->sda))
//  105 #define OLED_CS (_DO(oc->cs))
//  106 #define OLED_RST (_DO(oc->rst))
//  107 #define OLED_DC (_DO(oc->dc))
//  108 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  109 static void write_data(uint8 data, uint8 flip){
write_data:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  110     uint8 i=8;
        MOVS     R6,#+8
//  111     ASSERT(oled->col < OLED_COL);
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+1]
        CMP      R0,#+128
        BLT.N    ??write_data_0
        MOVS     R1,#+111
        LDR.W    R0,??DataTable7_1
        BL       assert_failed
//  112     OLED_CS=0;
??write_data_0:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+48]
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+56]
        LSLS     R1,R1,#+2
        ADDS     R1,R1,R0, LSL #+5
        ADDS     R1,R1,#+1107296256
        MOVS     R0,#+0
        STR      R0,[R1, #+0]
//  113     OLED_DC=1;
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+36]
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+44]
        LSLS     R1,R1,#+2
        ADDS     R1,R1,R0, LSL #+5
        ADDS     R1,R1,#+1107296256
        MOVS     R0,#+1
        STR      R0,[R1, #+0]
//  114     OLED_SCL=0;
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+8]
        LSLS     R1,R1,#+2
        ADDS     R1,R1,R0, LSL #+5
        ADDS     R1,R1,#+1107296256
        MOVS     R0,#+0
        STR      R0,[R1, #+0]
        B.N      ??write_data_1
//  115     //asm("nop");
//  116     while(i--)
//  117     {
//  118         OLED_SDA = (((data&0x80)?(1):(0)) ^ flip);
??write_data_2:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+20]
        LSLS     R1,R1,#+2
        ADDS     R1,R1,R0, LSL #+5
        ADDS     R1,R1,#+1107296256
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        EORS     R0,R5,R0
        STR      R0,[R1, #+0]
//  119         OLED_SCL=1;asm("nop");asm("nop");OLED_SCL=0;
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+8]
        LSLS     R1,R1,#+2
        ADDS     R1,R1,R0, LSL #+5
        ADDS     R1,R1,#+1107296256
        MOVS     R0,#+1
        STR      R0,[R1, #+0]
        nop
        nop
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+8]
        LSLS     R1,R1,#+2
        ADDS     R1,R1,R0, LSL #+5
        ADDS     R1,R1,#+1107296256
        MOVS     R0,#+0
        STR      R0,[R1, #+0]
//  120         data<<=1;
        LSLS     R4,R4,#+1
//  121     }
??write_data_1:
        MOVS     R0,R6
        SUBS     R6,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??write_data_2
//  122     OLED_CS=1;
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+48]
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+56]
        LSLS     R1,R1,#+2
        ADDS     R1,R1,R0, LSL #+5
        ADDS     R1,R1,#+1107296256
        MOVS     R0,#+1
        STR      R0,[R1, #+0]
//  123     oled->col ++;
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable7
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+1]
//  124 }
        POP      {R4-R6,PC}       ;; return
//  125 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  126 static void write_cmd(uint8 cmd){
write_cmd:
        MOVS     R1,R0
//  127     uint8 i=8;
        MOVS     R2,#+8
//  128     OLED_CS=0;
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+48]
        LDR.W    R3,??DataTable7_2
        LDR      R3,[R3, #+0]
        LDR      R3,[R3, #+56]
        LSLS     R3,R3,#+2
        ADDS     R3,R3,R0, LSL #+5
        ADDS     R3,R3,#+1107296256
        MOVS     R0,#+0
        STR      R0,[R3, #+0]
//  129     OLED_DC=0;
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+36]
        LDR.W    R3,??DataTable7_2
        LDR      R3,[R3, #+0]
        LDR      R3,[R3, #+44]
        LSLS     R3,R3,#+2
        ADDS     R3,R3,R0, LSL #+5
        ADDS     R3,R3,#+1107296256
        MOVS     R0,#+0
        STR      R0,[R3, #+0]
//  130     OLED_SCL=0;
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+0]
        LDR.W    R3,??DataTable7_2
        LDR      R3,[R3, #+0]
        LDR      R3,[R3, #+8]
        LSLS     R3,R3,#+2
        ADDS     R3,R3,R0, LSL #+5
        ADDS     R3,R3,#+1107296256
        MOVS     R0,#+0
        STR      R0,[R3, #+0]
        B.N      ??write_cmd_0
//  131     //asm("nop");
//  132     while(i--)
//  133     {
//  134         OLED_SDA = ((cmd&0x80)?(1):(0));
??write_cmd_1:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        LDR.W    R3,??DataTable7_2
        LDR      R3,[R3, #+0]
        LDR      R3,[R3, #+20]
        LSLS     R3,R3,#+2
        ADDS     R3,R3,R0, LSL #+5
        ADDS     R3,R3,#+1107296256
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R3, #+0]
//  135         OLED_SCL=1;asm("nop");asm("nop");OLED_SCL=0;;
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+0]
        LDR.W    R3,??DataTable7_2
        LDR      R3,[R3, #+0]
        LDR      R3,[R3, #+8]
        LSLS     R3,R3,#+2
        ADDS     R3,R3,R0, LSL #+5
        ADDS     R3,R3,#+1107296256
        MOVS     R0,#+1
        STR      R0,[R3, #+0]
        nop
        nop
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+0]
        LDR.W    R3,??DataTable7_2
        LDR      R3,[R3, #+0]
        LDR      R3,[R3, #+8]
        LSLS     R3,R3,#+2
        ADDS     R3,R3,R0, LSL #+5
        ADDS     R3,R3,#+1107296256
        MOVS     R0,#+0
        STR      R0,[R3, #+0]
//  136         cmd<<=1;
        LSLS     R1,R1,#+1
//  137     }
??write_cmd_0:
        MOVS     R0,R2
        SUBS     R2,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??write_cmd_1
//  138     OLED_CS=1;
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+48]
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+56]
        LSLS     R1,R1,#+2
        ADDS     R1,R1,R0, LSL #+5
        ADDS     R1,R1,#+1107296256
        MOVS     R0,#+1
        STR      R0,[R1, #+0]
//  139 }
        BX       LR               ;; return
//  140 //设置内容开始位置 128col 8page

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  141 static void move_cursor_to(uint8 page, uint8 col){
move_cursor_to:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  142     ASSERT(page < OLED_PAGE && col < OLED_COL);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BGE.N    ??move_cursor_to_0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+128
        BLT.N    ??move_cursor_to_1
??move_cursor_to_0:
        MOVS     R1,#+142
        LDR.W    R0,??DataTable7_1
        BL       assert_failed
//  143     write_cmd(0xb0 + page);
??move_cursor_to_1:
        SUBS     R0,R4,#+80
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       write_cmd
//  144     write_cmd(0x0f & col);
        ANDS     R0,R5,#0xF
        BL       write_cmd
//  145     write_cmd(0x10 | (col >> 4));
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+4
        ORRS     R0,R0,#0x10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       write_cmd
//  146     oled->page = page;
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        STRB     R4,[R0, #+0]
//  147     oled->col = col;
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        STRB     R5,[R0, #+1]
//  148 }
        POP      {R0,R4,R5,PC}    ;; return
//  149 //margin：边框

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  150 static void flush_buffer(oled_region_t * region, boolean show_margin, boolean flip){
flush_buffer:
        PUSH     {R3-R9,LR}
        MOVS     R7,R0
        MOVS     R5,R1
        MOVS     R4,R2
//  151     uint8 page_end = region->page_start + region->page_size;
        LDRB     R8,[R7, #+0]
        LDRB     R0,[R7, #+2]
        ADDS     R8,R0,R8
//  152     uint8 col_end = region->col_start + region->col_size - (show_margin?1:0);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??flush_buffer_0
        MOVS     R9,#+1
        B.N      ??flush_buffer_1
??flush_buffer_0:
        MOVS     R9,#+0
??flush_buffer_1:
        LDRB     R1,[R7, #+1]
        LDRB     R0,[R7, #+3]
        ADDS     R1,R0,R1
        SUBS     R9,R1,R9
//  153     uint8 margin_mask;
//  154     flip = (flip ? 1 : 0);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??flush_buffer_2
        MOVS     R4,#+1
        B.N      ??flush_buffer_3
??flush_buffer_2:
        MOVS     R4,#+0
//  155     for(oled->page = region->page_start;oled->page < page_end; oled->page++){
??flush_buffer_3:
        LDRB     R0,[R7, #+0]
        LDR.W    R1,??DataTable7
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+0]
        B.N      ??flush_buffer_4
//  156 
//  157         move_cursor_to(oled->page, region->col_start);
//  158 
//  159         if(show_margin){
//  160             margin_mask = 0x00;
//  161             if(region->page_start + 1 == page_end) margin_mask = 0x81;
//  162             else if(oled->page == region->page_start) margin_mask = 0x01;
//  163             else if(oled->page + 1 == page_end) margin_mask = 0x80;
//  164             write_data(0xff, 0);
//  165             if(margin_mask){
//  166                 while (oled->col < col_end) write_data(margin_mask | ((oled->buff[oled->page * OLED_COL + oled->col]) ^ (flip?0xff:0)), 0);
//  167             }else{
//  168                 while (oled->col < col_end) write_data(oled->buff[oled->page * OLED_COL + oled->col], flip);
//  169             }
//  170             write_data(0xff, 0);
//  171         }else{
//  172             while (oled->col < col_end) write_data(oled->buff[oled->page * OLED_COL + oled->col], flip);
??flush_buffer_5:
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable7
        LDR      R2,[R0, #+0]
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        LDRB     R3,[R0, #+0]
        MOVS     R6,#+128
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+1]
        MLA      R3,R6,R3,R0
        ADD      R0,R2,R3
        LDRB     R0,[R0, #+2]
        BL       write_data
??flush_buffer_6:
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+1]
        MOV      R1,R9
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCC.N    ??flush_buffer_5
        B.N      ??flush_buffer_7
//  173         }       
??flush_buffer_8:
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable7
        LDR      R2,[R0, #+0]
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        LDRB     R3,[R0, #+0]
        MOVS     R6,#+128
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+1]
        MLA      R3,R6,R3,R0
        ADD      R0,R2,R3
        LDRB     R0,[R0, #+2]
        BL       write_data
??flush_buffer_9:
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+1]
        MOV      R1,R9
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCC.N    ??flush_buffer_8
??flush_buffer_10:
        MOVS     R1,#+0
        MOVS     R0,#+255
        BL       write_data
??flush_buffer_7:
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable7
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+0]
??flush_buffer_4:
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        MOV      R1,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCS.N    ??flush_buffer_11
        LDRB     R1,[R7, #+1]
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        BL       move_cursor_to
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??flush_buffer_6
        MOVS     R6,#+0
        LDRB     R0,[R7, #+0]
        ADDS     R0,R0,#+1
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R0,R8
        BNE.N    ??flush_buffer_12
        MOVS     R6,#+129
        B.N      ??flush_buffer_13
??flush_buffer_12:
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        LDRB     R1,[R7, #+0]
        CMP      R0,R1
        BNE.N    ??flush_buffer_14
        MOVS     R6,#+1
        B.N      ??flush_buffer_13
??flush_buffer_14:
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R0,R8
        BNE.N    ??flush_buffer_13
        MOVS     R6,#+128
??flush_buffer_13:
        MOVS     R1,#+0
        MOVS     R0,#+255
        BL       write_data
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??flush_buffer_9
??flush_buffer_15:
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+1]
        MOV      R1,R9
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCS.N    ??flush_buffer_10
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??flush_buffer_16
??flush_buffer_17:
        MOVS     R0,#+0
        B.N      ??flush_buffer_18
??flush_buffer_16:
        MOVS     R0,#+255
??flush_buffer_18:
        MOVS     R1,#+0
        LDR.W    R2,??DataTable7
        LDR      R3,[R2, #+0]
        LDR.W    R2,??DataTable7
        LDR      R2,[R2, #+0]
        LDRB     R12,[R2, #+0]
        MOVS     LR,#+128
        LDR.W    R2,??DataTable7
        LDR      R2,[R2, #+0]
        LDRB     R2,[R2, #+1]
        MLA      R12,LR,R12,R2
        ADD      R2,R3,R12
        LDRB     R2,[R2, #+2]
        EORS     R0,R0,R2
        ORRS     R0,R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       write_data
        B.N      ??flush_buffer_15
//  174     }
//  175 }
??flush_buffer_11:
        POP      {R0,R4-R9,PC}    ;; return
//  176 
//  177 //填充屏幕 data 8位数据用于填充一页中的一列

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  178 static void fill_with(const oled_region_t * region, uint8 data){
fill_with:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  179     uint8 page_end = region->page_start + region->page_size;
        LDRB     R6,[R4, #+0]
        LDRB     R0,[R4, #+2]
        ADDS     R6,R0,R6
//  180     uint8 col_end = region->col_start + region->col_size;
        LDRB     R7,[R4, #+1]
        LDRB     R0,[R4, #+3]
        ADDS     R7,R0,R7
//  181     for(oled->page = region->page_start;oled->page < page_end; oled->page++){
        LDRB     R0,[R4, #+0]
        LDR.W    R1,??DataTable7
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+0]
        B.N      ??fill_with_0
//  182         move_cursor_to(oled->page, region->col_start);
//  183         while (oled->col < col_end) write_data(data, 0);
??fill_with_1:
        MOVS     R1,#+0
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       write_data
??fill_with_2:
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+1]
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCC.N    ??fill_with_1
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable7
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+0]
??fill_with_0:
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCS.N    ??fill_with_3
        LDRB     R1,[R4, #+1]
        LDR.W    R0,??DataTable7
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        BL       move_cursor_to
        B.N      ??fill_with_2
//  184     }
//  185 }
??fill_with_3:
        POP      {R0,R4-R7,PC}    ;; return
//  186 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  187 static void load_image(oled_region_t * region, image_region_t * imgroi){
load_image:
        PUSH     {R4-R8,LR}
        MOVS     R2,R0
//  188     uint8 page, col, i;
//  189 
//  190     for(page = 0; page < region->page_size; page++){
        MOVS     R3,#+0
        B.N      ??load_image_0
??load_image_1:
        ADDS     R3,R3,#+1
??load_image_0:
        MOVS     R0,R3
        LDRB     R4,[R2, #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,R4
        BCS.N    ??load_image_2
//  191         for(col = 0; col < region->col_size; col++){
        MOVS     R4,#+0
        B.N      ??load_image_3
??load_image_4:
        ADDS     R4,R4,#+1
??load_image_3:
        MOVS     R0,R4
        LDRB     R5,[R2, #+3]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,R5
        BCS.N    ??load_image_1
//  192             region_idx(region, page, col) = 0;//清零
        LDR.N    R0,??DataTable7
        LDR      R5,[R0, #+0]
        LDRB     R0,[R2, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTAB    R6,R3,R0
        MOVS     R7,#+128
        LDRB     R0,[R2, #+1]
        MLA      R6,R7,R6,R0
        UXTAB    R0,R6,R4
        ADD      R0,R5,R0
        MOVS     R5,#+0
        STRB     R5,[R0, #+2]
//  193             for(i=0; i<8; i++){
        MOVS     R5,#+0
??load_image_5:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BGE.N    ??load_image_4
//  194                 if(page*8+i < imgroi->row_size && col < imgroi->col_size){
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R5,R3, LSL #+3
        LDRSH    R6,[R1, #+2]
        CMP      R0,R6
        BGE.N    ??load_image_6
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRSH    R6,[R1, #+6]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        CMP      R0,R6
        BGE.N    ??load_image_6
//  195                     region_idx(region, page, col) |= ((imgroi)->data[(imgroi)->ncols * ((imgroi)->row_start + page*8+i) + (imgroi)->col_start + col]) ? (0x01<<i):(0);
        LDR      R6,[R1, #+12]
        LDRSH    R7,[R1, #+10]
        LDRSH    R0,[R1, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LSLS     R12,R3,#+3
        SXTAH    R0,R12,R0
        UXTAB    R12,R0,R5
        LDRSH    R0,[R1, #+4]
        MLA      R7,R12,R7,R0
        UXTAB    R0,R7,R4
        LDRB     R0,[R6, R0]
        CMP      R0,#+0
        BNE.N    ??load_image_7
??load_image_8:
        MOVS     R6,#+0
        B.N      ??load_image_9
??load_image_7:
        MOVS     R6,#+1
        LSLS     R6,R6,R5
??load_image_9:
        LDR.N    R0,??DataTable7
        LDR      R7,[R0, #+0]
        LDRB     R0,[R2, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTAB    R12,R3,R0
        MOVS     LR,#+128
        LDRB     R0,[R2, #+1]
        MLA      R12,LR,R12,R0
        UXTAB    R0,R12,R4
        ADD      R7,R7,R0
        LDR.N    R0,??DataTable7
        LDR      R12,[R0, #+0]
        LDRB     R0,[R2, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTAB    LR,R3,R0
        MOVS     R8,#+128
        LDRB     R0,[R2, #+1]
        MLA      LR,R8,LR,R0
        UXTAB    R0,LR,R4
        ADD      R0,R12,R0
        LDRB     R0,[R0, #+2]
        ORRS     R6,R6,R0
        STRB     R6,[R7, #+2]
//  196                 }
//  197             }
??load_image_6:
        ADDS     R5,R5,#+1
        B.N      ??load_image_5
//  198         }
//  199     }
//  200 }
??load_image_2:
        POP      {R4-R8,PC}       ;; return
//  201 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  202 static void load_text(oled_region_t * region, char * text){
load_text:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  203     uint8 * textend = text + strlen(text);
        MOVS     R0,R5
        BL       strlen
        ADD      R1,R5,R0
//  204     uint8 col_size = region->col_size /6 * 6;
        LDRB     R0,[R4, #+3]
        MOVS     R2,#+6
        SDIV     R2,R0,R2
        MOVS     R0,#+6
        MULS     R2,R0,R2
//  205     uint8 page, col, i, ch;
//  206     for(page = 0; page < region->page_size; page++){
        MOVS     R3,#+0
        B.N      ??load_text_0
//  207         for(col = 0; col < col_size; ){
//  208             if(text < textend){
//  209                 ch = *text++ - 32;
//  210                 for(i=0;i<6;i++){
//  211                     region_idx(region, page, col++) = F6x8[ch][i];
//  212                 }
//  213             }else{
//  214                 region_idx(region, page, col++) = 0;
//  215             }
//  216         }
//  217         for(;col < region->col_size;)
//  218             region_idx(region, page, col++) = 0;
??load_text_1:
        LDR.N    R0,??DataTable7
        LDR      R7,[R0, #+0]
        LDRB     R0,[R4, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTAB    R12,R3,R0
        MOVS     LR,#+128
        LDRB     R0,[R4, #+1]
        MLA      R12,LR,R12,R0
        UXTAB    R0,R12,R6
        ADD      R0,R7,R0
        MOVS     R7,#+0
        STRB     R7,[R0, #+2]
        ADDS     R6,R6,#+1
??load_text_2:
        MOVS     R0,R6
        LDRB     R7,[R4, #+3]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,R7
        BCC.N    ??load_text_1
        ADDS     R3,R3,#+1
??load_text_0:
        MOVS     R0,R3
        LDRB     R6,[R4, #+2]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,R6
        BCS.N    ??load_text_3
        MOVS     R6,#+0
        B.N      ??load_text_4
??load_text_5:
        LDR.N    R0,??DataTable7
        LDR      R7,[R0, #+0]
        LDRB     R0,[R4, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTAB    R12,R3,R0
        MOVS     LR,#+128
        LDRB     R0,[R4, #+1]
        MLA      R12,LR,R12,R0
        UXTAB    R0,R12,R6
        ADD      R0,R7,R0
        MOVS     R7,#+0
        STRB     R7,[R0, #+2]
        ADDS     R6,R6,#+1
??load_text_4:
        MOVS     R0,R6
        MOVS     R7,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R0,R7
        BCS.N    ??load_text_2
        CMP      R5,R1
        BCS.N    ??load_text_5
        LDRB     R0,[R5, #+0]
        SUBS     R7,R0,#+32
        ADDS     R5,R5,#+1
        MOVS     R12,#+0
??load_text_6:
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        CMP      R12,#+6
        BGE.N    ??load_text_4
        LDR.N    R0,??DataTable7
        LDR      LR,[R0, #+0]
        LDRB     R0,[R4, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTAB    R8,R3,R0
        MOVS     R9,#+128
        LDRB     R0,[R4, #+1]
        MLA      R8,R9,R8,R0
        UXTAB    R0,R8,R6
        ADD      R0,LR,R0
        LDR.W    LR,??DataTable7_3
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R8,#+6
        MUL      R8,R8,R7
        ADD      LR,LR,R8
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        LDRB     LR,[LR, R12]
        STRB     LR,[R0, #+2]
        ADDS     R6,R6,#+1
        ADDS     R12,R12,#+1
        B.N      ??load_text_6
//  219     }
//  220 }
??load_text_3:
        POP      {R0,R4-R9,PC}    ;; return
//  221 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  222 void OLED__show_img(oled_region_t * region, image_region_t * imgroi, boolean show_margin, boolean flip){
OLED__show_img:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R2
        MOVS     R6,R3
//  223     load_image(region, imgroi);
        MOVS     R0,R4
        BL       load_image
//  224     flush_buffer(region, show_margin, flip);
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       flush_buffer
//  225 }
        POP      {R4-R6,PC}       ;; return
//  226 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  227 void OLED__show_text(oled_region_t * region, char * text, boolean show_margin, boolean flip){
OLED__show_text:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R2
        MOVS     R6,R3
//  228     load_text(region, text);
        MOVS     R0,R4
        BL       load_text
//  229     flush_buffer(region, show_margin, flip);
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       flush_buffer
//  230 }
        POP      {R4-R6,PC}       ;; return
//  231 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  232 void OLED__init(oled_cfg_t * oc_usr, oled_t * oled_usr){
OLED__init:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+28
//  233     GPIO_InitTypeDef init_gpio;
//  234     gpio_cfg_t * iostart, * ioend;
//  235     const uint8 oclen = sizeof(oled_cfg_t)/sizeof(gpio_cfg_t);
        MOVS     R2,#+5
//  236     
//  237     oc = oc_usr;
        LDR.N    R3,??DataTable7_2
        STR      R0,[R3, #+0]
//  238     oled = oled_usr;
        LDR.N    R0,??DataTable7
        STR      R1,[R0, #+0]
//  239 
//  240     // 鍒濆鍖?OLED 寮曡剼
//  241     init_gpio.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  242     init_gpio.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//  243     init_gpio.GPIO_PinControl = IRQC_DIS;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  244     for(iostart = (gpio_cfg_t*)oc, ioend = iostart + oclen; iostart!=ioend; iostart++){
        LDR.N    R0,??DataTable7_2
        LDR      R4,[R0, #+0]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R0,#+12
        MULS     R2,R0,R2
        ADD      R5,R4,R2
        B.N      ??OLED__init_0
//  245         init_gpio.GPIO_PTx = iostart->PTx;
??OLED__init_1:
        LDR      R0,[R4, #+0]
        STR      R0,[SP, #+4]
//  246         init_gpio.GPIO_Pins = iostart->GPIO_Pinn;
        LDR      R0,[R4, #+4]
        STR      R0,[SP, #+8]
//  247         LPLD_GPIO_Init(init_gpio);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  248     }
        ADDS     R4,R4,#+12
??OLED__init_0:
        CMP      R4,R5
        BNE.N    ??OLED__init_1
//  249 
//  250     // 閲嶇疆 OLED 鍙傛暟
//  251     OLED_SCL=1;
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+8]
        LSLS     R1,R1,#+2
        ADDS     R1,R1,R0, LSL #+5
        ADDS     R1,R1,#+1107296256
        MOVS     R0,#+1
        STR      R0,[R1, #+0]
//  252     OLED_CS=0;
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+48]
        LDR.N    R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+56]
        LSLS     R1,R1,#+2
        ADDS     R1,R1,R0, LSL #+5
        ADDS     R1,R1,#+1107296256
        MOVS     R0,#+0
        STR      R0,[R1, #+0]
//  253     OLED_RST=0;
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+32]
        LSLS     R1,R1,#+2
        ADDS     R1,R1,R0, LSL #+5
        ADDS     R1,R1,#+1107296256
        MOVS     R0,#+0
        STR      R0,[R1, #+0]
//  254     dummy_delay_ms(50);
        MOVS     R0,#+50
        BL       dummy_delay_ms
//  255     OLED_RST=1;
        LDR.N    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+32]
        LSLS     R1,R1,#+2
        ADDS     R1,R1,R0, LSL #+5
        ADDS     R1,R1,#+1107296256
        MOVS     R0,#+1
        STR      R0,[R1, #+0]
//  256 
//  257     write_cmd(0xae);//--turn off oled panel
        MOVS     R0,#+174
        BL       write_cmd
//  258     write_cmd(0x00);//--set low column address
        MOVS     R0,#+0
        BL       write_cmd
//  259     write_cmd(0x10);//--set high column address
        MOVS     R0,#+16
        BL       write_cmd
//  260     write_cmd(0x40);//--set start line address  Set Mapping RAM Display Start Line (0x00~0x3F)
        MOVS     R0,#+64
        BL       write_cmd
//  261     write_cmd(0x81);//--set contrast control register
        MOVS     R0,#+129
        BL       write_cmd
//  262     write_cmd(0xcf);//--Set SEG Output Current Brightness
        MOVS     R0,#+207
        BL       write_cmd
//  263     write_cmd(0xa1);//--Set SEG/Column Mapping     0xa0宸﹀彸鍙嶇疆 0xa1姝ｅ父
        MOVS     R0,#+161
        BL       write_cmd
//  264     write_cmd(0xc8);//--Set COM/Row Scan Direction   0xc0涓婁笅鍙嶇疆 0xc8姝ｅ父
        MOVS     R0,#+200
        BL       write_cmd
//  265     write_cmd(0xa6);//--set normal display
        MOVS     R0,#+166
        BL       write_cmd
//  266     write_cmd(0xa8);//--set multiplex ratio(1 to 64)
        MOVS     R0,#+168
        BL       write_cmd
//  267     write_cmd(0x3f);//--1/64 duty
        MOVS     R0,#+63
        BL       write_cmd
//  268     write_cmd(0xd3);//--set display offset  Shift Mapping RAM Counter (0x00~0x3F)
        MOVS     R0,#+211
        BL       write_cmd
//  269     write_cmd(0x00);//--not offset
        MOVS     R0,#+0
        BL       write_cmd
//  270     write_cmd(0xd5);//--set display clock divide ratio/oscillator frequency
        MOVS     R0,#+213
        BL       write_cmd
//  271     write_cmd(0x80);//--set divide ratio, Set Clock as 100 Frames/Sec
        MOVS     R0,#+128
        BL       write_cmd
//  272     write_cmd(0xd9);//--set pre-charge period
        MOVS     R0,#+217
        BL       write_cmd
//  273     write_cmd(0xf1);//Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
        MOVS     R0,#+241
        BL       write_cmd
//  274     write_cmd(0xda);//--set com pins hardware configuration
        MOVS     R0,#+218
        BL       write_cmd
//  275     write_cmd(0x12);
        MOVS     R0,#+18
        BL       write_cmd
//  276     write_cmd(0xdb);//--set vcomh
        MOVS     R0,#+219
        BL       write_cmd
//  277     write_cmd(0x40);//Set VCOM Deselect Level
        MOVS     R0,#+64
        BL       write_cmd
//  278     write_cmd(0x20);//-Set Page Addressing Mode (0x00/0x01/0x02)
        MOVS     R0,#+32
        BL       write_cmd
//  279     write_cmd(0x02);//
        MOVS     R0,#+2
        BL       write_cmd
//  280     write_cmd(0x8d);//--set Charge Pump enable/disable
        MOVS     R0,#+141
        BL       write_cmd
//  281     write_cmd(0x14);//--set(0x10) disable
        MOVS     R0,#+20
        BL       write_cmd
//  282     write_cmd(0xa4);// Disable Entire Display On (0xa4/0xa5)
        MOVS     R0,#+164
        BL       write_cmd
//  283     write_cmd(0xa6);// Disable Inverse Display On (0xa6/a7)
        MOVS     R0,#+166
        BL       write_cmd
//  284     write_cmd(0xaf);//--turn on oled panel
        MOVS     R0,#+175
        BL       write_cmd
//  285 
//  286     // 鍒濆娓呭睆
//  287     fill_with(&OLED_FULLSCREEN, 0x00);
        MOVS     R1,#+0
        LDR.N    R0,??DataTable7_4
        BL       fill_with
//  288 }
        ADD      SP,SP,#+28
        POP      {R4,R5,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     oled

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     oc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     F6x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     OLED_FULLSCREEN

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//     8 bytes in section .bss
//   596 bytes in section .rodata
// 2 032 bytes in section .text
// 
// 2 032 bytes of CODE  memory
//   596 bytes of CONST memory
//     8 bytes of DATA  memory
//
//Errors: none
//Warnings: 3
