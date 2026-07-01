// protobuf.cpp — minimal protobuf wire-format helpers.
#include "protobuf.hpp"

#include <cstring>

namespace eversoul
{

    void pb_varint(std::string &out, std::uint64_t value)
    {
        while (value >= 0x80)
        {
            out.push_back(static_cast<char>((value & 0x7f) | 0x80));
            value >>= 7;
        }
        out.push_back(static_cast<char>(value));
    }

    void pb_key(std::string &out, int field, int wire_type)
    {
        pb_varint(out, (static_cast<std::uint64_t>(field) << 3) | static_cast<std::uint64_t>(wire_type));
    }

    void pb_int32(std::string &out, int field, std::int32_t value)
    {
        pb_key(out, field, 0);
        pb_varint(out, static_cast<std::uint32_t>(value));
    }

    void pb_int64(std::string &out, int field, std::int64_t value)
    {
        pb_key(out, field, 0);
        pb_varint(out, static_cast<std::uint64_t>(value));
    }

    void pb_float(std::string &out, int field, float value)
    {
        pb_key(out, field, 5);
        std::uint32_t bits = 0;
        static_assert(sizeof(float) == sizeof(std::uint32_t));
        std::memcpy(&bits, &value, sizeof(bits));
        for (int i = 0; i < 4; ++i)
            out.push_back(static_cast<char>((bits >> (8 * i)) & 0xff));
    }

    void pb_bool(std::string &out, int field, bool value)
    {
        pb_key(out, field, 0);
        pb_varint(out, value ? 1 : 0);
    }

    void pb_string(std::string &out, int field, const std::string &value)
    {
        pb_key(out, field, 2);
        pb_varint(out, value.size());
        out += value;
    }

    void pb_message(std::string &out, int field, const std::string &nested)
    {
        pb_key(out, field, 2);
        pb_varint(out, nested.size());
        out += nested;
    }

    void pb_packed_int32(std::string &out, int field, const std::vector<std::int32_t> &values)
    {
        if (values.empty())
            return;
        std::string packed;
        for (std::int32_t value : values)
            pb_varint(packed, static_cast<std::uint32_t>(value));
        pb_key(out, field, 2);
        pb_varint(out, packed.size());
        out += packed;
    }

    bool pb_read_varint(const std::string &data, std::size_t &pos, std::uint64_t &value)
    {
        value = 0;
        int shift = 0;
        while (pos < data.size() && shift <= 63)
        {
            std::uint8_t b = static_cast<std::uint8_t>(data[pos++]);
            value |= static_cast<std::uint64_t>(b & 0x7f) << shift;
            if ((b & 0x80) == 0)
                return true;
            shift += 7;
        }
        return false;
    }

    bool pb_skip(const std::string &data, std::size_t &pos, int wire_type)
    {
        std::uint64_t len = 0;
        switch (wire_type)
        {
        case 0:
            return pb_read_varint(data, pos, len);
        case 1:
            pos += 8;
            return pos <= data.size();
        case 2:
            if (!pb_read_varint(data, pos, len))
                return false;
            pos += static_cast<std::size_t>(len);
            return pos <= data.size();
        case 5:
            pos += 4;
            return pos <= data.size();
        default:
            return false;
        }
    }

    std::int32_t pb_get_int32(const std::string &data, int wanted_field, std::int32_t fallback)
    {
        std::size_t pos = 0;
        while (pos < data.size())
        {
            std::uint64_t key = 0;
            if (!pb_read_varint(data, pos, key))
                break;
            int field = static_cast<int>(key >> 3);
            int wire = static_cast<int>(key & 7);
            if (field == wanted_field && wire == 0)
            {
                std::uint64_t value = 0;
                if (pb_read_varint(data, pos, value))
                    return static_cast<std::int32_t>(value);
                break;
            }
            if (!pb_skip(data, pos, wire))
                break;
        }
        return fallback;
    }

    float pb_get_float(const std::string &data, int wanted_field, float fallback)
    {
        std::size_t pos = 0;
        while (pos < data.size())
        {
            std::uint64_t key = 0;
            if (!pb_read_varint(data, pos, key))
                break;
            int field = static_cast<int>(key >> 3);
            int wire = static_cast<int>(key & 7);
            if (field == wanted_field && wire == 5 && pos + 4 <= data.size())
            {
                std::uint32_t bits = 0;
                std::memcpy(&bits, data.data() + pos, 4);
                float value = 0.f;
                std::memcpy(&value, &bits, sizeof(value));
                return value;
            }
            if (!pb_skip(data, pos, wire))
                break;
        }
        return fallback;
    }

    bool pb_has_field(const std::string &data, int wanted_field)
    {
        std::size_t pos = 0;
        while (pos < data.size())
        {
            std::uint64_t key = 0;
            if (!pb_read_varint(data, pos, key))
                break;
            int field = static_cast<int>(key >> 3);
            int wire = static_cast<int>(key & 7);
            if (field == wanted_field)
                return true;
            if (!pb_skip(data, pos, wire))
                break;
        }
        return false;
    }

    std::int64_t pb_get_int64(const std::string &data, int wanted_field, std::int64_t fallback)
    {
        std::size_t pos = 0;
        while (pos < data.size())
        {
            std::uint64_t key = 0;
            if (!pb_read_varint(data, pos, key))
                break;
            int field = static_cast<int>(key >> 3);
            int wire = static_cast<int>(key & 7);
            if (field == wanted_field && wire == 0)
            {
                std::uint64_t value = 0;
                if (pb_read_varint(data, pos, value))
                    return static_cast<std::int64_t>(value);
                break;
            }
            if (!pb_skip(data, pos, wire))
                break;
        }
        return fallback;
    }

    std::string pb_get_string(const std::string &data, int wanted_field, const std::string &fallback)
    {
        std::size_t pos = 0;
        while (pos < data.size())
        {
            std::uint64_t key = 0;
            if (!pb_read_varint(data, pos, key))
                break;
            int field = static_cast<int>(key >> 3);
            int wire = static_cast<int>(key & 7);
            if (field == wanted_field && wire == 2)
            {
                std::uint64_t len = 0;
                if (!pb_read_varint(data, pos, len))
                    break;
                if (pos + static_cast<std::size_t>(len) > data.size())
                    break;
                return data.substr(pos, static_cast<std::size_t>(len));
            }
            if (!pb_skip(data, pos, wire))
                break;
        }
        return fallback;
    }

    std::vector<std::int32_t> pb_get_all_int32(const std::string &data, int wanted_field)
    {
        std::vector<std::int32_t> out;
        std::size_t pos = 0;
        while (pos < data.size())
        {
            std::uint64_t key = 0;
            if (!pb_read_varint(data, pos, key))
                break;
            int field = static_cast<int>(key >> 3);
            int wire = static_cast<int>(key & 7);
            if (field == wanted_field && wire == 0)
            {
                std::uint64_t value = 0;
                if (!pb_read_varint(data, pos, value))
                    break;
                out.push_back(static_cast<std::int32_t>(value));
                continue;
            }
            if (field == wanted_field && wire == 2)
            {
                std::uint64_t len = 0;
                if (!pb_read_varint(data, pos, len))
                    break;
                const std::size_t end = pos + static_cast<std::size_t>(len);
                if (end > data.size())
                    break;
                while (pos < end)
                {
                    std::uint64_t value = 0;
                    if (!pb_read_varint(data, pos, value))
                        break;
                    out.push_back(static_cast<std::int32_t>(value));
                }
                pos = end;
                continue;
            }
            if (!pb_skip(data, pos, wire))
                break;
        }
        return out;
    }

    std::string pb_get_message(const std::string &data, int wanted_field)
    {
        std::size_t pos = 0;
        while (pos < data.size())
        {
            std::uint64_t key = 0;
            if (!pb_read_varint(data, pos, key))
                break;
            int field = static_cast<int>(key >> 3);
            int wire = static_cast<int>(key & 7);
            if (field == wanted_field && wire == 2)
            {
                std::uint64_t len = 0;
                if (!pb_read_varint(data, pos, len))
                    break;
                if (pos + static_cast<std::size_t>(len) > data.size())
                    break;
                return data.substr(pos, static_cast<std::size_t>(len));
            }
            if (!pb_skip(data, pos, wire))
                break;
        }
        return {};
    }

    std::vector<std::string> pb_get_all_strings(const std::string &data, int wanted_field)
    {
        std::vector<std::string> out;
        std::size_t pos = 0;
        while (pos < data.size())
        {
            std::uint64_t key = 0;
            if (!pb_read_varint(data, pos, key))
                break;
            int field = static_cast<int>(key >> 3);
            int wire = static_cast<int>(key & 7);
            if (field == wanted_field && wire == 2)
            {
                std::uint64_t len = 0;
                if (!pb_read_varint(data, pos, len))
                    break;
                if (pos + static_cast<std::size_t>(len) > data.size())
                    break;
                out.push_back(data.substr(pos, static_cast<std::size_t>(len)));
                pos += static_cast<std::size_t>(len);
                continue;
            }
            if (!pb_skip(data, pos, wire))
                break;
        }
        return out;
    }

    std::vector<std::string> pb_get_all_messages(const std::string &data, int wanted_field)
    {
        return pb_get_all_strings(data, wanted_field);
    }

    namespace
    {

        std::string pb_strip_field(const std::string &data, int wanted_field)
        {
            std::string out;
            std::size_t pos = 0;
            while (pos < data.size())
            {
                const std::size_t field_start = pos;
                std::uint64_t key = 0;
                if (!pb_read_varint(data, pos, key))
                    break;
                const int field = static_cast<int>(key >> 3);
                const int wire = static_cast<int>(key & 7);
                if (!pb_skip(data, pos, wire))
                    break;
                if (field != wanted_field)
                    out.append(data, field_start, pos - field_start);
            }
            return out;
        }

    } // namespace

    std::string pb_replace_int32(const std::string &data, int field, std::int32_t value)
    {
        std::string out = pb_strip_field(data, field);
        pb_int32(out, field, value);
        return out;
    }

    std::string pb_replace_int64(const std::string &data, int field, std::int64_t value)
    {
        std::string out = pb_strip_field(data, field);
        pb_int64(out, field, value);
        return out;
    }

    std::string pb_replace_float(const std::string &data, int field, float value)
    {
        std::string out = pb_strip_field(data, field);
        pb_float(out, field, value);
        return out;
    }

    std::string pb_replace_bytes(const std::string &data, int field, const std::string &value)
    {
        std::string out = pb_strip_field(data, field);
        pb_string(out, field, value);
        return out;
    }

    std::string pb_replace_message(const std::string &data, int field, const std::string &nested)
    {
        std::string out = pb_strip_field(data, field);
        pb_message(out, field, nested);
        return out;
    }

    std::string hex_to_bytes(const char *hex)
    {
        auto nibble = [](char c) -> std::uint8_t
        {
            if (c >= '0' && c <= '9')
                return static_cast<std::uint8_t>(c - '0');
            if (c >= 'a' && c <= 'f')
                return static_cast<std::uint8_t>(c - 'a' + 10);
            if (c >= 'A' && c <= 'F')
                return static_cast<std::uint8_t>(c - 'A' + 10);
            return 0;
        };
        std::string out;
        std::size_t len = std::strlen(hex);
        out.reserve(len / 2);
        for (std::size_t i = 0; i + 1 < len; i += 2)
        {
            out.push_back(static_cast<char>((nibble(hex[i]) << 4) | nibble(hex[i + 1])));
        }
        return out;
    }

} // namespace eversoul
