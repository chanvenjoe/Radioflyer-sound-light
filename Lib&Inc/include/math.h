#ifndef _MATH_H
#define _MATH_H

#define HUGE_VALF   3.402823466e+38

#define PI          3.1415926536
#define TWO_PI      6.2831853071
#define HALF_PI     1.5707963268
#define QUART_PI    0.7853981634
#define iPI         0.3183098862
#define iTWO_PI     0.1591549431
#define TWO_O_PI    0.6366197724

#define EPS 		244.14062E-6
#define EPS2 		59.6046E-9

union float_long
{
    float f;
    long l;
};

/* Trigonometric functions */
float sinf(float x);
float cosf(float x);
float tanf(float x);
float cotf(float x);
float asinf(float x);
float acosf(float x);
float atanf(float x);
float atan2f(float x, float y);

/* Hyperbolic functions */
float sinhf(float x);
float coshf(float x);
float tanhf(float x);

/* Exponential, logarithmic and power functions */
float expf(float x);
float logf(float x);
float log10f(float x);
float powf(float x, float y);
float sqrtf(float a);

/* Nearest integer, absolute value, and remainder functions */
float fabsf(float x);
float frexpf(float x, int *pw2);
float ldexpf(float x, int pw2);
float ceilf(float x);
float floorf(float x);
float modff(float x, float * y);

#endif
