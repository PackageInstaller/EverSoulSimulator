# 永恒灵魂离线综合架构说明书 (architecture.md)

本文档使用中文详细描述了永恒灵魂离线 PC 服务器的整体架构结构、设计理念、工作原理及数据流向。

---

## 1. 架构设计理念与目的
本项目是一个 **PC 虚拟服务器**，旨在提供本地虚拟环境，即使在服务终止或离线环境中，永恒灵魂客户端也能正常运行。
*   **Protobuf 动态组装**: 摆脱现有静态 JSON 封包重放的局限性，通过对 359 个 TBL 元数据进行实时查找，完全动态地序列化响应数据。
*   **保证持久性**: 不单纯依赖静态响应，而是使用 SQLite 数据库记录并持久化用户英雄召唤、货币变动、剧情/关卡进度等核心状态变化，确保状态 100% 同步。
*   **混合通信模式**: 同时支持“代理模式”（维持与外部真实游戏服务器的连接以收集新协议）与“离线模式”（纯本地运行）。

---

## 2. 系统架构与通信结构
服务器由单一 C++23 进程构成，多个内部虚拟服务器模块通过异步多线程分配处理客户端的套接字请求。

```mermaid
%%{init: {
  'theme': 'base',
  'themeVariables': {
    'primaryColor': '#1e293b',
    'primaryTextColor': '#f8fafc',
    'primaryBorderColor': '#475569',
    'lineColor': '#3b82f6',
    'secondaryColor': '#0f172a',
    'tertiaryColor': '#1e1b4b',
    'mainBkg': '#0f172a',
    'nodeBorder': '#334155',
    'clusterBkg': '#1e293b',
    'clusterBorder': '#475569'
  }
}}%%
graph TD
    Client["📱 模拟器 / 安卓客户端"] <-->|ADB 反向隧道 9991| ServerPort["🌐 TCP 套接字监听器 (Port: 9991)"]
    
    subgraph MockServer ["💻 Eversoul 离线虚拟服务器"]
        ServerPort --> Parser["🔌 协议解析器 (HTTP / WebSocket)"]
        
        Parser -->|1. 登录及认证请求| AuthServer["🔑 Kakao / Zinny 认证模拟模块"]
        Parser -->|2. WebSocket 帧 (JSON-RPC)| WebSocketServer["💬 WebSocket 会话 & socket.io 聊天重放"]
        Parser -->|3. 后台页面及 API 请求| WebUI["🖥️ 控制台 Web UI & REST API"]
        Parser -->|4. 二进制游戏封包| GameServer["🎯 游戏内容引擎"]
        
        GameServer -->|对称密钥解密 & 字段绑定| ProtoHelper["📦 Protobuf & 加密辅助"]
        GameServer -->|请求路由分支| MutationService["🔄 端点状态变异服务"]
        GameServer -->|未实现功能的退避| FixtureStore["📂 静态数据存储 (responses/)"]
        
        MutationService <-->|基于 sqlite_orm 的状态记录| AccountDB[("🗃️ SQLite 数据库 - account.db")]
        MutationService -->|规范数据交叉验证| TBLStore[("📊 TBL 存储 - tbl/")]
        
        Parser -->|5. 未支持端点转发| ProxyServer["🔄 反向代理收集器 (libcurl)"]
    end
    
    ProxyServer <-->|外部 HTTPS 通信| ExternalServer["🌍 真实永恒灵魂商用 API 服务器"]
    
    subgraph HostPCTools ["📟 宿主机调试工具集"]
        WebUI <-->|异步进程 Shell 控制| ADBModule["📟 ADB Runner & Logcat 引擎"]
        ADBModule <-->|ADB Shell & 端口转发| Client
    end

    %% 样式节点分配
    classDef clientNode fill:#1e3a8a,stroke:#3b82f6,stroke-width:1px,color:#f8fafc;
    classDef serverCore fill:#0f172a,stroke:#475569,stroke-width:1px,color:#f8fafc;
    classDef dbNode fill:#064e3b,stroke:#10b981,stroke-width:1px,color:#f8fafc;
    classDef cloudNode fill:#881337,stroke:#f43f5e,stroke-width:1px,color:#f8fafc;

    class Client clientNode;
    class ServerPort,Parser,AuthServer,WebSocketServer,WebUI,GameServer,ProtoHelper,MutationService,FixtureStore,ProxyServer,ADBModule serverCore;
    class AccountDB,TBLStore dbNode;
    class ExternalServer cloudNode;
```

---

## 3. 项目详细源码树及文件组成规范

这是项目整体源代码目录树结构及各个核心源文件的详细职责规范。

```text
Fixture/
├── CMakeLists.txt                      # 编译目标定义及编译配置文件
├── README.md                           # 系统概述及快速启动指南
├── AGENTS.md                           # AI 开发者专用指南 (保密)
├── .gitignore                          # 版本控制系统编译产物排除规则
├── docs/                               # 架构详细设计文档及计划
│   ├── architecture.md                 # 综合架构概述说明书 (本文档)
│   ├── auth_server.md                  # 认证服务器详细动作及模拟规范
│   ├── game_server.md                  # 加解密协议及持久化状态变更规范
│   ├── proxy_server.md                 # 代理及 API 收集框架规范
│   ├── websocket_server.md             # WebSocket RPC 及实时推送会话规范
│   ├── web_ui_server.md                # Web 管理控制台及 SSE 串流规范
│   ├── adb_injector.md                 # ADB 自动隧道及 Logcat 远程诊断规范
│   └── backend_dynamic_reproduction_plan.md# 动态逻辑重现计划书
├── copy_only/                          # 编译后强制复制到发布产物中的 DLL 和工具
│   ├── adb/                            # Windows 用 ADB 调试器套件
│   └── dll/                            # 运行时需要的 C++ 和 CURL 共享库
├── responses/                          # 养成账号旧版降级 JSON 静态数据
├── responses_newbie/                   # 新手教程账号旧版降级 JSON 静态数据
├── src/                                # 基于 C++ 的虚拟服务器核心源码
│   ├── main.cpp                        # 服务器端口绑定及 TCP 接收循环入口点
│   ├── console_main.cpp                # 调试测试用虚拟控制台入口点
│   ├── account/                        # 账号状态控制及档案管理模块
│   │   ├── api/
│   │   ├── profile/
│   │   └── state/
│   ├── config/                         # 全局及激活档案配置领域
│   ├── core/                           # 公共编码、加密、日志模块
│   │   ├── encoding/
│   │   │   ├── crypto.hpp/cpp          # 基于对称密钥的游戏封包加解密引擎
│   │   │   ├── json.hpp/cpp            # 轻量级 JSON 解析器及内存表示对象
│   │   │   └── json_encoder.hpp/cpp    # JSON-Protobuf 动态反射转换器
│   │   ├── logging/
│   │   └── runtime/
│   ├── data/                           # 静态封包及 TBL 加载器
│   │   ├── fixture/
│   │   └── tbl/
│   │       └── tbl_store.hpp/cpp       # 游戏规范元数据 JSON 加载与检索
│   ├── game/                           # 真实游戏规范领域及状态变更逻辑
│   │   ├── catalog/
│   │   ├── endpoints/
│   │   │   ├── dynamic_endpoint_dispatcher.hpp/cpp # 状态变更请求路由调度器
│   │   │   └── endpoint_mutation_service.hpp/cpp   # 召唤、商店、邮件、签到状态变更处理
│   │   └── protocol/
│   ├── network/                        # 网络层
│   │   ├── http/
│   │   ├── proxy/
│   │   └── websocket/
│   ├── orm/                            # sqlite_orm 绑定层
│   ├── platform/                       # 宿主 OS 控制及诊断模块
│   └── web/                            # 管理 UI 后台前端
```

---

## 4. 生命周期与数据流向

### 4.1 登录及账号初始化流程
1.  游戏启动时 Kakao SDK 激活，并访问 `/v2/app`, `/service/v3/agreement/getForLogin` 等认证服务器。
2.  认证服务器下发事先约定的假 Access Token (`zat`) 及 IDP 信息，以通过客户端的登录验证阶段。
3.  玩家登录 (`/Login`) 时，从账号存储库中获取玩家信息确认激活状态，如果是新账号，则读取 `UserInfo` 数据重置并初始化数据库状态。

### 4.2 游戏请求与动态状态处理流程
1.  在游戏内发生商店购买、召唤、关卡通关等事务时，会传输加密的二进制 Protobuf 请求。
2.  `crypto.cpp` 利用对称密钥解密游戏请求封包，`protobuf.cpp` 将消息字段数据结构化并提取。
3.  `dynamic_endpoint_dispatcher.cpp` 交叉验证请求路径。如果是需要保存状态的动态端点，则委托给 `endpoint_mutation_service.cpp`。
4.  状态变更服务基于请求字段值，将更改 (Insert/Update) 反映到 SQLite 账号数据库对应的表（道具、英雄、货币等）中。
5.  状态更新后，汇总最新的数据库值、`tbl` 信息和模板信息，构建符合客户端规格的已序列化 Protobuf 响应信封，加密后传输。
