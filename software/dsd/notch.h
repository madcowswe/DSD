#ifndef _NOTCH_H
#define _NOTCH_H

#include "system.h"
#include <io.h>

inline int notch_busy(){
	return IORD(NOTCHFILTER_0_BASE,0);
}

inline int start_notch(short* ptrstart, short* ptrend){
	if (notch_busy()){
		return -1;
	} else {
		IOWR(NOTCHFILTER_0_BASE, 0, ptrstart);
		IOWR(NOTCHFILTER_0_BASE, 1, ptrend);
		return 0;
	}
}

inline unsigned int notch_performance(){
	return IORD(NOTCHFILTER_0_BASE, 1);
}

#endif //_NOTCH_H
