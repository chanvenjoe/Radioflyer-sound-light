#include <math.h>
#include <errno.h>

#pragma __attribute__("rjmp")

#undef C0
#undef C1
#undef C2

#define A0 -0.5527074855E+0
#define B0 -0.6632718214E+1
#define A(w) (A0)
#define B(w) (w+B0)

#define C0  0.70710678118654752440
#define C1  0.693359375 /*355.0/512.0*/
#define C2 -2.121944400546905827679E-4

float logf(float x) 
{

    float Rz;
    float f, z, w, znum, zden, xn;
    int n;

    if (x<=0.0)
    {
        errno=EDOM;
        return 0.0;
    }
    f=frexpf(x, &n);
    znum=f-0.5;
    if (f>C0)
    {
        znum-=0.5;
        zden=(f*0.5)+0.5;
    }
    else
    {
        n--;
        zden=znum*0.5+0.5;
    }
    z=znum/zden;
    w=z*z;

    Rz=z+z*(w*A(w)/B(w));
    xn=n;
    return ((xn*C2+Rz)+xn*C1);
}