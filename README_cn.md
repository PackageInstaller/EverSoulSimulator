<p align="center">
  <img src="src/assets/logo.png" width="160" alt="EverSoul Offline" />
</p>

<h1 align="center">Eversoul Offline</h1>
<h3 align="center">离线服务端 &amp; ARM64 注入工具包</h3>

<p align="center">
  面向《永恒灵魂》(Eversoul) 客户端的本地 Kakao SDK / Infodesk 模拟服务，<br>
  拦截 Unity / Java 网络请求的 ARM64 C++ 注入包装库，<br>
  以及 adb 自动注入器。
</p>

<p align="center">
  <a href="https://discord.gg/ZptEmqfuv"><img src="https://img.shields.io/badge/Discord-Join%20Server-5865F2?style=for-the-badge&logo=discord&logoColor=white" alt="Discord" /></a>
  &nbsp;
  <img src="https://img.shields.io/badge/Platform-Android%20ARM64-3DDC84?style=for-the-badge&logo=android&logoColor=white" alt="Android ARM64" />
  &nbsp;
  <img src="https://img.shields.io/badge/C%2B%2B-17-00599C?style=for-the-badge&logo=cplusplus&logoColor=white" alt="C++17" />
  &nbsp;
  <img src="https://img.shields.io/badge/version-0.0.4-blue?style=for-the-badge" alt="v0.0.1" />
</p>

<p align="center">
  <a href="README_en.md"><img src="https://img.shields.io/badge/English-EN-0078D4?style=flat-square" alt="English" /></a>
  &nbsp;
  <img src="https://img.shields.io/badge/%E4%B8%AD%E6%96%87-CN-DE2910?style=flat-square" alt="中文" />
  &nbsp;
  <a href="https://discord.gg/ZptEmqfuv"><img src="https://img.shields.io/badge/Discord-Join%20Server-5865F2?style=flat-square&logo=discord&logoColor=white" alt="Discord" /></a>
</p>

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

- 开发与测试阶段：目前使用 Frida 脚本（如 monitor_unity_web_request.js）对 Unity 的网络和 WebSocket 连接进行拦截与重定向。
- 后续开源/免 Root 阶段：后续将集成 Frida Gadget 运行，或通过拦截并绕过客户端对安装包大小和 SHA-256 哈希值的双重校验，来实现无 Root 环境下的免脚本直接重定向运行。

---

## 运行模式说明

### A. 捕获与代理模式 (Capture / Proxy Mode)

在此模式下，本地服务端作为透明代理，拦截平台登录/验证请求，其他业务请求转发给官方服务器，并自动导出捕获数据。

```bash
# 1. 重定向设备端口
adb reverse tcp:9999 tcp:9999

# 2. 启动代理服务端
./build/eversoul_offline_server --proxy --port 9999

# 3. 使用 Frida 注入脚本启动游戏
frida -H 127.0.0.1:27042 -f com.kakaogames.eversoul -l monitor_unity_web_request.js
```

### B. 完全离线 Mock 模式 (Offline Mock Mode)

在此模式下，所有接口的数据都由本地 Mock 服务端（或客户端注入的离线数据包）进行离线响应。

```bash
# 1. 重定向设备端口
adb reverse tcp:9999 tcp:9999

# 2. 启动 Mock 服务端并指定游戏服务器 URL
./build/eversoul_offline_server --mock-only --port 9999 --game-server-url http://127.0.0.1:9999

# 3. 使用 Frida 注入脚本启动游戏
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

## 目录与流水线结构

关于离线数据还原流水线（JSON 与 Protobuf 互转格式）、数据目录定义以及构建验证流程，请参考文档：
- OFFLINE_PIPELINE.md
