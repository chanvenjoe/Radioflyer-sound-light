#include <math.h>
#include <errno.h>

#pragma __attribute__("rjmp")

#undef P0
#undef P1
#undef Q0
#undef Q1
#undef K1
#undef P
#undef Q

#define P0 -0.8237728127E+0
#define P1 -0.3831010665E-2
#define Q0  0.2471319654E+1
#define Q1  0.1000000000E+1

/* ln(3)/2 */
#define K1  0.5493061443E+0
/* SBIG=[ln(2)+(t+1)*ln(B)]/2 */
#define SBIG 9.01091

#define P(g) ((P1*g+P0)*g)
#define Q(g) (Q1*g+Q0)

float tanhf(float x) 
{
    float f, g, r;

    f=fabsf(x);
    if(f>SBIG) r=1.0;
    else if(f>K1)
    {
        r=0.5-1.0/(expf(f+f)+1.0);
        r+=r;
    }
    else if(f<EPS) r=f;
    else
    {
        g=f*f;
        r=f+f*(P(g)/Q(g));
    }
    if(x<0.0) r=-r;
    return r;
}