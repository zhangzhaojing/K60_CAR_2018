#include "program.h"

static motor_control_t mtrctrl = {
    PIT0, 10, 
    {LPTMR_ALT1}, {LPTMR_ALT2}, 
    {{FTM0, FTM_Ch0, PTC1, 30000},  {FTM0, FTM_Ch1, PTC2, 30000}, 
 {FTM0, FTM_Ch2, PTC3, 30000},{FTM0, FTM_Ch3, PTC4, 30000} /*RR*/   }
};


extern void app__motor_dev(void){

    motor_control__config(&mtrctrl);
    motor_control__enable();
   
    motor_control__set_duty(Left_Motor, (int32)(2000.0f));
    motor_control__set_duty(Right_Motor, (int32)(-2000.0f));

}