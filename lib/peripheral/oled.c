#include "oled.h"

const uint8 F6x8[][6] =
{
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },   // sp
    { 0x00, 0x00, 0x00, 0x2f, 0x00, 0x00 },   // !
    { 0x00, 0x00, 0x07, 0x00, 0x07, 0x00 },   // "
    { 0x00, 0x14, 0x7f, 0x14, 0x7f, 0x14 },   // #
    { 0x00, 0x24, 0x2a, 0x7f, 0x2a, 0x12 },   // $
    { 0x00, 0x62, 0x64, 0x08, 0x13, 0x23 },   // %
    { 0x00, 0x36, 0x49, 0x55, 0x22, 0x50 },   // &
    { 0x00, 0x00, 0x05, 0x03, 0x00, 0x00 },   // '
    { 0x00, 0x00, 0x1c, 0x22, 0x41, 0x00 },   // (
    { 0x00, 0x00, 0x41, 0x22, 0x1c, 0x00 },   // )
    { 0x00, 0x14, 0x08, 0x3E, 0x08, 0x14 },   // *
    { 0x00, 0x08, 0x08, 0x3E, 0x08, 0x08 },   // +
    { 0x00, 0x00, 0x00, 0xA0, 0x60, 0x00 },   // ,
    { 0x00, 0x08, 0x08, 0x08, 0x08, 0x08 },   // -
    { 0x00, 0x00, 0x60, 0x60, 0x00, 0x00 },   // .
    { 0x00, 0x20, 0x10, 0x08, 0x04, 0x02 },   // /
    { 0x00, 0x3E, 0x51, 0x49, 0x45, 0x3E },   // 0
    { 0x00, 0x00, 0x42, 0x7F, 0x40, 0x00 },   // 1
    { 0x00, 0x42, 0x61, 0x51, 0x49, 0x46 },   // 2
    { 0x00, 0x21, 0x41, 0x45, 0x4B, 0x31 },   // 3
    { 0x00, 0x18, 0x14, 0x12, 0x7F, 0x10 },   // 4
    { 0x00, 0x27, 0x45, 0x45, 0x45, 0x39 },   // 5
    { 0x00, 0x3C, 0x4A, 0x49, 0x49, 0x30 },   // 6
    { 0x00, 0x01, 0x71, 0x09, 0x05, 0x03 },   // 7
    { 0x00, 0x36, 0x49, 0x49, 0x49, 0x36 },   // 8
    { 0x00, 0x06, 0x49, 0x49, 0x29, 0x1E },   // 9
    { 0x00, 0x00, 0x36, 0x36, 0x00, 0x00 },   // :
    { 0x00, 0x00, 0x56, 0x36, 0x00, 0x00 },   // ;
    { 0x00, 0x08, 0x14, 0x22, 0x41, 0x00 },   // <
    { 0x00, 0x14, 0x14, 0x14, 0x14, 0x14 },   // =
    { 0x00, 0x00, 0x41, 0x22, 0x14, 0x08 },   // >
    { 0x00, 0x02, 0x01, 0x51, 0x09, 0x06 },   // ?
    { 0x00, 0x32, 0x49, 0x59, 0x51, 0x3E },   // @
    { 0x00, 0x7C, 0x12, 0x11, 0x12, 0x7C },   // A
    { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x36 },   // B
    { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x22 },   // C
    { 0x00, 0x7F, 0x41, 0x41, 0x22, 0x1C },   // D
    { 0x00, 0x7F, 0x49, 0x49, 0x49, 0x41 },   // E
    { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x01 },   // F
    { 0x00, 0x3E, 0x41, 0x49, 0x49, 0x7A },   // G
    { 0x00, 0x7F, 0x08, 0x08, 0x08, 0x7F },   // H
    { 0x00, 0x00, 0x41, 0x7F, 0x41, 0x00 },   // I
    { 0x00, 0x20, 0x40, 0x41, 0x3F, 0x01 },   // J
    { 0x00, 0x7F, 0x08, 0x14, 0x22, 0x41 },   // K
    { 0x00, 0x7F, 0x40, 0x40, 0x40, 0x40 },   // L
    { 0x00, 0x7F, 0x02, 0x0C, 0x02, 0x7F },   // M
    { 0x00, 0x7F, 0x04, 0x08, 0x10, 0x7F },   // N
    { 0x00, 0x3E, 0x41, 0x41, 0x41, 0x3E },   // O
    { 0x00, 0x7F, 0x09, 0x09, 0x09, 0x06 },   // P
    { 0x00, 0x3E, 0x41, 0x51, 0x21, 0x5E },   // Q
    { 0x00, 0x7F, 0x09, 0x19, 0x29, 0x46 },   // R
    { 0x00, 0x46, 0x49, 0x49, 0x49, 0x31 },   // S
    { 0x00, 0x01, 0x01, 0x7F, 0x01, 0x01 },   // T
    { 0x00, 0x3F, 0x40, 0x40, 0x40, 0x3F },   // U
    { 0x00, 0x1F, 0x20, 0x40, 0x20, 0x1F },   // V
    { 0x00, 0x3F, 0x40, 0x38, 0x40, 0x3F },   // W
    { 0x00, 0x63, 0x14, 0x08, 0x14, 0x63 },   // X
    { 0x00, 0x07, 0x08, 0x70, 0x08, 0x07 },   // Y
    { 0x00, 0x61, 0x51, 0x49, 0x45, 0x43 },   // Z
    { 0x00, 0x00, 0x7F, 0x41, 0x41, 0x00 },   // [
    { 0x00, 0x55, 0x2A, 0x55, 0x2A, 0x55 },   // 55
    { 0x00, 0x00, 0x41, 0x41, 0x7F, 0x00 },   // ]
    { 0x00, 0x04, 0x02, 0x01, 0x02, 0x04 },   // ^
    { 0x00, 0x40, 0x40, 0x40, 0x40, 0x40 },   // _
    { 0x00, 0x00, 0x01, 0x02, 0x04, 0x00 },   // '
    { 0x00, 0x20, 0x54, 0x54, 0x54, 0x78 },   // a
    { 0x00, 0x7F, 0x48, 0x44, 0x44, 0x38 },   // b
    { 0x00, 0x38, 0x44, 0x44, 0x44, 0x20 },   // c
    { 0x00, 0x38, 0x44, 0x44, 0x48, 0x7F },   // d
    { 0x00, 0x38, 0x54, 0x54, 0x54, 0x18 },   // e
    { 0x00, 0x08, 0x7E, 0x09, 0x01, 0x02 },   // f
    { 0x00, 0x18, 0xA4, 0xA4, 0xA4, 0x7C },   // g
    { 0x00, 0x7F, 0x08, 0x04, 0x04, 0x78 },   // h
    { 0x00, 0x00, 0x44, 0x7D, 0x40, 0x00 },   // i
    { 0x00, 0x40, 0x80, 0x84, 0x7D, 0x00 },   // j
    { 0x00, 0x7F, 0x10, 0x28, 0x44, 0x00 },   // k
    { 0x00, 0x00, 0x41, 0x7F, 0x40, 0x00 },   // l
    { 0x00, 0x7C, 0x04, 0x18, 0x04, 0x78 },   // m
    { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x78 },   // n
    { 0x00, 0x38, 0x44, 0x44, 0x44, 0x38 },   // o
    { 0x00, 0xFC, 0x24, 0x24, 0x24, 0x18 },   // p
    { 0x00, 0x18, 0x24, 0x24, 0x18, 0xFC },   // q
    { 0x00, 0x7C, 0x08, 0x04, 0x04, 0x08 },   // r
    { 0x00, 0x48, 0x54, 0x54, 0x54, 0x20 },   // s
    { 0x00, 0x04, 0x3F, 0x44, 0x40, 0x20 },   // t
    { 0x00, 0x3C, 0x40, 0x40, 0x20, 0x7C },   // u
    { 0x00, 0x1C, 0x20, 0x40, 0x20, 0x1C },   // v
    { 0x00, 0x3C, 0x40, 0x30, 0x40, 0x3C },   // w
    { 0x00, 0x44, 0x28, 0x10, 0x28, 0x44 },   // x
    { 0x00, 0x1C, 0xA0, 0xA0, 0xA0, 0x7C },   // y
    { 0x00, 0x44, 0x64, 0x54, 0x4C, 0x44 },   // z
    { 0x14, 0x14, 0x14, 0x14, 0x14, 0x14 }    // horiz lines
};

static oled_cfg_t * oc;
static oled_t * oled;
const oled_region_t OLED_FULLSCREEN = {0, 0, OLED_PAGE, OLED_COL};

#define OLED_SCL (_DO(oc->scl))
#define OLED_SDA (_DO(oc->sda))
#define OLED_CS (_DO(oc->cs))
#define OLED_RST (_DO(oc->rst))
#define OLED_DC (_DO(oc->dc))

static void write_data(uint8 data, uint8 flip){
    uint8 i=8;
    ASSERT(oled->col < OLED_COL);
    OLED_CS=0;
    OLED_DC=1;
    OLED_SCL=0;
    //asm("nop");
    while(i--)
    {
        OLED_SDA = (((data&0x80)?(1):(0)) ^ flip);
        OLED_SCL=1;asm("nop");asm("nop");OLED_SCL=0;
        data<<=1;
    }
    OLED_CS=1;
    oled->col ++;
}

static void write_cmd(uint8 cmd){
    uint8 i=8;
    OLED_CS=0;
    OLED_DC=0;
    OLED_SCL=0;
    //asm("nop");
    while(i--)
    {
        OLED_SDA = ((cmd&0x80)?(1):(0));
        OLED_SCL=1;asm("nop");asm("nop");OLED_SCL=0;;
        cmd<<=1;
    }
    OLED_CS=1;
}
//�������ݿ�ʼλ�� 128col 8page
static void move_cursor_to(uint8 page, uint8 col){
    ASSERT(page < OLED_PAGE && col < OLED_COL);
    write_cmd(0xb0 + page);
    write_cmd(0x0f & col);
    write_cmd(0x10 | (col >> 4));
    oled->page = page;
    oled->col = col;
}
//margin���߿�
static void flush_buffer(oled_region_t * region, boolean show_margin, boolean flip){
    uint8 page_end = region->page_start + region->page_size;
    uint8 col_end = region->col_start + region->col_size - (show_margin?1:0);
    uint8 margin_mask;
    flip = (flip ? 1 : 0);
    for(oled->page = region->page_start;oled->page < page_end; oled->page++){

        move_cursor_to(oled->page, region->col_start);

        if(show_margin){
            margin_mask = 0x00;
            if(region->page_start + 1 == page_end) margin_mask = 0x81;
            else if(oled->page == region->page_start) margin_mask = 0x01;
            else if(oled->page + 1 == page_end) margin_mask = 0x80;
            write_data(0xff, 0);
            if(margin_mask){
                while (oled->col < col_end) write_data(margin_mask | ((oled->buff[oled->page * OLED_COL + oled->col]) ^ (flip?0xff:0)), 0);
            }else{
                while (oled->col < col_end) write_data(oled->buff[oled->page * OLED_COL + oled->col], flip);
            }
            write_data(0xff, 0);
        }else{
            while (oled->col < col_end) write_data(oled->buff[oled->page * OLED_COL + oled->col], flip);
        }       
    }
}

//�����Ļ data 8λ�����������һҳ�е�һ��
static void fill_with(const oled_region_t * region, uint8 data){
    uint8 page_end = region->page_start + region->page_size;
    uint8 col_end = region->col_start + region->col_size;
    for(oled->page = region->page_start;oled->page < page_end; oled->page++){
        move_cursor_to(oled->page, region->col_start);
        while (oled->col < col_end) write_data(data, 0);
    }
}

static void load_image(oled_region_t * region, image_region_t * imgroi){
    uint8 page, col, i;

    for(page = 0; page < region->page_size; page++){
        for(col = 0; col < region->col_size; col++){
            region_idx(region, page, col) = 0;//����
            for(i=0; i<8; i++){
                if(page*8+i < imgroi->row_size && col < imgroi->col_size){
                    region_idx(region, page, col) |= ((imgroi)->data[(imgroi)->ncols * ((imgroi)->row_start + page*8+i) + (imgroi)->col_start + col]) ? (0x01<<i):(0);
                }
            }
        }
    }
}

static void load_text(oled_region_t * region, char * text){
    uint8 * textend = text + strlen(text);
    uint8 col_size = region->col_size /6 * 6;
    uint8 page, col, i, ch;
    for(page = 0; page < region->page_size; page++){
        for(col = 0; col < col_size; ){
            if(text < textend){
                ch = *text++ - 32;
                for(i=0;i<6;i++){
                    region_idx(region, page, col++) = F6x8[ch][i];
                }
            }else{
                region_idx(region, page, col++) = 0;
            }
        }
        for(;col < region->col_size;)
            region_idx(region, page, col++) = 0;
    }
}

void OLED__show_img(oled_region_t * region, image_region_t * imgroi, boolean show_margin, boolean flip){
    load_image(region, imgroi);
    flush_buffer(region, show_margin, flip);
}

void OLED__show_text(oled_region_t * region, char * text, boolean show_margin, boolean flip){
    load_text(region, text);
    flush_buffer(region, show_margin, flip);
}

void OLED__init(oled_cfg_t * oc_usr, oled_t * oled_usr){
    GPIO_InitTypeDef init_gpio;
    gpio_cfg_t * iostart, * ioend;
    const uint8 oclen = sizeof(oled_cfg_t)/sizeof(gpio_cfg_t);
    
    oc = oc_usr;
    oled = oled_usr;

    // 初始�?OLED 引脚
    init_gpio.GPIO_Dir = DIR_OUTPUT;
    init_gpio.GPIO_Output = OUTPUT_H;
    init_gpio.GPIO_PinControl = IRQC_DIS;
    for(iostart = (gpio_cfg_t*)oc, ioend = iostart + oclen; iostart!=ioend; iostart++){
        init_gpio.GPIO_PTx = iostart->PTx;
        init_gpio.GPIO_Pins = iostart->GPIO_Pinn;
        LPLD_GPIO_Init(init_gpio);
    }

    // 重置 OLED 参数
    OLED_SCL=1;
    OLED_CS=0;
    OLED_RST=0;
    dummy_delay_ms(50);
    OLED_RST=1;

    write_cmd(0xae);//--turn off oled panel
    write_cmd(0x00);//--set low column address
    write_cmd(0x10);//--set high column address
    write_cmd(0x40);//--set start line address  Set Mapping RAM Display Start Line (0x00~0x3F)
    write_cmd(0x81);//--set contrast control register
    write_cmd(0xcf);//--Set SEG Output Current Brightness
    write_cmd(0xa1);//--Set SEG/Column Mapping     0xa0左右反置 0xa1正常
    write_cmd(0xc8);//--Set COM/Row Scan Direction   0xc0上下反置 0xc8正常
    write_cmd(0xa6);//--set normal display
    write_cmd(0xa8);//--set multiplex ratio(1 to 64)
    write_cmd(0x3f);//--1/64 duty
    write_cmd(0xd3);//--set display offset  Shift Mapping RAM Counter (0x00~0x3F)
    write_cmd(0x00);//--not offset
    write_cmd(0xd5);//--set display clock divide ratio/oscillator frequency
    write_cmd(0x80);//--set divide ratio, Set Clock as 100 Frames/Sec
    write_cmd(0xd9);//--set pre-charge period
    write_cmd(0xf1);//Set Pre-Charge as 15 Clocks & Discharge as 1 Clock
    write_cmd(0xda);//--set com pins hardware configuration
    write_cmd(0x12);
    write_cmd(0xdb);//--set vcomh
    write_cmd(0x40);//Set VCOM Deselect Level
    write_cmd(0x20);//-Set Page Addressing Mode (0x00/0x01/0x02)
    write_cmd(0x02);//
    write_cmd(0x8d);//--set Charge Pump enable/disable
    write_cmd(0x14);//--set(0x10) disable
    write_cmd(0xa4);// Disable Entire Display On (0xa4/0xa5)
    write_cmd(0xa6);// Disable Inverse Display On (0xa6/a7)
    write_cmd(0xaf);//--turn on oled panel

    // 初始清屏
    fill_with(&OLED_FULLSCREEN, 0x00);
}