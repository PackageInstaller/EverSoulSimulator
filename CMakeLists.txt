cmake_minimum_required(VERSION 3.21)
project(eversoul_offline C CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()

set(EVERSOUL_SOURCES
  src/core/runtime/util.cpp
  src/core/encoding/crypto.cpp
  src/game/protocol/protobuf.cpp
  src/core/encoding/json.cpp
  src/core/encoding/json_encoder.cpp
  src/data/fixture/offline_data.cpp
  src/data/fixture/fixture_store.cpp
  src/network/websocket/websocket.cpp
  src/network/websocket/ws_session.cpp
  src/core/logging/log.cpp
  src/network/http/http.cpp
  src/network/proxy/proxy.cpp
  src/game/protocol/payloads.cpp
  src/orm/storage.cpp
  src/orm/userinfo_builder.cpp
  src/account/api/account_admin_service.cpp
  src/account/api/account_db.cpp
  src/account/profile/account_registry.cpp
  src/account/state/account_database.cpp
  src/account/state/account_db_manager.cpp
  src/account/profile/userinfo_repository.cpp
  src/game/endpoints/auto_hunt_policy.cpp
  src/game/endpoints/catalog_endpoint_payloads.cpp
  src/game/endpoints/endpoint_mutation_service.cpp
  src/game/endpoints/gacha_template_data.cpp
  src/game/endpoints/dynamic_endpoint_dispatcher.cpp
  src/game/catalog/game_catalog.cpp
  src/core/logging/sse_log.cpp
  src/core/logging/har_log.cpp
  src/config/ini/ini_store.cpp
  src/data/tbl/tbl_store.cpp
  src/server/app/router.cpp
  src/server/app/server.cpp
  third_party/sqlite/sqlite3.c)

# SQLite 아말감 경고 억제 및 불필요한 기능 제거
set_source_files_properties(third_party/sqlite/sqlite3.c PROPERTIES
  COMPILE_OPTIONS "-w"
  COMPILE_DEFINITIONS "SQLITE_THREADSAFE=1;SQLITE_OMIT_LOAD_EXTENSION;SQLITE_DEFAULT_MEMSTATUS=0;SQLITE_OMIT_DEPRECATED")

# sqlite_orm.h: C++26 pack-indexing / C++20 이전 literal operator 사용 — third_party 경고 억제
set_source_files_properties(src/orm/storage.cpp PROPERTIES
  COMPILE_OPTIONS "-Wno-deprecated-literal-operator;-Wno-c++26-extensions;-Wno-unused-local-typedefs;-Wno-unused-but-set-parameter")

# .inc protobuf fixture들은 프로젝트 루트에 위치
set(EVERSOUL_INCLUDE_DIRS
  src
  src/account/api
  src/account/profile
  src/account/state
  src/config/ini
  src/core/encoding
  src/core/logging
  src/core/runtime
  src/data/fixture
  src/data/tbl
  src/game/catalog
  src/game/endpoints
  src/game/protocol
  src/network/http
  src/network/proxy
  src/network/websocket
  src/platform/adb
  src/server/app
  ${CMAKE_CURRENT_SOURCE_DIR}
  third_party/sqlite
  third_party/sqlite_orm)

find_package(Threads REQUIRED)

if(NOT ANDROID)
  find_package(CURL REQUIRED)
endif()

if(WIN32)
  add_executable(eversoul_console
    ${EVERSOUL_SOURCES}
    src/platform/adb/adb_runner.cpp
    src/platform/adb/logcat_process.cpp
    src/console_main.cpp
    src/console_app.rc)
  target_include_directories(eversoul_console PRIVATE
    ${EVERSOUL_INCLUDE_DIRS})
  target_compile_definitions(eversoul_console PRIVATE
    UNICODE _UNICODE WIN32_LEAN_AND_MEAN NOMINMAX SQLITE_ORM_OMITS_CODECVT
    _WIN32_WINNT=0x0A00)
  target_compile_options(eversoul_console PRIVATE
    -O2 -Wall -Wextra -Wno-unknown-pragmas -Wno-cast-function-type)
  target_link_libraries(eversoul_console PRIVATE
    CURL::libcurl Threads::Threads
    ole32 oleaut32 shlwapi ws2_32)
  target_link_options(eversoul_console PRIVATE
    -static-libgcc -static-libstdc++
    -Wl,-Bstatic,-lpthread,-Bdynamic)
  add_custom_command(TARGET eversoul_console POST_BUILD
    COMMAND ${CMAKE_COMMAND}
      -DSRC_DIR=${CMAKE_SOURCE_DIR}
      -DDST_DIR=$<TARGET_FILE_DIR:eversoul_console>
      -P ${CMAKE_SOURCE_DIR}/cmake/copy_data_dirs.cmake
    COMMENT "Syncing offline data dirs to eversoul_console build output"
    VERBATIM)
  add_custom_command(TARGET eversoul_console POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different
      "${CMAKE_CURRENT_SOURCE_DIR}/src/assets/logo.ico"
      "$<TARGET_FILE_DIR:eversoul_console>/logo.ico"
    VERBATIM)
endif()

add_executable(encoder_validate
  src/core/encoding/json.cpp src/core/encoding/json_encoder.cpp
  src/game/protocol/protobuf.cpp src/core/encoding/crypto.cpp
  src/encoder_validate.cpp)
target_include_directories(encoder_validate PRIVATE ${EVERSOUL_INCLUDE_DIRS})
target_compile_options(encoder_validate PRIVATE -O2 -Wall -Wextra)

add_executable(offline_data_test
  src/core/encoding/json.cpp src/core/encoding/json_encoder.cpp
  src/game/protocol/protobuf.cpp src/core/encoding/crypto.cpp
  src/data/fixture/offline_data.cpp src/core/logging/log.cpp
  src/core/runtime/util.cpp src/offline_data_test.cpp)
target_include_directories(offline_data_test PRIVATE ${EVERSOUL_INCLUDE_DIRS})
target_compile_options(offline_data_test PRIVATE -O2 -Wall -Wextra)
target_link_libraries(offline_data_test PRIVATE ${CMAKE_DL_LIBS})

add_executable(orm_seed_check
  src/core/encoding/json.cpp src/core/encoding/json_encoder.cpp
  src/game/protocol/protobuf.cpp src/core/encoding/crypto.cpp
  src/data/fixture/offline_data.cpp src/core/logging/log.cpp
  src/core/runtime/util.cpp src/orm/storage.cpp
  src/orm/userinfo_builder.cpp src/account/profile/account_registry.cpp
  src/account/state/account_database.cpp src/account/state/account_db_manager.cpp
  src/orm_seed_check.cpp third_party/sqlite/sqlite3.c)
target_include_directories(orm_seed_check PRIVATE ${EVERSOUL_INCLUDE_DIRS})
target_compile_options(orm_seed_check PRIVATE -O2 -Wall -Wextra)
target_link_libraries(orm_seed_check PRIVATE ${CMAKE_DL_LIBS})

if(ANDROID)
  # === Dobby: ARM64 인라인 훅 엔진 ===
  add_subdirectory(third_party/dobby ${CMAKE_CURRENT_BINARY_DIR}/dobby)

  # === frida-gum devkit: GumInterceptor 기반 IL2CPP 훅 ===
  set(FRIDA_GUM_DIR ${CMAKE_CURRENT_SOURCE_DIR}/third_party/frida-gum)
  add_library(frida_gum_imported STATIC IMPORTED)
  set_target_properties(frida_gum_imported PROPERTIES
    IMPORTED_LOCATION   ${FRIDA_GUM_DIR}/lib/arm64-v8a/libfrida-gum.a
    INTERFACE_INCLUDE_DIRECTORIES ${FRIDA_GUM_DIR}/include)

  set(EVERSOUL_ANDROID_SOURCES
    src/common/util.cpp
    src/apk/type/log.cpp
    src/apk/net/proxy.cpp
    src/apk/redirect/common.cpp
    src/apk/redirect/url.cpp
    src/apk/redirect/net.cpp
    src/apk/native/url_hooks.cpp
    src/apk/frida/gum_init.cpp
    src/apk/hook/tbl_hook.cpp
    src/apk/hook/file_protect_hook.cpp)

  add_library(swappywrapper SHARED
    ${EVERSOUL_ANDROID_SOURCES}
    src/apk/patch/anticheat.cpp
    src/apk/entry.cpp)
  target_include_directories(swappywrapper PRIVATE
    src
    third_party/dobby/include
    ${FRIDA_GUM_DIR}/include)
  target_compile_options(swappywrapper PRIVATE -O2 -fvisibility=hidden)
  target_link_libraries(swappywrapper PRIVATE
    log dl m
    dobby
    -Wl,--whole-archive frida_gum_imported -Wl,--no-whole-archive)
  target_link_options(swappywrapper PRIVATE -static-libstdc++ -s)

  # === HAR 수집용 SO ===
  set(EVERSOUL_ANDROID_SOURCES_HAR ${EVERSOUL_ANDROID_SOURCES})
  list(REMOVE_ITEM EVERSOUL_ANDROID_SOURCES_HAR src/apk/redirect/url.cpp)
  list(REMOVE_ITEM EVERSOUL_ANDROID_SOURCES_HAR src/apk/hook/tbl_hook.cpp)
  add_library(swappywrapper_har SHARED
    ${EVERSOUL_ANDROID_SOURCES_HAR}
    src/apk/patch/anticheat.cpp
    src/apk/entry.cpp
    src/apk/redirect/har_url_redirect.cpp
    src/apk/hook/har_tbl_stub.cpp)
  target_include_directories(swappywrapper_har PRIVATE
    src
    third_party/dobby/include
    ${FRIDA_GUM_DIR}/include)
  target_compile_options(swappywrapper_har PRIVATE -O2 -fvisibility=hidden)
  target_compile_definitions(swappywrapper_har PRIVATE EVERSOUL_HAR_MODE)
  target_link_libraries(swappywrapper_har PRIVATE
    log dl m
    dobby
    -Wl,--whole-archive frida_gum_imported -Wl,--no-whole-archive)
  target_link_options(swappywrapper_har PRIVATE -static-libstdc++ -s)

  # === Origin APK 전용 SO: 안티치트만 ===
  add_library(swappywrapper_origin SHARED
    src/apk/patch/anticheat.cpp
    src/apk/entry_origin.cpp)
  target_include_directories(swappywrapper_origin PRIVATE src)
  target_compile_options(swappywrapper_origin PRIVATE -O2 -fvisibility=hidden)
  target_link_libraries(swappywrapper_origin PRIVATE log dl)
  target_link_options(swappywrapper_origin PRIVATE -static-libstdc++ -s)
endif()
