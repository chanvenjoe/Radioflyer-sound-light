#include <math.h>
#include <errno.h>
#include <stdbool.h>

#pragma __attribute__("rjmp")

#undef P0
#undef P1
#undef Q0
#undef Q1
#undef Q2
#undef C1
#undef C2
#undef P
#undef Q
#undef YMAX

#define P0  0.100000000E+1
#define P1 -0.958017723E-1
#define Q0  0.100000000E+1
#define Q1 -0.429135777E+0
#define Q2  0.971685835E-2

#define C1  1.5703125
#define C2  4.83826794897E-4

#define P(f,g) (P1*g*f+f)
#define Q(g) ((Q2*g+Q1)*g+Q0)

//A reasonable choice for YMAX is the integer part of B**(t/2)*PI/2:
#define YMAX 6433.0

float tancotf(float x, bool iscotan)
{
    float f, g, xn, xnum, xden, result;
    int n;

    if (fabsf(x) > YMAX)
    {
        errno = ERANGE;
        return 0.0;
    }

    /*Round x*2*PI to the nearest integer*/
    n=(x*TWO_O_PI+(x>0.0?0.5:-0.5)); /*works for +-x*/
    xn=n;

    xnum=(int)x;
    xden=x-xnum;
    f=((xnum-xn*C1)+xden)-xn*C2;

    if (fabsf(f) < EPS)
    {
        xnum = f;
        xden = 1.0;
    }
    else
    {
        g = f*f;
        xnum = P(f,g);
        xden = Q(g);
    }

    if(n&1)
    //xn is odd
    {
        if(iscotan) result = (-xnum/xden);
               else result = (-xden/xnum);
    }
    else
    {
        if(iscotan) result = (xden/xnum);
               else result = (xnum/xden);
    }
    return result;	
}