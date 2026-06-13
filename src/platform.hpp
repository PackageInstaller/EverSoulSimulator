#pragma once
#ifdef _WIN32
#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif
#include <winsock2.h>
#include <ws2tcpip.h>
#ifdef min
#undef min
#endif
#ifdef max
#undef max
#endif
#include <sys/types.h>
#include <cstddef>
namespace eversoul {
using socket_fd_t = SOCKET;
inline constexpr socket_fd_t kInvalidSocket = INVALID_SOCKET;
inline void socket_close(socket_fd_t fd) { closesocket(fd); }
inline ssize_t platform_recv(socket_fd_t fd, char *buf, std::size_t len) {
    return static_cast<ssize_t>(::recv(fd, buf, static_cast<int>(len), 0));
}
inline ssize_t platform_send(socket_fd_t fd, const char *buf, std::size_t len) {
    return static_cast<ssize_t>(::send(fd, buf, static_cast<int>(len), 0));
}
}
#else
#include <arpa/inet.h>
#include <cstddef>
#include <netinet/in.h>
#include <sys/socket.h>
#include <unistd.h>
namespace eversoul {
using socket_fd_t = int;
inline constexpr socket_fd_t kInvalidSocket = -1;
inline void socket_close(socket_fd_t fd) { close(fd); }
inline ssize_t platform_recv(socket_fd_t fd, char *buf, std::size_t len) {
    return ::recv(fd, buf, len, 0);
}
inline ssize_t platform_send(socket_fd_t fd, const char *buf, std::size_t len) {
    return ::send(fd, buf, len, 0);
}
}
#endif
