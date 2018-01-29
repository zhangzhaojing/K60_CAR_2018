#ifndef _P_IMAGE_H_
#define _P_IMAGE_H_

#include "stdint.h"
#include <stdlib.h>
#include "common.h"

typedef struct
{
    int16_t nrows,ncols;
    uint8_t *data;
}image_t;

typedef struct
{
    int16_t nrows,ncols;
    uint8_t * data;
}compressed_t;

#define imgroi__idx(roi, r, c) ((roi)->img->data[(roi)->img->ncols * ((roi)->row_start + r) + (roi)->col_start + c])


#define compressed__idx(com, r, c) ((*(com->data+((r*(com->ncols)+c)>>3)))&(0x80>>(c%8)))//²»±ä
#define compressed__set(com, r, c) ((*(com->data+((r*(com->ncols)+c)>>3)))|=(0x80>>(c%8)))//set
#define compressed__clr(com, r, c) ((*(com->data+((r*(com->ncols)+c)>>3)))&=~(0x80>>(c%8)))//clear

void image__malloc(image_t * img , int16_t nrows , int16_t ncols);
void image__free(image_t * img);
void compressed__malloc(image_t * img , int16_t nrows , int16_t ncols);
void compressed__free(image_t * img);
void image__uncompress(compressed_t *com,image_t *img);
void image__compress(compressed_t *com,image_t *img);

#endif