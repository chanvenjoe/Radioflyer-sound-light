#include <math.h>
#include <errno.h>

#pragma __attribute__("rjmp")

float atan2f(float x, float y)
{
    float r;

    if ((x==0.0) && (y==0.0))
    {
        errno=EDOM;
        return 0.0;
    }

    if(fabsf(y)>=fabsf(x))
    {
        r=atanf(x/y);
        if(y<0.0) r+=(x>=0?PI:-PI);
    }
    else
    {
        r=-atanf(y/x);
        r+=(x<0.0?-HALF_PI:HALF_PI);
    }
    return r;
}
