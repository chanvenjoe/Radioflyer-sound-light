#include <math.h>

#pragma __attribute__("rjmp")

float ceilf(float x) 
{
    long r, result;
    r=x;
    if (r<0)
        result = r;
    else
        result = (r+(((float)r<x)?1:0));
    return (float)result;   	 
}