#include <math.h>
#include <stdbool.h>

#pragma __attribute__("rjmp")

extern float sincosf(float x, int iscos);

float cosf(float x) 
{
    if(x == 0.0) 
		return 1.0;
    return sincosf(x, 1);
}