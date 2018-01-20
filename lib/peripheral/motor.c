#include "motor.h"
#include <math.h>

static motor_control_t *mtrctrl;

void pit_motor_control(void){
  static uint32 pit_enter_counter;
  static uint16 placc_temp_value[2];
  do{
      placc_temp_value[0] = LPLD_LPTMR_GetPulseAcc();
      placc_temp_value[1] = LPLD_LPTMR_GetPulseAcc();
  }while(abs_diff(placc_temp_value[0], placc_temp_value[1])>1);
  
  switch(0){
    case 0:
        mtrctrl->ecdlft.value = placc_temp_value[1];
        break;
    case 1:
        mtrctrl->ecdrgt.value  = placc_temp_value[1];
        break;
  }
  pit_enter_counter++;

  mtrctrl->ecdlft.mileage += mtrctrl->ecdlft.value;
  mtrctrl->ecdrgt.mileage += mtrctrl->ecdrgt.value;
  
//µ¥¹â±àcounterÇåÁã
  LPTMR0->CSR&=(~LPTMR_CSR_TEN_MASK); 
  LPTMR0->CSR |= LPTMR_CSR_TEN_MASK;  
}
  
void motor_control__set_duty(motor_sel_t sel,int32 duty){
  motor_chn_t ch_0,ch_1;
  
  switch(sel){
  case  Left_Motor:
    if(duty>=0){
        ch_0=Motor_LR;
        ch_1=Motor_LF;
    }else{
        ch_0=Motor_LF;
        ch_1=Motor_LR;       
    }
    break;
  case Right_Motor:
    if(duty>=0){
        ch_0=Motor_RR;
        ch_1=Motor_RF;
    }else{
        ch_0=Motor_RF;
        ch_1=Motor_RR;       
    }
    break;
  default:return;
  }
  
  if(duty<0) duty=-duty;
  
    LPLD_FTM_PWM_ChangeDuty(mtrctrl->mtrcfg[ch_1].FTMn, mtrctrl->mtrcfg[ch_1].FTM_Chn, duty);
    LPLD_FTM_PWM_ChangeDuty(mtrctrl->mtrcfg[ch_0].FTMn, mtrctrl->mtrcfg[ch_0].FTM_Chn, 0);
}

void motor_control__enable(){
    LPLD_PIT_EnableIrq(mtrctrl->pit_init_param);
}

void motor_control__disable(){
    LPLD_PIT_DisableIrq(mtrctrl->pit_init_param);
}

void motor_control__config(motor_control_t *mtrctrl_usr){
  mtrctrl=mtrctrl_usr;
  int8 i;
  //PIT
  memset(&(mtrctrl->pit_init_param),0,sizeof(PIT_InitTypeDef));
  mtrctrl->pit_init_param.PIT_Pitx=mtrctrl->pit;
  mtrctrl->pit_init_param.PIT_PeriodMs=mtrctrl->period_ms;
  mtrctrl->pit_init_param.PIT_Isr=pit_motor_control;
  
  //LPTMR
  memset(&(mtrctrl->lptmr_init_param),0,sizeof(LPTMR_InitTypeDef));
  mtrctrl->lptmr_init_param.LPTMR_Mode =LPTMR_MODE_PLACC;
  mtrctrl->lptmr_init_param.LPTMR_PluseAccInput =mtrctrl->ecd_lft.LPTMR_ALTn;
  LPLD_LPTMR_Init(mtrctrl->lptmr_init_param);
  mtrctrl->lptmr_init_param.LPTMR_PluseAccInput =mtrctrl->ecd_rgt.LPTMR_ALTn;
  LPLD_LPTMR_Init(mtrctrl->lptmr_init_param);
  
  //mile
  mtrctrl->ecdlft.mileage=0;
  mtrctrl->ecdrgt.mileage=0;
  
  //ftm
  memset(&(mtrctrl->motor_init_param),0,sizeof(FTM_InitTypeDef));
  for(i=0;i<Motor_LEN;i++){
    mtrctrl->motor_init_param.FTM_Ftmx=mtrctrl->mtrcfg[i].FTMn;
    mtrctrl->motor_init_param.FTM_Mode=FTM_MODE_PWM;
    mtrctrl->motor_init_param.FTM_PwmFreq=mtrctrl->mtrcfg[i].freq;
    LPLD_FTM_Init(mtrctrl->motor_init_param);
    LPLD_FTM_PWM_Enable(mtrctrl->mtrcfg[i].FTMn,
                        mtrctrl->mtrcfg[i].FTM_Chn,
                        0,
                        mtrctrl->mtrcfg[i].PTXn,
                        ALIGN_LEFT
                        );
  }
}