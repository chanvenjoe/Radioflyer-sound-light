#include <math.h>
#include <errno.h>
#include <stdbool.h>

#pragma __attribute__("rjmp")

#undef C1
#undef C2
#undef YMAX

#define r1      -0.1666665668E+0
#define r2       0.8333025139E-2
#define r3      -0.1980741872E-3
#define r4       0.2601903036E-5

/* PI=C1+C2 */
#define C1       3.140625
#define C2       9.676535897E-4

/*A reasonable value for YMAX is the int part of PI*B**(t/2)=3.1416*2**(12)*/
#define YMAX     12867.0

float sincosf(float x, int iscos)
{
    float y, f, r, g, XN;
    int N;
    int sign;

    if(iscos)
    {
        y = fabsf(x) + HALF_PI;
        sign = 0;
    }
    else
    {
        if(x < 0.0)
		{
			y = -x;
			sign = 1;
		}
        else
		{
			y = x;
			sign = 0;
		}
    }

    if(y > YMAX)
    {
        errno = ERANGE;
        return 0.0;
    }

    /*Round y/PI to the nearest integer*/
    N=((y * iPI) + 0.5); /*y is positive*/

    /*If N is odd change sign*/
    if(N & 1) 
		sign = !sign;

    XN = N;
    /*Cosine required? (is done here to keep accuracy)*/
    if(iscos) 
		XN -= 0.5;

    y = fabsf(x);
    r = (int)y;
    g = y - r;
    f = ((r - XN * C1) + g) - XN * C2;

    g = f * f;
    if(g > EPS2) //Used to be if(fabsf(f)>EPS)
    {
        r = (((r4 * g + r3) * g + r2) * g + r1) * g;
        f += f * r;
    }
    return (sign ? -f : f);
}