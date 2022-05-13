#include <math.h>
#include <stdbool.h>

#pragma __attribute__("rjmp")

float sincoshf(float x, bool iscosh);

float sinhf(float x) 
{
    return sincoshf(x, 0);
}
