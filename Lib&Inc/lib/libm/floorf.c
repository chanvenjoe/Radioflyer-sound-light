#include <math.h>

#pragma __attribute__("rjmp")

float floorf(float x) 
{
    long r, result;
    r=x;
    if (r<=0)
        result = (r+((r>x)?-1:0));
    else
        result = r;
    return (float)result;	
}