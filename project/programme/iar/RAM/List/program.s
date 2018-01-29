///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.10.1.12857/W32 for ARM      29/Jan/2018  14:33:09
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  F:\K60_CAR_2018\project\programme\app\program.c
//    Command line =  
//        -f C:\Users\19071_~1\AppData\Local\Temp\EW7B48.tmp
//        (F:\K60_CAR_2018\project\programme\app\program.c -D LPLD_K60 -D
//        USE_K60DZ10 -lCN F:\K60_CAR_2018\project\programme\iar\RAM\List -lB
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
//    List file    =  F:\K60_CAR_2018\project\programme\iar\RAM\List\program.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN app__camera_test
        EXTERN app__oled_dev

        PUBLIC lptmr_init_param
        PUBLIC main

// F:\K60_CAR_2018\project\programme\app\program.c
//    1 /**
//    2  * --------------����"��������K60�ײ��V3"�Ĺ��̣�LPLD_ServoControl��-----------------
//    3  * @file LPLD_ServoControl.c
//    4  * @version 0.2
//    5  * @date 2013-10-30
//    6  * @brief ����FTMģ���PWM������ܣ�ʵ�ֶ���Ŀ��ơ�
//    7  *
//    8  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//    9  * http://www.lpld.cn
//   10  * mail:support@lpld.cn
//   11  * Ӳ��ƽ̨:  LPLD K60 Card / LPLD K60 Nano
//   12  *
//   13  * �����̻���"��������K60�ײ��V3"������
//   14  * ���п�Դ�������"lib"�ļ����£��û����ظ��ĸ�Ŀ¼�´��룬
//   15  * �����û������豣����"project"�ļ����£��Թ����������ļ�������
//   16  * �ײ��ʹ�÷���������ĵ��� 
//   17  *
//   18  */
//   19 #include "common.h"
//   20 #include "HW_LPTMR.h"
//   21    
//   22 #define CPU_MK60F15
//   23 
//   24 /****************************************
//   25  ˵����
//   26    CPU_MK60DZ10 & CPU_MK60D10
//   27    *��PTC1����������������ź���
//   28    CPU_MK60F12 & CPU_MK60F15
//   29    *��PTD0����������������ź���
//   30     �۲������˶�״̬
//   31    *��������ź�����Χ0.5ms~2.5ms
//   32     ��(-90��~+90��)
//   33  ****************************************/
//   34 
//   35 //��������
//   36 void pwm_init(void);
//   37 void delay(uint16);
//   38 uint32 angle_to_period(int8);

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   39 LPTMR_InitTypeDef lptmr_init_param;
lptmr_init_param:
        DS8 12
//   40 //��������
//   41 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   42 void main (void)
//   43 {    
main:
        PUSH     {R7,LR}
//   44 
//   45 //  app__motor_dev();
//   46 //  app__steer_dev();
//   47 // app__blind();
//   48 app__camera_test();
        BL       app__camera_test
//   49  
//   50 app__oled_dev();
        BL       app__oled_dev
//   51 
//   52   while(1){
??main_0:
        B.N      ??main_0
//   53     
//   54   }
//   55 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 12 bytes in section .bss
// 12 bytes in section .text
// 
// 12 bytes of CODE memory
// 12 bytes of DATA memory
//
//Errors: none
//Warnings: 2
