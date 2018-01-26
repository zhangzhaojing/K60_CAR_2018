///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.10.1.12857/W32 for ARM      25/Jan/2018  20:12:49
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  F:\K60_CAR_2018\project\programme\app\app__camera_dev.c
//    Command line =  
//        -f C:\Users\19071_~1\AppData\Local\Temp\EW9927.tmp
//        (F:\K60_CAR_2018\project\programme\app\app__camera_dev.c -D LPLD_K60
//        -D USE_K60DZ10 -lCN F:\K60_CAR_2018\project\programme\iar\RAM\List
//        -lB F:\K60_CAR_2018\project\programme\iar\RAM\List -o
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
//    List file    =  
//        F:\K60_CAR_2018\project\programme\iar\RAM\List\app__camera_dev.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_UART_Init
        EXTERN LPLD_UART_PutCharArr
        EXTERN OLED__show_img
        EXTERN OLED__show_text
        EXTERN __aeabi_memcpy4
        EXTERN camera__config
        EXTERN camera__take_a_photo_please
        EXTERN dummy_delay_ms
        EXTERN image__uncompress
        EXTERN sprintf

        PUBLIC app__camera_dev
        PUBLIC uart11_init_struct
        PUBLIC uart_init

// F:\K60_CAR_2018\project\programme\app\app__camera_dev.c
//    1 #include "program.h"
//    2 
//    3 #if 1
//    4 
//    5 /* 摄像头引脚配置信息和摄像头单例 */

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//    6 static camera_cfg_t camcfg={
camcfg:
        DC32 400FF100H, 1024, 10, 400FF100H, 4096, 12, 400FF0C0H, 16384, 8192
        DC32 400FF100H, 255, 0, 400FF0C0H, 4096, 12
        DC8 0, 0, 0, 0, 0, 0, 0, 0
//    7     {PTE, GPIO_Pin10, 10}, {PTE, GPIO_Pin12, 12},/* scl, sda */
//    8 	PTD, GPIO_Pin14/* vsync */, GPIO_Pin13/* href */,
//    9     {PTE, GPIO_Pin0_7, 0}, /* d0 - d7 */
//   10     {PTD, GPIO_Pin12, 12}, /* pclk */
//   11     0, /* DMA_CHx */
//   12 };

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   13 static uint8_t camera_buff_data[320*240/8];
camera_buff_data:
        DS8 9600
//   14 static void show_and_send_image(void);

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   15 static camera_t camera = {
camera:
        DC16 240, 320
        DC32 camera_buff_data, show_and_send_image
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
//   16     {240, 320, camera_buff_data},/* compressed buff */
//   17     show_and_send_image, /* callback function */
//   18 };
//   19 
//   20 /* OLED引脚配置信息和OLED单例 */
//   21 static oled_cfg_t oled_cfg={
//   22 	{PTD, GPIO_Pin1, 1},//scl
//   23 	{PTD, GPIO_Pin3, 3},//sda
//   24 	{PTC, GPIO_Pin15, 15},//rst
//   25 	{PTD, GPIO_Pin2, 2},//dc
//   26 	{PTD, GPIO_Pin4, 4}//cs
//   27 };
//   28 static oled_t oled;
//   29 
//   30 /* OLED 图像实时预览区域 */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   31 static uint8_t preview_buff[48*64];
preview_buff:
        DS8 3072

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   32 static image_t preview_img = {48, 64, preview_buff};
preview_img:
        DC16 48, 64
        DC32 preview_buff

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   33 static image_region_t preview_imgreg = {0, 48, 0, 64, &preview_img};
preview_imgreg:
        DC16 0, 48, 0, 64
        DC32 preview_img

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   34 static oled_region_t preview_oledreg = {0, 0, 6, 64};
preview_oledreg:
        DC8 0, 0, 6, 64
//   35 
//   36 /* OLED 状态栏文字区域 */

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   37 static oled_region_t status_oledreg = {7, 0, 1, 80};
status_oledreg:
        DC8 7, 0, 1, 80
//   38 #define OLED_status_bar(str) OLED__show_text(&status_oledreg, str, 1, 0)
//   39 
//   40 /* 图像发送串口配置 */

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   41 static UART_InitTypeDef img_uart_init = {UART0, 115200, PTA14, PTA15};
img_uart_init:
        DC32 4006A000H, 115200
        DC8 14, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
//   42 
//   43 /* 按键配置及实例枚举 */
//   44 typedef enum {KEY_UP, KEY_DOWN, KEY_CENTER, KEY_LEFT, KEY_RIGHT, KEY_LEN} key_t;

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   45 static gpio_cfg_t keys_cfg[KEY_LEN] = {
keys_cfg:
        DC32 400FF0C0H, 2048, 11, 400FF0C0H, 128, 7, 400FF0C0H, 512, 9
        DC32 400FF0C0H, 256, 8, 400FF0C0H, 1024, 10
//   46     {PTD, GPIO_Pin11, 11}, {PTD, GPIO_Pin7, 7}, {PTD, GPIO_Pin9, 9}, {PTD, GPIO_Pin8, 8}, {PTD, GPIO_Pin10, 10}
//   47 };

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   48 static char * key_chr = "UDCLR";
key_chr:
        DC32 ?_0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   49 static oled_region_t keystat_oledreg = {7, 85, 1, 6*7};
keystat_oledreg:
        DC8 7, 85, 1, 42

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   50 static void OLED_update_keystat(void){
OLED_update_keystat:
        PUSH     {R1-R5,LR}
//   51     static char str[KEY_LEN+1];
//   52     sprintf(str, "[%c%c%c%c%c]",
//   53             (_DI(keys_cfg[KEY_UP])?' ':key_chr[KEY_UP]),
//   54             (_DI(keys_cfg[KEY_DOWN])?' ':key_chr[KEY_DOWN]),
//   55             (_DI(keys_cfg[KEY_CENTER])?' ':key_chr[KEY_CENTER]),
//   56             (_DI(keys_cfg[KEY_LEFT])?' ':key_chr[KEY_LEFT]),
//   57             (_DI(keys_cfg[KEY_RIGHT])?' ':key_chr[KEY_RIGHT])
//   58             );
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+48]
        ADDS     R0,R0,#+16
        LDR.N    R1,??DataTable3
        LDR      R1,[R1, #+56]
        LSLS     R1,R1,#+2
        ADDS     R1,R1,R0, LSL #+5
        ADDS     R1,R1,#+1107296256
        LDR      R0,[R1, #+0]
        CMP      R0,#+0
        BEQ.N    ??OLED_update_keystat_0
        MOVS     R1,#+32
        B.N      ??OLED_update_keystat_1
??OLED_update_keystat_0:
        LDR.N    R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        LDRB     R1,[R0, #+4]
??OLED_update_keystat_1:
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+36]
        ADDS     R0,R0,#+16
        LDR.N    R2,??DataTable3
        LDR      R2,[R2, #+44]
        LSLS     R2,R2,#+2
        ADDS     R2,R2,R0, LSL #+5
        ADDS     R2,R2,#+1107296256
        LDR      R0,[R2, #+0]
        CMP      R0,#+0
        BEQ.N    ??OLED_update_keystat_2
        MOVS     R4,#+32
        B.N      ??OLED_update_keystat_3
??OLED_update_keystat_2:
        LDR.N    R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        LDRB     R4,[R0, #+3]
??OLED_update_keystat_3:
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+24]
        ADDS     R0,R0,#+16
        LDR.N    R2,??DataTable3
        LDR      R2,[R2, #+32]
        LSLS     R2,R2,#+2
        ADDS     R2,R2,R0, LSL #+5
        ADDS     R2,R2,#+1107296256
        LDR      R0,[R2, #+0]
        CMP      R0,#+0
        BEQ.N    ??OLED_update_keystat_4
        MOVS     R5,#+32
        B.N      ??OLED_update_keystat_5
??OLED_update_keystat_4:
        LDR.N    R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        LDRB     R5,[R0, #+2]
??OLED_update_keystat_5:
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+12]
        ADDS     R0,R0,#+16
        LDR.N    R2,??DataTable3
        LDR      R2,[R2, #+20]
        LSLS     R2,R2,#+2
        ADDS     R2,R2,R0, LSL #+5
        ADDS     R2,R2,#+1107296256
        LDR      R0,[R2, #+0]
        CMP      R0,#+0
        BEQ.N    ??OLED_update_keystat_6
        MOVS     R3,#+32
        B.N      ??OLED_update_keystat_7
??OLED_update_keystat_6:
        LDR.N    R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        LDRB     R3,[R0, #+1]
??OLED_update_keystat_7:
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+16
        LDR.N    R2,??DataTable3
        LDR      R2,[R2, #+8]
        LSLS     R2,R2,#+2
        ADDS     R2,R2,R0, LSL #+5
        ADDS     R2,R2,#+1107296256
        LDR      R0,[R2, #+0]
        CMP      R0,#+0
        BEQ.N    ??OLED_update_keystat_8
        MOVS     R2,#+32
        B.N      ??OLED_update_keystat_9
??OLED_update_keystat_8:
        LDR.N    R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        LDRB     R2,[R0, #+0]
??OLED_update_keystat_9:
        STR      R1,[SP, #+8]
        STR      R4,[SP, #+4]
        STR      R5,[SP, #+0]
        LDR.N    R1,??DataTable3_2
        LDR.N    R0,??DataTable3_3
        BL       sprintf
//   59     OLED__show_text(&keystat_oledreg, str, 0, 0);
        MOVS     R3,#+0
        MOVS     R2,#+0
        LDR.N    R1,??DataTable3_3
        LDR.N    R0,??DataTable3_4
        BL       OLED__show_text
//   60 }
        POP      {R0-R2,R4,R5,PC}  ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`OLED_update_keystat::str`:
        DS8 8
//   61 static void keys_gpio_init(void){
//   62     GPIO_InitTypeDef gpio_init;
//   63     uint8 i;
//   64     gpio_init.GPIO_Dir = DIR_INPUT;
//   65     gpio_init.GPIO_PinControl = INPUT_PULL_DIS|IRQC_DIS;
//   66     for(i=0; i<KEY_LEN; i++){
//   67         gpio_init.GPIO_PTx = keys_cfg[i].PTx;
//   68         gpio_init.GPIO_Pins = keys_cfg[i].GPIO_Pinn;
//   69         LPLD_GPIO_Init(gpio_init);
//   70     }
//   71 }
//   72 #define key_is_pressed(kid) (!_DI(keys_cfg[kid]))
//   73 
//   74 /* 图像处理回调函数 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   75 static void show_and_send_image(void){
show_and_send_image:
        PUSH     {R7,LR}
//   76     image__uncompress(&(camera.buff), &preview_img);
        LDR.N    R1,??DataTable3_5
        LDR.N    R0,??DataTable3_6
        BL       image__uncompress
//   77     OLED__show_img(&preview_oledreg, &preview_imgreg, 1, 1);
        MOVS     R3,#+1
        MOVS     R2,#+1
        LDR.N    R1,??DataTable3_7
        LDR.N    R0,??DataTable3_8
        BL       OLED__show_img
//   78     OLED_update_keystat();
        BL       OLED_update_keystat
//   79     if(key_is_pressed(KEY_CENTER)){
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+24]
        ADDS     R0,R0,#+16
        LDR.N    R1,??DataTable3
        LDR      R1,[R1, #+32]
        LSLS     R1,R1,#+2
        ADDS     R1,R1,R0, LSL #+5
        ADDS     R1,R1,#+1107296256
        LDR      R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??show_and_send_image_0
//   80         dummy_delay_ms(10);
        MOVS     R0,#+10
        BL       dummy_delay_ms
//   81         if(key_is_pressed(KEY_CENTER)){
        LDR.N    R0,??DataTable3
        LDR      R0,[R0, #+24]
        ADDS     R0,R0,#+16
        LDR.N    R1,??DataTable3
        LDR      R1,[R1, #+32]
        LSLS     R1,R1,#+2
        ADDS     R1,R1,R0, LSL #+5
        ADDS     R1,R1,#+1107296256
        LDR      R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??show_and_send_image_0
//   82             OLED_status_bar("SEND IMG..");
        MOVS     R3,#+0
        MOVS     R2,#+1
        LDR.N    R1,??DataTable3_9
        LDR.N    R0,??DataTable3_10
        BL       OLED__show_text
//   83             LPLD_UART_PutCharArr(img_uart_init.UART_Uartx, camera_buff_data, camera.buff.nrows*camera.buff.ncols/8);
        LDR.N    R0,??DataTable3_6
        LDRSH    R0,[R0, #+0]
        LDR.N    R1,??DataTable3_6
        LDRSH    R1,[R1, #+2]
        SMULBB   R0,R0,R1
        MOVS     R1,#+8
        SDIV     R2,R0,R1
        LDR.N    R1,??DataTable3_11
        LDR.N    R0,??DataTable3_12
        LDR      R0,[R0, #+0]
        BL       LPLD_UART_PutCharArr
//   84             OLED_status_bar("READY");
        MOVS     R3,#+0
        MOVS     R2,#+1
        LDR.N    R1,??DataTable3_13
        LDR.N    R0,??DataTable3_10
        BL       OLED__show_text
//   85         }
//   86     }
//   87     camera__take_a_photo_please();
??show_and_send_image_0:
        BL       camera__take_a_photo_please
//   88 }
        POP      {R0,PC}          ;; return
//   89 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//   90 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   91 UART_InitTypeDef uart11_init_struct;
uart11_init_struct:
        DS8 28

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   92 void uart_init(void)
//   93 {
uart_init:
        PUSH     {R5-R7,LR}
//   94   uart11_init_struct.UART_Uartx = UART0; //使用UART0
        LDR.N    R0,??DataTable3_14  ;; 0x4006a000
        LDR.N    R1,??DataTable3_15
        STR      R0,[R1, #+0]
//   95   uart11_init_struct.UART_BaudRate = 9600; //设置波特率9600
        MOV      R0,#+9600
        LDR.N    R1,??DataTable3_15
        STR      R0,[R1, #+4]
//   96   uart11_init_struct.UART_RxPin = PTA15;  //接收引脚为PTE15
        MOVS     R0,#+15
        LDR.N    R1,??DataTable3_15
        STRB     R0,[R1, #+9]
//   97   uart11_init_struct.UART_TxPin = PTA14;  //发送引脚为PTE14
        MOVS     R0,#+14
        LDR.N    R1,??DataTable3_15
        STRB     R0,[R1, #+8]
//   98   //初始化UART
//   99   LPLD_UART_Init(uart11_init_struct);
        LDR.N    R1,??DataTable3_15
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//  100 }
        POP      {R0-R2,PC}       ;; return
//  101 
//  102 
//  103 
//  104 
//  105 /* 应用主程序 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  106 extern void app__camera_dev(void){
app__camera_dev:
        PUSH     {R7,LR}
//  107   int i,j;
//  108     camera__config(&camcfg, &camera);
        LDR.N    R1,??DataTable3_6
        LDR.N    R0,??DataTable3_16
        BL       camera__config
//  109     
//  110     camera__take_a_photo_please();
        BL       camera__take_a_photo_please
//  111 
//  112     LPLD_UART_PutCharArr(UART0, camera_buff_data, 240*320);
        MOVS     R2,#+76800
        LDR.N    R1,??DataTable3_11
        LDR.N    R0,??DataTable3_14  ;; 0x4006a000
        BL       LPLD_UART_PutCharArr
//  113    
//  114     while(1);
??app__camera_dev_0:
        B.N      ??app__camera_dev_0
//  115 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     keys_cfg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     key_chr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     `OLED_update_keystat::str`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     keystat_oledreg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     preview_img

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     camera

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     preview_imgreg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     preview_oledreg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     status_oledreg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     camera_buff_data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     img_uart_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     ?_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     0x4006a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DC32     uart11_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DC32     camcfg

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "UDCLR"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC8 "[%c%c%c%c%c]"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_2:
        DC8 "SEND IMG.."
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_3:
        DC8 "READY"
        DC8 0, 0

        END
//  116 
//  117 #else
//  118 extern void app__camera_dev(void){}
//  119 #endif
// 
// 12 708 bytes in section .bss
//    224 bytes in section .data
//     44 bytes in section .rodata
//    500 bytes in section .text
// 
//    500 bytes of CODE  memory
//     44 bytes of CONST memory
// 12 932 bytes of DATA  memory
//
//Errors: none
//Warnings: 9
