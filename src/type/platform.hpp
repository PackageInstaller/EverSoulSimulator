#pragma once

#ifdef _WIN32
#  ifndef WIN32_LEAN_AND_MEAN
#    define WIN32_LEAN_AND_MEAN
#  endif
#  include <winsock2.h>
#  include <ws2tcpip.h>
#  include <direct.h>
#ifndef _SSIZE_T_DEFINED
#  define _SSIZE_T_DEFINED
using ssize_t = int;
#endif
inline int platform_close(int fd) { return closesocket(static_cast<SOCKET>(fd)); }
inline int platform_mkdir(const char *path) { return _mkdir(path); }
#else
#  include <sys/socket.h>
#  include <netinet/in.h>
#  include <arpa/inet.h>
#  include <unistd.h>
#  include <sys/stat.h>
inline int platform_close(int fd) { return close(fd); }
inline int platform_mkdir_mode(const char *path, int mode) { return mkdir(path, mode); }
inline int platform_mkdir(const char *path) { return mkdir(path, 0755); }
#endif
