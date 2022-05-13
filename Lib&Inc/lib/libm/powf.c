#include <math.h>
#include <errno.h>

#pragma __attribute__("rjmp")

float powf(float x, float y)
{
    if(y == 0.0) return 1.0;
    if(y == 1.0) return x;
    if(x <= 0.0) return 0.0;
    return expf(logf(x) * y);
}