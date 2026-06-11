// crypto.hpp — SHA-256, HMAC-SHA256, base64, and the Kakao infodesk signature.
// Self-contained: no OpenSSL/third-party crypto dependency.
#pragma once

#include <string>
#include <string_view>

namespace eversoul
{

    [[nodiscard]] std::string hmac_sha256(std::string_view key, std::string_view msg);
    [[nodiscard]] std::string base64_encode(std::string_view in);
    [[nodiscard]] std::string base64_decode(std::string_view in);

    // Kakao infodesk response signature header value: "<i>;" + base64(HMAC-SHA256(secret[i], body)).
    // Verified byte-for-byte against real captures; lets /v2/app pass without a Frida bypass.
    [[nodiscard]] std::string infodesk_sig(std::string_view body);

    // RFC 6455 Sec-WebSocket-Accept = base64(SHA1(client_key + magic GUID)).
    [[nodiscard]] std::string websocket_accept(std::string_view client_key);

} // namespace eversoul
