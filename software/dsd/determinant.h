#ifndef _DETERMINANT_H

#include "system.h"

#define DMA_SUCCESS 0
#define DMA_GENERIC_FAIL 1

#define DMA_OPCODE 0

inline int init_dma_transfer(float* ptr, int len){
	//return __builtin_custom_inpi(ALT_CI_DETERMINANT_0_N+(DMA_OPCODE & ALT_CI_DETERMINANT_0_N_MASK),ptr,len);
	return 0;
}

#endif //_DETERMINANT_H
