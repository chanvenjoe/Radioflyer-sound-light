#include <math.h>
#include <stdbool.h>

#pragma __attribute__("rjmp")

extern float sincoshf(float x, bool iscosh);

float coshf(float x) 
{
    return sincoshf(x, 1);
}
