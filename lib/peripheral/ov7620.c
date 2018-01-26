#include "ov7620.h"
#include "DEV_SCCB.h"

#define H_MAX 240//hangshu
#define L_MAX 320//lieshu

static boolean acq_flag;
static boolean allow_acq_once;
static int camera_error;//0:OK 1:ROW_MISS 2:COL_MISS

static uint32 vsync_cnt, href_cnt, rowacq_cnt;
uint8 Pix_Data[H_MAX][L_MAX];

static GPIO_InitTypeDef gpio_init_vh;
static DMA_InitTypeDef  dma_init;

static void vsync_href_isr(){
  //vsync_isr
    if(LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin14))
  {
   // LPLD_GPIO_ClearIntFlag(PORTD);
    if(allow_acq_once){
    LPLD_DMA_LoadDstAddr(DMA_CH0, Pix_Data);//初始化DMA地址
    //LPLD_DMA_DisableReq(DMA_CH0);
    //LPLD_DMA_EnableIrq(dma_init);
    
    //dummy_delay_ms(1);
    
    camera_error=0;
    allow_acq_once=FALSE;
    vsync_cnt++;//当前场数
    href_cnt=0;//行数
    rowacq_cnt=0;//采集的行数
    acq_flag=TRUE;//flag=true 相当于使能行中断
    }else if(acq_flag){
          acq_flag=FALSE;
          camera_error=1;
          allow_acq_once=TRUE;
          LPLD_GPIO_ClearIntFlag(PORTD);
    }
    
    return;
  }
  
  //href_isr
    if(LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin13))
  {
   // LPLD_GPIO_ClearIntFlag(PORTD);
    
    if(acq_flag){
    LPLD_DMA_EnableReq(DMA_CH0);
   // LPLD_DMA_EnableIrq(dma_init);
    href_cnt++;//行数自加    
    }
    
    return;
  }
}


static void row_finish(){     //DMA中断
  rowacq_cnt++;//已采集行数自加
  
  //LPLD_DMA_DisableReq(DMA_CH0);
  //LPLD_DMA_DisableIrq(dma_init);
  
  if(rowacq_cnt==H_MAX){//行数采集完FLAG=0（关闭行中断）
     acq_flag = FALSE;
     disable_irq(PORTD_IRQn);
     
     /*imag proc*/
  }
}

void camera__take_a_photo_please_(){
    if(acq_flag == TRUE) return;
    allow_acq_once==TRUE;
    LPLD_GPIO_ClearIntFlag(PORTD);
    enable_irq(PORTD_IRQn);
}

//#include "DEV_SCCB.h"


void ov7620__config(){
  
  
    GPIO_InitTypeDef gpio_init_vh={0};
    GPIO_InitTypeDef gpio_init={0};
    DMA_InitTypeDef  dma_init={0};
    
//    LPLD_SCCB_Init();
//    LPLD_SCCB_WriteReg(0x14 ,0x24);
//    LPLD_SCCB_WriteReg(0x28,0x40);
//    LPLD_SCCB_WriteReg(0x11,0x01);
//    
    
    // init vsync_href
    gpio_init_vh.GPIO_PTx = PTD;
    gpio_init_vh.GPIO_Pins = GPIO_Pin14 | GPIO_Pin13;
    gpio_init_vh.GPIO_Dir = DIR_INPUT; 
    gpio_init_vh.GPIO_Isr = vsync_href_isr;
    gpio_init_vh.GPIO_PinControl = INPUT_PULL_UP|IRQC_RI; //上升沿内部上拉
    LPLD_GPIO_Init(gpio_init_vh);
    
        
    // init pclk
    gpio_init.GPIO_PTx = PTD;
    gpio_init.GPIO_Pins = GPIO_Pin12;
    gpio_init.GPIO_Dir = DIR_INPUT; 
    gpio_init.GPIO_Isr = NULL;
    gpio_init.GPIO_PinControl = INPUT_PULL_UP|IRQC_DMARI;
    LPLD_GPIO_Init(gpio_init);  
    
    // init d0-d7
    gpio_init.GPIO_PTx = PTE;      
    gpio_init.GPIO_Pins = GPIO_Pin0_7;     
    gpio_init.GPIO_Dir = DIR_INPUT;        
    gpio_init.GPIO_Isr = NULL;
    gpio_init.GPIO_PinControl = INPUT_PULL_DOWN|IRQC_DIS;   
    LPLD_GPIO_Init(gpio_init);
       
    //配置接收DMA
    dma_init.DMA_CHx = DMA_CH0; 
    dma_init.DMA_MajorLoopCnt   = L_MAX; //主循环
    dma_init.DMA_MinorByteCnt   = 1; 
    dma_init.DMA_MajorCompleteIntEnable = TRUE; 
    dma_init.DMA_Req            = PORTD_DMAREQ; 
    dma_init.DMA_DestAddr       = (uint32)Pix_Data; //目的
    dma_init.DMA_DestAddrOffset = 1;                
    dma_init.DMA_DestDataSize   = DMA_DST_8BIT;     
    dma_init.DMA_SourceAddr     = (uint32)&PTE->PDIR;//源
    dma_init.DMA_SourceDataSize = DMA_SRC_8BIT;   
    dma_init.DMA_AutoDisableReq = TRUE;  
    dma_init.DMA_Isr = row_finish; 
    LPLD_DMA_Init(dma_init); 
    LPLD_DMA_EnableIrq(dma_init);//使能中断
    
    ///////////////
    vsync_cnt=0;
    allow_acq_once=TRUE;
    //acq_flag=0;
    
    //////////////////
    NVIC_SetPriority((IRQn_Type)(DMA_CH0),NVIC_EncodePriority(NVIC_PriorityGroup_4,9,0));
    NVIC_SetPriority(PORTD_IRQn,NVIC_EncodePriority(NVIC_PriorityGroup_4,8,0));
    LPLD_GPIO_ClearIntFlag(PORTD);
    enable_irq(PORTD_IRQn);
}





















