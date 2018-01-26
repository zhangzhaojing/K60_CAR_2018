///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.10.1.12857/W32 for ARM      25/Jan/2018  20:01:47
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  F:\K60_CAR_2018\lib\peripheral\image.c
//    Command line =  
//        -f C:\Users\19071_~1\AppData\Local\Temp\EW7EE1.tmp
//        (F:\K60_CAR_2018\lib\peripheral\image.c -D LPLD_K60 -D USE_K60DZ10
//        -lCN F:\K60_CAR_2018\project\programme\iar\RAM\List -lB
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
//    List file    =  F:\K60_CAR_2018\project\programme\iar\RAM\List\image.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed
        EXTERN free
        EXTERN malloc

        PUBLIC compressed__ctor
        PUBLIC compressed__dtor
        PUBLIC image__compress
        PUBLIC image__ctor
        PUBLIC image__dtor
        PUBLIC image__uncompress

// F:\K60_CAR_2018\lib\peripheral\image.c
//    1 #include "image.h"
//    2 #ifdef LPLD_K60
//    3 #include "common.h"
//    4 #else
//    5 #include <stdio.h>
//    6 #include <stdlib.h>
//    7 #include <string.h>
//    8 #include <assert.h>
//    9 #define ASSERT(x) assert(x)
//   10 #endif

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   11 void image__ctor(image_t * img, int16_t nrows, int16_t ncols)
//   12 {
image__ctor:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   13 	ASSERT(img->nrows == 0 && img->ncols == 0 && img->data == 0);
        LDRSH    R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??image__ctor_0
        LDRSH    R0,[R4, #+2]
        CMP      R0,#+0
        BNE.N    ??image__ctor_0
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BEQ.N    ??image__ctor_1
??image__ctor_0:
        MOVS     R1,#+13
        LDR.N    R0,??DataTable4
        BL       assert_failed
//   14 	img->nrows = nrows;
??image__ctor_1:
        STRH     R5,[R4, #+0]
//   15 	img->ncols = ncols;
        STRH     R6,[R4, #+2]
//   16 	img->data = malloc(sizeof(uint8_t) * nrows * ncols);
        SMULBB   R0,R5,R6
        BL       malloc
        STR      R0,[R4, #+4]
//   17 }
        POP      {R4-R6,PC}       ;; return
//   18 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   19 void image__dtor(image_t *img){
image__dtor:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   20 	ASSERT(img->nrows && img->ncols && img->data);
        LDRSH    R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??image__dtor_0
        LDRSH    R0,[R4, #+2]
        CMP      R0,#+0
        BEQ.N    ??image__dtor_0
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BNE.N    ??image__dtor_1
??image__dtor_0:
        MOVS     R1,#+20
        LDR.N    R0,??DataTable4
        BL       assert_failed
//   21 	img->nrows = 0;
??image__dtor_1:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
//   22 	img->ncols = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+2]
//   23 	free(img->data);
        LDR      R0,[R4, #+4]
        BL       free
//   24 }
        POP      {R4,PC}          ;; return
//   25 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   26 void compressed__ctor(compressed_t * img, int16_t nrows, int16_t ncols)
//   27 {
compressed__ctor:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   28 	ASSERT(img->nrows == 0 && img->ncols == 0 && img->data == 0);
        LDRSH    R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??compressed__ctor_0
        LDRSH    R0,[R4, #+2]
        CMP      R0,#+0
        BNE.N    ??compressed__ctor_0
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BEQ.N    ??compressed__ctor_1
??compressed__ctor_0:
        MOVS     R1,#+28
        LDR.N    R0,??DataTable4
        BL       assert_failed
//   29 	img->nrows = nrows;
??compressed__ctor_1:
        STRH     R5,[R4, #+0]
//   30 	img->ncols = ncols;
        STRH     R6,[R4, #+2]
//   31 	img->data = malloc(sizeof(uint8_t) * nrows * ncols / 8);
        SMULBB   R0,R5,R6
        LSRS     R0,R0,#+3
        BL       malloc
        STR      R0,[R4, #+4]
//   32 }
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   33 void compressed__dtor(compressed_t * img)
//   34 {
compressed__dtor:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   35 	ASSERT(img->nrows && img->ncols && img->data);
        LDRSH    R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??compressed__dtor_0
        LDRSH    R0,[R4, #+2]
        CMP      R0,#+0
        BEQ.N    ??compressed__dtor_0
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BNE.N    ??compressed__dtor_1
??compressed__dtor_0:
        MOVS     R1,#+35
        LDR.N    R0,??DataTable4
        BL       assert_failed
//   36 	img->nrows = 0;
??compressed__dtor_1:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
//   37 	img->ncols = 0;
        MOVS     R0,#+0
        STRH     R0,[R4, #+2]
//   38 	free(img->data);
        LDR      R0,[R4, #+4]
        BL       free
//   39 }
        POP      {R4,PC}          ;; return
//   40 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   41 void image__uncompress(compressed_t * com, image_t * img)
//   42 {
image__uncompress:
        PUSH     {R4-R9,LR}
//   43 	uint16_t row, col, rstep, cstep;
//   44 	
//   45 	if(com->nrows > img->nrows) rstep = com->nrows / img->nrows; else rstep = 1;
        LDRSH    R2,[R1, #+0]
        LDRSH    R3,[R0, #+0]
        CMP      R2,R3
        BGE.N    ??image__uncompress_0
        LDRSH    R2,[R0, #+0]
        LDRSH    R3,[R1, #+0]
        SDIV     R3,R2,R3
        B.N      ??image__uncompress_1
??image__uncompress_0:
        MOVS     R3,#+1
//   46 	if(com->ncols > img->ncols) cstep = com->ncols / img->ncols; else cstep = 1;
??image__uncompress_1:
        LDRSH    R2,[R1, #+2]
        LDRSH    R4,[R0, #+2]
        CMP      R2,R4
        BGE.N    ??image__uncompress_2
        LDRSH    R2,[R0, #+2]
        LDRSH    R4,[R1, #+2]
        SDIV     R4,R2,R4
        B.N      ??image__uncompress_3
??image__uncompress_2:
        MOVS     R4,#+1
//   47 
//   48 	for (row = 0; row < img->nrows && row * rstep < com->nrows; row++)
??image__uncompress_3:
        MOVS     R5,#+0
        B.N      ??image__uncompress_4
??image__uncompress_5:
        ADDS     R5,R5,#+1
??image__uncompress_4:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LDRSH    R2,[R1, #+0]
        CMP      R5,R2
        BGE.N    ??image__uncompress_6
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MUL      R2,R3,R5
        LDRSH    R6,[R0, #+0]
        CMP      R2,R6
        BGE.N    ??image__uncompress_6
//   49 		for (col = 0; col < img->ncols && col * cstep < com->ncols; col++)
        MOVS     R6,#+0
??image__uncompress_7:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        LDRSH    R2,[R1, #+2]
        CMP      R6,R2
        BGE.N    ??image__uncompress_5
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MUL      R2,R4,R6
        LDRSH    R7,[R0, #+2]
        CMP      R2,R7
        BGE.N    ??image__uncompress_5
//   50 			img->data[row*img->ncols+col] = (compressed__idx(com, row*rstep, col*cstep)?0xff:0);
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MUL      R7,R4,R6
        MOVS     R12,#+8
        LDR      LR,[R0, #+4]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MUL      R8,R3,R5
        LDRSH    R9,[R0, #+2]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MUL      R2,R4,R6
        MLA      R8,R9,R8,R2
        ASRS     R8,R8,#+3
        LDRB     R2,[LR, R8]
        MOVS     LR,#+128
        SDIV     R8,R7,R12
        MLS      R7,R12,R8,R7
        ASRS     LR,LR,R7
        TST      R2,LR
        BNE.N    ??image__uncompress_8
??image__uncompress_9:
        MOVS     R2,#+0
        B.N      ??image__uncompress_10
??image__uncompress_8:
        MOVS     R2,#+255
??image__uncompress_10:
        LDR      R7,[R1, #+4]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LDRSH    R12,[R1, #+2]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MLA      R12,R12,R5,R6
        STRB     R2,[R7, R12]
        ADDS     R6,R6,#+1
        B.N      ??image__uncompress_7
//   51 }
??image__uncompress_6:
        POP      {R4-R9,PC}       ;; return
//   52 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   53 void image__compress(compressed_t *com, image_t * img){
image__compress:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   54 	uint16_t row, col;
//   55 	ASSERT(com->nrows == img->nrows && com->ncols && img->ncols);
        LDRSH    R0,[R4, #+0]
        LDRSH    R1,[R5, #+0]
        CMP      R0,R1
        BNE.N    ??image__compress_0
        LDRSH    R0,[R4, #+2]
        CMP      R0,#+0
        BEQ.N    ??image__compress_0
        LDRSH    R0,[R5, #+2]
        CMP      R0,#+0
        BNE.N    ??image__compress_1
??image__compress_0:
        MOVS     R1,#+55
        LDR.N    R0,??DataTable4
        BL       assert_failed
//   56 	for(row = 0; row < img->nrows; row++){
??image__compress_1:
        MOVS     R2,#+0
        B.N      ??image__compress_2
??image__compress_3:
        ADDS     R2,R2,#+1
??image__compress_2:
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LDRSH    R0,[R5, #+0]
        CMP      R2,R0
        BGE.N    ??image__compress_4
//   57 		for(col = 0; col<img->ncols; col++){
        MOVS     R0,#+0
??image__compress_5:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDRSH    R1,[R5, #+2]
        CMP      R0,R1
        BGE.N    ??image__compress_3
//   58 			if(img->data[row*img->ncols+col]) compressed__set(com, row, col);
        LDR      R1,[R5, #+4]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LDRSH    R3,[R5, #+2]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MLA      R3,R3,R2,R0
        LDRB     R1,[R1, R3]
        CMP      R1,#+0
        BNE.N    ??image__compress_6
//   59 			else compressed__clr(com, row, col);
??image__compress_7:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R1,R0
        MOVS     R3,#+8
        LDR      R6,[R4, #+4]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LDRSH    R7,[R4, #+2]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MLA      R7,R7,R2,R0
        ASRS     R7,R7,#+3
        LDR      R12,[R4, #+4]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LDRSH    LR,[R4, #+2]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MLA      LR,LR,R2,R0
        ASRS     LR,LR,#+3
        LDRB     R12,[R12, LR]
        MOVS     LR,#+128
        SDIV     R8,R1,R3
        MLS      R1,R3,R8,R1
        ASRS     LR,LR,R1
        BICS     R12,R12,LR
        STRB     R12,[R6, R7]
        B.N      ??image__compress_8
??image__compress_6:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R1,R0
        MOVS     R3,#+8
        LDR      R6,[R4, #+4]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LDRSH    R7,[R4, #+2]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MLA      R7,R7,R2,R0
        ASRS     R7,R7,#+3
        LDR      R12,[R4, #+4]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LDRSH    LR,[R4, #+2]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MLA      LR,LR,R2,R0
        ASRS     LR,LR,#+3
        LDRB     R12,[R12, LR]
        MOVS     LR,#+128
        SDIV     R8,R1,R3
        MLS      R1,R3,R8,R1
        ASRS     LR,LR,R1
        ORRS     R12,LR,R12
        STRB     R12,[R6, R7]
//   60 		}
??image__compress_8:
        ADDS     R0,R0,#+1
        B.N      ??image__compress_5
//   61 	}
//   62 }
??image__compress_4:
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     ?_0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "F:\\K60_CAR_2018\\lib\\peripheral\\image.c"
        DC8 0

        END
// 
//  40 bytes in section .rodata
// 678 bytes in section .text
// 
// 678 bytes of CODE  memory
//  40 bytes of CONST memory
//
//Errors: none
//Warnings: none
