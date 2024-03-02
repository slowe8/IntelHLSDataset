/*
Implementation based on algorithm described in:
"Stencil computation optimization and auto-tuning on state-of-the-art multicore architectures"
K. Datta, M. Murphy, V. Volkov, S. Williams, J. Carter, L. Oliker, D. Patterson, J. Shalf, K. Yelick
SC 2008
*/

#include <stdlib.h>
#include "../../common/support.h"
#include <HLS/hls.h> 
#include <HLS/stdio.h>

//Define input sizes
#define height_size 32
#define col_size 32
#define row_size 16
//Data Bounds
#define TYPE int32_t
#define MAX 1000
#define MIN 1
//Convenience Macros
#define SIZE (row_size * col_size * height_size)
#define INDX(_row_size,_col_size,_i,_j,_k) ((_i)+_row_size*((_j)+_col_size*(_k)))

void stencil3d( TYPE C[2], TYPE orig[SIZE], TYPE sol[SIZE] );

////////////////////////////////////////////////////////////////////////////////
// Test harness interface code.

struct bench_args_t {
  TYPE C[2];
  TYPE orig[SIZE];
  TYPE sol[SIZE];
};
