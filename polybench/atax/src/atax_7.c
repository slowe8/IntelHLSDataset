#include "atax.h"

component void atax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N])
{
	int i, j;
	DATA_TYPE buff_A[N][N];
    	DATA_TYPE buff_x[N];
    	DATA_TYPE buff_y_out[N];
    	DATA_TYPE tmp1[N];

	

    	for (i = 0; i < N; i++) {
        	buff_x[i] = x[i];
    		buff_y_out[i] = 0;
        	tmp1[i] = 0;
		#pragma unroll 4
    		for (j = 0; j < N; j++) {
    			buff_A[i][j] = A[i][j];
    		}
    	}

	

    	for (i = 0; i < N; i++) {
		

        	for (j = 0; j < N; j++) {
	        	tmp1[i] = tmp1[i] + buff_A[i][j] * buff_x[j];
        	}
    	}

	

	for (i = 0; i < N; i++) {
        	#pragma unroll 2
		for (j = 0; j < N; j++) {
        		buff_y_out[j] = buff_y_out[j] + buff_A[i][j] * tmp1[i];
        	}
    	}

	#pragma unroll 2
    	for (i = 0; i < N; i++) {
        	y_out[i] = buff_y_out[i];
    	}
}