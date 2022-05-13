#include <math.h>
#include <errno.h>
#include <stdbool.h>

#pragma __attribute__("rjmp")

#define P0      0.2499999995E+0
#define P1      0.4160288626E-2
#define Q0      0.5000000000E+0
#define Q1      0.4998717877E-1

#define P(z) ((P1*z)+P0)
#define Q(z) ((Q1*z)+Q0)

#define C1       0.693359375
#define C2      -2.1219444005469058277e-4

#define BIGX    88.72283911  /* ln(HUGE_VALF) */
#define EXPEPS  1.0E-7       /* exp(1.0E-7)=0.0000001 */
#define K1      1.4426950409 /* 1/ln(2) */

float expf(float x) 
{
    int n;
    float xn, g, r, z, y;
    bool sign;

    if(x >= 0.0)
	{ 
		y = x;  
		sign = 0; 
	}
    else
	{ 
		y = -x; 
		sign = 1; 
	}

    if(y < EXPEPS) 
		return 1.0;

    if(y > BIGX)
    {
        if(sign)
        {
            errno = ERANGE;
            return HUGE_VALF;
        }
        else
        {
            return 0.0;
        }
    }

    z=y * K1;
    n = z;

    if(n < 0) 
		--n;
    if(z - n >= 0.5) 
		++n;
    xn = n;
    g = ((y - xn * C1)) - xn * C2;
    z = g * g;
    r = P(z) * g;
    r = 0.5 + (r / (Q(z) - r));

    n++;
    z = ldexpf(r, n);
    if(sign)
        return 1.0 / z;
    else
        return z;
}

