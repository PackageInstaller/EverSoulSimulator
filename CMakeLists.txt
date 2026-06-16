cmake_minimum_required(VERSION 3.21)
project(eversoul_offline C CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()

# Core sources shared by both the Android library and the desktop server.
set(EVERSOUL_CORE_SOURCES
  src/util.cpp
  src/crypto.cpp
  src/protobuf.cpp
  src/json.cpp
  src/json_encoder.cpp
  src/offline_data.cpp
  src/fixture_store.cpp
  src/websocket.cpp
  src/ws_session.cpp
  src/log.cpp
  src/http.cpp
  src/proxy.cpp
  src/payloads.cpp
  src/orm/storage.cpp
  src/orm/userinfo_builder.cpp
  src/account_db.cpp
  src/router.cpp
  src/server.cpp
  third_party/sqlite/sqlite3.c)

# Quiet the SQLite amalgamation and trim unused features.
set_source_files_properties(third_party/sqlite/sqlite3.c PROPERTIES
  COMPILE_OPTIONS "-w"
  COMPILE_DEFINITIONS "SQLITE_THREADSAFE=1;SQLITE_OMIT_LOAD_EXTENSION;SQLITE_DEFAULT_MEMSTATUS=0;SQLITE_OMIT_DEPRECATED")

# sqlite_orm.h uses C++26 pack-indexing and pre-C++20 literal operator syntax;
# suppress diagnostics that are third_party's concern, not ours.
set_source_files_properties(src/orm/storage.cpp PROPERTIES
  COMPILE_OPTIONS "-Wno-deprecated-literal-operator;-Wno-c++26-extensions")

# The .inc protobuf fixtures live in the project root.
set(EVERSOUL_INCLUDE_DIRS src ${CMAKE_CURRENT_SOURCE_DIR} third_party/sqlite third_party/sqlite_orm)

find_package(Threads REQUIRED)

if(ANDROID)
  # === Embed proto schemas as binary blob ===
  set(PROTO_BLOB "${CMAKE_CURRENT_BINARY_DIR}/proto_schema_global.txt")
  set(PROTO_OBJ "${CMAKE_CURRENT_BINARY_DIR}/proto_schema_global.o")
  add_custom_command(
    OUTPUT ${PROTO_OBJ}
    COMMAND ${CMAKE_COMMAND}
      -DSRC_DIR=${CMAKE_CURRENT_SOURCE_DIR}
      -DBLOB=${PROTO_BLOB}
      -P ${CMAKE_CURRENT_SOURCE_DIR}/cmake/gen_proto_blob.cmake
    COMMAND ${CMAKE_OBJCOPY}
      -I binary -O elf64-littleaarch64 -B aarch64 ${PROTO_BLOB} ${PROTO_OBJ}
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
    VERBATIM)

  # === Build Dobby as a static library ===
  # Mature ARM64 inline hook engine with instruction relocation (handles ADRP etc.)
  add_subdirectory(third_party/dobby ${CMAKE_CURRENT_BINARY_DIR}/dobby)

  # Android-only sources: inline hook engine, URL redirect, native hooks.
  # Java-layer redirect is handled by Smali injection (not LSPlant).
  set(EVERSOUL_ANDROID_SOURCES
    src/redirect.cpp
    src/net_redirect.cpp
    src/il2cpp_hook.cpp)

  # Merged single library: anti-cheat hook + offline server + entry. Must be named
  # libswappywrapper.so so the game auto-loads it.
  add_library(swappywrapper SHARED
    ${EVERSOUL_CORE_SOURCES}
    ${EVERSOUL_ANDROID_SOURCES}
    src/anticheat_patch.cpp
    src/entry.cpp
    ${PROTO_OBJ})
  target_include_directories(swappywrapper PRIVATE
    ${EVERSOUL_INCLUDE_DIRS}
    third_party/dobby/include)
  target_compile_options(swappywrapper PRIVATE -O2 -fvisibility=hidden)
  target_compile_definitions(swappywrapper PRIVATE SQLITE_ORM_OMITS_CODECVT)
  target_link_libraries(swappywrapper PRIVATE
    log dl m
    dobby)
  target_link_options(swappywrapper PRIVATE -static-libstdc++ -s)

  # Android build diagnostic
  message(STATUS "")
  message(STATUS "Target: libswappywrapper.so")
  message(STATUS "  Anti-cheat hook:   YES")
  message(STATUS "  Offline server:     YES (port 9999)")
  message(STATUS "  Transport redirect: YES (connect/getaddrinfo -> 127.0.0.1:9999)")
  message(STATUS "  Native IL2CPP hook: YES (UnityWebRequest)")
  message(STATUS "  Java layer:         Smali injection (URL/OkHttp)")
  message(STATUS "")
else()
  # Desktop capture/proxy/mock server.
  # These targets do not include the Android-only modules (inline_hook, LSPlant, etc.)
  find_package(CURL REQUIRED)
  add_executable(eversoul_offline_server ${EVERSOUL_CORE_SOURCES} src/main.cpp)
  target_include_directories(eversoul_offline_server PRIVATE ${EVERSOUL_INCLUDE_DIRS})
  target_compile_options(eversoul_offline_server PRIVATE -O2 -Wall -Wextra)
  target_link_libraries(eversoul_offline_server PRIVATE CURL::libcurl Threads::Threads ${CMAKE_DL_LIBS}
    $<$<PLATFORM_ID:Windows>:ws2_32>)

  add_custom_command(TARGET eversoul_offline_server POST_BUILD
    COMMAND ${CMAKE_COMMAND}
      -DSRC_DIR=${CMAKE_SOURCE_DIR}
      -DDST_DIR=$<TARGET_FILE_DIR:eversoul_offline_server>
      -P ${CMAKE_SOURCE_DIR}/cmake/copy_data_dirs.cmake
    COMMENT "Syncing offline data dirs (responses/ schema/ wss/ web/) to build output"
    VERBATIM
  )

  # Desktop validator for the descriptor-driven JSON->protobuf encoder. Links
  # only the small pieces it needs (no curl/sqlite), so it builds fast.
  add_executable(encoder_validate
    src/json.cpp src/json_encoder.cpp src/protobuf.cpp src/crypto.cpp
    src/encoder_validate.cpp)
  target_include_directories(encoder_validate PRIVATE ${EVERSOUL_INCLUDE_DIRS})
  target_compile_options(encoder_validate PRIVATE -O2 -Wall -Wextra)

  # 验证 OfflineData 能从 blob（伪装 so）读取并编码。
  add_executable(offline_data_test
    src/json.cpp src/json_encoder.cpp src/protobuf.cpp src/crypto.cpp
    src/offline_data.cpp src/log.cpp src/util.cpp src/offline_data_test.cpp)
  target_include_directories(offline_data_test PRIVATE ${EVERSOUL_INCLUDE_DIRS})
  target_compile_options(offline_data_test PRIVATE -O2 -Wall -Wextra)
  target_link_libraries(offline_data_test PRIVATE ${CMAKE_DL_LIBS})

  add_executable(orm_seed_check
    src/json.cpp src/json_encoder.cpp src/protobuf.cpp src/crypto.cpp
    src/offline_data.cpp src/log.cpp src/util.cpp src/orm/storage.cpp
    src/orm/userinfo_builder.cpp src/orm_seed_check.cpp third_party/sqlite/sqlite3.c)
  target_include_directories(orm_seed_check PRIVATE ${EVERSOUL_INCLUDE_DIRS})
  target_compile_options(orm_seed_check PRIVATE -O2 -Wall -Wextra)
  target_link_libraries(orm_seed_check PRIVATE ${CMAKE_DL_LIBS})
endif()