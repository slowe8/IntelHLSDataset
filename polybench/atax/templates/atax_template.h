#ifndef _LU_H
#define _LU_H

#include <HLS/stdio.h>
#include <unistd.h>
#include <string.h>
#include <HLS/math.h>
#include <HLS/hls.h>


#define N 64

#define DATA_TYPE float
#define SCALAR_VAL(x) x##f
#define SQRT_FUN(x) sqrtf(x)
#define EXP_FUN(x) expf(x)
#define POW_FUN(x,y) powf(x,y)

void atax(DATA_TYPE A[N][N], DATA_TYPE x[N], DATA_TYPE y_out[N]);

#endif /* !_LU_H */
