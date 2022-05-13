#include <math.h>
#include <errno.h>

#pragma __attribute__("rjmp")

float log10f(float x) 
{
    return logf(x)*0.4342944819;
}