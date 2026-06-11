#include <stdarg.h>
#include <stdio.h>
#include <wchar.h>
#include <stdint.h>

#if defined(__GNUC__)
#  define FRIDA_COMPAT_WEAK __attribute__((weak))
#else
#  define FRIDA_COMPAT_WEAK
#endif

FRIDA_COMPAT_WEAK unsigned __int64 *__local_stdio_printf_options(void)
{
    static unsigned __int64 opts = 0;
    return &opts;
}

FRIDA_COMPAT_WEAK unsigned __int64 *__local_stdio_scanf_options(void)
{
    static unsigned __int64 opts = 0;
    return &opts;
}

FRIDA_COMPAT_WEAK int vsnprintf(char *buf, size_t size, const char *fmt, va_list ap)
{
    return __mingw_vsnprintf(buf, size, fmt, ap);
}

FRIDA_COMPAT_WEAK int fprintf(FILE *f, const char *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    int r = vfprintf(f, fmt, ap);
    va_end(ap);
    return r;
}

FRIDA_COMPAT_WEAK int printf(const char *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    int r = vprintf(fmt, ap);
    va_end(ap);
    return r;
}

FRIDA_COMPAT_WEAK int sprintf(char *buf, const char *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    int r = __mingw_vsprintf(buf, fmt, ap);
    va_end(ap);
    return r;
}

FRIDA_COMPAT_WEAK int sscanf(const char *buf, const char *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    int r = vsscanf(buf, fmt, ap);
    va_end(ap);
    return r;
}

FRIDA_COMPAT_WEAK int swprintf(wchar_t *buf, size_t count, const wchar_t *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    int r = vswprintf(buf, count, fmt, ap);
    va_end(ap);
    return r;
}
