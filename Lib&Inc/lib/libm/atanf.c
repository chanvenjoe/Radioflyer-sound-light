#include <math.h>
#include <errno.h>

#pragma __attribute__("rjmp")

#undef P0
#undef P1
#undef Q0
#undef Q1
#undef P
#undef Q
#undef K1
#undef K2
#undef K3

#define P0 -0.4708325141E+0
#define P1 -0.5090958253E-1
#define Q0  0.1412500740E+1
#define Q1  0.1000000000E+1

#define P(g,f) ((P1*g+P0)*g*f)
#define Q(g) (Q1*g+Q0)

#define K1  0.2679491924 /* 2-sqrt(3) */
#define K2  0.7320508076 /* sqrt(3)-1 */
#define K3  1.7320508076 /* sqrt(3)   */

float atanf(float x) 
{
    float f, r, g;
    int n=0;
    const float a[]={  0.0, 0.5235987756, 1.5707963268, 1.0471975512 };

    f=fabsf(x);
    if(f>1.0)
    {
        f=1.0/f;
        n=2;
    }
    if(f>K1)
    {
        f=((K2*f-1.0)+f)/(K3+f);
        // What it is actually wanted is this more accurate formula,
        // but SDCC optimizes it and then it does not work:
        // f=(((K2*f-0.5)-0.5)+f)/(K3+f);
        n++;
    }
    if(fabsf(f)<EPS) r=f;
    else
    {
        g=f*f;
        r=f+P(g,f)/Q(g);
    }
    if(n>1) r=-r;
    r+=a[n];
    if(x<0.0) r=-r;
    return r;
}