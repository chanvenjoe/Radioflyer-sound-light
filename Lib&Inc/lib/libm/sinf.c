#include <math.h>
#include <stdbool.h>

#pragma __attribute__("rjmp")

extern float sincosf(float x, bool iscos);

float sinf(float x) 
{
    if (x==0.0) return 0.0;
    return sincosf(x, 0);
}