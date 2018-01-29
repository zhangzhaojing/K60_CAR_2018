#include "image.h"

void image__create(image_t * img,int16_t nrows,int16_t ncols){
    img->nrows=nrows;
    img->ncols=ncols;
    img->data=malloc(sizeof(uint8_t) *nrows*ncols);
}

void image__free(image_t *img){
    img->nrows=0;
    img->ncols=0;
    free(img->data);
}

void compressed__malloc(image_t * img , int16_t nrows , int16_t ncols){
    img->nrows=nrows;
    img->ncols=ncols;
    img->data=malloc(sizeof(uint8_t) *nrows*ncols/8);
}

void compressed__free(image_t * img){
    img->nrows=0;
    img->ncols=0;
    free(img->data);
}

void image__uncompress(compressed_t *com, image_t *img)
{
	uint16_t row, col, rstep, cstep;
	
	if(com->nrows > img->nrows) rstep = com->nrows / img->nrows; else rstep = 1;
	if(com->ncols > img->ncols) cstep = com->ncols / img->ncols; else cstep = 1;

	for (row = 0; row < img->nrows && row * rstep < com->nrows; row++)
		for (col = 0; col < img->ncols && col * cstep < com->ncols; col++)
			img->data[row*img->ncols+col] = (compressed__idx(com, row*rstep, col*cstep)?0xff:0);
}

void image__compress(compressed_t *com, image_t * img)
{
	uint16_t row, col;
	ASSERT(com->nrows == img->nrows && com->ncols && img->ncols);
	for(row = 0; row < img->nrows; row++){
		for(col = 0; col<img->ncols; col++){
			if(img->data[row*img->ncols+col]) compressed__set(com, row, col);
			else compressed__clr(com, row, col);
		}
	}
}
