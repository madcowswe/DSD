#ifndef _DETERMINANT_H
#define _DETERMINANT_H

#include "system.h"
#include <io.h>
#include <sys/alt_cache.h>
#include <sys/alt_irq.h>

#define DET_RESULT_OFFSET 0
#define DET_STATUS_OFFSET 1
#define DET_PTR_OFFSET 0
#define DET_LEN_OFFSET 1

#define DET_STATUS_READY 0
#define DET_STATUS_BUSY 1

int irqcommunicationtest = 0;

inline int det_status(){
	return IORD(DETERMINANT_0_BASE, DET_STATUS_OFFSET);
}

inline float det_result(){
	return IORD(DETERMINANT_0_BASE, DET_RESULT_OFFSET);
}

void det_done_isr(void* context){
	det_result();
	irqcommunicationtest = 1;
}

inline int reg_isr(){
	return alt_ic_isr_register(DETERMINANT_0_IRQ_INTERRUPT_CONTROLLER_ID,
						DETERMINANT_0_IRQ,
	                    &det_done_isr,
	                    NULL,
	                    NULL);
}



inline void det_start(float* ptr, int N){
	alt_dcache_flush (ptr, N * N * sizeof(float));
	IOWR(DETERMINANT_0_BASE, DET_PTR_OFFSET, (int)ptr);
	IOWR(DETERMINANT_0_BASE, DET_LEN_OFFSET, N);
}

#endif //_DETERMINANT_H
