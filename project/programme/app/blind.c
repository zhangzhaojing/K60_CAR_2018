#include "program.h"

#define R 80 //cm   80
#define CIRCLE 2*3.1415926535*R //Ô²µÄÖÜ³¤
#define MIL CIRCLE*0.01*1965

static int dir=0;

static servo_t steer={
  FTM1,FTM_Ch1,PTA9,50,  625, 80, 21, 637,166,625,-178//,median,amplitude, paramL, paramK
};

static motor_control_t mtrctrl = {
    PIT0, 10, 
    {LPTMR_ALT1}, {LPTMR_ALT2}, 
    {{FTM0, FTM_Ch0, PTC1, 30000},  {FTM0, FTM_Ch1, PTC2, 30000}, 
 {FTM0, FTM_Ch2, PTC3, 30000},{FTM0, FTM_Ch3, PTC4, 30000}    }
};

extern void app__blind(void){
  servo__config(&steer);
  motor_control__config(&mtrctrl);
  motor_control__enable();
  motor_control__set_duty(Left_Motor, (int32)(1500.0f));
  motor_control__set_duty(Right_Motor, (int32)(-1500.0f));
  
  servo__set_radius_dir(R,dir);

  while(1){
     if(mtrctrl.ecdlft.mileage>MIL){
     if(dir==0)dir=1;else dir=0;
     servo__set_radius_dir(R,dir);
     mtrctrl.ecdlft.mileage=0;
    }
  }
  
}