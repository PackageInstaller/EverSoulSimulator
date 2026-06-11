#include "i18n.hpp"

#include <map>
#include <string>

namespace eversoul::i18n
{

namespace
{

using Entry = std::map<std::string, std::string>;
using Table = std::map<std::string, Entry>;

// ---------------------------------------------------------------------------
// String table — mirrors tools/i18n.py keys exactly.
// Keys added here must be added to i18n.py as well to stay in sync.
// ---------------------------------------------------------------------------
static const Table kTable = {

    // ---- pack (mirrors i18n.py) -------------------------------------------
    { "pack.warn_missing_dir",   { {"ko","경고: 디렉토리 없음 {d}/"},               {"en","WARNING: missing directory {d}/"},              {"zh","警告：缺少目录 {d}/"} }},
    { "pack.warn_missing_file",  { {"ko","경고: 파일 없음 {rel}"},                  {"en","WARNING: missing {rel}"},                        {"zh","警告：缺少 {rel}"} }},
    { "pack.summary",            { {"ko","{count}개 파일 패킹, 원본 {total} 바이트 -> {size} 바이트"}, {"en","Packed {count} files, raw {total} bytes -> {size} bytes"}, {"zh","打包 {count} 个文件，原始 {total} 字节 -> {size} 字节"} }},
    { "pack.output",             { {"ko","출력: {path}"},                            {"en","Output: {path}"},                                {"zh","输出：{path}"} }},
    { "pack.dir_count",          { {"ko","  {d}/: {c}개 파일"},                     {"en","  {d}/: {c} files"},                             {"zh","  {d}/: {c} 个文件"} }},

    // ---- merge (mirrors i18n.py) ------------------------------------------
    { "merge.add",               { {"ko","추가"},           {"en","add"},               {"zh","新增"} }},
    { "merge.overwrite",         { {"ko","덮어쓰기"},       {"en","overwrite"},          {"zh","覆盖"} }},
    { "merge.refresh",           { {"ko","갱신"},           {"en","refresh"},            {"zh","刷新"} }},
    { "merge.skip-exists",       { {"ko","건너뜀-존재"},    {"en","skip-exists"},        {"zh","跳过-已存在"} }},
    { "merge.skip-edited",       { {"ko","건너뜀-수정됨"},  {"en","skip-edited"},        {"zh","跳过-手改"} }},
    { "merge.skip-protected",    { {"ko","건너뜀-보호"},    {"en","skip-protected"},     {"zh","跳过-保护"} }},
    { "merge.skip-no-baseline",  { {"ko","건너뜀-베이스라인없음"}, {"en","skip-no-baseline"}, {"zh","跳过-无基线"} }},
    { "merge.decode-failed",     { {"ko","디코딩실패"},     {"en","decode-failed"},      {"zh","解码失败"} }},
    { "merge.dry_run_tag",       { {"ko","  [DRY-RUN 미기록]"}, {"en","  [DRY-RUN not written]"}, {"zh","  [DRY-RUN 未写盘]"} }},
    { "merge.header",            { {"ko","병합 {har} -> {dir}  베이스라인={base}{tag}"}, {"en","Merge {har} -> {dir}  baseline={base}{tag}"}, {"zh","合并 {har} -> {dir}  基线={base}{tag}"} }},
    { "merge.written_summary",   { {"ko","{total}개 기록 (추가 {add} + 덮어쓰기 {ow} + 갱신 {rf}); 보호됨 {prot}개."}, {"en","Written {total} (add {add} + overwrite {ow} + refresh {rf}); protected {prot}."}, {"zh","写入 {total} 个（新增 {add} + 覆盖 {ow} + 刷新 {rf}）；手改保护 {prot} 个。"} }},
    { "merge.next_step",         { {"ko","다음 단계: ./build.sh"}, {"en","Next: ./build.sh"}, {"zh","下一步：./build.sh"} }},
    { "merge.not_found",         { {"ko","HAR 파일을 찾을 수 없음: {path}"}, {"en","HAR file not found: {path}"}, {"zh","找不到新 HAR：{path}"} }},
    { "merge.argdesc",           { {"ko","새 HAR 게임 응답을 responses/에 병합"}, {"en","Merge new HAR game responses into responses/"}, {"zh","合并新 HAR 的游戏响应"} }},
    { "merge.arg_new_har",       { {"ko","새 HAR 경로"}, {"en","path to new HAR"}, {"zh","新抓包 HAR 路径"} }},
    { "merge.arg_baseline",      { {"ko","베이스라인 HAR 경로"}, {"en","baseline HAR path"}, {"zh","生成现有 responses/ 的原始 HAR"} }},
    { "merge.arg_protect",       { {"ko","보호할 엔드포인트 (쉼표 구분)"}, {"en","comma-separated endpoints to protect"}, {"zh","额外强制保护的端点（逗号分隔）"} }},
    { "merge.arg_add_only",      { {"ko","새 엔드포인트만 추가, 덮어쓰기 금지"}, {"en","only add new endpoints, never overwrite"}, {"zh","只新增还没有的端点"} }},
    { "merge.arg_force",         { {"ko","--protect 외 모두 덮어쓰기"}, {"en","overwrite all except --protect"}, {"zh","除 --protect 外全部覆盖"} }},
    { "merge.arg_dry_run",       { {"ko","보고만, 기록 안 함"}, {"en","report only, do not write"}, {"zh","只报告，不写文件"} }},
    { "merge.arg_out_dir",       { {"ko","출력 디렉토리 (기본값: responses)"}, {"en","output fixture dir (default: responses)"}, {"zh","输出 fixture 目录"} }},
    { "merge.arg_clean",         { {"ko","기록 전 출력 디렉토리 정리"}, {"en","clean output dir before writing"}, {"zh","写入前清空输出目录"} }},

    // ---- server -----------------------------------------------------------
    { "server.title",            { {"ko","에버소울 오프라인 서버"},        {"en","EverSoul Offline Server"},         {"zh","EverSoul 离线服务器"} }},
    { "server.port",             { {"ko","포트"},                          {"en","Port"},                            {"zh","端口"} }},
    { "server.mode",             { {"ko","모드"},                          {"en","Mode"},                            {"zh","模式"} }},
    { "server.data_dir",         { {"ko","데이터 디렉토리"},               {"en","Data Dir"},                        {"zh","数据目录"} }},
    { "server.game_url",         { {"ko","게임 서버 URL"},                 {"en","Game Server URL"},                 {"zh","游戏服务器 URL"} }},
    { "server.admin_port",       { {"ko","관리자 포트"},                   {"en","Admin Port"},                      {"zh","管理端口"} }},
    { "server.mode_offline",     { {"ko","오프라인 (프록시 비활성)"},       {"en","Offline (proxy disabled)"},        {"zh","离线（代理已禁用）"} }},
    { "server.mode_proxy",       { {"ko","프록시 활성"},                   {"en","Proxy enabled"},                   {"zh","代理已启用"} }},
    { "server.starting",         { {"ko","시작 중..."},                    {"en","Starting..."},                     {"zh","启动中..."} }},
    { "server.ready",            { {"ko","준비 완료  ·  관리자: http://localhost:{port}"},  {"en","Ready  ·  Admin: http://localhost:{port}"},  {"zh","就绪  ·  管理界面: http://localhost:{port}"} }},
    { "server.stopped",          { {"ko","서버 중지됨"},                   {"en","Server stopped"},                  {"zh","服务器已停止"} }},
    { "server.err_socket",       { {"ko","소켓 생성 실패"},                {"en","Socket creation failed"},          {"zh","套接字创建失败"} }},
    { "server.err_bind",         { {"ko","포트 바인딩 실패: {port}"},      {"en","Port bind failed: {port}"},        {"zh","端口绑定失败: {port}"} }},
    { "server.err_listen",       { {"ko","리슨 실패"},                     {"en","Listen failed"},                   {"zh","监听失败"} }},
    { "server.fixtures_loaded",  { {"ko","픽스처 {n}개 로드"},             {"en","Loaded {n} fixtures"},             {"zh","已加载 {n} 个 fixture"} }},
    { "server.fixtures_error",   { {"ko","픽스처 오류 {n}개"},             {"en","{n} fixture error(s)"},            {"zh","{n} 个 fixture 错误"} }},

    // ---- ui ---------------------------------------------------------------
    { "ui.lang_prompt",          { {"ko","언어를 선택하세요"},              {"en","Select Language"},                 {"zh","选择语言"} }},
    { "ui.lang_ko",              { {"ko","한국어"},                         {"en","Korean"},                          {"zh","韩语"} }},
    { "ui.lang_en",              { {"ko","영어"},                           {"en","English"},                         {"zh","英语"} }},
    { "ui.lang_zh",              { {"ko","중국어"},                         {"en","Chinese"},                         {"zh","中文"} }},

    // ---- health -----------------------------------------------------------
    { "health.ok",               { {"ko","정상"},                           {"en","OK"},                              {"zh","正常"} }},
    { "health.fail",             { {"ko","실패"},                           {"en","FAIL"},                            {"zh","失败"} }},
    { "health.warn",             { {"ko","경고"},                           {"en","WARN"},                            {"zh","警告"} }},
    { "health.server_port",      { {"ko","게임 서버 포트"},                  {"en","Game Server Port"},                {"zh","游戏服务器端口"} }},
    { "health.db_conn",          { {"ko","DB 연결"},                        {"en","DB Connection"},                   {"zh","数据库连接"} }},
    { "health.fixtures",         { {"ko","픽스처 로드"},                    {"en","Fixtures Loaded"},                 {"zh","Fixture 加载"} }},
    { "health.proxy_conn",       { {"ko","프록시 연결"},                    {"en","Proxy Connection"},                {"zh","代理连接"} }},
    { "health.log_sink",         { {"ko","로그 싱크"},                      {"en","Log Sink"},                        {"zh","日志接收器"} }},
    { "health.db_tables",        { {"ko","DB 테이블"},                      {"en","DB Tables"},                       {"zh","数据库表"} }},

    // ---- admin web UI labels ----------------------------------------------
    { "admin.title",             { {"ko","EverSoul 관리자 패널"},           {"en","EverSoul Admin Panel"},            {"zh","EverSoul 管理面板"} }},
    { "admin.dashboard",         { {"ko","대시보드"},                       {"en","Dashboard"},                       {"zh","仪表板"} }},
    { "admin.logs",              { {"ko","요청 로그"},                      {"en","Request Log"},                     {"zh","请求日志"} }},
    { "admin.db",                { {"ko","데이터베이스"},                   {"en","Database"},                        {"zh","数据库"} }},
    { "admin.fixtures",          { {"ko","픽스처"},                         {"en","Fixtures"},                        {"zh","Fixture"} }},
    { "admin.health",            { {"ko","헬스체크"},                       {"en","Health"},                          {"zh","健康检查"} }},
    { "admin.settings",          { {"ko","설정"},                           {"en","Settings"},                        {"zh","设置"} }},
    { "admin.uptime",            { {"ko","업타임"},                         {"en","Uptime"},                          {"zh","运行时间"} }},
    { "admin.requests",          { {"ko","처리 요청"},                      {"en","Requests"},                        {"zh","已处理请求"} }},
    { "admin.clear_log",         { {"ko","로그 지우기"},                    {"en","Clear Log"},                       {"zh","清除日志"} }},
    { "admin.pause_log",         { {"ko","일시정지"},                       {"en","Pause"},                           {"zh","暂停"} }},
    { "admin.resume_log",        { {"ko","재개"},                           {"en","Resume"},                          {"zh","继续"} }},
    { "admin.table_rows",        { {"ko","{n}개 행"},                       {"en","{n} rows"},                        {"zh","{n} 行"} }},
    { "admin.no_data",           { {"ko","데이터 없음"},                    {"en","No data"},                         {"zh","暂无数据"} }},
    { "admin.loading",           { {"ko","로딩 중..."},                     {"en","Loading..."},                      {"zh","加载中..."} }},
    { "admin.proxy_on",          { {"ko","프록시 활성화"},                  {"en","Enable Proxy"},                    {"zh","启用代理"} }},
    { "admin.proxy_off",         { {"ko","프록시 비활성화"},                {"en","Disable Proxy"},                   {"zh","禁用代理"} }},
    { "admin.apply",             { {"ko","적용"},                           {"en","Apply"},                           {"zh","应用"} }},

    // ---- about modal -----------------------------------------------------
    { "about.title",             { {"ko","정보"},                           {"en","About"},                           {"zh","关于"} }},
    { "about.original_creator",  { {"ko","원제작자"},                       {"en","Original Creator"},                {"zh","原制作者"} }},
    { "about.assistant",         { {"ko","보조"},                           {"en","Assistant"},                       {"zh","协力"} }},

    // ---- adb settings ----------------------------------------------------
    { "admin.adb_title",         { {"ko","ADB 경로 설정"},                  {"en","ADB Path"},                        {"zh","ADB 路径设置"} }},
    { "admin.adb_current",       { {"ko","현재 경로"},                      {"en","Current Path"},                    {"zh","当前路径"} }},
    { "admin.adb_input_hint",    { {"ko","ADB 실행파일 경로 입력"},          {"en","Enter ADB executable path"},       {"zh","输入 ADB 可执行文件路径"} }},
    { "admin.adb_not_set",       { {"ko","경로가 설정되지 않음 (PATH의 adb 사용)"},
                                   {"en","Not set (using adb from PATH)"},
                                   {"zh","未设置（使用 PATH 中的 adb）"} }},
    { "admin.adb_save",          { {"ko","저장"},                           {"en","Save"},                            {"zh","保存"} }},
    { "admin.adb_saved",         { {"ko","저장됨"},                         {"en","Saved"},                           {"zh","已保存"} }},
    { "admin.adb_clear",         { {"ko","초기화"},                         {"en","Clear"},                           {"zh","清除"} }},
};

static Lang g_lang = Lang::Korean;

static const char* lang_key(Lang l) {
    switch (l) {
        case Lang::English: return "en";
        case Lang::Chinese: return "zh";
        default:            return "ko";
    }
}

} // namespace

void set_lang(Lang lang) { g_lang = lang; }

void set_lang(const std::string& code) {
    if (code == "en")      g_lang = Lang::English;
    else if (code == "zh") g_lang = Lang::Chinese;
    else                   g_lang = Lang::Korean;
}

Lang        current_lang() { return g_lang; }
std::string lang_code()    { return lang_key(g_lang); }

std::string T(const std::string& key) {
    auto it = kTable.find(key);
    if (it == kTable.end()) return key;
    const char* lk = lang_key(g_lang);
    auto jt = it->second.find(lk);
    if (jt == it->second.end()) {
        jt = it->second.find("en");
        if (jt == it->second.end()) return key;
    }
    return jt->second;
}

namespace detail
{

std::string format(std::string tpl,
                   const std::string* keys,
                   const std::string* vals,
                   std::size_t count)
{
    for (std::size_t i = 0; i < count; ++i) {
        std::string placeholder = "{" + keys[i] + "}";
        std::size_t pos = 0;
        while ((pos = tpl.find(placeholder, pos)) != std::string::npos) {
            tpl.replace(pos, placeholder.size(), vals[i]);
            pos += vals[i].size();
        }
    }
    return tpl;
}

} // namespace detail

std::string all_strings_json() {
    std::string out = "{\n";
    bool first_entry = true;
    for (const auto& [key, langs] : kTable) {
        if (!first_entry) out += ",\n";
        first_entry = false;
        out += "  \"" + key + "\": {";
        bool first_lang = true;
        for (const auto& [lk, val] : langs) {
            if (!first_lang) out += ", ";
            first_lang = false;
            out += "\"" + lk + "\": \"";
            for (char c : val) {
                if      (c == '"')  out += "\\\"";
                else if (c == '\\') out += "\\\\";
                else if (c == '\n') out += "\\n";
                else                out += c;
            }
            out += "\"";
        }
        out += "}";
    }
    out += "\n}";
    return out;
}

} // namespace eversoul::i18n
