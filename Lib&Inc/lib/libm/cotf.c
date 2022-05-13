#include <math.h>
#include <errno.h>
#include <stdbool.h>

#pragma __attribute__("rjmp")

extern float tancotf(float x, bool iscotan);

float cotf(float x) 
{
    float y;

    y = fabsf(x);
    if(y < 1.0E-30) //This one requires more thinking...
    {
        errno = ERANGE;
        if(x < 0.0)
            return -HUGE_VALF;
        else
            return HUGE_VALF;
    }
    return tancotf(x, 1);
}