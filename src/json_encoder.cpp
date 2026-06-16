// json_encoder.cpp — descriptor-driven JSON -> protobuf encoder.
#include "json_encoder.hpp"

#include <cmath>
#include <cstring>
#include <unordered_map>

#include "crypto.hpp"
#include "protobuf.hpp"

namespace eversoul
{
    namespace
    {

        // Wire types.
        constexpr int kWireVarint = 0;
        constexpr int kWire64 = 1;
        constexpr int kWireLen = 2;
        constexpr int kWire32 = 5;

        // A resolved view over the flattened schema JSON for O(1) lookups during encode.
        struct Schema
        {
            // message name -> its "fields" array Value*
            std::unordered_map<std::string, const json::Value *> messages;
            // enum name -> (member name -> number)
            std::unordered_map<std::string, std::unordered_map<std::string, std::int64_t>> enums;
            std::string root;
        };

        bool build_schema(const json::Value &schema_json, Schema &s, std::string &error)
        {
            const json::Value *root = schema_json.find("root");
            const json::Value *msgs = schema_json.find("messages");
            const json::Value *enums = schema_json.find("enums");
            if (!root || !root->is_string() || !msgs || !msgs->is_object())
            {
                error = "schema missing root/messages";
                return false;
            }
            s.root = root->str;
            for (const auto &[name, body] : msgs->obj)
            {
                const json::Value *fields = body.find("fields");
                if (!fields || !fields->is_array())
                {
                    error = "schema message " + name + " missing fields";
                    return false;
                }
                s.messages[name] = fields;
            }
            if (enums && enums->is_object())
            {
                for (const auto &[ename, members] : enums->obj)
                {
                    auto &m = s.enums[ename];
                    if (members.is_object())
                    {
                        for (const auto &[mname, num] : members.obj)
                        {
                            m[mname] = num.as_int64();
                        }
                    }
                }
            }
            return true;
        }

        // zigzag for sint32/sint64.
        std::uint64_t zigzag(std::int64_t v)
        {
            return (static_cast<std::uint64_t>(v) << 1) ^ static_cast<std::uint64_t>(v >> 63);
        }

        void put_fixed32(std::string &out, std::uint32_t v)
        {
            for (int i = 0; i < 4; ++i)
                out.push_back(static_cast<char>((v >> (8 * i)) & 0xFF));
        }
        void put_fixed64(std::string &out, std::uint64_t v)
        {
            for (int i = 0; i < 8; ++i)
                out.push_back(static_cast<char>((v >> (8 * i)) & 0xFF));
        }

        // Resolve an enum value: JSON may carry the enum NAME (from MessageToDict) or a
        // raw integer. Returns the wire number.
        std::int64_t enum_number(const Schema &s, const std::string &type_name,
                                 const json::Value &v)
        {
            if (v.is_number())
                return v.as_int64();
            if (v.is_string())
            {
                auto it = s.enums.find(type_name);
                if (it != s.enums.end())
                {
                    auto jt = it->second.find(v.str);
                    if (jt != it->second.end())
                        return jt->second;
                }
                // Fallback: a numeric string.
                return v.as_int64();
            }
            return 0;
        }

        // Append the wire value for a single scalar field element (no tag).
        void encode_scalar_value(std::string &out, const std::string &type,
                                 const json::Value &v)
        {
            if (type == "int32" || type == "int64")
            {
                // int32/int64 share varint encoding; negatives sign-extend to 64 bits
                // (a negative int32 becomes a 10-byte varint).
                pb_varint(out, static_cast<std::uint64_t>(v.as_int64()));
            }
            else if (type == "uint32" || type == "uint64")
            {
                pb_varint(out, v.as_uint64());
            }
            else if (type == "bool")
            {
                bool b = v.is_bool() ? v.b : (v.as_int64() != 0);
                pb_varint(out, b ? 1 : 0);
            }
            else if (type == "sint32" || type == "sint64")
            {
                pb_varint(out, zigzag(v.as_int64()));
            }
            else if (type == "fixed32")
            {
                put_fixed32(out, static_cast<std::uint32_t>(v.as_uint64()));
            }
            else if (type == "sfixed32")
            {
                put_fixed32(out, static_cast<std::uint32_t>(v.as_int64()));
            }
            else if (type == "float")
            {
                float f = static_cast<float>(v.as_double());
                std::uint32_t bits;
                std::memcpy(&bits, &f, 4);
                put_fixed32(out, bits);
            }
            else if (type == "fixed64")
            {
                put_fixed64(out, v.as_uint64());
            }
            else if (type == "sfixed64")
            {
                put_fixed64(out, static_cast<std::uint64_t>(v.as_int64()));
            }
            else if (type == "double")
            {
                double d = v.as_double();
                std::uint64_t bits;
                std::memcpy(&bits, &d, 8);
                put_fixed64(out, bits);
            }
        }

        // int32/int64 use the same varint encoding but must sign-extend negatives to
        // 64 bits (protobuf encodes a negative int32 as a 10-byte varint).
        bool is_packed_scalar(const std::string &type)
        {
            return type == "int32" || type == "int64" || type == "uint32" ||
                   type == "uint64" || type == "sint32" || type == "sint64" ||
                   type == "bool" || type == "fixed32" || type == "sfixed32" ||
                   type == "float" || type == "fixed64" || type == "sfixed64" ||
                   type == "double";
        }

        int scalar_wire_type(const std::string &type)
        {
            if (type == "fixed32" || type == "sfixed32" || type == "float")
                return kWire32;
            if (type == "fixed64" || type == "sfixed64" || type == "double")
                return kWire64;
            if (type == "string" || type == "bytes")
                return kWireLen;
            return kWireVarint;
        }

        // Forward declaration for recursion.
        bool encode_message(const Schema &s, const std::string &msg_name,
                            const json::Value &obj, std::string &out, std::string &error);

        // Encode one field (which may be repeated) given its schema entry and the JSON
        // value present in the object.
        bool encode_field(const Schema &s, const json::Value &field,
                          const json::Value &value, std::string &out,
                          std::string &error)
        {
            const json::Value *num = field.find("number");
            const json::Value *type = field.find("type");
            if (!num || !type || !type->is_string())
            {
                error = "schema field missing number/type";
                return false;
            }
            int field_no = static_cast<int>(num->as_int64());
            const std::string &t = type->str;
            const json::Value *tn = field.find("type_name");
            const json::Value *rep = field.find("repeated");
            const json::Value *packed = field.find("packed");
            bool repeated = rep && rep->is_bool() && rep->b;
            bool is_packed = packed && packed->is_bool() && packed->b;

            auto encode_one = [&](const json::Value &v) -> bool
            {
                if (t == "message")
                {
                    std::string nested;
                    if (!encode_message(s, tn ? tn->str : "", v, nested, error))
                        return false;
                    pb_key(out, field_no, kWireLen);
                    pb_varint(out, nested.size());
                    out += nested;
                }
                else if (t == "enum")
                {
                    pb_key(out, field_no, kWireVarint);
                    pb_varint(out, static_cast<std::uint64_t>(enum_number(s, tn ? tn->str : "", v)));
                }
                else if (t == "string")
                {
                    pb_key(out, field_no, kWireLen);
                    pb_varint(out, v.text().size());
                    out += v.text();
                }
                else if (t == "bytes")
                {
                    std::string raw = base64_decode(v.text());
                    pb_key(out, field_no, kWireLen);
                    pb_varint(out, raw.size());
                    out += raw;
                }
                else
                {
                    pb_key(out, field_no, scalar_wire_type(t));
                    encode_scalar_value(out, t, v);
                }
                return true;
            };

            if (!repeated)
            {
                return encode_one(value);
            }

            // Repeated.
            if (!value.is_array())
            {
                // A repeated field given a non-array: treat as a single element.
                return encode_one(value);
            }
            if (is_packed && (t == "enum" || is_packed_scalar(t)))
            {
                // Packed: one length-delimited field with concatenated values (no tags).
                std::string packed_buf;
                for (const auto &el : value.arr)
                {
                    if (t == "enum")
                    {
                        pb_varint(packed_buf, static_cast<std::uint64_t>(
                                                  enum_number(s, tn ? tn->str : "", el)));
                    }
                    else
                    {
                        encode_scalar_value(packed_buf, t, el);
                    }
                }
                pb_key(out, field_no, kWireLen);
                pb_varint(out, packed_buf.size());
                out += packed_buf;
                return true;
            }
            for (const auto &el : value.arr)
            {
                if (!encode_one(el))
                    return false;
            }
            return true;
        }

        bool encode_message(const Schema &s, const std::string &msg_name,
                            const json::Value &obj, std::string &out,
                            std::string &error)
        {
            auto it = s.messages.find(msg_name);
            if (it == s.messages.end())
            {
                error = "unknown message type " + msg_name;
                return false;
            }
            if (!obj.is_object())
            {
                // An empty/absent nested message encodes as zero bytes.
                if (obj.is_null())
                    return true;
                error = "expected object for message " + msg_name;
                return false;
            }
            const json::Value &fields = *it->second;
            // Encode in schema field order (ascending field number) for deterministic,
            // canonical output. Iterate the schema's fields and look up each in obj.
            for (const auto &field : fields.arr)
            {
                const json::Value *fname = field.find("name");
                if (!fname || !fname->is_string())
                    continue;
                const json::Value *v = obj.find(fname->str);
                if (!v || v->is_null())
                    continue; // absent -> proto3 default, skip
                if (!encode_field(s, field, *v, out, error))
                    return false;
            }
            return true;
        }

    } // namespace

    bool json_encode_message(const json::Value &schema_json,
                             const json::Value &fixture, std::string &out,
                             std::string &error)
    {
        Schema s;
        if (!build_schema(schema_json, s, error))
            return false;
        return encode_message(s, s.root, fixture, out, error);
    }

    bool json_encode_from_text(const std::string &schema_text,
                               const std::string &fixture_text, std::string &out,
                               std::string &error)
    {
        json::Value schema_json, fixture;
        std::string perr;
        if (!json::parse(schema_text, schema_json, perr))
        {
            error = "schema parse: " + perr;
            return false;
        }
        if (!json::parse(fixture_text, fixture, perr))
        {
            error = "fixture parse: " + perr;
            return false;
        }
        return json_encode_message(schema_json, fixture, out, error);
    }

} // namespace eversoul
