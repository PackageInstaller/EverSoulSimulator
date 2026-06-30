// crypto.cpp — SHA-256 / HMAC-SHA256 / base64 / infodesk signature.
#include "crypto.hpp"

#include <algorithm>
#include <array>
#include <cstdint>
#include <cstring>

namespace eversoul
{
    namespace
    {

        struct Sha256
        {
            std::array<std::uint32_t, 8> h{0x6a09e667, 0xbb67ae85, 0x3c6ef372, 0xa54ff53a,
                                           0x510e527f, 0x9b05688c, 0x1f83d9ab, 0x5be0cd19};
            std::uint64_t len = 0;
            std::array<std::uint8_t, 64> buf{};
            std::size_t buf_len = 0;

            static constexpr std::uint32_t rotr(std::uint32_t x, int n) { return (x >> n) | (x << (32 - n)); }

            void block(const std::uint8_t *p)
            {
                static constexpr std::array<std::uint32_t, 64> k = {
                    0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5, 0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
                    0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3, 0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
                    0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc, 0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
                    0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7, 0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
                    0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13, 0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
                    0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3, 0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
                    0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5, 0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
                    0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208, 0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2};
                std::array<std::uint32_t, 64> w{};
                for (int i = 0; i < 16; ++i)
                {
                    w[i] = (static_cast<std::uint32_t>(p[i * 4]) << 24) |
                           (static_cast<std::uint32_t>(p[i * 4 + 1]) << 16) |
                           (static_cast<std::uint32_t>(p[i * 4 + 2]) << 8) | static_cast<std::uint32_t>(p[i * 4 + 3]);
                }
                for (int i = 16; i < 64; ++i)
                {
                    std::uint32_t s0 = rotr(w[i - 15], 7) ^ rotr(w[i - 15], 18) ^ (w[i - 15] >> 3);
                    std::uint32_t s1 = rotr(w[i - 2], 17) ^ rotr(w[i - 2], 19) ^ (w[i - 2] >> 10);
                    w[i] = w[i - 16] + s0 + w[i - 7] + s1;
                }
                auto [a, b, c, d, e, f, g, hh] = h;
                for (int i = 0; i < 64; ++i)
                {
                    std::uint32_t S1 = rotr(e, 6) ^ rotr(e, 11) ^ rotr(e, 25);
                    std::uint32_t ch = (e & f) ^ (~e & g);
                    std::uint32_t t1 = hh + S1 + ch + k[i] + w[i];
                    std::uint32_t S0 = rotr(a, 2) ^ rotr(a, 13) ^ rotr(a, 22);
                    std::uint32_t maj = (a & b) ^ (a & c) ^ (b & c);
                    std::uint32_t t2 = S0 + maj;
                    hh = g;
                    g = f;
                    f = e;
                    e = d + t1;
                    d = c;
                    c = b;
                    b = a;
                    a = t1 + t2;
                }
                h[0] += a;
                h[1] += b;
                h[2] += c;
                h[3] += d;
                h[4] += e;
                h[5] += f;
                h[6] += g;
                h[7] += hh;
            }

            void update(const std::uint8_t *data, std::size_t n)
            {
                len += n;
                while (n > 0)
                {
                    std::size_t take = std::min<std::size_t>(64 - buf_len, n);
                    std::memcpy(buf.data() + buf_len, data, take);
                    buf_len += take;
                    data += take;
                    n -= take;
                    if (buf_len == 64)
                    {
                        block(buf.data());
                        buf_len = 0;
                    }
                }
            }

            void final(std::uint8_t out[32])
            {
                std::uint64_t bit_len = len * 8;
                std::uint8_t pad = 0x80;
                update(&pad, 1);
                std::uint8_t zero = 0;
                while (buf_len != 56)
                    update(&zero, 1);
                std::uint8_t lenbuf[8];
                for (int i = 0; i < 8; ++i)
                    lenbuf[i] = static_cast<std::uint8_t>(bit_len >> (56 - i * 8));
                update(lenbuf, 8);
                for (int i = 0; i < 8; ++i)
                {
                    out[i * 4] = static_cast<std::uint8_t>(h[i] >> 24);
                    out[i * 4 + 1] = static_cast<std::uint8_t>(h[i] >> 16);
                    out[i * 4 + 2] = static_cast<std::uint8_t>(h[i] >> 8);
                    out[i * 4 + 3] = static_cast<std::uint8_t>(h[i]);
                }
            }
        };

        // SHA-1 — only needed for the WebSocket handshake accept key.
        struct Sha1
        {
            std::uint32_t h[5] = {0x67452301, 0xEFCDAB89, 0x98BADCFE, 0x10325476, 0xC3D2E1F0};
            std::uint64_t len = 0;
            std::uint8_t buf[64]{};
            std::size_t buf_len = 0;

            static std::uint32_t rol(std::uint32_t x, int n) { return (x << n) | (x >> (32 - n)); }

            void block(const std::uint8_t *p)
            {
                std::uint32_t w[80];
                for (int i = 0; i < 16; ++i)
                {
                    w[i] = (std::uint32_t(p[i * 4]) << 24) | (std::uint32_t(p[i * 4 + 1]) << 16) |
                           (std::uint32_t(p[i * 4 + 2]) << 8) | std::uint32_t(p[i * 4 + 3]);
                }
                for (int i = 16; i < 80; ++i)
                    w[i] = rol(w[i - 3] ^ w[i - 8] ^ w[i - 14] ^ w[i - 16], 1);
                std::uint32_t a = h[0], b = h[1], c = h[2], d = h[3], e = h[4];
                for (int i = 0; i < 80; ++i)
                {
                    std::uint32_t f, k;
                    if (i < 20)
                    {
                        f = (b & c) | (~b & d);
                        k = 0x5A827999;
                    }
                    else if (i < 40)
                    {
                        f = b ^ c ^ d;
                        k = 0x6ED9EBA1;
                    }
                    else if (i < 60)
                    {
                        f = (b & c) | (b & d) | (c & d);
                        k = 0x8F1BBCDC;
                    }
                    else
                    {
                        f = b ^ c ^ d;
                        k = 0xCA62C1D6;
                    }
                    std::uint32_t t = rol(a, 5) + f + e + k + w[i];
                    e = d;
                    d = c;
                    c = rol(b, 30);
                    b = a;
                    a = t;
                }
                h[0] += a;
                h[1] += b;
                h[2] += c;
                h[3] += d;
                h[4] += e;
            }

            void update(const std::uint8_t *p, std::size_t n)
            {
                len += n;
                while (n > 0)
                {
                    std::size_t take = std::min(n, std::size_t(64) - buf_len);
                    std::memcpy(buf + buf_len, p, take);
                    buf_len += take;
                    p += take;
                    n -= take;
                    if (buf_len == 64)
                    {
                        block(buf);
                        buf_len = 0;
                    }
                }
            }

            void final(std::uint8_t out[20])
            {
                std::uint64_t bit_len = len * 8;
                std::uint8_t pad = 0x80;
                update(&pad, 1);
                std::uint8_t zero = 0;
                while (buf_len != 56)
                    update(&zero, 1);
                std::uint8_t lenbuf[8];
                for (int i = 0; i < 8; ++i)
                    lenbuf[i] = static_cast<std::uint8_t>(bit_len >> (56 - i * 8));
                update(lenbuf, 8);
                for (int i = 0; i < 5; ++i)
                {
                    out[i * 4] = static_cast<std::uint8_t>(h[i] >> 24);
                    out[i * 4 + 1] = static_cast<std::uint8_t>(h[i] >> 16);
                    out[i * 4 + 2] = static_cast<std::uint8_t>(h[i] >> 8);
                    out[i * 4 + 3] = static_cast<std::uint8_t>(h[i]);
                }
            }
        };

    } // namespace

    std::string hmac_sha256(std::string_view key, std::string_view msg)
    {
        std::uint8_t k[64] = {0};
        if (key.size() > 64)
        {
            Sha256 kh;
            kh.update(reinterpret_cast<const std::uint8_t *>(key.data()), key.size());
            kh.final(k);
        }
        else
        {
            std::memcpy(k, key.data(), key.size());
        }
        std::uint8_t ipad[64], opad[64];
        for (int i = 0; i < 64; ++i)
        {
            ipad[i] = k[i] ^ 0x36;
            opad[i] = k[i] ^ 0x5c;
        }
        std::uint8_t inner[32];
        Sha256 hi;
        hi.update(ipad, 64);
        hi.update(reinterpret_cast<const std::uint8_t *>(msg.data()), msg.size());
        hi.final(inner);
        std::uint8_t outer[32];
        Sha256 ho;
        ho.update(opad, 64);
        ho.update(inner, 32);
        ho.final(outer);
        return std::string(reinterpret_cast<char *>(outer), 32);
    }

    std::string base64_encode(std::string_view in)
    {
        static constexpr std::string_view tbl =
            "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
        std::string out;
        out.reserve(((in.size() + 2) / 3) * 4);
        std::size_t i = 0;
        while (i + 3 <= in.size())
        {
            std::uint32_t n = (static_cast<std::uint8_t>(in[i]) << 16) |
                              (static_cast<std::uint8_t>(in[i + 1]) << 8) | static_cast<std::uint8_t>(in[i + 2]);
            out.push_back(tbl[(n >> 18) & 63]);
            out.push_back(tbl[(n >> 12) & 63]);
            out.push_back(tbl[(n >> 6) & 63]);
            out.push_back(tbl[n & 63]);
            i += 3;
        }
        std::size_t rem = in.size() - i;
        if (rem == 1)
        {
            std::uint32_t n = static_cast<std::uint8_t>(in[i]) << 16;
            out.push_back(tbl[(n >> 18) & 63]);
            out.push_back(tbl[(n >> 12) & 63]);
            out += "==";
        }
        else if (rem == 2)
        {
            std::uint32_t n = (static_cast<std::uint8_t>(in[i]) << 16) | (static_cast<std::uint8_t>(in[i + 1]) << 8);
            out.push_back(tbl[(n >> 18) & 63]);
            out.push_back(tbl[(n >> 12) & 63]);
            out.push_back(tbl[(n >> 6) & 63]);
            out.push_back('=');
        }
        return out;
    }

    std::string base64_decode(std::string_view in)
    {
        auto val = [](char c) -> int
        {
            if (c >= 'A' && c <= 'Z')
                return c - 'A';
            if (c >= 'a' && c <= 'z')
                return c - 'a' + 26;
            if (c >= '0' && c <= '9')
                return c - '0' + 52;
            if (c == '+')
                return 62;
            if (c == '/')
                return 63;
            return -1; // padding/whitespace/invalid
        };
        std::string out;
        out.reserve((in.size() / 4) * 3);
        int buf = 0, bits = 0;
        for (char c : in)
        {
            if (c == '=')
                break;
            int v = val(c);
            if (v < 0)
                continue; // skip newlines/whitespace
            buf = (buf << 6) | v;
            bits += 6;
            if (bits >= 8)
            {
                bits -= 8;
                out.push_back(static_cast<char>((buf >> bits) & 0xFF));
            }
        }
        return out;
    }

    std::string infodesk_sig(std::string_view body)
    {
        // Keys decoded from com.kakaogame.util.HmacSHA256Util.infodeskSecret (LIAPP-obfuscated in dex).
        static constexpr std::array<std::string_view, 10> kInfodeskSecret = {
            "qvjNK+TlAJ", "uJoTcQBO+9", "MovWHJmjDW", "P+vGJcozPQ", "+X3Dl3Dwpz",
            "w+uUO9DNB6", "TIog+qX34W", "MQs+56R2ww", "pH+H7aoHe0", "Dxf+pOe5tp"};
        constexpr int idx = 0;
        return std::to_string(idx) + ";" + base64_encode(hmac_sha256(kInfodeskSecret[idx], body));
    }

    std::string websocket_accept(std::string_view client_key)
    {
        // RFC 6455: base64(SHA1(Sec-WebSocket-Key + magic GUID)).
        static constexpr std::string_view kMagic = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
        std::string concat(client_key);
        concat += kMagic;
        Sha1 s;
        s.update(reinterpret_cast<const std::uint8_t *>(concat.data()), concat.size());
        std::uint8_t digest[20];
        s.final(digest);
        return base64_encode(std::string_view(reinterpret_cast<char *>(digest), 20));
    }

} // namespace eversoul
