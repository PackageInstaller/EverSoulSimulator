#include <winsock2.h>
#include <ws2tcpip.h>

int WspiapiLoad(int unused)
{
    (void)unused;
    return 0;
}

int WspiapiGetAddrInfo(const char *node, const char *svc,
    const struct addrinfo *hints, struct addrinfo **res)
{
    return getaddrinfo(node, svc, hints, res);
}

int WspiapiGetNameInfo(const struct sockaddr *sa, socklen_t salen,
    char *host, DWORD hostlen,
    char *serv, DWORD servlen, int flags)
{
    return getnameinfo(sa, salen, host, hostlen, serv, servlen, flags);
}

int WspiapiLegacyGetAddrInfo(const char *node, const char *svc,
    const struct addrinfo *hints, struct addrinfo **res)
{
    return getaddrinfo(node, svc, hints, res);
}

int WspiapiLegacyGetNameInfo(const struct sockaddr *sa, socklen_t salen,
    char *host, DWORD hostlen,
    char *serv, DWORD servlen, int flags)
{
    return getnameinfo(sa, salen, host, hostlen, serv, servlen, flags);
}

void WspiapiLegacyFreeAddrInfo(struct addrinfo *res)
{
    freeaddrinfo(res);
}
