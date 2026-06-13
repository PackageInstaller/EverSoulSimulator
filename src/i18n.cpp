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

    // ---- intro screen -------------------------------------------------------
    { "intro.status_init",       { {"ko","시스템 초기화 중…"},              {"en","Initializing system…"},                   {"zh","系统初始化中…"} }},
    { "intro.status_server",     { {"ko","게임 서버 연결 확인 중…"},        {"en","Checking game server connection…"},        {"zh","检查游戏服务器连接中…"} }},
    { "intro.status_adb",        { {"ko","ADB 설정 로드 중…"},              {"en","Loading ADB configuration…"},             {"zh","加载 ADB 配置中…"} }},
    { "intro.status_adb_input",  { {"ko","ADB 경로를 입력하세요…"},         {"en","Enter ADB path…"},                        {"zh","请输入 ADB 路径…"} }},
    { "intro.status_device",     { {"ko","에뮬레이터 연결 확인 중…"},       {"en","Scanning connected devices…"},            {"zh","扫描设备中…"} }},
    { "intro.status_ready",      { {"ko","시스템 준비 완료"},               {"en","System ready"},                           {"zh","系统就绪"} }},
    { "intro.init_ok",           { {"ko","EverSoul 오프라인 시스템 초기화"}, {"en","EverSoul Offline System initializing"},   {"zh","EverSoul 离线系统初始化"} }},
    { "intro.connecting_server", { {"ko","게임 서버 연결 중 (127.0.0.1:9999)…"}, {"en","Connecting to game server (127.0.0.1:9999)…"}, {"zh","连接游戏服务器中 (127.0.0.1:9999)…"} }},
    { "intro.server_ok",         { {"ko","게임 서버 — 포트 {port} [{mode}]"}, {"en","Game server — port {port} [{mode}]"}, {"zh","游戏服务器 — 端口 {port} [{mode}]"} }},
    { "intro.server_fail",       { {"ko","게임 서버 — 연결 불가"},           {"en","Game server — unreachable"},              {"zh","游戏服务器 — 连接失败"} }},
    { "intro.loading_adb",       { {"ko","ADB 구성 로드 중…"},              {"en","Loading ADB configuration…"},             {"zh","加载 ADB 配置中…"} }},
    { "intro.adb_need",          { {"ko","ADB 미설정 — 입력 필요"},          {"en","ADB not configured — input required"},    {"zh","ADB 未配置 — 需要输入"} }},
    { "intro.adb_saved_path",    { {"ko","ADB 경로 저장됨: {path}"},         {"en","ADB path saved: {path}"},                 {"zh","ADB 路径已保存：{path}"} }},
    { "intro.adb_loaded",        { {"ko","ADB 구성 로드됨: {path}"},         {"en","ADB config loaded: {path}"},              {"zh","ADB 配置已加载：{path}"} }},
    { "intro.scanning_devices",  { {"ko","ADB 기기 스캔 중…"},              {"en","Scanning connected ADB devices…"},        {"zh","扫描 ADB 设备中…"} }},
    { "intro.device_found",      { {"ko","기기 발견: {serial}"},             {"en","Device found: {serial}"},                 {"zh","已发现设备：{serial}"} }},
    { "intro.device_none",       { {"ko","기기 없음 (나중에 연결 가능)"},     {"en","No device connected (can connect later)"}, {"zh","未连接设备（稍后可连接）"} }},
    { "intro.device_fail",       { {"ko","기기 스캔 실패"},                  {"en","Device scan failed"},                     {"zh","设备扫描失败"} }},
    { "intro.ready_banner",      { {"ko","─── 시스템 준비 완료 ───"},         {"en","─── SYSTEM READY ───"},                  {"zh","─── 系统就绪 ───"} }},
    { "intro.enter_hint",        { {"ko","ENTER DUNGEON 버튼 클릭 또는 3초 후 자동 진입"},
                                   {"en","Click ENTER DUNGEON or auto-entering in 3s"},
                                   {"zh","点击 ENTER DUNGEON 或 3 秒后自动进入"} }},
    { "intro.proxy_mode",        { {"ko","프록시"},                          {"en","proxy"},                                  {"zh","代理"} }},
    { "intro.offline_mode",      { {"ko","오프라인"},                        {"en","offline"},                                {"zh","离线"} }},
    { "intro.adb_empty_err",     { {"ko","경로를 입력하세요"},               {"en","Please enter a path"},                    {"zh","请输入路径"} }},
    { "intro.adb_validating",    { {"ko","검증 중…"},                        {"en","Validating…"},                            {"zh","验证中…"} }},
    { "intro.adb_not_found",     { {"ko","adb.exe를 찾을 수 없습니다"},       {"en","adb.exe not found at path"},              {"zh","找不到 adb.exe"} }},
    { "intro.server_conn_fail",  { {"ko","서버 연결 실패"},                  {"en","Server connection failed"},               {"zh","服务器连接失败"} }},

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

    // ---- injector --------------------------------------------------------
    { "admin.injector",          { {"ko","인젝터"},                         {"en","Injector"},                        {"zh","注入器"} }},
    { "admin.injector_devices",  { {"ko","연결된 기기"},                    {"en","Connected Devices"},               {"zh","已连接设备"} }},
    { "admin.injector_run",      { {"ko","인젝터 실행"},                    {"en","Run Injector"},                    {"zh","运行注入器"} }},
    { "admin.injector_stop",     { {"ko","중지"},                           {"en","Stop"},                            {"zh","停止"} }},
    { "admin.injector_log",      { {"ko","인젝터 로그"},                    {"en","Injector Log"},                    {"zh","注入器日志"} }},
    { "admin.adb_exec",          { {"ko","실행"},                           {"en","Run"},                             {"zh","执行"} }},

    // ---- injector CLI -------------------------------------------------------
    { "injector.config_needed",      { {"ko","초기 설정이 필요합니다."},              {"en","Initial configuration required."},                  {"zh","需要初始配置。"} }},
    { "injector.adb_path_prompt",    { {"ko","ADB 경로를 입력하세요."},               {"en","Enter ADB executable path."},                       {"zh","请输入 ADB 可执行文件路径。"} }},
    { "injector.adb_path_example",   { {"ko","(예: D:\\MuMuPlayer\\nx_device\\12.0\\shell\\adb.exe)"}, {"en","(e.g. D:\\MuMuPlayer\\nx_device\\12.0\\shell\\adb.exe)"}, {"zh","（例：D:\\MuMuPlayer\\nx_device\\12.0\\shell\\adb.exe）"} }},
    { "injector.adb_port_prompt",    { {"ko","MuMu ADB 포트를 입력하세요."},          {"en","Enter MuMu ADB port."},                             {"zh","请输入 MuMu ADB 端口。"} }},
    { "injector.adb_port_example",   { {"ko","(MuMu 설정 > 멀티 인스턴스 > ADB 포트, 예: 16384)"}, {"en","(MuMu Settings > Multi-Instance > ADB Port, e.g. 16384)"}, {"zh","（MuMu 设置 > 多开 > ADB 端口，例：16384）"} }},
    { "injector.config_saved",       { {"ko","저장: {path}"},                          {"en","Saved: {path}"},                                    {"zh","已保存：{path}"} }},
    { "injector.server_running",     { {"ko","  이미 실행 중 (:9999)"},                {"en","  already running on :9999"},                       {"zh","  已在运行 (:9999)"} }},
    { "injector.server_started",     { {"ko","  서버 시작됨"},                          {"en","  server started"},                                 {"zh","  服务器已启动"} }},
    { "injector.server_fail",        { {"ko","  서버 시작 실패 (err={err})"},           {"en","  server start failed (err={err})"},                {"zh","  服务器启动失败 (err={err})"} }},
    { "injector.step_server",        { {"ko","[1/6] 오프라인 서버"},                   {"en","[1/6] offline server"},                             {"zh","[1/6] 离线服务器"} }},
    { "injector.step_connect",       { {"ko","[2/6] adb 연결: {serial}"},              {"en","[2/6] adb connect: {serial}"},                      {"zh","[2/6] adb 连接：{serial}"} }},
    { "injector.step_install",       { {"ko","[3/6] APK 설치"},                        {"en","[3/6] adb install-multiple"},                       {"zh","[3/6] APK 安装"} }},
    { "injector.step_verify",        { {"ko","[4/6] 설치 확인"},                        {"en","[4/6] verify install"},                             {"zh","[4/6] 验证安装"} }},
    { "injector.step_push_rev",      { {"ko","[5/6] SO 전송 + reverse tcp:9999"},       {"en","[5/6] push SO + reverse tcp:9999"},                 {"zh","[5/6] SO 传输 + reverse tcp:9999"} }},
    { "injector.step_launch",        { {"ko","[6/6] 게임 실행"},                        {"en","[6/6] launch game"},                                {"zh","[6/6] 启动游戏"} }},
    { "injector.step_check_so",      { {"ko","[1/4] SO 확인"},                          {"en","[1/4] check SO"},                                   {"zh","[1/4] 检查 SO"} }},
    { "injector.step_push_rev2",     { {"ko","[2/4] SO 전송 + reverse tcp:9999"},       {"en","[2/4] push SO + reverse tcp:9999"},                 {"zh","[2/4] SO 传输 + reverse tcp:9999"} }},
    { "injector.step_launch2",       { {"ko","[3/4] 게임 실행"},                        {"en","[3/4] launch game"},                                {"zh","[3/4] 启动游戏"} }},
    { "injector.connect_ok",         { {"ko","  기기: {serial}"},                        {"en","  device: {serial}"},                               {"zh","  设备：{serial}"} }},
    { "injector.apk_base",           { {"ko","  base:  {path}"},                         {"en","  base:  {path}"},                                  {"zh","  base:  {path}"} }},
    { "injector.apk_split",          { {"ko","  split: {path}"},                         {"en","  split: {path}"},                                  {"zh","  split: {path}"} }},
    { "injector.install_ok",         { {"ko","  설치 완료"},                             {"en","  installed"},                                      {"zh","  安装完成"} }},
    { "injector.verify_ok",          { {"ko","  OK: com.kakaogames.eversoul 설치 확인"}, {"en","  OK: com.kakaogames.eversoul installed"},          {"zh","  OK: 确认 com.kakaogames.eversoul 已安装"} }},
    { "injector.so_ok",              { {"ko","  SO 정상: {path}"},                       {"en","  SO OK: {path}"},                                  {"zh","  SO 正常：{path}"} }},
    { "injector.so_missing_fallback",{ {"ko","  SO 없음 — 전체 설치 재실행"},            {"en","  SO missing — falling back to full install"},      {"zh","  SO 缺失 — 回退至完整安装"} }},
    { "injector.push_ok",            { {"ko","  전송 완료: /data/local/tmp/libcawwyayy_orig.so"}, {"en","  pushed /data/local/tmp/libcawwyayy_orig.so"}, {"zh","  已传输：/data/local/tmp/libcawwyayy_orig.so"} }},
    { "injector.reverse_ok",         { {"ko","  reverse tcp:9999 설정 완료"},            {"en","  reverse tcp:9999 set"},                           {"zh","  reverse tcp:9999 已设置"} }},
    { "injector.launch_ok",          { {"ko","  게임 시작됨"},                           {"en","  game started"},                                   {"zh","  游戏已启动"} }},
    { "injector.running_nowait",     { {"ko","[OK] 실행 중 (--no-wait)."},               {"en","[OK] running (--no-wait)."},                        {"zh","[OK] 运行中 (--no-wait)。"} }},
    { "injector.running_wait",       { {"ko","[OK] 실행 중. Enter 키를 눌러 종료..."},   {"en","[OK] running. press Enter to exit..."},             {"zh","[OK] 运行中。按 Enter 退出..."} }},
    { "injector.err_patched_apk",    { {"ko","ERROR: 패치된 APK 없음: {path}"},          {"en","ERROR: patched APK not found: {path}"},             {"zh","ERROR: 找不到已补丁 APK：{path}"} }},
    { "injector.err_split_apk",      { {"ko","ERROR: split APK 없음: {path}"},           {"en","ERROR: split APK not found: {path}"},               {"zh","ERROR: 找不到 split APK：{path}"} }},
    { "injector.err_so",             { {"ko","ERROR: libcawwyayy_orig.so 없음: {path}"}, {"en","ERROR: libcawwyayy_orig.so not found: {path}"},     {"zh","ERROR: 找不到 libcawwyayy_orig.so：{path}"} }},
    { "injector.err_connect",        { {"ko","ERROR: adb 연결 실패"},                    {"en","ERROR: adb connect failed"},                        {"zh","ERROR: adb 连接失败"} }},
    { "injector.err_install",        { {"ko","ERROR: install-multiple 실패"},             {"en","ERROR: install-multiple failed"},                   {"zh","ERROR: install-multiple 失败"} }},
    { "injector.err_verify",         { {"ko","ERROR: 설치 후 패키지 없음"},               {"en","ERROR: package not found after install"},           {"zh","ERROR: 安装后找不到包"} }},
    { "injector.warn_cfg_write",     { {"ko","경고: {path} 저장 실패"},                  {"en","WARNING: cannot write {path}"},                     {"zh","警告：无法写入 {path}"} }},
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
