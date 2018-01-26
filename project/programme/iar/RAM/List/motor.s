///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.10.1.12857/W32 for ARM      25/Jan/2018  20:31:59
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  F:\K60_CAR_2018\lib\peripheral\motor.c
//    Command line =  
//        -f C:\Users\19071_~1\AppData\Local\Temp\EW284B.tmp
//        (F:\K60_CAR_2018\lib\peripheral\motor.c -D LPLD_K60 -D USE_K60DZ10
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
//    List file    =  F:\K60_CAR_2018\project\programme\iar\RAM\List\motor.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_Init
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN LPLD_FTM_PWM_Enable
        EXTERN LPLD_LPTMR_GetPulseAcc
        EXTERN LPLD_LPTMR_Init
        EXTERN LPLD_PIT_DisableIrq
        EXTERN LPLD_PIT_EnableIrq
        EXTERN LPLD_PIT_Init
        EXTERN __aeabi_memcpy4
        EXTERN memset

        PUBLIC motor_control__config
        PUBLIC motor_control__disable
        PUBLIC motor_control__enable
        PUBLIC motor_control__set_duty
        PUBLIC pit_motor_control

// F:\K60_CAR_2018\lib\peripheral\motor.c
//    1 #include "motor.h"
//    2 #include <math.h>
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    4 static motor_control_t *mtrctrl;
mtrctrl:
        DS8 4
//    5 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    6 static uint32 average_num=0;
average_num:
        DS8 4
//    7 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    8 void pit_motor_control(void){
pit_motor_control:
        PUSH     {R7,LR}
//    9   static uint32 pit_enter_counter;
//   10   static uint16 placc_temp_value[2];
//   11   do{
//   12       placc_temp_value[0] = LPLD_LPTMR_GetPulseAcc();
??pit_motor_control_0:
        BL       LPLD_LPTMR_GetPulseAcc
        LDR.N    R1,??DataTable4
        STRH     R0,[R1, #+0]
//   13       placc_temp_value[1] = LPLD_LPTMR_GetPulseAcc();
        BL       LPLD_LPTMR_GetPulseAcc
        LDR.N    R1,??DataTable4
        STRH     R0,[R1, #+2]
//   14   }while(abs_diff(placc_temp_value[0], placc_temp_value[1])>1);
        LDR.N    R0,??DataTable4
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable4
        LDRH     R1,[R1, #+2]
        CMP      R0,R1
        BCC.N    ??pit_motor_control_1
        LDR.N    R0,??DataTable4
        LDRH     R1,[R0, #+0]
        LDR.N    R0,??DataTable4
        LDRH     R0,[R0, #+2]
        SUBS     R0,R1,R0
        B.N      ??pit_motor_control_2
??pit_motor_control_1:
        LDR.N    R0,??DataTable4
        LDRH     R1,[R0, #+2]
        LDR.N    R0,??DataTable4
        LDRH     R0,[R0, #+0]
        SUBS     R0,R1,R0
??pit_motor_control_2:
        CMP      R0,#+2
        BGE.N    ??pit_motor_control_0
//   15   
//   16   //switch(0){
//   17    // case 0:
//   18         mtrctrl->ecdlft.value = placc_temp_value[1];
        LDR.N    R0,??DataTable4
        LDRSH    R0,[R0, #+2]
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STRH     R0,[R1, #+120]
//   19    //     break;
//   20    // case 1:
//   21         mtrctrl->ecdrgt.value  = placc_temp_value[1];
        LDR.N    R0,??DataTable4
        LDRSH    R0,[R0, #+2]
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STRH     R0,[R1, #+128]
//   22    //     break;
//   23   //}
//   24  
//   25   
//   26 
//   27   mtrctrl->ecdlft.mileage += mtrctrl->ecdlft.value;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        LDRSH    R0,[R0, #+120]
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+124]
        SXTAH    R0,R1,R0
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+124]
//   28   mtrctrl->ecdrgt.mileage += mtrctrl->ecdrgt.value;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        LDRSH    R0,[R0, #+128]
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+132]
        SXTAH    R0,R1,R0
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+132]
//   29   
//   30   average_num= mtrctrl->ecdlft.mileage;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+124]
        LDR.N    R1,??DataTable4_2
        STR      R0,[R1, #+0]
//   31   pit_enter_counter++;
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable4_3
        STR      R0,[R1, #+0]
//   32   
//   33 //µ¥¹â±àcounterÇåÁã
//   34   LPTMR0->CSR&=(~LPTMR_CSR_TEN_MASK); 
        LDR.N    R0,??DataTable4_4  ;; 0x40040000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable4_4  ;; 0x40040000
        STR      R0,[R1, #+0]
//   35   LPTMR0->CSR |= LPTMR_CSR_TEN_MASK;  
        LDR.N    R0,??DataTable4_4  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable4_4  ;; 0x40040000
        STR      R0,[R1, #+0]
//   36 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`pit_motor_control::pit_enter_counter`:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`pit_motor_control::placc_temp_value`:
        DS8 4
//   37   

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   38 void motor_control__set_duty(motor_sel_t sel,int32 duty){
motor_control__set_duty:
        PUSH     {R3-R5,LR}
        MOVS     R2,R1
//   39   motor_chn_t ch_0,ch_1;
//   40   
//   41   switch(sel){
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??motor_control__set_duty_0
        CMP      R0,#+1
        BEQ.N    ??motor_control__set_duty_1
        B.N      ??motor_control__set_duty_2
//   42   case  Left_Motor:
//   43     if(duty>=0){
??motor_control__set_duty_0:
        CMP      R2,#+0
        BMI.N    ??motor_control__set_duty_3
//   44         ch_0=Motor_LR;
        MOVS     R4,#+1
//   45         ch_1=Motor_LF;
        MOVS     R3,#+0
        B.N      ??motor_control__set_duty_4
//   46     }else{
//   47         ch_0=Motor_LF;
??motor_control__set_duty_3:
        MOVS     R4,#+0
//   48         ch_1=Motor_LR;       
        MOVS     R3,#+1
//   49     }
//   50     break;
//   51   case Right_Motor:
//   52     if(duty>=0){
//   53         ch_0=Motor_RR;
//   54         ch_1=Motor_RF;
//   55     }else{
//   56         ch_0=Motor_RF;
//   57         ch_1=Motor_RR;       
//   58     }
//   59     break;
//   60   default:return;
//   61   }
//   62   
//   63   if(duty<0) duty=-duty;
??motor_control__set_duty_4:
??motor_control__set_duty_5:
        CMP      R2,#+0
        BPL.N    ??motor_control__set_duty_6
        RSBS     R2,R2,#+0
//   64   
//   65     LPLD_FTM_PWM_ChangeDuty(mtrctrl->mtrcfg[ch_1].FTMn, mtrctrl->mtrcfg[ch_1].FTM_Chn, duty);
??motor_control__set_duty_6:
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R1,#+12
        MUL      R1,R1,R3
        ADD      R0,R0,R1
        LDRB     R1,[R0, #+16]
        LDR.N    R0,??DataTable4_1
        LDR      R5,[R0, #+0]
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R0,#+12
        MULS     R3,R0,R3
        ADD      R0,R5,R3
        LDR      R0,[R0, #+12]
        BL       LPLD_FTM_PWM_ChangeDuty
//   66     LPLD_FTM_PWM_ChangeDuty(mtrctrl->mtrcfg[ch_0].FTMn, mtrctrl->mtrcfg[ch_0].FTM_Chn, 0);
        MOVS     R2,#+0
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+12
        MUL      R1,R1,R4
        ADD      R0,R0,R1
        LDRB     R1,[R0, #+16]
        LDR.N    R0,??DataTable4_1
        LDR      R3,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+12
        MULS     R4,R0,R4
        ADD      R0,R3,R4
        LDR      R0,[R0, #+12]
        BL       LPLD_FTM_PWM_ChangeDuty
//   67 }
??motor_control__set_duty_7:
        POP      {R0,R4,R5,PC}    ;; return
??motor_control__set_duty_1:
        CMP      R2,#+0
        BMI.N    ??motor_control__set_duty_8
        MOVS     R4,#+3
        MOVS     R3,#+2
        B.N      ??motor_control__set_duty_9
??motor_control__set_duty_8:
        MOVS     R4,#+2
        MOVS     R3,#+3
??motor_control__set_duty_9:
        B.N      ??motor_control__set_duty_5
??motor_control__set_duty_2:
        B.N      ??motor_control__set_duty_7
//   68 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   69 void motor_control__enable(){
motor_control__enable:
        PUSH     {R7,LR}
//   70     LPLD_PIT_EnableIrq(mtrctrl->pit_init_param);
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R1,R0,#+60
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//   71 }
        POP      {R0,PC}          ;; return
//   72 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   73 void motor_control__disable(){
motor_control__disable:
        PUSH     {R7,LR}
//   74     LPLD_PIT_DisableIrq(mtrctrl->pit_init_param);
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R1,R0,#+60
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_DisableIrq
//   75 }
        POP      {R0,PC}          ;; return
//   76 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   77 void motor_control__config(motor_control_t *mtrctrl_usr){
motor_control__config:
        PUSH     {R1-R5,LR}
//   78   mtrctrl=mtrctrl_usr;
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+0]
//   79   int8 i;
//   80   //PIT
//   81   memset(&(mtrctrl->pit_init_param),0,sizeof(PIT_InitTypeDef));
        MOVS     R2,#+20
        MOVS     R1,#+0
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+60
        BL       memset
//   82   mtrctrl->pit_init_param.PIT_Pitx=mtrctrl->pit;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+60]
//   83   mtrctrl->pit_init_param.PIT_PeriodMs=mtrctrl->period_ms;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+68]
//   84   mtrctrl->pit_init_param.PIT_Isr=pit_motor_control;
        LDR.N    R0,??DataTable4_5
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+76]
//   85   LPLD_PIT_Init(mtrctrl->pit_init_param);
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R1,R0,#+60
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   86   
//   87   //LPTMR
//   88   memset(&(mtrctrl->lptmr_init_param),0,sizeof(LPTMR_InitTypeDef));
        MOVS     R2,#+12
        MOVS     R1,#+0
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+80
        BL       memset
//   89   mtrctrl->lptmr_init_param.LPTMR_Mode =LPTMR_MODE_PLACC;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+80]
//   90 
//   91   mtrctrl->lptmr_init_param.LPTMR_PluseAccInput =mtrctrl->ecd_rgt.LPTMR_ALTn;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+9]
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+84]
//   92   LPLD_LPTMR_Init(mtrctrl->lptmr_init_param);
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+80
        LDM      R0,{R0-R2}
        BL       LPLD_LPTMR_Init
//   93     mtrctrl->lptmr_init_param.LPTMR_PluseAccInput =mtrctrl->ecd_lft.LPTMR_ALTn;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+8]
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+84]
//   94   LPLD_LPTMR_Init(mtrctrl->lptmr_init_param);
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+80
        LDM      R0,{R0-R2}
        BL       LPLD_LPTMR_Init
//   95   
//   96   //mile
//   97   mtrctrl->ecdlft.mileage=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+124]
//   98   mtrctrl->ecdrgt.mileage=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+132]
//   99   
//  100   //ftm
//  101   memset(&(mtrctrl->motor_init_param),0,sizeof(FTM_InitTypeDef));
        MOVS     R2,#+28
        MOVS     R1,#+0
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+92
        BL       memset
//  102   for(i=0;i<Motor_LEN;i++){
        MOVS     R4,#+0
        B.N      ??motor_control__config_0
//  103     mtrctrl->motor_init_param.FTM_Ftmx=mtrctrl->mtrcfg[i].FTMn;
??motor_control__config_1:
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        MOVS     R1,#+12
        SMULBB   R1,R4,R1
        ADD      R0,R0,R1
        LDR      R0,[R0, #+12]
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+92]
//  104     mtrctrl->motor_init_param.FTM_Mode=FTM_MODE_PWM;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+96]
//  105     mtrctrl->motor_init_param.FTM_PwmFreq=mtrctrl->mtrcfg[i].freq;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        MOVS     R1,#+12
        SMULBB   R1,R4,R1
        ADD      R0,R0,R1
        LDR      R0,[R0, #+20]
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+100]
//  106     LPLD_FTM_Init(mtrctrl->motor_init_param);
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R1,R0,#+92
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//  107     LPLD_FTM_PWM_Enable(mtrctrl->mtrcfg[i].FTMn,
//  108                         mtrctrl->mtrcfg[i].FTM_Chn,
//  109                         0,
//  110                         mtrctrl->mtrcfg[i].PTXn,
//  111                         ALIGN_LEFT
//  112                         );
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        MOVS     R1,#+12
        SMULBB   R1,R4,R1
        ADD      R0,R0,R1
        LDRB     R3,[R0, #+17]
        MOVS     R2,#+0
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        MOVS     R1,#+12
        SMULBB   R1,R4,R1
        ADD      R0,R0,R1
        LDRB     R1,[R0, #+16]
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        MOVS     R5,#+12
        SMULBB   R5,R4,R5
        ADD      R0,R0,R5
        LDR      R0,[R0, #+12]
        BL       LPLD_FTM_PWM_Enable
//  113   }
        ADDS     R4,R4,#+1
??motor_control__config_0:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BLT.N    ??motor_control__config_1
//  114 }
        POP      {R0-R2,R4,R5,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     `pit_motor_control::placc_temp_value`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     mtrctrl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     average_num

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     `pit_motor_control::pit_enter_counter`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x40040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     pit_motor_control

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  16 bytes in section .bss
// 728 bytes in section .text
// 
// 728 bytes of CODE memory
//  16 bytes of DATA memory
//
//Errors: none
//Warnings: 3
