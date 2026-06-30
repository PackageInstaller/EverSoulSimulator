# Eversoul Offline Comprehensive Architecture Specification (architecture.md)

This document describes the overall architecture structure, design philosophy, operating principles, and data flow of the Eversoul offline PC server.

---

## 1. Architecture Design Philosophy and Objectives
This project is a **PC Virtual Server** that provides a local virtual environment so the Eversoul client can operate even when the service is terminated or in an offline environment.
*   **Dynamic Protobuf Assembly**: Breaking away from the limitations of the existing static JSON fixture replay, it serializes responses completely dynamically based on real-time lookups from 359 TBL metadata files.
*   **Guaranteed Persistence**: It uses an SQLite database to record and persist crucial state changes such as user hero summons, currency fluctuations, and story/stage progress, ensuring a 100% synchronized state.
*   **Hybrid Communication**: Concurrently supports a proxy mode that maintains connection with the external live game server to harvest new protocols, and an offline mode that operates purely locally.

---

## 2. System Architecture and Communication Structure
The server consists of a single C++23 process, where multiple internal virtual server modules handle client socket requests asynchronously via multi-threading.

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
    Client["📱 Emulator / Android Client"] <-->|ADB Reverse Tunnel 9991| ServerPort["🌐 TCP Socket Listener (Port: 9991)"]
    
    subgraph MockServer ["💻 Eversoul Offline Virtual Server"]
        ServerPort --> Parser["🔌 Protocol Parser (HTTP / WebSocket)"]
        
        Parser -->|1. Login & Auth Request| AuthServer["🔑 Kakao / Zinny Auth Mocking Module"]
        Parser -->|2. WebSocket Frame (JSON-RPC)| WebSocketServer["💬 WebSocket Session & socket.io Chat Replay"]
        Parser -->|3. Admin Page & API Request| WebUI["🖥️ Dashboard Web UI & REST API"]
        Parser -->|4. Binary Game Packet| GameServer["🎯 Game Content Engine"]
        
        GameServer -->|Symmetric Key Decryption & Field Binding| ProtoHelper["📦 Protobuf & Crypt Helper"]
        GameServer -->|Request Routing Branch| MutationService["🔄 Endpoint Mutation Service"]
        GameServer -->|Unimplemented Fallback| FixtureStore["📂 Fixture Store (responses/)"]
        
        MutationService <-->|sqlite_orm based state record| AccountDB[("🗃️ SQLite DB - account.db")]
        MutationService -->|Specification Data Cross-Validation| TBLStore[("📊 TBL Store - tbl/")]
        
        Parser -->|5. Unimplemented Endpoint Forwarding| ProxyServer["🔄 Reverse Proxy Harvester (libcurl)"]
    end
    
    ProxyServer <-->|External HTTPS Comm| ExternalServer["🌍 Real Eversoul Live API Server"]
    
    subgraph HostPCTools ["📟 Host Debug Tool Set"]
        WebUI <-->|Async Process Shell Control| ADBModule["📟 ADB Runner & Logcat Engine"]
        ADBModule <-->|ADB Shell & Port Forward| Client
    end

    %% Style Node Assignment
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

## 3. Project Detailed Source Tree and File Structure Specification

This is the detailed role specification of the entire source code directory tree structure and each core source file of the project.

```text
Fixture/
├── CMakeLists.txt                      # Build target definition and compilation configuration file
├── README.md                           # System overview and quick start guide
├── AGENTS.md                           # AI developer exclusive guidelines (Private)
├── .gitignore                          # Version control build artifact exclusion rules
├── docs/                               # Architecture detailed design documents and plans
│   ├── architecture.md                 # Comprehensive architecture overview spec (this file)
│   ├── auth_server.md                  # Auth server detailed operation and mocking spec
│   ├── game_server.md                  # Crypto protocol and persistence mutation spec
│   ├── proxy_server.md                 # Proxy and API harvesting framework spec
│   ├── websocket_server.md             # WebSocket RPC and real-time push session spec
│   ├── web_ui_server.md                # Web admin dashboard and SSE streaming spec
│   ├── adb_injector.md                 # ADB auto-tunneling and Logcat remote diagnostic spec
│   └── backend_dynamic_reproduction_plan.md# Dynamic logic reproduction plan
├── copy_only/                          # DLLs and tools forced to copy to deployment artifacts
│   ├── adb/                            # ADB debugger set for Windows
│   └── dll/                            # C++ and CURL shared libraries required at runtime
├── responses/                          # Grown account legacy fallback JSON fixture data
├── responses_newbie/                   # New tutorial account legacy fallback JSON fixture data
├── src/                                # C++ based virtual server core source code
│   ├── main.cpp                        # Server port binding and TCP accept loop entry point
│   ├── console_main.cpp                # Virtual console entry point for debugging tests
│   ├── account/                        # Account state control and profile management modules
│   │   ├── api/
│   │   ├── profile/
│   │   └── state/
│   ├── config/                         # Global and active profile configuration domain
│   ├── core/                           # Common encoding, encryption, log modules
│   │   ├── encoding/
│   │   │   ├── crypto.hpp/cpp          # Symmetric key based game packet crypto engine
│   │   │   ├── json.hpp/cpp            # Lightweight JSON parser and memory representation object
│   │   │   └── json_encoder.hpp/cpp    # JSON-Protobuf dynamic reflection converter
│   │   ├── logging/
│   │   └── runtime/
│   ├── data/                           # Fixture and TBL loader
│   │   ├── fixture/
│   │   └── tbl/
│   │       └── tbl_store.hpp/cpp       # Game spec metadata JSON loader and search
│   ├── game/                           # Real game spec domain and mutation logic
│   │   ├── catalog/
│   │   ├── endpoints/
│   │   │   ├── dynamic_endpoint_dispatcher.hpp/cpp # State mutation request routing dispatcher
│   │   │   └── endpoint_mutation_service.hpp/cpp   # Summon, shop, mail, attendance state change processing
│   │   └── protocol/
│   ├── network/                        # Network layer
│   │   ├── http/
│   │   ├── proxy/
│   │   └── websocket/
│   ├── orm/                            # sqlite_orm binding layer
│   ├── platform/                       # Host OS control and diagnostic modules
│   └── web/                            # Admin UI frontend
```

---

## 4. Lifecycle and Data Flow

### 4.1 Login and Account Initialization Flow
1.  Upon game launch, the Kakao SDK activates and accesses the auth server via `/v2/app`, `/service/v3/agreement/getForLogin`, etc.
2.  The auth server issues pre-arranged fake Access Tokens (`zat`) and IDP information to pass the client's login verification steps.
3.  When the player logs in (`/Login`), it retrieves player information from the account repository, checks the activation status, and if it's a new account, reads the `UserInfo` data to reset and initialize the DB state.

### 4.2 Game Request and Dynamic State Processing Flow
1.  When transactions such as shop purchases, summons, or stage clears occur in-game, an encrypted binary Protobuf request is transmitted.
2.  `crypto.cpp` decrypts the encrypted game request packet using a symmetric key, and `protobuf.cpp` structures and extracts the message field data.
3.  `dynamic_endpoint_dispatcher.cpp` cross-references the request path. If it's a dynamic endpoint requiring state save, it delegates it to `endpoint_mutation_service.cpp`.
4.  The mutation service reflects changes (Insert/Update) to the corresponding tables (items, heroes, currency, etc.) in the SQLite AccountDB based on the request field values.
5.  After state renewal, it gathers the latest DB values, `tbl` info, and template info to build a serialized Protobuf response envelope fitting the client's specification, encrypts it, and transmits it.
