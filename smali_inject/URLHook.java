package com.rikka.redirect;

// URLHook — Java-layer URL redirect for the Kakao SDK (方案 A: string-layer
// scheme-downgrade, the complement to the native transport redirect in
// net_redirect.cpp).
//
// Injected (via tools/patch_java_redirect.py) before every `new java.net.URL(s)`
// call (REST → HttpURLConnection) and into WebSocketManager.<init>/setSessionUrl
// (WebSocket → raw Socket). It rewrites Kakao/zinny3/esoul/kakaogames/lockincomp
// endpoints to the local offline server while DOWNGRADING THE SCHEME:
//     https:// , http://  ->  http://127.0.0.1:9999
//     wss://   , ws://    ->  ws://127.0.0.1:9999
// The downgrade is what lets the plaintext :9999 server work: HttpURLConnection
// sees http:// (no TLS) and WebSocketClient sees ws:// (SocketFactory.getDefault,
// no SSL). Everything after scheme://host[:port] (path + query + fragment) is kept.
//
// IMPORTANT: this is COMPILED to smali with d8 (see tools/build_urlhook.sh), so
// the bytecode is always verifier-clean — do not hand-edit the generated
// URLHook.smali. The earlier hand-written smali tripped a VerifyError and an
// inverted null-check; keeping the logic in Java avoids both classes of bug.
public final class URLHook {

    private static final String LOCAL_HTTP = "http://127.0.0.1:9999";
    private static final String LOCAL_WS = "ws://127.0.0.1:9999";

    // Game-backend host markers (substring match) — mirrors redirect.hpp /
    // eversoul-redirect-module / monitor_unity_web_request.js. Covers every real
    // endpoint: *.kakaogames.com (gc-*-zinny3, live-sea[-chat].esoul) and
    // *.game.kakao.com (*-zinny3). Deliberately does NOT match the Kakao account
    // login hosts (kapi/kauth.kakao.com) — only the game servers are mocked.
    private static final String[] HOSTS = {
        "kakaogames.com",
        "game.kakao.com",
        "zinny3",
    };

    private URLHook() {}

    public static String redirect(String url) {
        if (url == null) {
            return null;
        }
        try {
            // LIAPP anti-cheat device-auth posts to a random *.lockincomp.com
            // subdomain — always HTTP, redirect to the local server.
            if (url.contains(".lockincomp.com")) {
                return rebuild(url, LOCAL_HTTP);
            }

            boolean target = false;
            for (String h : HOSTS) {
                if (url.contains(h)) {
                    target = true;
                    break;
                }
            }
            if (!target) {
                return url;
            }

            String lower = url.toLowerCase();
            if (lower.startsWith("wss://") || lower.startsWith("ws://")) {
                return rebuild(url, LOCAL_WS);
            }
            if (lower.startsWith("https://") || lower.startsWith("http://")) {
                return rebuild(url, LOCAL_HTTP);
            }
            return url;
        } catch (Throwable t) {
            // Never let redirect logic break a request path.
            return url;
        }
    }

    // Replace scheme://host[:port] with `base`, preserving path/query/fragment.
    private static String rebuild(String url, String base) {
        int schemeEnd = url.indexOf("://");
        if (schemeEnd < 0) {
            return base;
        }
        int authStart = schemeEnd + 3;
        int end = url.length();
        for (int i = authStart; i < url.length(); i++) {
            char c = url.charAt(i);
            if (c == '/' || c == '?' || c == '#') {
                end = i;
                break;
            }
        }
        return base + url.substring(end);
    }
}
