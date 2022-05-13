#include <math.h>
#include <errno.h>
#include <stdbool.h>

#pragma __attribute__("rjmp")


#undef P1
#undef P2
#undef Q0
#undef Q1
#undef Q2
#undef P
#undef Q

#define P1  0.933935835E+0
#define P2 -0.504400557E+0
#define Q0  0.560363004E+1
#define Q1 -0.554846723E+1
#define Q2  0.100000000E+1

#define P(g) (P2 * g + P1)
#define Q(g) ((Q2 * g + Q1) * g + Q0)

float asincosf(float x, bool isacos)
{
    float y, g, r;
    int i;
    bool quartPI = isacos;

    const float a[2] = { 0.0, QUART_PI };
    const float b[2] = { HALF_PI, QUART_PI };

    y = fabsf(x);
    if (y < EPS)
    {
        r = y;
    }
    else
    {
        if (y > 0.5)
        {
            quartPI = !isacos;
            if (y > 1.0)
            {
                errno = EDOM;
                return 0.0;
            }
            g = (0.5 - y) + 0.5;
            g = ldexpf(g, -1);
            y = sqrtf(g);
            y = -(y + y);
        }
        else
        {
            g = y * y;
        }
        r = y + y * ((P(g) * g) / Q(g));
    }
    i = quartPI;
    if (isacos)
    {
        if (x < 0.0)
            r = (b[i] + r) + b[i];
        else
            r = (a[i] - r) + a[i];
    }
    else
    {
        r = (a[i] + r) + a[i];
        if (x < 0.0)
            r = -r;
    }
    return r;
}