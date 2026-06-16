// net_redirect.hpp — Transport-layer URL redirect (方案 B).
//
// Hooks libc connect()/getaddrinfo()/android_getaddrinfofornet() so that every
// outbound connection destined for a Kakao / zinny3 / esoul / lockincomp host
// (see eversoul::redirect domain lists) is bounced to the in-process offline
// server at 127.0.0.1:9999 — regardless of which layer issued it (Java
// HttpURLConnection, Java raw Socket / WebSocketClient, or Unity UnityWebRequest).
//
// This sits below the URL-string layer, so it catches the WebSocket path that
// never goes through java.net.URL / URLHook. See net_redirect.cpp for the TLS
// caveat (every Kakao endpoint is https/wss, so the local server must terminate
// TLS or the scheme must be downgraded at the string layer).
#pragma once

namespace eversoul::net_redirect
{
    // Install the connect()/getaddrinfo() hooks. Idempotent. Safe to call from
    // the library constructor (libc is always loaded).
    void install();

} // namespace eversoul::net_redirect
