#include "ui.hpp"

#include <cstdio>
#include <cstring>

#ifdef _WIN32
#  define WIN32_LEAN_AND_MEAN
#  include <windows.h>
#endif

namespace eversoul::ui
{

namespace
{

static const Strings kKorean = {
    "에버소울 오프라인 서버",
    "포트      ",
    "모드      ",
    "데이터    ",
    "서버 URL  ",
    "오프라인 (프록시 비활성)",
    "프록시 활성",
    "시작 중...",
    "준비 완료",
    "서버 중지됨",
    "언어를 선택하세요 / Select Language",
    "[1] 한국어",
    "[2] English",
    "소켓 생성 실패",
    "포트 바인딩 실패",
    "리슨 실패",
};

static const Strings kEnglish = {
    "EverSoul Offline Server",
    "Port      ",
    "Mode      ",
    "Data      ",
    "Server URL",
    "Offline (proxy disabled)",
    "Proxy enabled",
    "Starting...",
    "Ready",
    "Server stopped",
    "Select Language / 언어를 선택하세요",
    "[1] 한국어",
    "[2] English",
    "Socket creation failed",
    "Port bind failed",
    "Listen failed",
};

static Lang   g_lang = Lang::Korean;

static const char* kReset  = "\033[0m";
static const char* kCyan   = "\033[96m";
static const char* kYellow = "\033[93m";
static const char* kGreen  = "\033[92m";
static const char* kGray   = "\033[90m";
static const char* kWhite  = "\033[97m";
static const char* kBold   = "\033[1m";

static constexpr int kWidth = 58;

static void hline_top()
{
    printf("%s%s╔", kCyan, kBold);
    for (int i = 0; i < kWidth; ++i) printf("═");
    printf("╗%s\n", kReset);
}

static void hline_mid()
{
    printf("%s%s╠", kCyan, kBold);
    for (int i = 0; i < kWidth; ++i) printf("═");
    printf("╣%s\n", kReset);
}

static void hline_bot()
{
    printf("%s%s╚", kCyan, kBold);
    for (int i = 0; i < kWidth; ++i) printf("═");
    printf("╝%s\n", kReset);
}

static void row_centered(const char* text, const char* color)
{
    int len = (int)strlen(text);
    int pad_l = (kWidth - len) / 2;
    int pad_r = kWidth - len - pad_l;
    printf("%s%s║%s%s%*s%s%*s%s%s║%s\n",
           kCyan, kBold,
           kReset, color,
           pad_l, "", text, pad_r, "",
           kReset, kCyan, kReset);
}

static void row_kv(const char* key, const char* val, const char* val_color)
{
    char buf[256];
    snprintf(buf, sizeof(buf), "  %s%-12s%s: %s%s", kYellow, key, kReset, val_color, val);
    int visible_len = 2 + 12 + 2 + (int)strlen(val);
    int pad = kWidth - visible_len;
    if (pad < 0) pad = 0;
    printf("%s%s║%s%s%*s%s%s║%s\n",
           kCyan, kBold,
           kReset,
           buf,
           pad, "",
           kReset, kCyan, kReset);
}

static void row_empty()
{
    printf("%s%s║%s%*s%s%s║%s\n",
           kCyan, kBold, kReset,
           kWidth, "",
           kReset, kCyan, kReset);
}

} // namespace

// ---------------------------------------------------------------------------

void set_lang(Lang lang) { g_lang = lang; }
Lang current_lang()      { return g_lang; }
const Strings& str()     { return g_lang == Lang::Korean ? kKorean : kEnglish; }

void enable_ansi()
{
#ifdef _WIN32
    HANDLE h = GetStdHandle(STD_OUTPUT_HANDLE);
    DWORD mode = 0;
    if (GetConsoleMode(h, &mode))
        SetConsoleMode(h, mode | ENABLE_VIRTUAL_TERMINAL_PROCESSING);
    SetConsoleOutputCP(CP_UTF8);
#endif
}

void print_banner(int port, const std::string& data_dir,
                  bool proxy_enabled, const std::string& game_server_url)
{
    printf("\n");
    hline_top();
    row_empty();
    row_centered("EverSoul  ·  Offline Server", kWhite);
    row_centered(str().title, kGray);
    row_empty();
    hline_mid();
    row_empty();

    char port_buf[16];
    snprintf(port_buf, sizeof(port_buf), "%d", port);
    row_kv(str().label_port, port_buf, kWhite);
    row_kv(str().label_mode,
           proxy_enabled ? str().mode_proxy : str().mode_offline,
           proxy_enabled ? kYellow : kGreen);
    row_kv(str().label_data, data_dir.c_str(), kWhite);
    if (proxy_enabled)
        row_kv(str().label_url, game_server_url.c_str(), kWhite);

    row_empty();
    row_centered(str().status_starting, kYellow);
    row_empty();
    hline_bot();
    printf("\n");
    fflush(stdout);
}

void print_status(const char* label, const std::string& value)
{
    printf("%s[%s]%s %s%s%s\n",
           kCyan, label, kReset, kGreen, value.c_str(), kReset);
    fflush(stdout);
}

#ifdef _WIN32
Lang select_language_interactive()
{
    enable_ansi();
    printf("\n");
    printf("%s%s  ┌─────────────────────────────────────────┐%s\n", kCyan, kBold, kReset);
    printf("%s%s  │%s  %s%s\n", kCyan, kBold, kReset, str().lang_prompt, "");
    printf("%s%s  │%s\n", kCyan, kBold, kReset);
    printf("%s%s  │%s  %s%s%s\n", kCyan, kBold, kReset, kWhite, kKorean.lang_opt_ko, kReset);
    printf("%s%s  │%s  %s%s%s\n", kCyan, kBold, kReset, kWhite, kKorean.lang_opt_en, kReset);
    printf("%s%s  └─────────────────────────────────────────┘%s\n", kCyan, kBold, kReset);
    printf("\n  > ");
    fflush(stdout);

    int ch = getchar();
    printf("\n");
    return (ch == '2') ? Lang::English : Lang::Korean;
}
#endif

} // namespace eversoul::ui
