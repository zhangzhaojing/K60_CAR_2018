#ifndef _P_MOTOR_H_
#define _P_MOTOR_H_

#include "common.h"
#include "wrapper.h"

//////////////////////////////////motor
typedef struct{
  FTM_Type *FTMn;
  FtmChnEnum_Type FTM_Chn;
  PortPinsEnum_Type PTXn;
  uint32 freq;
}motor_t;

typedef enum{
  Left_Motor,Right_Motor
}motor_sel_t;

typedef enum{
  Motor_LF,Motor_LR,Motor_RF,Motor_RR,Motor_LEN
}motor_chn_t;

//////////////////////////////////encoder
typedef struct{
  uint8 LPTMR_ALTn; //     LPTMR_ALT1-PTA19Òý½Å , LPTMR_ALT2-PTC5Òý½Å
}encoder_t;

typedef struct{
  vint16 value;
  vint32 mileage;
}encoder_mile_t;

///////////////////////////////struct
typedef struct{
  PITx pit;
  uint32 period_ms;
  encoder_t ecd_lft;
  encoder_t ecd_rgt;
  motor_t mtrcfg[Motor_LEN];
  
  PIT_InitTypeDef pit_init_param;
  LPTMR_InitTypeDef lptmr_init_param;
  FTM_InitTypeDef motor_init_param;
  encoder_mile_t ecdlft,ecdrgt;
}motor_control_t;

void motor_control__config(motor_control_t *mtrctrl);
void motor_control__set_duty(motor_sel_t sel,int32 duty);
void motor_control__enable();
void motor_control__disable();


#endif
