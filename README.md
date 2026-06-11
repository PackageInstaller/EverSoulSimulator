# Eversoul Offline (永恒灵魂离线服务端与注入工具)

本项目提供了针对《永恒灵魂》(Eversoul) 客户端的本地 Kakao SDK / Infodesk 模拟服务，以及用于拦截和解析 Unity 网络请求的 C++ 注入包装器与离线数据服务端。

- [English Documentation](README_en.md) | **中文文档**

---

## 快速启动指南

### 1. 构建桌面端与 Android 动态库

在项目根目录下运行统一构建脚本：

```bash
./build.sh
```

如果当前目录下没有 .har 抓包文件，构建脚本会自动跳过 HAR 合并提取步骤，直接读取 responses/ 和 responses_newbie/ 目录中的数据进行编译，从而不影响克隆项目后的正常编译。

编译生成的主要产物包括：

- build/eversoul_offline_server (本地代理与离线数据 Mock 服务端)
- build/android/libswappywrapper.so (用于 Android 端的拦截注入包装库)
- build/offline_data/libofflinedata.so (打包了离线静态 JSON 数据的 Android 动态库)

---

### 2. 部署离线数据与注入库到 Android 设备

确保您的 Android 设备已开启 ADB 调试并连接，然后运行：

```bash
./deploy_offline_data.sh
```

该脚本将自动执行以下操作：
1. 将 libswappywrapper.so 和 libofflinedata.so 推送至游戏安装包的 Native 动态库目录中。
2. 校验设备中的文件哈希值以确保部署正确。

---

## 核心技术实现细节

### 1. 注入与 Patch 加载方式 (反作弊绕过)

由于游戏使用了 LIAPP 反作弊保护，进行整包脱壳不仅过程繁琐且难以维护。目前的绕过与加载方案如下：

在反作弊核心入口类 `com.liapp.x` 的 `attachBaseContext` 方法中，注入以下 Smali 代码以提前加载我们编译的注入包装库：

```smali
const-string v0, "swappywrapper"
invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
```

通过在此处提早加载包装库，可以在反作弊环境开始创建安全检测线程之前将其挂起或阻止创建，从而在保留外壳保护的状态下，顺利让游戏带壳加载并运行我们的离线数据拦截库。

### 2. 网络请求重定向方案

目前的请求重定向分为两个阶段：

- 开发与测试阶段：目前使用 Frida 脚本（如 monitor_unity_web_request.js）对 Unity 的网络 and WebSocket 连接进行拦截与重定向。
- 后续开源/免 Root 阶段：后续将集成 Frida Gadget 运行，或通过拦截并绕过客户端对安装包大小和 SHA-256 哈希值的双重校验，来实现无 Root 环境下的免脚本直接重定向运行。

---

## 离线后端运行时具体流程

离线后端的运行主要依托于底层 Hook 与异步服务的配合，具体执行过程如下：

1. **动态库入口加载与 Hook 安装**
   当游戏引擎通过 Java 层 `loadLibrary` 加载包装库 `libswappywrapper.so` 时，[entry.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/entry.cpp) 中的 `__attribute__((constructor))` 初始化函数 `eversoul_entry` 将立即被执行。
   该入口函数首先调用 [anticheat_patch.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/anticheat_patch.cpp) 的安装接口，在 ARM64 汇编层级对 libc.so 中的 `pthread_create` 进行 Inline Hook（使用 16 字节绝对跳转指令替换函数开头）。
   拦截回调函数在监听到新线程创建请求时，利用 `dladdr` 检测发起线程的起始函数是否属于 LIAPP 反作弊模块 `libcawwyayy.so`。若判断为反作弊扫描线程，则强制其调用空函数退出，从而挂起反作弊引擎；其余游戏自身线程正常放行。

2. **数据初始化与异步服务拉起**
   完成反作弊拦截挂接后，[entry.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/entry.cpp) 将在后台独立线程拉起离线 Mock 服务端（对应 [server.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/server.cpp)）。
   异步服务端启动时，[offline_data.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/offline_data.cpp) 会自动定位并解析当前目录下的 `libofflinedata.so`（伪装成动态库的离线归档包）。如果定位失败，则自动降级读取本地散文件目录中的静态资源。
   随后，[fixture_store.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/fixture_store.cpp) 结合 C++ 原生转换模块解析 `schema/` 目录下的 Protobuf 结构声明，将 `responses/` 中的可编辑 JSON 静态数据在内存中统一反序列化为二进制 Protobuf 数据，建立高效缓存映射表，同时预载 WebSocket 静态数据。

3. **路由匹配与动态拦截**
   客户端的 HTTP/WebSocket 请求被重定向到本机的 9999 监听端口。服务端收到连接后创建 detached 线程处理。
   请求被分发给路由分发器 [router.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/router.cpp)。如果属于 Kakao SDK 等平台配置接口，直接下发本地 Mock 的 JSON，并通过下发 `gameServerAddr` 引导后续的游戏业务 Protobuf 请求访问本地服务。对于业务接口：
   - 成品账号模式（Full Account）：服务端根据请求路径直接从 `FixtureStore` 缓存表中检索对应的静态 Protobuf 数据流并回复，支持快速回放已有的高等级账号数据。
   - 新手账号模式（Newbie Account）：为了避免静态回放造成的新手引导状态卡死，[router.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/router.cpp) 会接管教程关键接口（如 `/UserInfo`, `/TutorialActive`, `/StageClear`, `/FormationSave` 等）。这些接口与底层的 SQLite 数据库 [src/orm](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/orm) 绑定。玩家在清关、改名、保存编队时，服务端会动态改写数据库并同步生成最新的回显结构，从而实现连贯的新手游戏引导和进度存档。

---

## 运行模式说明

### A. 捕获与代理模式 (Capture / Proxy Mode)

在此模式下，PC 桌面端服务端作为透明代理，拦截平台登录/验证请求，其他业务请求转发给官方服务器，并自动导出捕获数据。

由于代理服务端运行在电脑端，需要进行 adb 端口重定向：

```bash
# 1. 重定向设备端口（仅在 PC 调试/代理抓包模式下需要）
adb reverse tcp:9999 tcp:9999

# 2. 在 PC 端启动代理服务端
./build/eversoul_offline_server --proxy --port 9999

# 3. 使用 Frida 注入脚本启动游戏
frida -H 127.0.0.1:27042 -f com.kakaogames.eversoul -l monitor_unity_web_request.js
```

### B. 完全离线 Mock 模式 (Offline Mock Mode)

在此模式下，所有接口的数据都由本地 Mock 服务端（或客户端注入的离线数据包）进行离线响应。

在完全离线状态下（即直接在设备上独立运行游戏），由于我们的离线服务端已经在 `libswappywrapper.so` 中以独立后台线程异步启动，因此**设备和离线服务端同处于手机本地环境中，不需要进行端口转发**。您只需要直接运行 Frida 脚本拦截地址即可。只有在使用 PC 桌面端作为 Mock 服务端时，才需要使用 `adb reverse` 端口转发。

```bash
# 1. 直接使用 Frida 注入脚本启动游戏（无需端口转发）
frida -H 127.0.0.1:27042 -f com.kakaogames.eversoul -l monitor_unity_web_request.js
```

---

## 接口实现状态与规划

目前实现的接口响应**纯粹为静态 JSON Mock 数据**，其目的是为了首先完善整个响应的协议覆盖率，确保游戏在离线状态下能够顺利走完启动、登录、新手引导和主要界面的数据加载流程。后续开发计划中，将逐步引入动态业务逻辑（如动态处理抽卡、角色升级、关卡结算等状态更新）。

### 1. 已 Mock 的平台/验证接口 (Kakao / Infodesk)

- /service/v3/util/country/get (获取国家地区代码)
- /service/v4/device/accessToken/create (创建设备 AccessToken)
- /service/v3/agreement/getForLogin (获取登录协议状态)
- /service/v3/log/writeSdkBasicLog (SDK 基础日志接口)
- /v2/appGroup (应用包组配置)
- /v2/app (应用基础配置参数)
- /v2/app/server/maintenance (游戏服务器维护状态)

### 2. 已 Mock 的 Protobuf 游戏业务接口

- /Login
- /ServerTime
- /UserInfo
- /LobbyRefresh
- /TutorialActive
- /BattleStart
- /UserNicknameChange
- /StageClear
- /StoryClear
- /HeroLevelUp
- /DungeonEnter
- /DungeonInfoUpdate
- /DungeonBattle
- /DungeonClear
- /FormationSave
- /HeroUpgrade
- /HeroGift
- /HeroEquip
- /HeroUnequip
- /EquipItemUpgrade
- /EquipItemTranscendence
- /SpiritTreeSlotEquip
- /SpiritTreeSlotUnEquip
- /GachaHero
- /GachaPremium
- /GachaSignature
- /ShopItemBuy
- /ItemUse
- /TaskReceive
- /AchievementAllReceive
- /MailItemAllReceive
- /ReceiveAttendance
- /FriendHeartReceiveAll
- /GetContentClearDeck
- /AutoHuntReceive
- /HeroEquipMulti
- /GachaHeroTutorial
- /GachaHeroTutorialFix
- /GachaMileageDelete
- /CashShopList
- /CashShopUserAbleCashItemIdAllList
- /AchievementList
- /GuideQuestList
- /TaskList
- /AutoHuntOpen
- /NewMailCnt
- /GachaInfo
- /IllustList
- 此外，对抓包到的未分类初始化/列表查询接口，服务端会默认响应带 8 字节响应头的空 Payload。

详细流量及引导状态分析参见：
- captured_requests.md (常规请求分析)
- captured_new_user_registration.md (新玩家注册及新手引导流程)

---

## 贡献指南

我们非常欢迎开发者参与 Eversoul Offline 的开源共建，主要可以通过以下方向进行贡献：

- **接口动态化重构**
  目前大多数业务响应为静态 Mock。您可以为 [router.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/router.cpp) 中的静态路由编写动态处理逻辑，并与 [src/orm](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/orm) 的 SQLite 数据库进行绑定，以实现抽卡扣除代币、角色升级消耗金币、装备穿戴属性变动等完整的交互流程。
  
- **表结构及持久化字段补充**
  如果需要引入更复杂的游戏玩法（如公会系统、心领神会树等），可直接修改 [orm/schema.hpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/orm/schema.hpp) 与 [orm/storage.hpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/orm/storage.hpp)，添加相应的数据表和 ORM 操作接口。

- **提升抓包覆盖率**
  通过代理模式抓取新的网络路由包，将其转换为 JSON 格式并提取 Schema 描述，提交至 `responses/` 以及 `schema/` 目录中，从而扩充服务端可识别的 API 范围。

- **注入与重定向优化**
  提交免 Root 重定向绕过检测的相关 Smali 代码，或对 [anticheat_patch.cpp](file:///home/rikka/Downloads/Test/%E6%B0%B8%E6%81%92%E7%81%B5%E9%AD%82/Global/eversoul_offline/src/anticheat_patch.cpp) 的 inline hook 稳定性提供优化 and 修复。

---

## 目录与流水线结构

关于离线数据还原流水线（JSON 与 Protobuf 互转格式）、数据目录定义以及构建验证流程，请参考文档：
- OFFLINE_PIPELINE.md
