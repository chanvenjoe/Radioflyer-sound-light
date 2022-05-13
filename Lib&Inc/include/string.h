
#ifndef _STRING_H_
#define _STRING_H_

#include <stddef.h>
#include <lptr.h>


// use 'interface' functions if you don't know what the pointer type is.
// use 'company'   functions if you exactly know what the pointer point to.

// example :
//      using interface : memcpy
//           memcpy(lptr_t(dst), lptr_t(src), n);
//
//      using company   : memcpy
//           memcpy_ss(dst, src, n);   // (all both are point to RAM)
//           memcpy_rs(dst, src, n);   // (dst point to ROM and src point to RAM)



// interface ~~ memchr
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
extern lptr_t memchr(lptr_t s, int c, size_t n);

// ~~ company
extern RAMPTR void *memchr_s(RAMPTR void *s, int c, size_t n);
extern ROMPTR void *memchr_r(ROMPTR void *s, int c, size_t n);
// =======================================


// interface ~~ memcmp
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

extern int memcmp(lptr_t buf1, lptr_t buf2, size_t count);

// ~~ company
extern int memcmp_ss(RAMPTR void *buf1, RAMPTR void *buf2, size_t count);
extern int memcmp_rs(ROMPTR void *buf1, RAMPTR void *buf2, size_t count);
extern int memcmp_sr(RAMPTR void *buf1, ROMPTR void *buf2, size_t count);
extern int memcmp_rr(ROMPTR void *buf1, ROMPTR void *buf2, size_t count);
// =======================================


// interface ~~ memcpy
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

extern lptr_t memcpy(lptr_t dst, const lptr_t src, size_t acount);

// ~~ company
extern RAMPTR void *memcpy_ss(RAMPTR void *dst, RAMPTR void *src, size_t acount);
extern ROMPTR void *memcpy_rs(ROMPTR void *dst, RAMPTR void *src, size_t acount);
extern RAMPTR void *memcpy_sr(RAMPTR void *dst, ROMPTR void *src, size_t acount);
extern ROMPTR void *memcpy_rr(ROMPTR void *dst, ROMPTR void *src, size_t acount);
// =======================================


// interface ~~ memmove
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
extern lptr_t memmove(lptr_t dst, const lptr_t src, size_t acount);

// ~~ company
extern RAMPTR void *memmove_ss(RAMPTR void *dst, RAMPTR void *src, size_t acount);
extern ROMPTR void *memmove_rs(ROMPTR void *dst, RAMPTR void *src, size_t acount);
extern RAMPTR void *memmove_sr(RAMPTR void *dst, ROMPTR void *src, size_t acount);
extern ROMPTR void *memmove_rr(ROMPTR void *dst, ROMPTR void *src, size_t acount);
// =======================================



// interface ~~ memset
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
extern lptr_t memset(lptr_t s, unsigned char c, size_t n);

// ~~ company
extern RAMPTR void *memset_s(RAMPTR void *s, unsigned char c, size_t n);
extern ROMPTR void *memset_r(ROMPTR void *s, unsigned char c, size_t n);
// =======================================



// interface ~~ strcat
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
extern lptr_t strcat(lptr_t dest, lptr_t src);

// ~~ company
extern RAMPTR char *strcat_ss(RAMPTR char *dst, RAMPTR char *src);
extern ROMPTR char *strcat_rs(ROMPTR char *dst, RAMPTR char *src);
extern RAMPTR char *strcat_sr(RAMPTR char *dst, ROMPTR char *src);
extern ROMPTR char *strcat_rr(ROMPTR char *dst, ROMPTR char *src);
// =======================================


// interface ~~ strcmp
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
extern int strcmp(const lptr_t src, const lptr_t dst);

// ~~ company
extern int strcmp_ss(RAMPTR char *src, RAMPTR char *dst);
extern int strcmp_rs(ROMPTR char *src, RAMPTR char *dst);
extern int strcmp_sr(RAMPTR char *src, ROMPTR char *dst);
extern int strcmp_rr(ROMPTR char *src, ROMPTR char *dst);
// =======================================


// interface ~~ strcpy
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
extern lptr_t strcpy(lptr_t d, const lptr_t s);

// ~~ company
extern RAMPTR char *strcpy_ss(RAMPTR char *d, RAMPTR char *s);
extern ROMPTR char *strcpy_rs(ROMPTR char *d, RAMPTR char *s);
extern RAMPTR char *strcpy_sr(RAMPTR char *d, ROMPTR char *s);
extern ROMPTR char *strcpy_rr(ROMPTR char *d, ROMPTR char *s);
// =======================================


// interface ~~ strchr
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
extern lptr_t strchr(const lptr_t string, char ch);

// ~~ company
extern RAMPTR char *strchr_s(RAMPTR char *string, char ch);
extern ROMPTR char *strchr_r(ROMPTR char *string, char ch);
// =======================================



// interface ~~ strcspn
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
extern size_t strcspn(const lptr_t string, const lptr_t control);

// ~~ company
extern size_t strcspn_ss(RAMPTR char *string, RAMPTR char *control);
extern size_t strcspn_rs(ROMPTR char *string, RAMPTR char *control);
extern size_t strcspn_sr(RAMPTR char *string, ROMPTR char *control);
extern size_t strcspn_rr(ROMPTR char *string, ROMPTR char *control);
// =======================================



// interface ~~ strlen
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
extern size_t strlen(const lptr_t str);

// ~~ company
extern size_t strlen_s(RAMPTR char *str);
extern size_t strlen_r(ROMPTR char *str);
// =======================================



// interface ~~ strncat
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
extern lptr_t strncat(lptr_t front, lptr_t back, size_t count);

// ~~ company
extern RAMPTR char *strncat_ss(RAMPTR char *front, RAMPTR char *back, size_t count);
extern ROMPTR char *strncat_rs(ROMPTR char *front, RAMPTR char *back, size_t count);
extern RAMPTR char *strncat_sr(RAMPTR char *front, ROMPTR char *back, size_t count);
extern ROMPTR char *strncat_rr(ROMPTR char *front, ROMPTR char *back, size_t count);
// =======================================



// interface ~~ strncmp
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
extern int strncmp(const lptr_t first, const lptr_t last, size_t count);

// ~~ company
extern int strncmp_ss(RAMPTR char *first, RAMPTR char *last, size_t count);
extern int strncmp_rs(ROMPTR char *first, RAMPTR char *last, size_t count);
extern int strncmp_sr(RAMPTR char *first, ROMPTR char *last, size_t count);
extern int strncmp_rr(ROMPTR char *first, ROMPTR char *last, size_t count);
// =======================================



// interface ~~ strncpy
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
extern lptr_t strncpy(lptr_t d, const lptr_t s, size_t n);

// ~~ company
extern RAMPTR char *strncpy_ss(RAMPTR char *d, RAMPTR char *s, size_t n);
extern ROMPTR char *strncpy_rs(ROMPTR char *d, RAMPTR char *s, size_t n);
extern RAMPTR char *strncpy_sr(RAMPTR char *d, ROMPTR char *s, size_t n);
extern ROMPTR char *strncpy_rr(ROMPTR char *d, ROMPTR char *s, size_t n);
// =======================================


// interface ~~ strpbrk
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
extern lptr_t strpbrk(const lptr_t string, const lptr_t control);

// ~~ company
extern RAMPTR char *strpbrk_ss(RAMPTR char *string, RAMPTR char *control);
extern ROMPTR char *strpbrk_rs(ROMPTR char *string, RAMPTR char *control);
extern RAMPTR char *strpbrk_sr(RAMPTR char *string, ROMPTR char *control);
extern ROMPTR char *strpbrk_rr(ROMPTR char *string, ROMPTR char *control);
// =======================================



// interface ~~ strrchr
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
extern lptr_t strrchr(const lptr_t string, char ch);

// ~~ company
extern RAMPTR char *strrchr_s(RAMPTR char *string, char ch);
extern ROMPTR char *strrchr_r(ROMPTR char *string, char ch);
// =======================================



// interface ~~ strspn
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
extern size_t strspn(const lptr_t string, const lptr_t control);

// ~~ company
extern size_t strspn_ss(RAMPTR char *string, RAMPTR char *control);
extern size_t strspn_rs(ROMPTR char *string, RAMPTR char *control);
extern size_t strspn_sr(RAMPTR char *string, ROMPTR char *control);
extern size_t strspn_rr(ROMPTR char *string, ROMPTR char *control);
// =======================================



// interface ~~ strstr
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
extern lptr_t strstr(const lptr_t str1, const lptr_t str2);

// ~~ company
extern RAMPTR char *strstr_ss(RAMPTR char *str1, RAMPTR char *str2);
extern ROMPTR char *strstr_rs(ROMPTR char *str1, RAMPTR char *str2);
extern RAMPTR char *strstr_sr(RAMPTR char *str1, ROMPTR char *str2);
extern ROMPTR char *strstr_rr(ROMPTR char *str1, ROMPTR char *str2);
// =======================================



// interface ~~ strspn
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
extern lptr_t strtok(const lptr_t str, const lptr_t control);

// ~~ company
extern RAMPTR char *strtok_ss(RAMPTR char *str, RAMPTR char *control);
extern ROMPTR char *strtok_rs(ROMPTR char *str, RAMPTR char *control);
extern RAMPTR char *strtok_sr(RAMPTR char *str, ROMPTR char *control);
extern ROMPTR char *strtok_rr(ROMPTR char *str, ROMPTR char *control);
// =======================================








#endif

