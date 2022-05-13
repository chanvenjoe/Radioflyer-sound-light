#include <math.h>

#pragma __attribute__("rjmp")

float modff(float x, float * y)
{
    *y=(long)x;
    return (x-*y);
}