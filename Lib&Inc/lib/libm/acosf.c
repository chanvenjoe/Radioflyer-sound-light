#include <math.h>
#include <stdbool.h>

#pragma __attribute__("rjmp")

extern float asincosf(float x, bool isacos);

float acosf(float x) 
{
    float result;	
    if (x == 1.0) 
	result = 0.0;
    else if (x ==-1.0) 
	result = PI;
    else if (x == 0.0) 
	result = HALF_PI;
    else               
	result = asincosf(x, true);
    return result;	
}
