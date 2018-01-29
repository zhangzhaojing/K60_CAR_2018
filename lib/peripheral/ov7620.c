#include "ov7620.h"
#include "DEV_SCCB.h"

#define H_MAX 240//hangshu
#define L_MAX 320//lieshu

void camera__take_a_photo_please_();

static boolean acq_flag;
static boolean allow_acq_once;
static int camera_error;//0:OK 1:ROW_MISS 2:COL_MISS

static uint32 vsync_cnt,href_cnt, rowacq_cnt;
uint8 Pix_Data[H_MAX*L_MAX];

static GPIO_InitTypeDef gpio_init_vh;
static DMA_InitTypeDef  dma_init;

/*���ڳ�ʼ��*/
UART_InitTypeDef uart0_init_struct;
void uart_init(void)
{
  uart0_init_struct.UART_Uartx = UART0;
  uart0_init_struct.UART_BaudRate = 9600;
  uart0_init_struct.UART_RxPin = PTA15;
  uart0_init_struct.UART_TxPin = PTA14;
  LPLD_UART_Init(uart0_init_struct);
}


/*�жϺ���*/
static void vsync_href_isr(){
  //vsync_isr
    if(LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin14))
  {
    if(allow_acq_once){
    LPLD_DMA_LoadDstAddr(DMA_CH0, Pix_Data);//��ʼ��DMA��ַ    
    
    camera_error=0;
    allow_acq_once=FALSE;
    vsync_cnt++;//��ǰ����
    href_cnt=0;//����
    rowacq_cnt=0;//DMA�ɼ�������
    acq_flag=TRUE;//flag=true �൱��ʹ�����ж�
    }else if(acq_flag){    //ROW_MISS
          acq_flag=0;
          camera_error=1;
          allow_acq_once=FALSE;//TURE�����ɼ�  FALSE ֹͣ�ɼ�
          LPLD_GPIO_ClearIntFlag(PORTD);
    }
    return;
  }
  
  //href_isr
    if(LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin13))
  {    
    if(acq_flag){
    LPLD_DMA_EnableReq(DMA_CH0);
    href_cnt++;//�����Լ�    
    }
    return;
  }
}


static void row_finish(){     //DMA�жϺ���
  
  rowacq_cnt++;//�Ѳɼ������Լ�
  
  if(rowacq_cnt==H_MAX){//�����ɼ���FLAG=0���ر����жϣ�
     acq_flag = FALSE;
     disable_irq(PORTD_IRQn);
     
     /*imag proc*/
     //LPLD_UART_PutCharArr(UART0, Pix_Data,320*240);//����Pix_Data
     //camera__take_a_photo_please_();//�����ɼ�
    
  }
}

void camera__take_a_photo_please_(){
    if(acq_flag == TRUE) return;
    allow_acq_once=TRUE;
    LPLD_GPIO_ClearIntFlag(PORTD);
    enable_irq(PORTD_IRQn);
    LPLD_DMA_EnableIrq(dma_init);
}



void ov7620__config(){
  
    GPIO_InitTypeDef gpio_init_vh={0};
    GPIO_InitTypeDef gpio_init={0};
    DMA_InitTypeDef  dma_init={0};
    
    // init vsync_href
    gpio_init_vh.GPIO_PTx = PTD;
    gpio_init_vh.GPIO_Pins = GPIO_Pin14 | GPIO_Pin13;
    gpio_init_vh.GPIO_Dir = DIR_INPUT; 
    gpio_init_vh.GPIO_Isr = vsync_href_isr;
    gpio_init_vh.GPIO_PinControl = INPUT_PULL_UP|IRQC_RI; //�������ڲ�����
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
       
    //���ý���DMA
    dma_init.DMA_CHx = DMA_CH0; 
    dma_init.DMA_MajorLoopCnt   = L_MAX; //��ѭ��
    dma_init.DMA_MinorByteCnt   = 1; 
    dma_init.DMA_MajorCompleteIntEnable = TRUE; 
    dma_init.DMA_Req            = PORTD_DMAREQ; 
    dma_init.DMA_DestAddr       = (uint32)Pix_Data; //Ŀ��
    dma_init.DMA_DestAddrOffset = 1;                
    dma_init.DMA_DestDataSize   = DMA_DST_8BIT;     
    dma_init.DMA_SourceAddr     = (uint32)&PTE->PDIR;//Դ
    dma_init.DMA_SourceDataSize = DMA_SRC_8BIT;   
    dma_init.DMA_AutoDisableReq = TRUE;  
    dma_init.DMA_Isr = row_finish; 
    LPLD_DMA_Init(dma_init); 
    LPLD_DMA_EnableIrq(dma_init);//ʹ���ж�
    
    ///////////////
    vsync_cnt=0;
    allow_acq_once=TRUE;
    
    uart_init();
    //////////////////
    NVIC_SetPriority((IRQn_Type)(DMA_CH0),NVIC_EncodePriority(NVIC_PriorityGroup_4,9,0));
    NVIC_SetPriority(PORTD_IRQn,NVIC_EncodePriority(NVIC_PriorityGroup_4,8,0));
    LPLD_GPIO_ClearIntFlag(PORTD);
    enable_irq(PORTD_IRQn);
}





















