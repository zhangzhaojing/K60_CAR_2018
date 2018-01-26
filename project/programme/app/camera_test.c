#include "program.h"
//static uint8 Pix_Data[240][320];


UART_InitTypeDef uart0_init_struct;




void uart_init(void)
{
  uart0_init_struct.UART_Uartx = UART0; //ʹ��UART0
  uart0_init_struct.UART_BaudRate = 9600; //���ò�����9600
  uart0_init_struct.UART_RxPin = PTA15;  //��������ΪPTE15
  uart0_init_struct.UART_TxPin = PTA14;  //��������ΪPTE14
  //��ʼ��UART
  LPLD_UART_Init(uart0_init_struct);
}

extern void app__camera_test(void){
    
    int i,j;
    int tem;
    
    uart_init();
    ov7620__config();
    //camera__take_a_photo_please_();
   // camera__take_a_photo_please_();
   // camera__take_a_photo_please_();
    //camera__take_a_photo_please_();
    //camera__take_a_photo_please_();
    for(i=0;i<240;i++){
      for(j=0;j<320;j++){
       // if(Pix_Data[i][j]>128) tem=0;else tem=1;
        LPLD_UART_PutChar(UART0, Pix_Data[i][j]);
      } 
    }
}