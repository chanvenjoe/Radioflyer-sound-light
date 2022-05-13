
#include <errno.h>
#include <math.h>

#pragma __attribute__("rjmp")

float sqrtf(float x) 
{
    float f, y;
    int n;

    if (x==0.0) return x;
    else if (x==1.0) return 1.0;
    else if (x<0.0)
    {
        errno=EDOM;
        return 0.0;
    }
    f=frexpf(x, &n);
    y=0.41731+0.59016*f; /*Educated guess*/
    /*For a 24 bit mantisa (float), two iterations are sufficient*/
    y+=f/y;
    y=ldexpf(y, -2) + f/y; /*Faster version of 0.25 * y + f/y*/

    if (n&1)
    {
        y*=0.7071067812;
        ++n;
    }
    return ldexpf(y, n/2);
}