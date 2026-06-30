// json.hpp — a small, dependency-free JSON value + parser for the offline server.
//
// Just enough JSON to load the response fixtures (responses/*.json) and the
// flattened schemas (schema/*.json): objects, arrays, strings, numbers, bool,
// null. Numbers keep their original lexeme so 64-bit integers and the
// "int64-as-string" values from MessageToDict survive without precision loss.
#pragma once

#include <cstdint>
#include <map>
#include <memory>
#include <string>
#include <vector>

namespace eversoul::json
{

    enum class Type
    {
        Null,
        Bool,
        Number,
        String,
        Array,
        Object
    };

    class Value
    {
    public:
        Type type = Type::Null;
        bool b = false;
        // Numbers are stored as their source text (`num_text`) so we never lose
        // precision; helpers parse on demand.
        std::string num_text;
        std::string str;
        std::vector<Value> arr;
        // Insertion-ordered object members.
        std::vector<std::pair<std::string, Value>> obj;

        bool is_object() const { return type == Type::Object; }
        bool is_array() const { return type == Type::Array; }
        bool is_string() const { return type == Type::String; }
        bool is_number() const { return type == Type::Number; }
        bool is_bool() const { return type == Type::Bool; }
        bool is_null() const { return type == Type::Null; }

        // Object lookup; returns nullptr if absent or not an object.
        const Value *find(const std::string &key) const;

        // Numeric accessors (parse num_text or a numeric string).
        std::int64_t as_int64() const;
        std::uint64_t as_uint64() const;
        double as_double() const;

        // String/number-as-string: returns str for strings, num_text for numbers.
        const std::string &text() const;

        // Mutating helpers (used when rebuilding session replies).
        Value *find_mut(const std::string &key);
        void set_number(const std::string &key, std::int64_t v);
        void set_string(const std::string &key, const std::string &v);

        // Serialize back to compact JSON text.
        std::string dump() const;
    };

    // Parse a JSON document. On failure, returns false and sets `error`.
    bool parse(const std::string &input, Value &out, std::string &error);

} // namespace eversoul::json
