# Web UI 管理服务器功能说明书 (web_ui_server.md)

本文档详细介绍了永恒灵魂离线 PC 服务器的前端控制台 Web UI 及 REST API 规范，以及实时日志流的实现。

---

## 1. 概述与 Web UI 设计
本项目自带丰富且响应式的控制台 Web UI，旨在让开发者和用户能够控制模拟器或实体设备的状态，并实时监控和编辑离线数据。
*   **资源分发**: 当访问 `/web` 及 `/web/*` 路径时，通过 `serve_web_static` 模块高效地搜索并返回 `src/web/` 下的 HTML、CSS (以 Vanilla CSS 为主) 和 JS 静态资产。
*   **管理中心**: 可以在同一屏幕上执行操作货币、更改英雄数量、实时监控日志以及配置 ADB 连接等任务。

---

## 2. 核心 REST API (/web/api/*) 规范

| 端点 | HTTP 方法 | 作用及返回格式 |
| :--- | :---: | :--- |
| `/web/api/status` | GET | 返回服务器端口、代理运行状态、已加载 TBL/静态数据数量及服务器启动时间 |
| `/web/api/health` | GET | 查询外部游戏服务器连接、本地 DB 数据完整性及 ADB 运行环境健康检查结果 |
| `/web/api/tbl/status` | GET | 输出加载到内存中的 Eversoul 元数据表 (tbl) 及英雄表信息数量 |
| `/web/api/tbl/validate` | GET | 针对特定 API 负载内容，验证其 Schema 及缺失数据结构的适配性 |
| `/web/api/fixtures` | GET | 返回 responses/ 目录下的整体响应负载文件列表及各自的字节大小 |
| `/web/api/gamedata/userinfo`| GET / POST | 查询及更新激活的 AccountDB 档案的昵称、用户等级以及金币/水晶等主要货币 |
| `/web/api/gamedata/currencies`| GET / POST / DELETE | 查询完整详细的货币列表、增加/变动金额以及控制货币删除 |
| `/web/api/gamedata/heroes` | GET / POST / DELETE | 查询拥有英雄的等级、品阶 (Grade)、索引，并执行添加/删除事务 |
| `/web/api/gamedata/items` | GET / POST / DELETE | 查询背包内消耗品、装备等道具编号及拥有数量，并处理增减 |
| `/web/api/accounts` | GET | 查询当前可用的 AccountDB 档案（如：老玩家档案与新手档案）列表 |
| `/web/api/accounts/{id}/select`| POST | 切换激活的玩家档案，并诱导数据库及 ORM 存储重新生成 |

---

## 3. 实时日志流实现 (Server-Sent Events)
为了在实时分析页面上监控服务器的事务状况和安卓 Logcat 内容，实现了 **SSE (Server-Sent Events) 协议**。

*   **游戏 API 请求 SSE (`/web/api/logs/server/stream`)**:
    *   连接建立后立即调用 `sse_log::subscribe_server` 开启观察者 (Observer) 模式订阅。
    *   每当接收到进出永恒灵魂游戏服务器的 API 请求 (REQUEST) 及响应 (RESPONSE) 信息时，将其以 JSON 格式记录到套接字缓冲区中进行实时流传输。
*   **设备 Logcat SSE (`/web/api/logs/adb/stream`)**:
    *   检测到连接时，在后台运行 `adb logcat` 子进程。
    *   拦截应用了游戏 App (`com.kakaogames.eversoul`) 标签过滤的日志行，并立即将事件传输至 Web 屏幕。这样即使用户不打开单独的设备控制台，也可以在 Web 浏览器上远程诊断应用崩溃错误。

---

## 4. 源代码类与函数设计规范

实现管理员控制及实时观察者功能的核心源代码设计结构。

### 4.1 相关源文件结构
*   **`src/server/app/router.cpp`**: 处理 `/web/*` 路径的静态文件检索，并对控制台操作 REST API 进行实时路由分支的文件。
*   **`src/core/logging/sse_log.cpp`**: 客户端请求的实时游戏事务及移动设备输出流的观察者订阅管理器。
*   **`src/web/index.html` & `app.js`**: 基于纯 Vanilla 脚本的 Web UI 客户端界面。

### 4.2 主要核心函数设计
*   `HttpResponse serve_web_static(const HttpRequest &req)`:
    *   **作用**: 控制请求路径中的 `/web` 前缀，执行 `offline_data().read(key)`，将内置于构建产物中的 Web UI 组合资产附带正确的 MIME 类型头部一起通过套接字返回。
*   `HttpResponse handle_web_api(uint64_t id, int fd, const HttpRequest &req)`:
    *   **作用**: 担任 Web API 端点的中心网关角色，分析抽卡表查询、日志文件接收、货币增减等命令，并中继给负责的账号存储库 API。
*   `size_t sse_log::subscribe_server(std::function<bool(const std::string&)> callback)`:
    *   **作用**: 注册实时套接字 Live 事件回调收集器，当检测到记录在服务器标准输入输出中的游戏 API 事务记录时调用。
*   `size_t sse_log::subscribe_adb(std::function<bool(const std::string&)> callback)`:
    *   **作用**: 注册实时回调收集器，用于观察在后台运行的设备 Logcat 进程返回的安卓操作系统输出信息。
