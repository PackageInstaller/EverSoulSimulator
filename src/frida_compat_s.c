#include <stddef.h>
#include <stdarg.h>

extern int __mingw_vsnprintf(char *buf, size_t sz, const char *fmt, va_list ap);
extern int vsscanf(const char *src, const char *fmt, va_list ap);

int sprintf_s(char *buf, size_t count, const char *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    int r = __mingw_vsnprintf(buf, count, fmt, ap);
    va_end(ap);
    return r;
}

int vsprintf_s(char *buf, size_t count, const char *fmt, va_list ap)
{
    return __mingw_vsnprintf(buf, count, fmt, ap);
}

int sscanf_s(const char *buf, const char *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    int r = vsscanf(buf, fmt, ap);
    va_end(ap);
    return r;
}
