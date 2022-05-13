#include <math.h>
#include <errno.h>
#include <stdbool.h>

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

#define P0 -0.713793159E+1
#define P1 -0.190333999E+0
#define Q0 -0.428277109E+2
#define Q1  0.100000000E+1

#define P(z) (P1*z+P0)
#define Q(z) (Q1*z+Q0)

#define K1 0.69316101074218750000E+0 /* ln(v)   */
#define K2 0.24999308500451499336E+0 /* v**(-2) */
#define K3 0.13830277879601902638E-4 /* v/2-1   */

//WMAX is defined as ln(HUGE_VALF)-ln(v)+0.69
#define WMAX 44.93535952E+0
//WBAR 0.35*(b+1)
#define WBAR 1.05
#define YBAR 9.0 /*Works for me*/

float sincoshf(float x, bool iscosh)
{
    float y, w, z;
    bool sign;

    if (x<0.0) { y=-x; sign=1; }
          else { y=x;  sign=0; }

    if ((y>1.0) || iscosh)
    {
        if(y>YBAR)
        {
            w=y-K1;
            if (w>WMAX)
            {
                errno=ERANGE;
                z=HUGE_VALF;
            }
            else
            {
                z=expf(w);
                z+=K3*z;
            }
        }
        else
        {
            z=expf(y);
            w=1.0/z;
            if(!iscosh) w=-w;
            z=(z+w)*0.5;
        }
        //if(sign) z=-z;
        if(sign && !iscosh) z=-z;
    }
    else
    {
        if (y<EPS)
            z=x;
        else
        {
            z=x*x;
            z=x+x*z*P(z)/Q(z);
        }
    }
    return z;
}