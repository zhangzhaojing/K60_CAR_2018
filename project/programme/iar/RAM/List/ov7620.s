///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.10.1.12857/W32 for ARM      27/Jan/2018  17:00:31
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  F:\K60_CAR_2018\lib\peripheral\ov7620.c
//    Command line =  
//        -f C:\Users\19071_~1\AppData\Local\Temp\EWB1ED.tmp
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
        EXTERN LPLD_UART_Init
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_memcpy4

        PUBLIC Pix_Data
        PUBLIC camera__take_a_photo_please_
        PUBLIC ov7620__config
        PUBLIC uart0_init_struct
        PUBLIC uart_init

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
        LDR.N    R1,??DataTable7  ;; 0xe000e100
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
        LDR.N    R1,??DataTable7_1  ;; 0xe000e180
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
        LDR.N    R2,??DataTable7_2  ;; 0xe000e400
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        STRB     R1,[R2, R0]
        B.N      ??__NVIC_SetPriority_1
??__NVIC_SetPriority_0:
        LSLS     R1,R1,#+4
        LDR.N    R2,??DataTable7_3  ;; 0xe000ed18
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
//    7 void camera__take_a_photo_please_();

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    8 UART_InitTypeDef uart0_init_struct;
uart0_init_struct:
        DS8 28
//    9 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   10 static boolean acq_flag;
acq_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   11 static boolean allow_acq_once;
allow_acq_once:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   12 static int camera_error;//0:OK 1:ROW_MISS 2:COL_MISS
camera_error:
        DS8 4
//   13 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   14 static uint32 vsync_cnt,href_cnt, rowacq_cnt;
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
//   15 uint8 Pix_Data[H_MAX][L_MAX];
Pix_Data:
        DS8 76800
//   16 
//   17 static GPIO_InitTypeDef gpio_init_vh;

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   18 static DMA_InitTypeDef  dma_init;
dma_init:
        DS8 44
//   19 
//   20 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 void uart_init(void)
//   22 {
uart_init:
        PUSH     {R5-R7,LR}
//   23   uart0_init_struct.UART_Uartx = UART0; //使用UART0
        LDR.N    R0,??DataTable7_4  ;; 0x4006a000
        LDR.N    R1,??DataTable7_5
        STR      R0,[R1, #+0]
//   24   uart0_init_struct.UART_BaudRate = 9600; //设置波特率9600
        MOV      R0,#+9600
        LDR.N    R1,??DataTable7_5
        STR      R0,[R1, #+4]
//   25   uart0_init_struct.UART_RxPin = PTA15;  //接收引脚为PTE15
        MOVS     R0,#+15
        LDR.N    R1,??DataTable7_5
        STRB     R0,[R1, #+9]
//   26   uart0_init_struct.UART_TxPin = PTA14;  //发送引脚为PTE14
        MOVS     R0,#+14
        LDR.N    R1,??DataTable7_5
        STRB     R0,[R1, #+8]
//   27   //初始化UART
//   28   LPLD_UART_Init(uart0_init_struct);
        LDR.N    R1,??DataTable7_5
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   29 }
        POP      {R0-R2,PC}       ;; return
//   30 ///////////////////////////////////////////////////////////////////////////////
//   31 //////////////////////////////////////////////////////////////////////////////

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   32 static void vsync_href_isr(){
//   33   //vsync_isr
//   34     if(LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin14))
vsync_href_isr:
        LDR.N    R0,??DataTable7_6  ;; 0x4004c0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+17
        BPL.N    ??vsync_href_isr_0
//   35   {
//   36     if(allow_acq_once){
        LDR.N    R0,??DataTable7_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??vsync_href_isr_1
//   37     LPLD_DMA_LoadDstAddr(DMA_CH0, Pix_Data);//初始化DMA地址    
        LDR.N    R0,??DataTable7_8
        LDR.N    R1,??DataTable7_9  ;; 0x40009010
        STR      R0,[R1, #+0]
//   38     
//   39     camera_error=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_10
        STR      R0,[R1, #+0]
//   40     allow_acq_once=FALSE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_7
        STRB     R0,[R1, #+0]
//   41     vsync_cnt++;//当前场数
        LDR.N    R0,??DataTable7_11
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable7_11
        STR      R0,[R1, #+0]
//   42     href_cnt=0;//行数
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_12
        STR      R0,[R1, #+0]
//   43     rowacq_cnt=0;//采集的行数
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_13
        STR      R0,[R1, #+0]
//   44     acq_flag=TRUE;//flag=true 相当于使能行中断
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_14
        STRB     R0,[R1, #+0]
        B.N      ??vsync_href_isr_2
//   45     }else if(acq_flag){    //ROW_MISS
??vsync_href_isr_1:
        LDR.N    R0,??DataTable7_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??vsync_href_isr_2
//   46           acq_flag=FALSE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_14
        STRB     R0,[R1, #+0]
//   47           camera_error=1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_10
        STR      R0,[R1, #+0]
//   48           allow_acq_once=TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_7
        STRB     R0,[R1, #+0]
//   49           LPLD_GPIO_ClearIntFlag(PORTD);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable7_6  ;; 0x4004c0a0
        STR      R0,[R1, #+0]
//   50     }
//   51     return;
??vsync_href_isr_2:
        B.N      ??vsync_href_isr_3
//   52   }
//   53   
//   54   //href_isr
//   55     if(LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin13))
??vsync_href_isr_0:
        LDR.N    R0,??DataTable7_6  ;; 0x4004c0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+18
        BPL.N    ??vsync_href_isr_4
//   56   {    
//   57     if(acq_flag){
        LDR.N    R0,??DataTable7_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??vsync_href_isr_5
//   58     LPLD_DMA_EnableReq(DMA_CH0);
        LDR.N    R0,??DataTable7_15  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable7_15  ;; 0x4000800c
        STR      R0,[R1, #+0]
//   59     href_cnt++;//行数自加    
        LDR.N    R0,??DataTable7_12
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable7_12
        STR      R0,[R1, #+0]
//   60     }
//   61     
//   62     return;
??vsync_href_isr_5:
        B.N      ??vsync_href_isr_3
//   63   }
//   64 }
??vsync_href_isr_4:
??vsync_href_isr_3:
        BX       LR               ;; return
//   65 
//   66 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   67 static void row_finish(){     //DMA中断函数
row_finish:
        PUSH     {R7,LR}
//   68   
//   69   rowacq_cnt++;//已采集行数自加
        LDR.N    R0,??DataTable7_13
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable7_13
        STR      R0,[R1, #+0]
//   70   
//   71   if(rowacq_cnt==H_MAX){//行数采集完FLAG=0（关闭行中断）
        LDR.N    R0,??DataTable7_13
        LDR      R0,[R0, #+0]
        CMP      R0,#+240
        BNE.N    ??row_finish_0
//   72      acq_flag = FALSE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_14
        STRB     R0,[R1, #+0]
//   73      disable_irq(PORTD_IRQn);
        MOVS     R0,#+90
        BL       __NVIC_DisableIRQ
//   74      
//   75      /*imag proc*/
//   76      //LPLD_UART_PutCharArr(UART0, Pix_Data, H_MAX*L_MAX);//send picture
//   77      camera__take_a_photo_please_();
        BL       camera__take_a_photo_please_
//   78   }
//   79 }
??row_finish_0:
        POP      {R0,PC}          ;; return
//   80 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   81 void camera__take_a_photo_please_(){
camera__take_a_photo_please_:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   82     if(acq_flag == TRUE) return;
        LDR.N    R0,??DataTable7_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??camera__take_a_photo_please__0
//   83     allow_acq_once=1;
??camera__take_a_photo_please__1:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_7
        STRB     R0,[R1, #+0]
//   84     LPLD_GPIO_ClearIntFlag(PORTD);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable7_6  ;; 0x4004c0a0
        STR      R0,[R1, #+0]
//   85     enable_irq(PORTD_IRQn);
        MOVS     R0,#+90
        BL       __NVIC_EnableIRQ
//   86     LPLD_DMA_EnableIrq(dma_init);
        LDR.N    R1,??DataTable7_16
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_EnableIrq
//   87 }
??camera__take_a_photo_please__0:
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   88 
//   89 
//   90 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   91 void ov7620__config(){
ov7620__config:
        PUSH     {LR}
        SUB      SP,SP,#+92
//   92   
//   93     GPIO_InitTypeDef gpio_init_vh={0};
        ADD      R0,SP,#+24
        MOVS     R1,#+20
        BL       __aeabi_memclr4
//   94     GPIO_InitTypeDef gpio_init={0};
        ADD      R0,SP,#+4
        MOVS     R1,#+20
        BL       __aeabi_memclr4
//   95     DMA_InitTypeDef  dma_init={0};
        ADD      R0,SP,#+44
        MOVS     R1,#+44
        BL       __aeabi_memclr4
//   96     
//   97     // init vsync_href
//   98     gpio_init_vh.GPIO_PTx = PTD;
        LDR.N    R0,??DataTable7_17  ;; 0x400ff0c0
        STR      R0,[SP, #+24]
//   99     gpio_init_vh.GPIO_Pins = GPIO_Pin14 | GPIO_Pin13;
        MOV      R0,#+24576
        STR      R0,[SP, #+28]
//  100     gpio_init_vh.GPIO_Dir = DIR_INPUT; 
        MOVS     R0,#+0
        STRB     R0,[SP, #+36]
//  101     gpio_init_vh.GPIO_Isr = vsync_href_isr;
        LDR.N    R0,??DataTable7_18
        STR      R0,[SP, #+40]
//  102     gpio_init_vh.GPIO_PinControl = INPUT_PULL_UP|IRQC_RI; //上升沿内部上拉
        LDR.N    R0,??DataTable7_19  ;; 0x90003
        STR      R0,[SP, #+32]
//  103     LPLD_GPIO_Init(gpio_init_vh);
        ADD      R1,SP,#+24
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  104         
//  105     // init pclk
//  106     gpio_init.GPIO_PTx = PTD;
        LDR.N    R0,??DataTable7_17  ;; 0x400ff0c0
        STR      R0,[SP, #+4]
//  107     gpio_init.GPIO_Pins = GPIO_Pin12;
        MOV      R0,#+4096
        STR      R0,[SP, #+8]
//  108     gpio_init.GPIO_Dir = DIR_INPUT; 
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//  109     gpio_init.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  110     gpio_init.GPIO_PinControl = INPUT_PULL_UP|IRQC_DMARI;
        LDR.N    R0,??DataTable7_20  ;; 0x10003
        STR      R0,[SP, #+12]
//  111     LPLD_GPIO_Init(gpio_init);  
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  112     
//  113     // init d0-d7
//  114     gpio_init.GPIO_PTx = PTE;      
        LDR.N    R0,??DataTable7_21  ;; 0x400ff100
        STR      R0,[SP, #+4]
//  115     gpio_init.GPIO_Pins = GPIO_Pin0_7;     
        MOVS     R0,#+255
        STR      R0,[SP, #+8]
//  116     gpio_init.GPIO_Dir = DIR_INPUT;        
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//  117     gpio_init.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  118     gpio_init.GPIO_PinControl = INPUT_PULL_DOWN|IRQC_DIS;   
        MOVS     R0,#+2
        STR      R0,[SP, #+12]
//  119     LPLD_GPIO_Init(gpio_init);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  120        
//  121     //配置接收DMA
//  122     dma_init.DMA_CHx = DMA_CH0; 
        MOVS     R0,#+0
        STRB     R0,[SP, #+44]
//  123     dma_init.DMA_MajorLoopCnt   = L_MAX; //主循环
        MOV      R0,#+320
        STRH     R0,[SP, #+48]
//  124     dma_init.DMA_MinorByteCnt   = 1; 
        MOVS     R0,#+1
        STR      R0,[SP, #+52]
//  125     dma_init.DMA_MajorCompleteIntEnable = TRUE; 
        MOVS     R0,#+1
        STRB     R0,[SP, #+81]
//  126     dma_init.DMA_Req            = PORTD_DMAREQ; 
        MOVS     R0,#+52
        STRB     R0,[SP, #+45]
//  127     dma_init.DMA_DestAddr       = (uint32)Pix_Data; //目的
        LDR.N    R0,??DataTable7_8
        STR      R0,[SP, #+68]
//  128     dma_init.DMA_DestAddrOffset = 1;                
        MOVS     R0,#+1
        STRH     R0,[SP, #+74]
//  129     dma_init.DMA_DestDataSize   = DMA_DST_8BIT;     
        MOVS     R0,#+0
        STRB     R0,[SP, #+72]
//  130     dma_init.DMA_SourceAddr     = (uint32)&PTE->PDIR;//源
        LDR.N    R0,??DataTable7_22  ;; 0x400ff110
        STR      R0,[SP, #+56]
//  131     dma_init.DMA_SourceDataSize = DMA_SRC_8BIT;   
        MOVS     R0,#+0
        STRB     R0,[SP, #+60]
//  132     dma_init.DMA_AutoDisableReq = TRUE;  
        MOVS     R0,#+1
        STRB     R0,[SP, #+80]
//  133     dma_init.DMA_Isr = row_finish; 
        LDR.N    R0,??DataTable7_23
        STR      R0,[SP, #+84]
//  134     LPLD_DMA_Init(dma_init); 
        ADD      R1,SP,#+44
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_Init
//  135     LPLD_DMA_EnableIrq(dma_init);//使能中断
        ADD      R1,SP,#+44
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_EnableIrq
//  136     
//  137     ///////////////
//  138     vsync_cnt=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_11
        STR      R0,[R1, #+0]
//  139     allow_acq_once=TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable7_7
        STRB     R0,[R1, #+0]
//  140     
//  141     //////////////////
//  142     NVIC_SetPriority((IRQn_Type)(DMA_CH0),NVIC_EncodePriority(NVIC_PriorityGroup_4,9,0));
        MOVS     R2,#+0
        MOVS     R1,#+9
        MOVS     R0,#+3
        BL       NVIC_EncodePriority
        MOVS     R1,R0
        MOVS     R0,#+0
        BL       __NVIC_SetPriority
//  143     NVIC_SetPriority(PORTD_IRQn,NVIC_EncodePriority(NVIC_PriorityGroup_4,8,0));
        MOVS     R2,#+0
        MOVS     R1,#+8
        MOVS     R0,#+3
        BL       NVIC_EncodePriority
        MOVS     R1,R0
        MOVS     R0,#+90
        BL       __NVIC_SetPriority
//  144     LPLD_GPIO_ClearIntFlag(PORTD);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable7_6  ;; 0x4004c0a0
        STR      R0,[R1, #+0]
//  145     enable_irq(PORTD_IRQn);
        MOVS     R0,#+90
        BL       __NVIC_EnableIRQ
//  146 }
        ADD      SP,SP,#+92
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     0xe000e400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0xe000ed18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     0x4006a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     uart0_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     0x4004c0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     allow_acq_once

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     Pix_Data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     0x40009010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     camera_error

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     vsync_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_12:
        DC32     href_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_13:
        DC32     rowacq_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_14:
        DC32     acq_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_15:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_16:
        DC32     dma_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_17:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_18:
        DC32     vsync_href_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_19:
        DC32     0x90003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_20:
        DC32     0x10003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_21:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_22:
        DC32     0x400ff110

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_23:
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
//  147 
//  148 
//  149 
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
// 
// 76 890 bytes in section .bss
//     84 bytes in section .rodata
//    846 bytes in section .text
// 
//    846 bytes of CODE  memory
//     84 bytes of CONST memory
// 76 890 bytes of DATA  memory
//
//Errors: none
//Warnings: 2
