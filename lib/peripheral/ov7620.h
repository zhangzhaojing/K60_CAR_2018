#ifndef _P_OV7620_H_
#define _P_OV7620_H_

#include <stdlib.h>
#include "common.h"

void ov7620__config();
void camera__take_a_photo_please_();
extern uint8 Pix_Data[240*320];


#endif