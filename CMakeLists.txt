cmake_minimum_required(VERSION 3.21)
project(eversoul_offline C CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release)
endif()

# Android SO와 Desktop 서버 양쪽이 공유하는 전송/직렬화 레이어
# Android: raw TCP 포워딩 전용 — DB/ORM/라우터/서버 코드 없음
# PC 서버가 실제 서버 역할 전부 담당
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
  src/payloads.cpp)

# Desktop PC 서버 전용 소스 — Android swappywrapper에는 절대 포함 안 됨
set(EVERSOUL_DESKTOP_SOURCES
  src/orm/storage.cpp
  src/orm/userinfo_builder.cpp
  src/account_db.cpp
  src/account_registry.cpp
  src/account_database.cpp
  src/account_db_manager.cpp
  src/userinfo_repository.cpp
  src/endpoint_mutation_service.cpp
  src/game_catalog.cpp
  src/sse_log.cpp
  src/router.cpp
  src/server.cpp
  third_party/sqlite/sqlite3.c)

# SQLite 아말감 경고 억제 및 불필요한 기능 제거
set_source_files_properties(third_party/sqlite/sqlite3.c PROPERTIES
  COMPILE_OPTIONS "-w"
  COMPILE_DEFINITIONS "SQLITE_THREADSAFE=1;SQLITE_OMIT_LOAD_EXTENSION;SQLITE_DEFAULT_MEMSTATUS=0;SQLITE_OMIT_DEPRECATED")

# sqlite_orm.h: C++26 pack-indexing / C++20 이전 literal operator 사용 — third_party 경고 억제
set_source_files_properties(src/orm/storage.cpp PROPERTIES
  COMPILE_OPTIONS "-Wno-deprecated-literal-operator;-Wno-c++26-extensions;-Wno-unused-local-typedefs;-Wno-unused-but-set-parameter")

# .inc protobuf fixture들은 프로젝트 루트에 위치
set(EVERSOUL_INCLUDE_DIRS src ${CMAKE_CURRENT_SOURCE_DIR} third_party/sqlite third_party/sqlite_orm)

find_package(Threads REQUIRED)

if(ANDROID)
  # === proto 스키마 blob embed ===
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

  # === RedirectHooks.dex embed ===
  # scripts/build_redirect_dex.sh: javac + d8 + llvm-objcopy 로
  # smali_inject/RedirectHooks.java → redirect_hooks.o (aarch64 ELF relocatable) 생성
  # 링크 후 _binary_redirect_hooks_dex_start / _end 심볼로 접근
  set(REDIRECT_DEX_OBJ "${CMAKE_CURRENT_BINARY_DIR}/redirect_hooks.o")
  add_custom_command(
    OUTPUT ${REDIRECT_DEX_OBJ}
    COMMAND bash
      ${CMAKE_CURRENT_SOURCE_DIR}/scripts/build_redirect_dex.sh
      ${CMAKE_CURRENT_SOURCE_DIR}
      ${CMAKE_CURRENT_BINARY_DIR}
    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/smali_inject/RedirectHooks.java
    COMMENT "RedirectHooks.java → DEX → ELF relocatable 오브젝트"
    VERBATIM)

  # === Dobby: ARM64 인라인 훅 엔진 (ADRP 등 명령어 재배치 지원) ===
  add_subdirectory(third_party/dobby ${CMAKE_CURRENT_BINARY_DIR}/dobby)

  # === LSPlant: ART Java 메서드 훅 프레임워크 (static 빌드만) ===
  # C++23 모듈 사용 — Ninja 제너레이터 필수 (CMake 3.28+)
  set(LSPLANT_BUILD_SHARED OFF CACHE BOOL "" FORCE)
  add_subdirectory(
    third_party/lsplant/lsplant/src/main/jni
    ${CMAKE_CURRENT_BINARY_DIR}/lsplant)

  # === frida-gum devkit: 정적 링크 (GumInterceptor 기반 IL2CPP 훅 보조) ===
  set(FRIDA_GUM_DIR ${CMAKE_CURRENT_SOURCE_DIR}/third_party/frida-gum)
  add_library(frida_gum_imported STATIC IMPORTED)
  set_target_properties(frida_gum_imported PROPERTIES
    IMPORTED_LOCATION   ${FRIDA_GUM_DIR}/lib/arm64-v8a/libfrida-gum.a
    INTERFACE_INCLUDE_DIRECTORIES ${FRIDA_GUM_DIR}/include)

  # Android 전용 소스
  # url_redirect.cpp: Java/native 공통 redirect 로직 (redirect_url_cpp())
  # native_url_hooks.cpp: frida-gum Interceptor IL2CPP 훅 (il2cpp_hook.cpp 대체)
  set(EVERSOUL_ANDROID_SOURCES
    src/redirect.cpp
    src/url_redirect.cpp
    src/net_redirect.cpp
    src/native_url_hooks.cpp
    src/dex_loader.cpp
    src/frida_gum_init.cpp
    src/lsplant_hooks.cpp)

  # 게임이 자동 로드하도록 반드시 libswappywrapper.so 로 명명
  add_library(swappywrapper SHARED
    ${EVERSOUL_CORE_SOURCES}
    ${EVERSOUL_ANDROID_SOURCES}
    src/anticheat_patch.cpp
    src/entry.cpp
    ${PROTO_OBJ}
    ${REDIRECT_DEX_OBJ})
  target_include_directories(swappywrapper PRIVATE
    ${EVERSOUL_INCLUDE_DIRS}
    third_party/dobby/include
    ${FRIDA_GUM_DIR}/include
    third_party/lsplant/lsplant/src/main/jni/include)
  target_compile_options(swappywrapper PRIVATE -O2 -fvisibility=hidden)
  target_compile_definitions(swappywrapper PRIVATE SQLITE_ORM_OMITS_CODECVT)
  target_link_libraries(swappywrapper PRIVATE
    log dl m
    dobby
    lsplant_static
    # frida-gum은 전역 constructor 등록이 있으므로 whole-archive 필수
    -Wl,--whole-archive frida_gum_imported -Wl,--no-whole-archive)
  target_link_options(swappywrapper PRIVATE -static-libstdc++ -s)

  message(STATUS "")
  message(STATUS "대상: libswappywrapper.so")
  message(STATUS "  Anti-cheat 훅:            ON")
  message(STATUS "  오프라인 서버:             ON (포트 9999)")
  message(STATUS "  전송 레이어 리다이렉트:     ON (connect/getaddrinfo → 127.0.0.1:9999)")
  message(STATUS "  IL2CPP 훅 (Dobby):        ON (UnityWebRequest)")
  message(STATUS "  Java 레이어 훅 (LSPlant):  ON (URL/OkHttp/Process/HmacSHA256Util)")
  message(STATUS "  frida-gum 런타임:          ON (정적 링크)")
  message(STATUS "")
else()
  find_package(CURL REQUIRED)

  if(WIN32)
    file(GLOB WEB_EMBED_SOURCES
      "${CMAKE_CURRENT_SOURCE_DIR}/src/web/*.html"
      "${CMAKE_CURRENT_SOURCE_DIR}/src/web/*.js"
      "${CMAKE_CURRENT_SOURCE_DIR}/src/web/*.css"
      "${CMAKE_CURRENT_SOURCE_DIR}/src/web/*.png"
      "${CMAKE_CURRENT_SOURCE_DIR}/src/web/*.ico"
      "${CMAKE_CURRENT_SOURCE_DIR}/src/web/*.svg"
    )
    set(WEB_EMBEDDED_CPP "${CMAKE_CURRENT_BINARY_DIR}/web_embedded.cpp")
    add_custom_command(
      OUTPUT "${WEB_EMBEDDED_CPP}"
      COMMAND python
        "${CMAKE_CURRENT_SOURCE_DIR}/cmake/gen_web_blob.py"
        "${CMAKE_CURRENT_SOURCE_DIR}/src/web"
        "${WEB_EMBEDDED_CPP}"
      DEPENDS ${WEB_EMBED_SOURCES}
      COMMENT "Embedding web assets (src/web/) into web_embedded.cpp"
      VERBATIM
    )

    add_executable(eversoul_gui WIN32
      ${EVERSOUL_CORE_SOURCES}
      ${EVERSOUL_DESKTOP_SOURCES}
      src/adb_runner.cpp
      src/logcat_process.cpp
      src/gui_main.cpp
      src/app.rc
      "${WEB_EMBEDDED_CPP}")
    target_include_directories(eversoul_gui PRIVATE
      ${EVERSOUL_INCLUDE_DIRS}
      third_party/webview2/include)
    target_compile_definitions(eversoul_gui PRIVATE
      UNICODE _UNICODE WIN32_LEAN_AND_MEAN NOMINMAX SQLITE_ORM_OMITS_CODECVT
      _WIN32_WINNT=0x0A00)
    target_compile_options(eversoul_gui PRIVATE
      -O2 -Wall -Wextra -Wno-unknown-pragmas -Wno-cast-function-type)
    target_link_libraries(eversoul_gui PRIVATE
      CURL::libcurl Threads::Threads
      ole32 oleaut32 shlwapi ws2_32)
    target_link_options(eversoul_gui PRIVATE
      -static-libgcc -static-libstdc++
      -Wl,-Bstatic,-lpthread,-Bdynamic)
    add_custom_command(TARGET eversoul_gui POST_BUILD
      COMMAND ${CMAKE_COMMAND}
        -DSRC_DIR=${CMAKE_SOURCE_DIR}
        -DDST_DIR=$<TARGET_FILE_DIR:eversoul_gui>
        -P ${CMAKE_SOURCE_DIR}/cmake/copy_data_dirs.cmake
      COMMENT "Syncing offline data dirs to build output"
      VERBATIM
    )
    add_custom_command(TARGET eversoul_gui POST_BUILD
      COMMAND ${CMAKE_COMMAND} -E copy_if_different
        "${CMAKE_CURRENT_SOURCE_DIR}/third_party/webview2/x64/WebView2Loader.dll"
        "$<TARGET_FILE_DIR:eversoul_gui>/WebView2Loader.dll"
      COMMAND ${CMAKE_COMMAND} -E copy_if_different
        "${CMAKE_CURRENT_SOURCE_DIR}/src/assets/logo.ico"
        "$<TARGET_FILE_DIR:eversoul_gui>/logo.ico"
      VERBATIM)

    # ── CMD 전용 모드: CONSOLE 서브시스템, WebView2 없음 ──────────────────────
    add_executable(eversoul_console
      ${EVERSOUL_CORE_SOURCES}
      ${EVERSOUL_DESKTOP_SOURCES}
      src/adb_runner.cpp
      src/logcat_process.cpp
      src/console_main.cpp
      "${WEB_EMBEDDED_CPP}")
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
  endif()

  add_executable(encoder_validate
    src/json.cpp src/json_encoder.cpp src/protobuf.cpp src/crypto.cpp
    src/encoder_validate.cpp)
  target_include_directories(encoder_validate PRIVATE ${EVERSOUL_INCLUDE_DIRS})
  target_compile_options(encoder_validate PRIVATE -O2 -Wall -Wextra)

  add_executable(offline_data_test
    src/json.cpp src/json_encoder.cpp src/protobuf.cpp src/crypto.cpp
    src/offline_data.cpp src/log.cpp src/util.cpp src/offline_data_test.cpp)
  target_include_directories(offline_data_test PRIVATE ${EVERSOUL_INCLUDE_DIRS})
  target_compile_options(offline_data_test PRIVATE -O2 -Wall -Wextra)
  target_link_libraries(offline_data_test PRIVATE ${CMAKE_DL_LIBS})

  add_executable(orm_seed_check
    src/json.cpp src/json_encoder.cpp src/protobuf.cpp src/crypto.cpp
    src/offline_data.cpp src/log.cpp src/util.cpp src/orm/storage.cpp
    src/orm/userinfo_builder.cpp src/account_registry.cpp
    src/account_database.cpp src/account_db_manager.cpp
    src/orm_seed_check.cpp third_party/sqlite/sqlite3.c)
  target_include_directories(orm_seed_check PRIVATE ${EVERSOUL_INCLUDE_DIRS})
  target_compile_options(orm_seed_check PRIVATE -O2 -Wall -Wextra)
  target_link_libraries(orm_seed_check PRIVATE ${CMAKE_DL_LIBS})
endif()