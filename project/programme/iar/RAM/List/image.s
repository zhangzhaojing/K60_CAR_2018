///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.10.1.12857/W32 for ARM      29/Jan/2018  14:27:47
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  F:\K60_CAR_2018\lib\peripheral\image.c
//    Command line =  
//        -f C:\Users\19071_~1\AppData\Local\Temp\EW90E2.tmp
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

        PUBLIC compressed__free
        PUBLIC compressed__malloc
        PUBLIC image__compress
        PUBLIC image__create
        PUBLIC image__free
        PUBLIC image__uncompress

// F:\K60_CAR_2018\lib\peripheral\image.c
//    1 #include "image.h"
//    2 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    3 void image__create(image_t * img,int16_t nrows,int16_t ncols){
image__create:
        PUSH     {R4,LR}
        MOVS     R4,R0
//    4     img->nrows=nrows;
        STRH     R1,[R4, #+0]
//    5     img->ncols=ncols;
        STRH     R2,[R4, #+2]
//    6     img->data=malloc(sizeof(uint8_t) *nrows*ncols);
        SMULBB   R0,R1,R2
        BL       malloc
        STR      R0,[R4, #+4]
//    7 }
        POP      {R4,PC}          ;; return
//    8 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    9 void image__free(image_t *img){
image__free:
        PUSH     {R7,LR}
//   10     img->nrows=0;
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//   11     img->ncols=0;
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
//   12     free(img->data);
        LDR      R0,[R0, #+4]
        BL       free
//   13 }
        POP      {R0,PC}          ;; return
//   14 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   15 void compressed__malloc(image_t * img , int16_t nrows , int16_t ncols){
compressed__malloc:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   16     img->nrows=nrows;
        STRH     R1,[R4, #+0]
//   17     img->ncols=ncols;
        STRH     R2,[R4, #+2]
//   18     img->data=malloc(sizeof(uint8_t) *nrows*ncols/8);
        SMULBB   R0,R1,R2
        LSRS     R0,R0,#+3
        BL       malloc
        STR      R0,[R4, #+4]
//   19 }
        POP      {R4,PC}          ;; return
//   20 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 void compressed__free(image_t * img){
compressed__free:
        PUSH     {R7,LR}
//   22     img->nrows=0;
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//   23     img->ncols=0;
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
//   24     free(img->data);
        LDR      R0,[R0, #+4]
        BL       free
//   25 }
        POP      {R0,PC}          ;; return
//   26 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   27 void image__uncompress(compressed_t *com, image_t *img)
//   28 {
image__uncompress:
        PUSH     {R4-R9,LR}
//   29 	uint16_t row, col, rstep, cstep;
//   30 	
//   31 	if(com->nrows > img->nrows) rstep = com->nrows / img->nrows; else rstep = 1;
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
//   32 	if(com->ncols > img->ncols) cstep = com->ncols / img->ncols; else cstep = 1;
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
//   33 
//   34 	for (row = 0; row < img->nrows && row * rstep < com->nrows; row++)
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
//   35 		for (col = 0; col < img->ncols && col * cstep < com->ncols; col++)
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
//   36 			img->data[row*img->ncols+col] = (compressed__idx(com, row*rstep, col*cstep)?0xff:0);
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
//   37 }
??image__uncompress_6:
        POP      {R4-R9,PC}       ;; return
//   38 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   39 void image__compress(compressed_t *com, image_t * img)
//   40 {
image__compress:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   41 	uint16_t row, col;
//   42 	ASSERT(com->nrows == img->nrows && com->ncols && img->ncols);
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
        MOVS     R1,#+42
        LDR.N    R0,??DataTable1
        BL       assert_failed
//   43 	for(row = 0; row < img->nrows; row++){
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
//   44 		for(col = 0; col<img->ncols; col++){
        MOVS     R0,#+0
??image__compress_5:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        LDRSH    R1,[R5, #+2]
        CMP      R0,R1
        BGE.N    ??image__compress_3
//   45 			if(img->data[row*img->ncols+col]) compressed__set(com, row, col);
        LDR      R1,[R5, #+4]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LDRSH    R3,[R5, #+2]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MLA      R3,R3,R2,R0
        LDRB     R1,[R1, R3]
        CMP      R1,#+0
        BNE.N    ??image__compress_6
//   46 			else compressed__clr(com, row, col);
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
//   47 		}
??image__compress_8:
        ADDS     R0,R0,#+1
        B.N      ??image__compress_5
//   48 	}
//   49 }
??image__compress_4:
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
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
// 546 bytes in section .text
// 
// 546 bytes of CODE  memory
//  40 bytes of CONST memory
//
//Errors: none
//Warnings: none
