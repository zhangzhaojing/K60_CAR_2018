///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.10.1.12857/W32 for ARM      20/Jan/2018  23:10:02
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  F:\K60_CAR_2018\lib\common\io.c
//    Command line =  
//        -f C:\Users\19071_~1\AppData\Local\Temp\EWC29.tmp
//        (F:\K60_CAR_2018\lib\common\io.c -D LPLD_K60 -D USE_K60DZ10 -lCN
//        F:\K60_CAR_2018\project\programme\iar\RAM\List -lB
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
//    List file    =  F:\K60_CAR_2018\project\programme\iar\RAM\List\io.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_UART_GetChar
        EXTERN LPLD_UART_GetChar_Present
        EXTERN LPLD_UART_PutChar

        PUBLIC char_present
        PUBLIC in_char
        PUBLIC out_char

// F:\K60_CAR_2018\lib\common\io.c
//    1 /**
//    2  * @file io.c
//    3  * @version 3.01[By LPLD]
//    4  * @date 2013-11-4
//    5  * @brief ��������/�������
//    6  *
//    7  * ���Ľ���:�������޸�
//    8  *
//    9  * TERMINAL_PORTΪ���ںţ����û����̵�k60_card.h�ж���
//   10  *
//   11  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//   12  * http://www.lpld.cn
//   13  * mail:support@lpld.cn
//   14  *
//   15  * @par
//   16  * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
//   17  * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
//   18  * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
//   19  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   20  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   21  * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
//   22  * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
//   23  */
//   24 
//   25 #include "common.h"
//   26 #include "HW_UART.h"
//   27 
//   28 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   29 int8 in_char (void)
//   30 {
in_char:
        PUSH     {R7,LR}
//   31 	return LPLD_UART_GetChar(TERM_PORT);
        LDR.N    R0,??DataTable2  ;; 0x400eb000
        BL       LPLD_UART_GetChar
        POP      {R1,PC}          ;; return
//   32 }
//   33 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   34 void out_char (int8 ch)
//   35 {
out_char:
        PUSH     {R7,LR}
        MOVS     R1,R0
//   36 	LPLD_UART_PutChar(TERM_PORT, ch);
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x400eb000
        BL       LPLD_UART_PutChar
//   37 }
        POP      {R0,PC}          ;; return
//   38 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   39 int32 char_present (void)
//   40 {
char_present:
        PUSH     {R7,LR}
//   41 	return LPLD_UART_GetChar_Present(TERM_PORT);
        LDR.N    R0,??DataTable2  ;; 0x400eb000
        BL       LPLD_UART_GetChar_Present
        POP      {R1,PC}          ;; return
//   42 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x400eb000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//   43 /********************************************************************/
// 
// 38 bytes in section .text
// 
// 38 bytes of CODE memory
//
//Errors: none
//Warnings: none
