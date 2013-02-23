/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include "stdlib.h"
#include "sys/alt_stdio.h"
#include <sys/alt_alarm.h>
#include "sys/times.h"
#include "alt_types.h"
#include "system.h"
#include <stdio.h>
#include <unistd.h>

#define MXSIZE 10

float **tempmat;

typedef float mat3x3[3][3];
float det3x3(volatile mat3x3 inmat){
	float result = inmat[0][0] * (inmat[1][1] * inmat[2][2] - inmat[2][1] * inmat[1][2]);
	result -= inmat[1][0] * (inmat[0][1] * inmat[2][2] - inmat[2][1] * inmat[0][2]);
	result += inmat[2][0] * (inmat[0][1] * inmat[1][2] - inmat[1][1] * inmat[0][2]);
	return result;
}

void rswap (float **tempmat, size_t i, size_t j){
	float *tmp = tempmat[i];
	tempmat[i] = tempmat[j]; tempmat[j] = tmp;
}

float detmat(float matrix[][MXSIZE]){
	float det = 1.0f;

	//Copy Matrix to tempmat
	for(int i = 0; i != MXSIZE; ++i){
		for(int j = 0; j != MXSIZE; j++)
			tempmat[i][j] = matrix[i][j];
	}

	// Fill Lower with 0's
	int rswapcount = 0;
	for(int i =0; i < MXSIZE; ++i){
		if (tempmat[i][i] != 0){
			for(int j = i+1; j < MXSIZE; j++){
				rswapcount =0;
				float f = tempmat[j][i]/tempmat[i][i];
				for (int k = i; k < MXSIZE; ++k)
					tempmat[j][k] = tempmat[j][k] - f*tempmat[i][k];
			}
		} else {
			if ((MXSIZE - 1 - i) == rswapcount++){
				return 0;
			} else {
				for (int k = i; k < MXSIZE - 1; ++k){
					rswap(tempmat,k,k+1);
					det *= -1;
				}
				i--;
			}
		}
	}
	// Calculate Determinant
	for(int i=0; i < MXSIZE; ++i)
		det *= tempmat[i][i];

	// return det
	return det;
}

int main()
{
	while(1){
		printf("Hello from Nios II!\n");

		volatile float testmat[MXSIZE][MXSIZE] = {{-2,2,-3},{-1,1,3},{2,0,-1}};
		char buf[10];
		volatile float result;

		//initialize the 2D arrays used for determinant row swapping
		tempmat = malloc(MXSIZE*sizeof(float*));
			for(int i = 0; i != MXSIZE; ++i)
				tempmat[i] = malloc(MXSIZE*sizeof(float));

		clock_t exec_t1, exec_t2;
		exec_t1 = times(NULL); // get system time before starting the process

		for (int i = 0; i < 1000; i++){
			result = detmat(testmat);
		}

		exec_t2 = times(NULL); // get system time after finishing the process
		gcvt(((double)exec_t2-(double)exec_t1) / alt_ticks_per_second(), 10, buf);
		alt_putstr(" proc time = "); alt_putstr(buf); alt_putstr(" seconds \n");

		// Free tempmat
		for(int i = 0; i != MXSIZE; ++i)
			free(tempmat[i]);
		free(tempmat);

	}

	return 0;
}
