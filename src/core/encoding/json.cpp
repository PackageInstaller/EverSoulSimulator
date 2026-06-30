// json.cpp — recursive-descent JSON parser implementation.
#include "json.hpp"

#include <cstdlib>

namespace eversoul::json
{

    const Value *Value::find(const std::string &key) const
    {
        if (type != Type::Object)
            return nullptr;
        for (const auto &[k, v] : obj)
        {
            if (k == key)
                return &v;
        }
        return nullptr;
    }

    std::int64_t Value::as_int64() const
    {
        const std::string &s = (type == Type::String) ? str : num_text;
        if (s.empty())
            return 0;
        return static_cast<std::int64_t>(std::strtoll(s.c_str(), nullptr, 10));
    }

    std::uint64_t Value::as_uint64() const
    {
        const std::string &s = (type == Type::String) ? str : num_text;
        if (s.empty())
            return 0;
        return static_cast<std::uint64_t>(std::strtoull(s.c_str(), nullptr, 10));
    }

    double Value::as_double() const
    {
        const std::string &s = (type == Type::String) ? str : num_text;
        if (s.empty())
            return 0.0;
        return std::strtod(s.c_str(), nullptr);
    }

    const std::string &Value::text() const
    {
        return (type == Type::String) ? str : num_text;
    }

    Value *Value::find_mut(const std::string &key)
    {
        if (type != Type::Object)
            return nullptr;
        for (auto &[k, v] : obj)
        {
            if (k == key)
                return &v;
        }
        return nullptr;
    }

    void Value::set_number(const std::string &key, std::int64_t v)
    {
        if (type != Type::Object)
        {
            type = Type::Object;
        }
        if (Value *existing = find_mut(key))
        {
            existing->type = Type::Number;
            existing->num_text = std::to_string(v);
            return;
        }
        Value nv;
        nv.type = Type::Number;
        nv.num_text = std::to_string(v);
        obj.emplace_back(key, std::move(nv));
    }

    void Value::set_string(const std::string &key, const std::string &v)
    {
        if (type != Type::Object)
        {
            type = Type::Object;
        }
        if (Value *existing = find_mut(key))
        {
            existing->type = Type::String;
            existing->str = v;
            return;
        }
        Value nv;
        nv.type = Type::String;
        nv.str = v;
        obj.emplace_back(key, std::move(nv));
    }

    namespace
    {

        void dump_string(const std::string &s, std::string &out)
        {
            out.push_back('"');
            for (char c : s)
            {
                switch (c)
                {
                case '"':
                    out += "\\\"";
                    break;
                case '\\':
                    out += "\\\\";
                    break;
                case '\n':
                    out += "\\n";
                    break;
                case '\r':
                    out += "\\r";
                    break;
                case '\t':
                    out += "\\t";
                    break;
                case '\b':
                    out += "\\b";
                    break;
                case '\f':
                    out += "\\f";
                    break;
                default:
                    if (static_cast<unsigned char>(c) < 0x20)
                    {
                        static const char *hex = "0123456789abcdef";
                        out += "\\u00";
                        out.push_back(hex[(c >> 4) & 0xF]);
                        out.push_back(hex[c & 0xF]);
                    }
                    else
                    {
                        out.push_back(c);
                    }
                }
            }
            out.push_back('"');
        }

        void dump_value(const Value &v, std::string &out)
        {
            switch (v.type)
            {
            case Type::Null:
                out += "null";
                break;
            case Type::Bool:
                out += v.b ? "true" : "false";
                break;
            case Type::Number:
                out += v.num_text.empty() ? "0" : v.num_text;
                break;
            case Type::String:
                dump_string(v.str, out);
                break;
            case Type::Array:
            {
                out.push_back('[');
                for (std::size_t i = 0; i < v.arr.size(); ++i)
                {
                    if (i)
                        out.push_back(',');
                    dump_value(v.arr[i], out);
                }
                out.push_back(']');
                break;
            }
            case Type::Object:
            {
                out.push_back('{');
                bool first = true;
                for (const auto &[k, val] : v.obj)
                {
                    if (!first)
                        out.push_back(',');
                    first = false;
                    dump_string(k, out);
                    out.push_back(':');
                    dump_value(val, out);
                }
                out.push_back('}');
                break;
            }
            }
        }

    } // namespace

    std::string Value::dump() const
    {
        std::string out;
        dump_value(*this, out);
        return out;
    }

    namespace
    {

        struct Parser
        {
            const std::string &s;
            std::size_t i = 0;
            std::string err;

            explicit Parser(const std::string &in) : s(in) {}

            void skip_ws()
            {
                while (i < s.size())
                {
                    char c = s[i];
                    if (c == ' ' || c == '\t' || c == '\n' || c == '\r')
                    {
                        ++i;
                    }
                    else
                    {
                        break;
                    }
                }
            }

            bool fail(const std::string &m)
            {
                if (err.empty())
                    err = m + " at offset " + std::to_string(i);
                return false;
            }

            bool parse_value(Value &out)
            {
                skip_ws();
                if (i >= s.size())
                    return fail("unexpected end");
                char c = s[i];
                switch (c)
                {
                case '{':
                    return parse_object(out);
                case '[':
                    return parse_array(out);
                case '"':
                {
                    out.type = Type::String;
                    return parse_string(out.str);
                }
                case 't':
                case 'f':
                    return parse_bool(out);
                case 'n':
                    return parse_null(out);
                default:
                    if (c == '-' || (c >= '0' && c <= '9'))
                        return parse_number(out);
                    return fail("unexpected character");
                }
            }

            bool parse_object(Value &out)
            {
                out.type = Type::Object;
                ++i; // consume '{'
                skip_ws();
                if (i < s.size() && s[i] == '}')
                {
                    ++i;
                    return true;
                }
                while (true)
                {
                    skip_ws();
                    if (i >= s.size() || s[i] != '"')
                        return fail("expected object key");
                    std::string key;
                    if (!parse_string(key))
                        return false;
                    skip_ws();
                    if (i >= s.size() || s[i] != ':')
                        return fail("expected ':'");
                    ++i;
                    Value v;
                    if (!parse_value(v))
                        return false;
                    out.obj.emplace_back(std::move(key), std::move(v));
                    skip_ws();
                    if (i >= s.size())
                        return fail("unterminated object");
                    if (s[i] == ',')
                    {
                        ++i;
                        continue;
                    }
                    if (s[i] == '}')
                    {
                        ++i;
                        return true;
                    }
                    return fail("expected ',' or '}'");
                }
            }

            bool parse_array(Value &out)
            {
                out.type = Type::Array;
                ++i; // consume '['
                skip_ws();
                if (i < s.size() && s[i] == ']')
                {
                    ++i;
                    return true;
                }
                while (true)
                {
                    Value v;
                    if (!parse_value(v))
                        return false;
                    out.arr.push_back(std::move(v));
                    skip_ws();
                    if (i >= s.size())
                        return fail("unterminated array");
                    if (s[i] == ',')
                    {
                        ++i;
                        continue;
                    }
                    if (s[i] == ']')
                    {
                        ++i;
                        return true;
                    }
                    return fail("expected ',' or ']'");
                }
            }

            bool parse_string(std::string &out)
            {
                ++i; // consume opening quote
                while (i < s.size())
                {
                    char c = s[i++];
                    if (c == '"')
                        return true;
                    if (c == '\\')
                    {
                        if (i >= s.size())
                            return fail("bad escape");
                        char e = s[i++];
                        switch (e)
                        {
                        case '"':
                            out += '"';
                            break;
                        case '\\':
                            out += '\\';
                            break;
                        case '/':
                            out += '/';
                            break;
                        case 'n':
                            out += '\n';
                            break;
                        case 't':
                            out += '\t';
                            break;
                        case 'r':
                            out += '\r';
                            break;
                        case 'b':
                            out += '\b';
                            break;
                        case 'f':
                            out += '\f';
                            break;
                        case 'u':
                        {
                            if (i + 4 > s.size())
                                return fail("bad \\u escape");
                            unsigned cp = 0;
                            for (int k = 0; k < 4; ++k)
                            {
                                char h = s[i++];
                                cp <<= 4;
                                if (h >= '0' && h <= '9')
                                    cp |= unsigned(h - '0');
                                else if (h >= 'a' && h <= 'f')
                                    cp |= unsigned(h - 'a' + 10);
                                else if (h >= 'A' && h <= 'F')
                                    cp |= unsigned(h - 'A' + 10);
                                else
                                    return fail("bad hex in \\u");
                            }
                            // Encode the code point as UTF-8 (BMP only; surrogate
                            // pairs aren't used in our fixtures).
                            if (cp < 0x80)
                            {
                                out += char(cp);
                            }
                            else if (cp < 0x800)
                            {
                                out += char(0xC0 | (cp >> 6));
                                out += char(0x80 | (cp & 0x3F));
                            }
                            else
                            {
                                out += char(0xE0 | (cp >> 12));
                                out += char(0x80 | ((cp >> 6) & 0x3F));
                                out += char(0x80 | (cp & 0x3F));
                            }
                            break;
                        }
                        default:
                            return fail("unknown escape");
                        }
                    }
                    else
                    {
                        out += c;
                    }
                }
                return fail("unterminated string");
            }

            bool parse_number(Value &out)
            {
                out.type = Type::Number;
                std::size_t start = i;
                if (i < s.size() && s[i] == '-')
                    ++i;
                while (i < s.size())
                {
                    char c = s[i];
                    if ((c >= '0' && c <= '9') || c == '.' || c == 'e' || c == 'E' ||
                        c == '+' || c == '-')
                    {
                        ++i;
                    }
                    else
                    {
                        break;
                    }
                }
                out.num_text = s.substr(start, i - start);
                if (out.num_text.empty())
                    return fail("invalid number");
                return true;
            }

            bool parse_bool(Value &out)
            {
                if (s.compare(i, 4, "true") == 0)
                {
                    out.type = Type::Bool;
                    out.b = true;
                    i += 4;
                    return true;
                }
                if (s.compare(i, 5, "false") == 0)
                {
                    out.type = Type::Bool;
                    out.b = false;
                    i += 5;
                    return true;
                }
                return fail("invalid literal");
            }

            bool parse_null(Value &out)
            {
                if (s.compare(i, 4, "null") == 0)
                {
                    out.type = Type::Null;
                    i += 4;
                    return true;
                }
                return fail("invalid literal");
            }
        };

    } // namespace

    bool parse(const std::string &input, Value &out, std::string &error)
    {
        Parser p(input);
        if (!p.parse_value(out))
        {
            error = p.err;
            return false;
        }
        p.skip_ws();
        if (p.i != input.size())
        {
            error = "trailing data at offset " + std::to_string(p.i);
            return false;
        }
        return true;
    }

} // namespace eversoul::json
