///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.10.1.12857/W32 for ARM      25/Jan/2018  20:01:45
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  F:\K60_CAR_2018\lib\peripheral\camera.c
//    Command line =  
//        -f C:\Users\19071_~1\AppData\Local\Temp\EW74E4.tmp
//        (F:\K60_CAR_2018\lib\peripheral\camera.c -D LPLD_K60 -D USE_K60DZ10
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
//    List file    =  F:\K60_CAR_2018\project\programme\iar\RAM\List\camera.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_DMA_EnableIrq
        EXTERN LPLD_DMA_Init
        EXTERN LPLD_GPIO_Init
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy4
        EXTERN assert_failed

        PUBLIC camera__config
        PUBLIC camera__take_a_photo_please

// F:\K60_CAR_2018\lib\peripheral\camera.c
//    1 #include "camera.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_EnableIRQ(IRQn_Type)
__NVIC_EnableIRQ:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BMI.N    ??__NVIC_EnableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.W    R1,??DataTable6  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R2,[R1, R0, LSL #+2]
??__NVIC_EnableIRQ_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_DisableIRQ(IRQn_Type)
__NVIC_DisableIRQ:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BMI.N    ??__NVIC_DisableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.W    R1,??DataTable6_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R2,[R1, R0, LSL #+2]
??__NVIC_DisableIRQ_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_SetPriority(IRQn_Type, uint32_t)
__NVIC_SetPriority:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BMI.N    ??__NVIC_SetPriority_0
        LSLS     R1,R1,#+4
        LDR.W    R2,??DataTable6_2  ;; 0xe000e400
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        STRB     R1,[R2, R0]
        B.N      ??__NVIC_SetPriority_1
??__NVIC_SetPriority_0:
        LSLS     R1,R1,#+4
        LDR.W    R2,??DataTable6_3  ;; 0xe000ed18
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0xF
        ADD      R0,R2,R0
        STRB     R1,[R0, #-4]
??__NVIC_SetPriority_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp uint32_t NVIC_EncodePriority(uint32_t, uint32_t, uint32_t)
NVIC_EncodePriority:
        PUSH     {R4}
        ANDS     R0,R0,#0x7
        RSBS     R3,R0,#+7
        CMP      R3,#+5
        BCC.N    ??NVIC_EncodePriority_0
        MOVS     R3,#+4
        B.N      ??NVIC_EncodePriority_1
??NVIC_EncodePriority_0:
        RSBS     R3,R0,#+7
??NVIC_EncodePriority_1:
        ADDS     R4,R0,#+4
        CMP      R4,#+7
        BCS.N    ??NVIC_EncodePriority_2
        MOVS     R0,#+0
        B.N      ??NVIC_EncodePriority_3
??NVIC_EncodePriority_2:
        SUBS     R0,R0,#+3
??NVIC_EncodePriority_3:
        MOVS     R4,#+1
        LSLS     R3,R4,R3
        SUBS     R3,R3,#+1
        ANDS     R1,R3,R1
        LSLS     R1,R1,R0
        MOVS     R3,#+1
        LSLS     R0,R3,R0
        SUBS     R0,R0,#+1
        ANDS     R0,R0,R2
        ORRS     R0,R0,R1
        POP      {R4}
        BX       LR               ;; return
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    3 static camera_cfg_t * camcfg;
camcfg:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    4 static camera_t * camera;
camera:
        DS8 4
//    5 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    6 static void sync_isr(void){
//    7 
//    8     /* 行中断 */
//    9     if(LPLD_GPIO_IsPinxExt(camcfg->SYNC_PORTX, camcfg->href)){
sync_isr:
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+64]
        LDR      R0,[R0, #+160]
        LDR.W    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+32]
        TST      R0,R1
        BEQ.N    ??sync_isr_0
//   10         if(camera->acq_flag){
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+13]
        CMP      R0,#+0
        BEQ.N    ??sync_isr_1
//   11             LPLD_DMA_EnableReq((camcfg->DMA_CHx)); // enable DMA hardware trigger, only for DMA_CH0-15
        LDR.W    R0,??DataTable6_6  ;; 0x4000800c
        LDR      R1,[R0, #+0]
        MOVS     R2,#+1
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDRSB    R0,[R0, #+60]
        LSLS     R2,R2,R0
        ORRS     R1,R2,R1
        LDR.W    R0,??DataTable6_6  ;; 0x4000800c
        STR      R1,[R0, #+0]
//   12             camera->href_cnt ++;
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+20]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable6_5
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//   13         }
//   14         return;
??sync_isr_1:
        B.N      ??sync_isr_2
//   15     }
//   16 
//   17     /* 场中断 */
//   18     if(LPLD_GPIO_IsPinxExt(camcfg->SYNC_PORTX, camcfg->vsync)){
??sync_isr_0:
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+64]
        LDR      R0,[R0, #+160]
        LDR.W    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+28]
        TST      R0,R1
        BEQ.N    ??sync_isr_3
//   19         if (camera->allow_acq_once) {
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+28]
        CMP      R0,#+0
        BEQ.N    ??sync_isr_4
//   20             LPLD_DMA_LoadDstAddr(camcfg->DMA_CHx, camera->buff.data); // load destination address
        LDR.W    R0,??DataTable6_7  ;; 0x40009000
        LDR.W    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        LDRB     R1,[R1, #+60]
        LSLS     R1,R1,#+5
        ADD      R0,R0,R1
        LDR.W    R1,??DataTable6_5
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+4]
        STR      R1,[R0, #+16]
//   21             camera->allow_acq_once = FALSE;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_5
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+28]
//   22             camera->camerr = CAM_OK;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_5
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+12]
//   23             camera->vsync_cnt ++;
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+16]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable6_5
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//   24             camera->href_cnt = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_5
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//   25             camera->rowacq_cnt = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_5
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+24]
//   26             camera->acq_flag = TRUE;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_5
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+13]
        B.N      ??sync_isr_5
//   27         }else if(camera->acq_flag){ // terminate acq with row missing
??sync_isr_4:
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+13]
        CMP      R0,#+0
        BEQ.N    ??sync_isr_5
//   28             camera->acq_flag = FALSE;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_5
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+13]
//   29             camera->camerr |= CAM_ROW_MISS;
        LDR.W    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+12]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable6_5
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+12]
//   30             //disable_irq(camcfg->SYNC_PORTX_IRQn);
//   31             //camera->img_proc();
//   32             camera->allow_acq_once = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_5
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+28]
//   33             LPLD_GPIO_ClearIntFlag(camcfg->SYNC_PORTX);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+64]
        STR      R0,[R1, #+160]
//   34             //enable_irq(camcfg->SYNC_PORTX_IRQn);
//   35         }
//   36         return;
??sync_isr_5:
        B.N      ??sync_isr_2
//   37     }
//   38 }
??sync_isr_3:
??sync_isr_2:
        BX       LR               ;; return
//   39 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 static void row_acq_finished(void){
row_acq_finished:
        PUSH     {R7,LR}
//   41     camera->rowacq_cnt ++;
        LDR.N    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+24]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable6_5
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+24]
//   42     if(camera->rowacq_cnt == camera->buff.nrows)// teminate acq without row missing
        LDR.N    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable6_5
        LDR      R1,[R1, #+0]
        LDRSH    R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??row_acq_finished_0
//   43     {
//   44         camera->acq_flag = FALSE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_5
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+13]
//   45         disable_irq(camcfg->SYNC_PORTX_IRQn);
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDRSB    R0,[R0, #+61]
        BL       __NVIC_DisableIRQ
//   46         //NVIC_SetPriority((IRQn_Type)(camcfg->DMA_CHx),NVIC_EncodePriority(NVIC_PriorityGroup_4,15,0));
//   47         camera->img_proc();
        LDR.N    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+8]
        BLX      R0
//   48         //NVIC_SetPriority((IRQn_Type)(camcfg->DMA_CHx),NVIC_EncodePriority(NVIC_PriorityGroup_4,9,0));
//   49         //camera__take_a_photo_please();
//   50     }
//   51 }
??row_acq_finished_0:
        POP      {R0,PC}          ;; return
//   52 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   53 void camera__take_a_photo_please(void){
camera__take_a_photo_please:
        PUSH     {R7,LR}
//   54     if(camera->acq_flag == TRUE) return;
        LDR.N    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+13]
        CMP      R0,#+1
        BEQ.N    ??camera__take_a_photo_please_0
//   55     camera->allow_acq_once = TRUE;
??camera__take_a_photo_please_1:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_5
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+28]
//   56     LPLD_GPIO_ClearIntFlag(camcfg->SYNC_PORTX);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+64]
        STR      R0,[R1, #+160]
//   57     enable_irq(camcfg->SYNC_PORTX_IRQn);
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDRSB    R0,[R0, #+61]
        BL       __NVIC_EnableIRQ
//   58 }
??camera__take_a_photo_please_0:
        POP      {R0,PC}          ;; return
//   59 
//   60 //#include "sccb.h"
//   61 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 void camera__config(camera_cfg_t * camcfg_usr, camera_t * camera_usr){
camera__config:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+76
        MOVS     R5,R0
        MOVS     R4,R1
//   63     GPIO_InitTypeDef gpio_init={0};
        ADD      R0,SP,#+4
        MOVS     R1,#+20
        BL       __aeabi_memclr4
//   64     DMA_InitTypeDef  dma_init={0};
        ADD      R0,SP,#+28
        MOVS     R1,#+44
        BL       __aeabi_memclr4
//   65 
//   66     ASSERT( camcfg->SYNC_PTx <= PTE);
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable6_8  ;; 0x400ff101
        CMP      R0,R1
        BCC.N    ??camera__config_0
        MOVS     R1,#+66
        LDR.N    R0,??DataTable6_9
        BL       assert_failed
//   67 
//   68 	camcfg = camcfg_usr;
??camera__config_0:
        LDR.N    R0,??DataTable6_4
        STR      R5,[R0, #+0]
//   69 	camera = camera_usr;
        LDR.N    R0,??DataTable6_5
        STR      R4,[R0, #+0]
//   70 
//   71     // 初始化 PORTX_IRQn 以便于快速开关中断，初始化 PORTX 以便于快速检测中断触发源
//   72     if(camcfg->SYNC_PTx == PTA) camcfg->SYNC_PORTX_IRQn = PORTA_IRQn, camcfg->SYNC_PORTX = PORTA;
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable6_10  ;; 0x400ff000
        CMP      R0,R1
        BNE.N    ??camera__config_1
        MOVS     R0,#+87
        LDR.N    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+61]
        LDR.N    R0,??DataTable6_11  ;; 0x40049000
        LDR.N    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+64]
        B.N      ??camera__config_2
//   73     else if(camcfg->SYNC_PTx == PTB) camcfg->SYNC_PORTX_IRQn = PORTB_IRQn, camcfg->SYNC_PORTX = PORTB;
??camera__config_1:
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable6_12  ;; 0x400ff040
        CMP      R0,R1
        BNE.N    ??camera__config_3
        MOVS     R0,#+88
        LDR.N    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+61]
        LDR.N    R0,??DataTable6_13  ;; 0x4004a000
        LDR.N    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+64]
        B.N      ??camera__config_2
//   74     else if(camcfg->SYNC_PTx == PTC) camcfg->SYNC_PORTX_IRQn = PORTC_IRQn, camcfg->SYNC_PORTX = PORTC;
??camera__config_3:
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable6_14  ;; 0x400ff080
        CMP      R0,R1
        BNE.N    ??camera__config_4
        MOVS     R0,#+89
        LDR.N    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+61]
        LDR.N    R0,??DataTable6_15  ;; 0x4004b000
        LDR.N    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+64]
        B.N      ??camera__config_2
//   75     else if(camcfg->SYNC_PTx == PTD) camcfg->SYNC_PORTX_IRQn = PORTD_IRQn, camcfg->SYNC_PORTX = PORTD;
??camera__config_4:
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable6_16  ;; 0x400ff0c0
        CMP      R0,R1
        BNE.N    ??camera__config_5
        MOVS     R0,#+90
        LDR.N    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+61]
        LDR.N    R0,??DataTable6_17  ;; 0x4004c000
        LDR.N    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+64]
        B.N      ??camera__config_2
//   76     else camcfg->SYNC_PORTX_IRQn = PORTE_IRQn, camcfg->SYNC_PORTX = PORTE;
??camera__config_5:
        MOVS     R0,#+91
        LDR.N    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+61]
        LDR.N    R0,??DataTable6_18  ;; 0x4004d000
        LDR.N    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+64]
//   77 
//   78     // init scl and sda
//   79     //LPLD_SCCB_Init(camcfg);
//   80 
//   81     // all pin except scl, sda and rst is input, and rst is shorted to gnd
//   82     gpio_init.GPIO_Dir = DIR_INPUT;
??camera__config_2:
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   83 
//   84     // init vsync and href
//   85     gpio_init.GPIO_PTx = camcfg->SYNC_PTx;
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+4]
//   86     gpio_init.GPIO_Pins = (camcfg->vsync) | (camcfg->href);
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR      R1,[R0, #+28]
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+32]
        ORRS     R1,R0,R1
        STR      R1,[SP, #+8]
//   87     gpio_init.GPIO_Isr = sync_isr;
        LDR.N    R0,??DataTable6_19
        STR      R0,[SP, #+20]
//   88     gpio_init.GPIO_PinControl = INPUT_PULL_UP|IRQC_RI;
        LDR.N    R0,??DataTable6_20  ;; 0x90003
        STR      R0,[SP, #+12]
//   89     LPLD_GPIO_Init(gpio_init);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   90 
//   91     // init d0-d7
//   92     gpio_init.GPIO_PTx = camcfg->data_port.PTx;
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+36]
        STR      R0,[SP, #+4]
//   93     gpio_init.GPIO_Pins = camcfg->data_port.GPIO_Pinn;
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+40]
        STR      R0,[SP, #+8]
//   94     gpio_init.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   95     gpio_init.GPIO_PinControl = INPUT_PULL_DOWN|IRQC_DIS;
        MOVS     R0,#+2
        STR      R0,[SP, #+12]
//   96     LPLD_GPIO_Init(gpio_init);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   97 
//   98     // init pclk and dma (1)
//   99     gpio_init.GPIO_PTx = camcfg->pclk.PTx;
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+48]
        STR      R0,[SP, #+4]
//  100     gpio_init.GPIO_Pins = camcfg->pclk.GPIO_Pinn;
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+52]
        STR      R0,[SP, #+8]
//  101     gpio_init.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  102     gpio_init.GPIO_PinControl = INPUT_PULL_UP|IRQC_DMARI;
        LDR.N    R0,??DataTable6_21  ;; 0x10003
        STR      R0,[SP, #+12]
//  103     LPLD_GPIO_Init(gpio_init);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  104     // init pclk and dma (2)
//  105     dma_init.DMA_CHx = camcfg->DMA_CHx;
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+60]
        STRB     R0,[SP, #+28]
//  106     if(camcfg->pclk.PTx == PTA) dma_init.DMA_Req = PORTA_DMAREQ;
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+48]
        LDR.N    R1,??DataTable6_10  ;; 0x400ff000
        CMP      R0,R1
        BNE.N    ??camera__config_6
        MOVS     R0,#+49
        STRB     R0,[SP, #+29]
        B.N      ??camera__config_7
//  107     else if(camcfg->pclk.PTx == PTB) dma_init.DMA_Req = PORTB_DMAREQ;
??camera__config_6:
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+48]
        LDR.N    R1,??DataTable6_12  ;; 0x400ff040
        CMP      R0,R1
        BNE.N    ??camera__config_8
        MOVS     R0,#+50
        STRB     R0,[SP, #+29]
        B.N      ??camera__config_7
//  108     else if(camcfg->pclk.PTx == PTC) dma_init.DMA_Req = PORTC_DMAREQ;
??camera__config_8:
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+48]
        LDR.N    R1,??DataTable6_14  ;; 0x400ff080
        CMP      R0,R1
        BNE.N    ??camera__config_9
        MOVS     R0,#+51
        STRB     R0,[SP, #+29]
        B.N      ??camera__config_7
//  109     else if(camcfg->pclk.PTx == PTD) dma_init.DMA_Req = PORTD_DMAREQ;
??camera__config_9:
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+48]
        LDR.N    R1,??DataTable6_16  ;; 0x400ff0c0
        CMP      R0,R1
        BNE.N    ??camera__config_10
        MOVS     R0,#+52
        STRB     R0,[SP, #+29]
        B.N      ??camera__config_7
//  110     else dma_init.DMA_Req = PORTE_DMAREQ;
??camera__config_10:
        MOVS     R0,#+53
        STRB     R0,[SP, #+29]
//  111     dma_init.DMA_MajorLoopCnt = camera->buff.ncols / 8;
??camera__config_7:
        LDR.N    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        LDRSH    R0,[R0, #+2]
        MOVS     R1,#+8
        SDIV     R0,R0,R1
        STRH     R0,[SP, #+32]
//  112     dma_init.DMA_MinorByteCnt = 1;
        MOVS     R0,#+1
        STR      R0,[SP, #+36]
//  113     dma_init.DMA_SourceAddr = ((uint32_t)&(camcfg->data_port.PTx->PDIR) + (camcfg->data_port.GPIO_Pinnum/8));
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+36]
        ADDS     R0,R0,#+16
        LDR.N    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+44]
        ADDS     R0,R0,R1, LSR #+3
        STR      R0,[SP, #+40]
//  114     dma_init.DMA_DestAddr = (uint32_t)(camera->buff.data);
        LDR.N    R0,??DataTable6_5
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        STR      R0,[SP, #+52]
//  115     dma_init.DMA_DestAddrOffset = 1;
        MOVS     R0,#+1
        STRH     R0,[SP, #+58]
//  116     dma_init.DMA_AutoDisableReq = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+64]
//  117     dma_init.DMA_MajorCompleteIntEnable = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+65]
//  118     dma_init.DMA_Isr = row_acq_finished;
        LDR.N    R0,??DataTable6_22
        STR      R0,[SP, #+68]
//  119     LPLD_DMA_Init(dma_init);
        ADD      R1,SP,#+28
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_Init
//  120     LPLD_DMA_EnableIrq(dma_init);
        ADD      R1,SP,#+28
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_EnableIrq
//  121 
//  122     // init camera internal status
//  123 	camera->vsync_cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_5
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  124     camera->allow_acq_once = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_5
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+28]
//  125 
//  126     // enable interrupts
//  127     NVIC_SetPriority((IRQn_Type)(camcfg->DMA_CHx),NVIC_EncodePriority(NVIC_PriorityGroup_4,9,0));
        MOVS     R2,#+0
        MOVS     R1,#+9
        MOVS     R0,#+3
        BL       NVIC_EncodePriority
        MOVS     R1,R0
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDRSB    R0,[R0, #+60]
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       __NVIC_SetPriority
//  128     NVIC_SetPriority(camcfg->SYNC_PORTX_IRQn,NVIC_EncodePriority(NVIC_PriorityGroup_4,8,0));
        MOVS     R2,#+0
        MOVS     R1,#+8
        MOVS     R0,#+3
        BL       NVIC_EncodePriority
        MOVS     R1,R0
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDRSB    R0,[R0, #+61]
        BL       __NVIC_SetPriority
//  129     LPLD_GPIO_ClearIntFlag(camcfg->SYNC_PORTX);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable6_4
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+64]
        STR      R0,[R1, #+160]
//  130     enable_irq(camcfg->SYNC_PORTX_IRQn);
        LDR.N    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDRSB    R0,[R0, #+61]
        BL       __NVIC_EnableIRQ
//  131 }
        ADD      SP,SP,#+76
        POP      {R4,R5,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0xe000e400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0xe000ed18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     camcfg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     camera

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     0x400ff101

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     0x40049000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_14:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_15:
        DC32     0x4004b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_16:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_17:
        DC32     0x4004c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_18:
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_19:
        DC32     sync_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_20:
        DC32     0x90003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_21:
        DC32     0x10003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_22:
        DC32     row_acq_finished

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "F:\\K60_CAR_2018\\lib\\peripheral\\camera.c"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  132 
// 
//     8 bytes in section .bss
//   104 bytes in section .rodata
// 1 286 bytes in section .text
// 
// 1 286 bytes of CODE  memory
//   104 bytes of CONST memory
//     8 bytes of DATA  memory
//
//Errors: none
//Warnings: none
