#include "atax.h"

using namespace ihc;

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
        	#pragma unroll 1
		for (j = 0; j < N; j++) {
        		buff_y_out[j] = buff_y_out[j] + buff_A[i][j] * tmp1[i];
        	}
    	}

	#pragma unroll 1
    	for (i = 0; i < N; i++) {
        	y_out[i] = buff_y_out[i];
    	}
}

int main() {
	
	int n = N;
	int m = N;

	int i, j;
	DATA_TYPE fn;
	fn = (DATA_TYPE) n;

	DATA_TYPE A[N][N] = {0};
	DATA_TYPE x[N] = {0};

	for(i = 0; i < n; i++)  {
		x[i] = 1 + (i / fn);
	}
	for(i = 0; i < m; i++) {
		for(j = 0; j < n; j++) {
			A[i][j] = (DATA_TYPE)((i + j) % n) / (5 * m);
		}
	}

	DATA_TYPE out[N] = {0};

	ihc_hls_enqueue_noret(&atax, A, x, out);
	ihc_hls_component_run_all(&atax);

	return 0;

}
