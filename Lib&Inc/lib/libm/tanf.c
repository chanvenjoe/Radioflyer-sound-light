#include <math.h>
#include <stdbool.h>

#pragma __attribute__("rjmp")

extern float tancotf(float x, bool iscotan);

float tanf(float x) 
{
    return tancotf(x, 0);
}