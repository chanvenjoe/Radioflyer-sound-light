#include <math.h>
#include <errno.h>

#pragma __attribute__("rjmp")

float fabsf(float x)
{
    union float_long fl;

    fl.f = x;
    fl.l &= 0x7fffffff;
    return fl.f;
}