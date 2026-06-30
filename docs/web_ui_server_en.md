# Web UI Admin Server Feature Specification (web_ui_server.md)

This document details the frontend dashboard Web UI, REST API specification, and real-time log streaming implementation of the Eversoul offline PC server.

---

## 1. Overview and Web UI Design
This project natively provides a rich, responsive dashboard Web UI to allow developers and users to control the state of the emulator or real device, and dynamically monitor and edit offline data in real-time.
*   **Resource Serving**: When accessing the `/web` and `/web/*` paths, it efficiently navigates and returns HTML, CSS (Vanilla CSS centered), and JS static assets under `src/web/` via the `serve_web_static` module.
*   **Admin Hub**: Currency manipulation, hero quantity modification, real-time log monitoring, and ADB connection settings can be performed from a single screen.

---

## 2. Core REST API (/web/api/*) Specification

| Endpoint | HTTP Method | Role and Return Format |
| :--- | :---: | :--- |
| `/web/api/status` | GET | Returns the server's port, proxy running status, loaded TBL/fixture counts, and server start time |
| `/web/api/health` | GET | Queries external game server connection, local DB integrity, and ADB execution environment health check results |
| `/web/api/tbl/status` | GET | Outputs the quantity of Eversoul metadata tables (tbl) and hero table information loaded into memory |
| `/web/api/tbl/validate` | GET | Validates schema and missing data structure appropriateness for specific API payload contents |
| `/web/api/fixtures` | GET | Returns the list and individual byte sizes of response payload files inside responses/ |
| `/web/api/gamedata/userinfo`| GET / POST | Queries and updates the nickname, user level, and representative currencies (gold/crystal) of the active AccountDB profile |
| `/web/api/gamedata/currencies`| GET / POST / DELETE | Queries the full detailed currency list, adds/modifies amounts, and controls currency deletion |
| `/web/api/gamedata/heroes` | GET / POST / DELETE | Queries owned hero levels, grades, indices, and performs add/delete transactions |
| `/web/api/gamedata/items` | GET / POST / DELETE | Queries item numbers and owned quantities of consumables and equipment in the bag, and processes additions/subtractions |
| `/web/api/accounts` | GET | Queries the list of currently available AccountDB profiles (e.g., veteran vs newbie) |
| `/web/api/accounts/{id}/select`| POST | Swaps the active player profile and triggers regeneration of the database and ORM store |

---

## 3. Real-time Log Streaming Implementation (Server-Sent Events)
An **SSE (Server-Sent Events) protocol** is implemented to monitor the server's transaction status and Android Logcat contents on the real-time analysis page.

*   **Game API Request SSE (`/web/api/logs/server/stream`)**:
    *   As soon as a connection is established, it calls `sse_log::subscribe_server` to open an Observer pattern subscription.
    *   Whenever REQUEST and RESPONSE information of APIs going to and from the Eversoul game server is received, it records them in the socket buffer in JSON format for real-time streaming.
*   **Device Logcat SSE (`/web/api/logs/adb/stream`)**:
    *   Upon detecting a connection, it runs the `adb logcat` subprocess in the background.
    *   It intercepts log lines with game app (`com.kakaogames.eversoul`) tag filtering applied and immediately sends events to the web screen. This supports remote diagnosis of app error crashes on the web browser without opening a separate device console.

---

## 4. Source Code Class and Function Design Specifications

The core source code design structure implementing admin control and real-time observer functions.

### 4.1 Related Source File Structure
*   **`src/server/app/router.cpp`**: The file handling static file navigation for the `/web/*` path and performing real-time routing branches for dashboard control REST APIs.
*   **`src/core/logging/sse_log.cpp`**: The observer subscription manager for real-time game transactions and mobile device output streams requested by clients.
*   **`src/web/index.html` & `app.js`**: Pure vanilla script-based Web UI client interface.

### 4.2 Major Core Function Design
*   `HttpResponse serve_web_static(const HttpRequest &req)`:
    *   **Role**: Controls the `/web` prefix in the requested path, executes `offline_data().read(key)`, and returns the Web UI composition assets embedded in the build to the socket along with appropriate MIME type headers.
*   `HttpResponse handle_web_api(uint64_t id, int fd, const HttpRequest &req)`:
    *   **Role**: Acts as the central gateway for Web API endpoints, analyzes commands such as gacha table queries, log file reception, currency addition/subtraction, and relays them to the responsible account repository API.
*   `size_t sse_log::subscribe_server(std::function<bool(const std::string&)> callback)`:
    *   **Role**: Registers a real-time socket live event callback collector to be called when game API transaction records written to the server's standard input/output are detected.
*   `size_t sse_log::subscribe_adb(std::function<bool(const std::string&)> callback)`:
    *   **Role**: Registers a real-time callback collector for observing Android OS output information returned by the device Logcat process running in the background.
