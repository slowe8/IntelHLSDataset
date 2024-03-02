#include <stdlib.h>
#include <math.h>
#include "../../common/support.h"
#include <HLS/hls.h> 
#include <HLS/stdio.h>

#define SIZE 2048
#define TYPE int32_t
#define TYPE_MAX INT32_MAX

void ms_mergesort(TYPE a[SIZE]);

////////////////////////////////////////////////////////////////////////////////
// Test harness interface code.

struct bench_args_t {
  TYPE a[SIZE];
};
