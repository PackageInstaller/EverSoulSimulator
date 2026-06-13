// encoder_validate.cpp — desktop validator for the descriptor-driven encoder.
//
// For each proto endpoint it: loads schema/<Endpoint>.json + responses/<Endpoint>.json,
// runs json_encode_message, and compares the produced payload to the expected
// bytes dumped from the HAR by tools/dump_expected.py (expected/<Endpoint>.bin).
//
// Because proto3 drops nested explicit-zero scalars, the C++ canonical output
// can legitimately differ from the captured bytes; the Python verify_pipeline
// already proved message-level equality, and our encoder emits the SAME
// canonical form (schema field order, skip defaults). So we compare to the
// Python-RE-ENCODED bytes (expected/<Endpoint>.bin holds m.SerializeToString()
// of the parsed fixture), which is the exact canonical target.
//
// Usage: encoder_validate <project_root>
#include <cstdio>
#include <filesystem>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>

#include "json_encoder.hpp"

namespace fs = std::filesystem;

static std::string read_file(const fs::path &p)
{
    std::ifstream f(p, std::ios::binary);
    std::stringstream ss;
    ss << f.rdbuf();
    return ss.str();
}

static std::string to_hex(const std::string &b, std::size_t max = 48)
{
    static const char *h = "0123456789abcdef";
    std::string out;
    for (std::size_t i = 0; i < b.size() && i < max; ++i)
    {
        unsigned char c = static_cast<unsigned char>(b[i]);
        out.push_back(h[c >> 4]);
        out.push_back(h[c & 15]);
    }
    return out;
}

int main(int argc, char **argv)
{
    std::string root = (argc > 1) ? argv[1] : ".";
    fs::path schema_dir = fs::path(root) / "schema";
    fs::path resp_dir = fs::path(root) / "responses";
    fs::path expect_dir = fs::path(root) / "expected";

    if (!fs::is_directory(schema_dir))
    {
        std::fprintf(stderr, "no schema dir at %s\n", schema_dir.string().c_str());
        return 2;
    }

    int ok = 0, bad = 0, total = 0, skipped = 0;
    std::vector<std::string> failures;
    for (const auto &entry : fs::directory_iterator(schema_dir))
    {
        if (entry.path().extension() != ".json")
            continue;
        std::string ep = entry.path().stem().string();
        fs::path fixture_path = resp_dir / (ep + ".json");
        fs::path expected_path = expect_dir / (ep + ".bin");
        if (!fs::is_regular_file(fixture_path) || !fs::is_regular_file(expected_path))
        {
            ++skipped;
            continue;
        }
        ++total;

        std::string schema_text = read_file(entry.path());
        std::string fixture_text = read_file(fixture_path);
        std::string expected = read_file(expected_path);

        std::string out, err;
        if (!eversoul::json_encode_from_text(schema_text, fixture_text, out, err))
        {
            ++bad;
            failures.push_back(ep + ": encode error: " + err);
            continue;
        }
        if (out == expected)
        {
            ++ok;
        }
        else
        {
            ++bad;
            failures.push_back(ep + ": MISMATCH got=" + std::to_string(out.size()) +
                               " want=" + std::to_string(expected.size()) +
                               "\n    got : " + to_hex(out) +
                               "\n    want: " + to_hex(expected));
        }
    }

    std::printf("encoder_validate: %d/%d endpoints match canonical bytes, skipped %d profile-only schemas\n",
                ok, total, skipped);
    for (const auto &f : failures)
        std::printf("  FAIL %s\n", f.c_str());
    return bad == 0 ? 0 : 1;
}
