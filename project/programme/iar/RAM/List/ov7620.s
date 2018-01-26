///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.10.1.12857/W32 for ARM      26/Jan/2018  13:39:07
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  F:\K60_CAR_2018\lib\peripheral\ov7620.c
//    Command line =  
//        -f C:\Users\19071_~1\AppData\Local\Temp\EWB7CC.tmp
//        (F:\K60_CAR_2018\lib\peripheral\ov7620.c -D LPLD_K60 -D USE_K60DZ10
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
//    List file    =  F:\K60_CAR_2018\project\programme\iar\RAM\List\ov7620.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_DMA_EnableIrq
        EXTERN LPLD_DMA_Init
        EXTERN LPLD_GPIO_Init
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy4

        PUBLIC Pix_Data
        PUBLIC camera__take_a_photo_please_
        PUBLIC ov7620__config

// F:\K60_CAR_2018\lib\peripheral\ov7620.c
//    1 #include "ov7620.h"

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
        LDR.N    R1,??DataTable6  ;; 0xe000e100
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
        LDR.N    R1,??DataTable6_1  ;; 0xe000e180
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
        LDR.N    R2,??DataTable6_2  ;; 0xe000e400
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        STRB     R1,[R2, R0]
        B.N      ??__NVIC_SetPriority_1
??__NVIC_SetPriority_0:
        LSLS     R1,R1,#+4
        LDR.N    R2,??DataTable6_3  ;; 0xe000ed18
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
//    2 #include "DEV_SCCB.h"
//    3 
//    4 #define H_MAX 240//hangshu
//    5 #define L_MAX 320//lieshu
//    6 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//    7 static boolean acq_flag;
acq_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//    8 static boolean allow_acq_once;
allow_acq_once:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    9 static int camera_error;//0:OK 1:ROW_MISS 2:COL_MISS
camera_error:
        DS8 4
//   10 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   11 static uint32 vsync_cnt, href_cnt, rowacq_cnt;
vsync_cnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
href_cnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
rowacq_cnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   12 uint8 Pix_Data[H_MAX][L_MAX];
Pix_Data:
        DS8 76800
//   13 
//   14 static GPIO_InitTypeDef gpio_init_vh;
//   15 static DMA_InitTypeDef  dma_init;
//   16 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   17 static void vsync_href_isr(){
//   18   //vsync_isr
//   19     if(LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin14))
vsync_href_isr:
        LDR.N    R0,??DataTable6_4  ;; 0x4004c0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+17
        BPL.N    ??vsync_href_isr_0
//   20   {
//   21    // LPLD_GPIO_ClearIntFlag(PORTD);
//   22     if(allow_acq_once){
        LDR.N    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??vsync_href_isr_1
//   23     LPLD_DMA_LoadDstAddr(DMA_CH0, Pix_Data);//初始化DMA地址
        LDR.N    R0,??DataTable6_6
        LDR.N    R1,??DataTable6_7  ;; 0x40009010
        STR      R0,[R1, #+0]
//   24     //LPLD_DMA_DisableReq(DMA_CH0);
//   25     //LPLD_DMA_EnableIrq(dma_init);
//   26     
//   27     //dummy_delay_ms(1);
//   28     
//   29     camera_error=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_8
        STR      R0,[R1, #+0]
//   30     allow_acq_once=FALSE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_5
        STRB     R0,[R1, #+0]
//   31     vsync_cnt++;//当前场数
        LDR.N    R0,??DataTable6_9
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable6_9
        STR      R0,[R1, #+0]
//   32     href_cnt=0;//行数
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_10
        STR      R0,[R1, #+0]
//   33     rowacq_cnt=0;//采集的行数
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_11
        STR      R0,[R1, #+0]
//   34     acq_flag=TRUE;//flag=true 相当于使能行中断
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_12
        STRB     R0,[R1, #+0]
        B.N      ??vsync_href_isr_2
//   35     }else if(acq_flag){
??vsync_href_isr_1:
        LDR.N    R0,??DataTable6_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??vsync_href_isr_2
//   36           acq_flag=FALSE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_12
        STRB     R0,[R1, #+0]
//   37           camera_error=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_8
        STR      R0,[R1, #+0]
//   38           allow_acq_once=TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_5
        STRB     R0,[R1, #+0]
//   39           LPLD_GPIO_ClearIntFlag(PORTD);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable6_4  ;; 0x4004c0a0
        STR      R0,[R1, #+0]
//   40     }
//   41     
//   42     return;
??vsync_href_isr_2:
        B.N      ??vsync_href_isr_3
//   43   }
//   44   
//   45   //href_isr
//   46     if(LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin13))
??vsync_href_isr_0:
        LDR.N    R0,??DataTable6_4  ;; 0x4004c0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+18
        BPL.N    ??vsync_href_isr_4
//   47   {
//   48    // LPLD_GPIO_ClearIntFlag(PORTD);
//   49     
//   50     if(acq_flag){
        LDR.N    R0,??DataTable6_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??vsync_href_isr_5
//   51     LPLD_DMA_EnableReq(DMA_CH0);
        LDR.N    R0,??DataTable6_13  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable6_13  ;; 0x4000800c
        STR      R0,[R1, #+0]
//   52    // LPLD_DMA_EnableIrq(dma_init);
//   53     href_cnt++;//行数自加    
        LDR.N    R0,??DataTable6_10
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable6_10
        STR      R0,[R1, #+0]
//   54     }
//   55     
//   56     return;
??vsync_href_isr_5:
        B.N      ??vsync_href_isr_3
//   57   }
//   58 }
??vsync_href_isr_4:
??vsync_href_isr_3:
        BX       LR               ;; return
//   59 
//   60 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   61 static void row_finish(){     //DMA中断
row_finish:
        PUSH     {R7,LR}
//   62   rowacq_cnt++;//已采集行数自加
        LDR.N    R0,??DataTable6_11
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable6_11
        STR      R0,[R1, #+0]
//   63   
//   64   //LPLD_DMA_DisableReq(DMA_CH0);
//   65   //LPLD_DMA_DisableIrq(dma_init);
//   66   
//   67   if(rowacq_cnt==H_MAX){//行数采集完FLAG=0（关闭行中断）
        LDR.N    R0,??DataTable6_11
        LDR      R0,[R0, #+0]
        CMP      R0,#+240
        BNE.N    ??row_finish_0
//   68      acq_flag = FALSE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_12
        STRB     R0,[R1, #+0]
//   69      disable_irq(PORTD_IRQn);
        MOVS     R0,#+90
        BL       __NVIC_DisableIRQ
//   70      
//   71      /*imag proc*/
//   72   }
//   73 }
??row_finish_0:
        POP      {R0,PC}          ;; return
//   74 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   75 void camera__take_a_photo_please_(){
camera__take_a_photo_please_:
        PUSH     {R7,LR}
//   76     if(acq_flag == TRUE) return;
        LDR.N    R0,??DataTable6_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??camera__take_a_photo_please__0
//   77     allow_acq_once==TRUE;
??camera__take_a_photo_please__1:
        LDR.N    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??camera__take_a_photo_please__2
        MOVS     R0,#+1
        B.N      ??camera__take_a_photo_please__3
??camera__take_a_photo_please__2:
        MOVS     R0,#+0
??camera__take_a_photo_please__3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
//   78     LPLD_GPIO_ClearIntFlag(PORTD);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable6_4  ;; 0x4004c0a0
        STR      R0,[R1, #+0]
//   79     enable_irq(PORTD_IRQn);
        MOVS     R0,#+90
        BL       __NVIC_EnableIRQ
//   80 }
??camera__take_a_photo_please__0:
        POP      {R0,PC}          ;; return
//   81 
//   82 //#include "DEV_SCCB.h"
//   83 
//   84 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   85 void ov7620__config(){
ov7620__config:
        PUSH     {LR}
        SUB      SP,SP,#+92
//   86   
//   87   
//   88     GPIO_InitTypeDef gpio_init_vh={0};
        ADD      R0,SP,#+24
        MOVS     R1,#+20
        BL       __aeabi_memclr4
//   89     GPIO_InitTypeDef gpio_init={0};
        ADD      R0,SP,#+4
        MOVS     R1,#+20
        BL       __aeabi_memclr4
//   90     DMA_InitTypeDef  dma_init={0};
        ADD      R0,SP,#+44
        MOVS     R1,#+44
        BL       __aeabi_memclr4
//   91     
//   92 //    LPLD_SCCB_Init();
//   93 //    LPLD_SCCB_WriteReg(0x14 ,0x24);
//   94 //    LPLD_SCCB_WriteReg(0x28,0x40);
//   95 //    LPLD_SCCB_WriteReg(0x11,0x01);
//   96 //    
//   97     
//   98     // init vsync_href
//   99     gpio_init_vh.GPIO_PTx = PTD;
        LDR.N    R0,??DataTable6_14  ;; 0x400ff0c0
        STR      R0,[SP, #+24]
//  100     gpio_init_vh.GPIO_Pins = GPIO_Pin14 | GPIO_Pin13;
        MOV      R0,#+24576
        STR      R0,[SP, #+28]
//  101     gpio_init_vh.GPIO_Dir = DIR_INPUT; 
        MOVS     R0,#+0
        STRB     R0,[SP, #+36]
//  102     gpio_init_vh.GPIO_Isr = vsync_href_isr;
        LDR.N    R0,??DataTable6_15
        STR      R0,[SP, #+40]
//  103     gpio_init_vh.GPIO_PinControl = INPUT_PULL_UP|IRQC_RI; //上升沿内部上拉
        LDR.N    R0,??DataTable6_16  ;; 0x90003
        STR      R0,[SP, #+32]
//  104     LPLD_GPIO_Init(gpio_init_vh);
        ADD      R1,SP,#+24
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  105     
//  106         
//  107     // init pclk
//  108     gpio_init.GPIO_PTx = PTD;
        LDR.N    R0,??DataTable6_14  ;; 0x400ff0c0
        STR      R0,[SP, #+4]
//  109     gpio_init.GPIO_Pins = GPIO_Pin12;
        MOV      R0,#+4096
        STR      R0,[SP, #+8]
//  110     gpio_init.GPIO_Dir = DIR_INPUT; 
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//  111     gpio_init.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  112     gpio_init.GPIO_PinControl = INPUT_PULL_UP|IRQC_DMARI;
        LDR.N    R0,??DataTable6_17  ;; 0x10003
        STR      R0,[SP, #+12]
//  113     LPLD_GPIO_Init(gpio_init);  
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  114     
//  115     // init d0-d7
//  116     gpio_init.GPIO_PTx = PTE;      
        LDR.N    R0,??DataTable6_18  ;; 0x400ff100
        STR      R0,[SP, #+4]
//  117     gpio_init.GPIO_Pins = GPIO_Pin0_7;     
        MOVS     R0,#+255
        STR      R0,[SP, #+8]
//  118     gpio_init.GPIO_Dir = DIR_INPUT;        
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//  119     gpio_init.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  120     gpio_init.GPIO_PinControl = INPUT_PULL_DOWN|IRQC_DIS;   
        MOVS     R0,#+2
        STR      R0,[SP, #+12]
//  121     LPLD_GPIO_Init(gpio_init);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  122        
//  123     //配置接收DMA
//  124     dma_init.DMA_CHx = DMA_CH0; 
        MOVS     R0,#+0
        STRB     R0,[SP, #+44]
//  125     dma_init.DMA_MajorLoopCnt   = L_MAX; //主循环
        MOV      R0,#+320
        STRH     R0,[SP, #+48]
//  126     dma_init.DMA_MinorByteCnt   = 1; 
        MOVS     R0,#+1
        STR      R0,[SP, #+52]
//  127     dma_init.DMA_MajorCompleteIntEnable = TRUE; 
        MOVS     R0,#+1
        STRB     R0,[SP, #+81]
//  128     dma_init.DMA_Req            = PORTD_DMAREQ; 
        MOVS     R0,#+52
        STRB     R0,[SP, #+45]
//  129     dma_init.DMA_DestAddr       = (uint32)Pix_Data; //目的
        LDR.N    R0,??DataTable6_6
        STR      R0,[SP, #+68]
//  130     dma_init.DMA_DestAddrOffset = 1;                
        MOVS     R0,#+1
        STRH     R0,[SP, #+74]
//  131     dma_init.DMA_DestDataSize   = DMA_DST_8BIT;     
        MOVS     R0,#+0
        STRB     R0,[SP, #+72]
//  132     dma_init.DMA_SourceAddr     = (uint32)&PTE->PDIR;//源
        LDR.N    R0,??DataTable6_19  ;; 0x400ff110
        STR      R0,[SP, #+56]
//  133     dma_init.DMA_SourceDataSize = DMA_SRC_8BIT;   
        MOVS     R0,#+0
        STRB     R0,[SP, #+60]
//  134     dma_init.DMA_AutoDisableReq = TRUE;  
        MOVS     R0,#+1
        STRB     R0,[SP, #+80]
//  135     dma_init.DMA_Isr = row_finish; 
        LDR.N    R0,??DataTable6_20
        STR      R0,[SP, #+84]
//  136     LPLD_DMA_Init(dma_init); 
        ADD      R1,SP,#+44
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_Init
//  137     LPLD_DMA_EnableIrq(dma_init);//使能中断
        ADD      R1,SP,#+44
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_EnableIrq
//  138     
//  139     ///////////////
//  140     vsync_cnt=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_9
        STR      R0,[R1, #+0]
//  141     allow_acq_once=TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_5
        STRB     R0,[R1, #+0]
//  142     //acq_flag=0;
//  143     
//  144     //////////////////
//  145     NVIC_SetPriority((IRQn_Type)(DMA_CH0),NVIC_EncodePriority(NVIC_PriorityGroup_4,9,0));
        MOVS     R2,#+0
        MOVS     R1,#+9
        MOVS     R0,#+3
        BL       NVIC_EncodePriority
        MOVS     R1,R0
        MOVS     R0,#+0
        BL       __NVIC_SetPriority
//  146     NVIC_SetPriority(PORTD_IRQn,NVIC_EncodePriority(NVIC_PriorityGroup_4,8,0));
        MOVS     R2,#+0
        MOVS     R1,#+8
        MOVS     R0,#+3
        BL       NVIC_EncodePriority
        MOVS     R1,R0
        MOVS     R0,#+90
        BL       __NVIC_SetPriority
//  147     LPLD_GPIO_ClearIntFlag(PORTD);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable6_4  ;; 0x4004c0a0
        STR      R0,[R1, #+0]
//  148     enable_irq(PORTD_IRQn);
        MOVS     R0,#+90
        BL       __NVIC_EnableIRQ
//  149 }
        ADD      SP,SP,#+92
        POP      {PC}             ;; return

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
        DC32     0x4004c0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     allow_acq_once

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     Pix_Data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     0x40009010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     camera_error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     vsync_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     href_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     rowacq_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     acq_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_14:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_15:
        DC32     vsync_href_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_16:
        DC32     0x90003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_17:
        DC32     0x10003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_18:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_19:
        DC32     0x400ff110

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_20:
        DC32     row_finish

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0H
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

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
//  150 
//  151 
//  152 
//  153 
//  154 
//  155 
//  156 
//  157 
//  158 
//  159 
//  160 
//  161 
//  162 
//  163 
//  164 
//  165 
//  166 
//  167 
//  168 
//  169 
//  170 
// 
// 76 818 bytes in section .bss
//     84 bytes in section .rodata
//    770 bytes in section .text
// 
//    770 bytes of CODE  memory
//     84 bytes of CONST memory
// 76 818 bytes of DATA  memory
//
//Errors: none
//Warnings: 4
