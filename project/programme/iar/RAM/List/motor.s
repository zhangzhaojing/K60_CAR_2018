///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.10.1.12857/W32 for ARM      20/Jan/2018  23:49:39
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  F:\K60_CAR_2018\lib\peripheral\motor.c
//    Command line =  
//        -f C:\Users\19071_~1\AppData\Local\Temp\EW535C.tmp
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

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    6 void pit_motor_control(void){
pit_motor_control:
        PUSH     {R7,LR}
//    7   static uint32 pit_enter_counter;
//    8   static uint16 placc_temp_value[2];
//    9   do{
//   10       placc_temp_value[0] = LPLD_LPTMR_GetPulseAcc();
??pit_motor_control_0:
        BL       LPLD_LPTMR_GetPulseAcc
        LDR.N    R1,??DataTable4
        STRH     R0,[R1, #+0]
//   11       placc_temp_value[1] = LPLD_LPTMR_GetPulseAcc();
        BL       LPLD_LPTMR_GetPulseAcc
        LDR.N    R1,??DataTable4
        STRH     R0,[R1, #+2]
//   12   }while(abs_diff(placc_temp_value[0], placc_temp_value[1])>1);
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
//   13   
//   14   switch(0){
//   15     case 0:
//   16         mtrctrl->ecdlft.value = placc_temp_value[1];
        LDR.N    R0,??DataTable4
        LDRSH    R0,[R0, #+2]
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STRH     R0,[R1, #+120]
//   17         break;
//   18     case 1:
//   19         mtrctrl->ecdrgt.value  = placc_temp_value[1];
//   20         break;
//   21   }
//   22   pit_enter_counter++;
        LDR.N    R0,??DataTable4_2
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable4_2
        STR      R0,[R1, #+0]
//   23 
//   24   mtrctrl->ecdlft.mileage += mtrctrl->ecdlft.value;
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
//   25   mtrctrl->ecdrgt.mileage += mtrctrl->ecdrgt.value;
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
//   26   
//   27 //µ¥¹â±àcounterÇåÁã
//   28   LPTMR0->CSR&=(~LPTMR_CSR_TEN_MASK); 
        LDR.N    R0,??DataTable4_3  ;; 0x40040000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable4_3  ;; 0x40040000
        STR      R0,[R1, #+0]
//   29   LPTMR0->CSR |= LPTMR_CSR_TEN_MASK;  
        LDR.N    R0,??DataTable4_3  ;; 0x40040000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable4_3  ;; 0x40040000
        STR      R0,[R1, #+0]
//   30 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`pit_motor_control::pit_enter_counter`:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`pit_motor_control::placc_temp_value`:
        DS8 4
//   31   

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   32 void motor_control__set_duty(motor_sel_t sel,int32 duty){
motor_control__set_duty:
        PUSH     {R3-R5,LR}
        MOVS     R2,R1
//   33   motor_chn_t ch_0,ch_1;
//   34   
//   35   switch(sel){
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??motor_control__set_duty_0
        CMP      R0,#+1
        BEQ.N    ??motor_control__set_duty_1
        B.N      ??motor_control__set_duty_2
//   36   case  Left_Motor:
//   37     if(duty>=0){
??motor_control__set_duty_0:
        CMP      R2,#+0
        BMI.N    ??motor_control__set_duty_3
//   38         ch_0=Motor_LR;
        MOVS     R4,#+1
//   39         ch_1=Motor_LF;
        MOVS     R3,#+0
        B.N      ??motor_control__set_duty_4
//   40     }else{
//   41         ch_0=Motor_LF;
??motor_control__set_duty_3:
        MOVS     R4,#+0
//   42         ch_1=Motor_LR;       
        MOVS     R3,#+1
//   43     }
//   44     break;
//   45   case Right_Motor:
//   46     if(duty>=0){
//   47         ch_0=Motor_RR;
//   48         ch_1=Motor_RF;
//   49     }else{
//   50         ch_0=Motor_RF;
//   51         ch_1=Motor_RR;       
//   52     }
//   53     break;
//   54   default:return;
//   55   }
//   56   
//   57   if(duty<0) duty=-duty;
??motor_control__set_duty_4:
??motor_control__set_duty_5:
        CMP      R2,#+0
        BPL.N    ??motor_control__set_duty_6
        RSBS     R2,R2,#+0
//   58   
//   59     LPLD_FTM_PWM_ChangeDuty(mtrctrl->mtrcfg[ch_1].FTMn, mtrctrl->mtrcfg[ch_1].FTM_Chn, duty);
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
//   60     LPLD_FTM_PWM_ChangeDuty(mtrctrl->mtrcfg[ch_0].FTMn, mtrctrl->mtrcfg[ch_0].FTM_Chn, 0);
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
//   61 }
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
//   62 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   63 void motor_control__enable(){
motor_control__enable:
        PUSH     {R7,LR}
//   64     LPLD_PIT_EnableIrq(mtrctrl->pit_init_param);
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R1,R0,#+60
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//   65 }
        POP      {R0,PC}          ;; return
//   66 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   67 void motor_control__disable(){
motor_control__disable:
        PUSH     {R7,LR}
//   68     LPLD_PIT_DisableIrq(mtrctrl->pit_init_param);
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R1,R0,#+60
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_DisableIrq
//   69 }
        POP      {R0,PC}          ;; return
//   70 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   71 void motor_control__config(motor_control_t *mtrctrl_usr){
motor_control__config:
        PUSH     {R1-R5,LR}
//   72   mtrctrl=mtrctrl_usr;
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+0]
//   73   int8 i;
//   74   //PIT
//   75   memset(&(mtrctrl->pit_init_param),0,sizeof(PIT_InitTypeDef));
        MOVS     R2,#+20
        MOVS     R1,#+0
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+60
        BL       memset
//   76   mtrctrl->pit_init_param.PIT_Pitx=mtrctrl->pit;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+60]
//   77   mtrctrl->pit_init_param.PIT_PeriodMs=mtrctrl->period_ms;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+68]
//   78   mtrctrl->pit_init_param.PIT_Isr=pit_motor_control;
        LDR.N    R0,??DataTable4_4
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+76]
//   79   
//   80   //LPTMR
//   81   memset(&(mtrctrl->lptmr_init_param),0,sizeof(LPTMR_InitTypeDef));
        MOVS     R2,#+12
        MOVS     R1,#+0
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+80
        BL       memset
//   82   mtrctrl->lptmr_init_param.LPTMR_Mode =LPTMR_MODE_PLACC;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+80]
//   83   mtrctrl->lptmr_init_param.LPTMR_PluseAccInput =mtrctrl->ecd_lft.LPTMR_ALTn;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+8]
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+84]
//   84   LPLD_LPTMR_Init(mtrctrl->lptmr_init_param);
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+80
        LDM      R0,{R0-R2}
        BL       LPLD_LPTMR_Init
//   85   mtrctrl->lptmr_init_param.LPTMR_PluseAccInput =mtrctrl->ecd_rgt.LPTMR_ALTn;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+9]
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+84]
//   86   LPLD_LPTMR_Init(mtrctrl->lptmr_init_param);
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+80
        LDM      R0,{R0-R2}
        BL       LPLD_LPTMR_Init
//   87   
//   88   //mile
//   89   mtrctrl->ecdlft.mileage=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+124]
//   90   mtrctrl->ecdrgt.mileage=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+132]
//   91   
//   92   //ftm
//   93   memset(&(mtrctrl->motor_init_param),0,sizeof(FTM_InitTypeDef));
        MOVS     R2,#+28
        MOVS     R1,#+0
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+92
        BL       memset
//   94   for(i=0;i<Motor_LEN;i++){
        MOVS     R4,#+0
        B.N      ??motor_control__config_0
//   95     mtrctrl->motor_init_param.FTM_Ftmx=mtrctrl->mtrcfg[i].FTMn;
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
//   96     mtrctrl->motor_init_param.FTM_Mode=FTM_MODE_PWM;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+96]
//   97     mtrctrl->motor_init_param.FTM_PwmFreq=mtrctrl->mtrcfg[i].freq;
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
//   98     LPLD_FTM_Init(mtrctrl->motor_init_param);
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R1,R0,#+92
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   99     LPLD_FTM_PWM_Enable(mtrctrl->mtrcfg[i].FTMn,
//  100                         mtrctrl->mtrcfg[i].FTM_Chn,
//  101                         0,
//  102                         mtrctrl->mtrcfg[i].PTXn,
//  103                         ALIGN_LEFT
//  104                         );
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
//  105   }
        ADDS     R4,R4,#+1
??motor_control__config_0:
        SXTB     R4,R4            ;; SignExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BLT.N    ??motor_control__config_1
//  106 }
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
        DC32     `pit_motor_control::pit_enter_counter`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x40040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     pit_motor_control

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  12 bytes in section .bss
// 676 bytes in section .text
// 
// 676 bytes of CODE memory
//  12 bytes of DATA memory
//
//Errors: none
//Warnings: 2
