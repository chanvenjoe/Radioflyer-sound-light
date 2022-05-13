#ifndef _STDINT_H
#define _STDINT_H

/* Signed.  */

typedef signed char             int8_t;
typedef short int               int16_t;
typedef long int                int32_t;

/* Unsigned.  */
typedef unsigned char           uint8_t;
typedef unsigned short int      uint16_t;
typedef unsigned long int       uint32_t;

/* Small types.  */

/* Signed.  */
typedef signed char             int_least8_t;
typedef short int               int_least16_t;
typedef long int                int_least32_t;

/* Unsigned.  */
typedef unsigned char           uint_least8_t;
typedef unsigned short int      uint_least16_t;
typedef unsigned long int       uint_least32_t;

/* Fast types.  */

/* Signed.  */
typedef signed char             int_fast8_t;
typedef int                     int_fast16_t;
typedef long int                int_fast32_t;

/* Unsigned.  */
typedef unsigned char           uint_fast8_t;
typedef unsigned int            uint_fast16_t;
typedef unsigned long int       uint_fast32_t;

/* Types for `void *' pointers.  */
typedef int                     intptr_t;
typedef unsigned int            uintptr_t;


/* Largest integral types.  */
typedef long int                intmax_t;
typedef unsigned long int       uintmax_t;

/* Limits of integral types.  */

/* Minimum of signed integral types.  */
#define INT8_MIN               (-128)
#define INT16_MIN              (-32767-1)
#define INT32_MIN              (-2147483647L-1)

/* Maximum of signed integral types.  */
#define INT8_MAX               (127)
#define INT16_MAX              (32767)
#define INT32_MAX              (2147483647L)

/* Maximum of unsigned integral types.  */
#define UINT8_MAX              (255)
#define UINT16_MAX             (65535)
#define UINT32_MAX             (4294967295UL)

/* Minimum of signed integral types having a minimum size.  */
#define INT_LEAST8_MIN         INT8_MIN
#define INT_LEAST16_MIN        INT16_MIN
#define INT_LEAST32_MIN        INT32_MIN

/* Maximum of signed integral types having a minimum size.  */
#define INT_LEAST8_MAX         INT8_MAX
#define INT_LEAST16_MAX        INT16_MAX
#define INT_LEAST32_MAX        INT32_MAX

/* Maximum of unsigned integral types having a minimum size.  */
#define UINT_LEAST8_MAX        UINT8_MAX
#define UINT_LEAST16_MAX       UINT16_MAX
#define UINT_LEAST32_MAX       UINT32_MAX

/* Minimum of fast signed integral types having a minimum size.  */
#define INT_FAST8_MIN          INT8_MIN
#define INT_FAST16_MIN         INT16_MIN
#define INT_FAST32_MIN         INT32_MIN

/* Maximum of fast signed integral types having a minimum size.  */
#define INT_FAST8_MAX          INT8_MAX
#define INT_FAST16_MAX         INT16_MAX
#define INT_FAST32_MAX         INT32_MAX

/* Maximum of fast unsigned integral types having a minimum size.  */
#define UINT_FAST8_MAX         UINT8_MAX
#define UINT_FAST16_MAX        UINT16_MAX
#define UINT_FAST32_MAX        UINT32_MAX

/* Values to test for integral types holding `void *' pointer.  */
#define INTPTR_MIN             (-32767-1)
#define INTPTR_MAX             (32767)
#define UINTPTR_MAX            (65535)

/* Limits of other integer types.  */

/* Limits of `ptrdiff_t' type.  */
#define PTRDIFF_MIN           (-32767-1)
#define PTRDIFF_MAX           (32767)

/* Limit of `size_t' type.  */
#define SIZE_MAX               (65535u)

/* Signed.  */
#define INT8_C(c)      c
#define INT16_C(c)     c
#define INT32_C(c)     c##L

/* Unsigned.  */
#define UINT8_C(c)     c##U
#define UINT16_C(c)    c##U
#define UINT32_C(c)    c##UL

/* Maximal type.  */
#define INTMAX_C(c)    c##L
#define UINTMAX_C(c)   c##UL


#endif /* stdint.h */

