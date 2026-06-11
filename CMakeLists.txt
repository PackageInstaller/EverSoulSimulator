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
  src/i18n.cpp
  src/adb_finder.cpp
  src/admin_log_sink.cpp
  src/admin_server.cpp
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

# The .inc protobuf fixtures live in the project root.
set(EVERSOUL_INCLUDE_DIRS src ${CMAKE_CURRENT_SOURCE_DIR} third_party/sqlite third_party/sqlite_orm)

find_package(Threads REQUIRED)

if(ANDROID)
  if(ANDROID_ABI STREQUAL "x86_64")
    set(OBJCOPY_OUTPUT_FORMAT "elf64-x86-64")
    set(OBJCOPY_ARCH          "i386:x86-64")
  else()
    set(OBJCOPY_OUTPUT_FORMAT "elf64-littleaarch64")
    set(OBJCOPY_ARCH          "aarch64")
  endif()

  # Embed all Global protobuf schemas as a binary blob for later extraction/debugging.
  set(PROTO_BLOB "${CMAKE_CURRENT_BINARY_DIR}/proto_schema_global.txt")
  set(PROTO_OBJ "${CMAKE_CURRENT_BINARY_DIR}/proto_schema_global.o")
  add_custom_command(
    OUTPUT ${PROTO_OBJ}
    COMMAND ${CMAKE_COMMAND}
      -DSRC_DIR=${CMAKE_CURRENT_SOURCE_DIR}
      -DBLOB=${PROTO_BLOB}
      -P ${CMAKE_CURRENT_SOURCE_DIR}/cmake/gen_proto_blob.cmake
    COMMAND ${CMAKE_OBJCOPY}
      -I binary -O ${OBJCOPY_OUTPUT_FORMAT} -B ${OBJCOPY_ARCH} ${PROTO_BLOB} ${PROTO_OBJ}
    WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
    VERBATIM)

  # Merged single library: anti-cheat hook + offline server + entry. Must be named
  # libswappywrapper.so so the game auto-loads it.
  add_library(swappywrapper SHARED
    ${EVERSOUL_CORE_SOURCES}
    src/anticheat_patch.cpp
    src/asset_migration.cpp
    src/entry.cpp
    ${PROTO_OBJ})
  target_include_directories(swappywrapper PRIVATE ${EVERSOUL_INCLUDE_DIRS})
  target_compile_options(swappywrapper PRIVATE -O2 -fvisibility=hidden)
  target_link_libraries(swappywrapper PRIVATE log dl m)
  target_link_options(swappywrapper PRIVATE -static-libstdc++ -s)

  # After building libswappywrapper.so, run eversoul_injector if it is present
  # in the desktop build directory.  EVERSOUL_INJECTOR can be overridden on the
  # cmake command line; defaults to build/eversoul_injector[.exe].
  if(NOT DEFINED EVERSOUL_INJECTOR)
    set(EVERSOUL_INJECTOR
      "${CMAKE_SOURCE_DIR}/build/eversoul_injector${CMAKE_EXECUTABLE_SUFFIX}")
  endif()
  if(NOT DEFINED EVERSOUL_SERVER)
    set(EVERSOUL_SERVER
      "${CMAKE_SOURCE_DIR}/build/eversoul_offline_server${CMAKE_EXECUTABLE_SUFFIX}")
  endif()
  set(EVERSOUL_FRIDA_SERVER
    "${CMAKE_SOURCE_DIR}/tools/frida/frida-server-android-x86_64")

  add_custom_command(TARGET swappywrapper POST_BUILD
    COMMAND ${CMAKE_COMMAND}
      -DINJECTOR=${EVERSOUL_INJECTOR}
      -DSO=$<TARGET_FILE:swappywrapper>
      -DSERVER=${EVERSOUL_SERVER}
      -DFRIDA_SRV=${EVERSOUL_FRIDA_SERVER}
      -P ${CMAKE_SOURCE_DIR}/cmake/run_injector.cmake
    COMMENT "Injecting libswappywrapper.so into emulator via eversoul_injector")
else()
  # Desktop capture/proxy/mock server.
  find_package(CURL REQUIRED)
  add_executable(eversoul_offline_server ${EVERSOUL_CORE_SOURCES} src/main.cpp)
  target_include_directories(eversoul_offline_server PRIVATE ${EVERSOUL_INCLUDE_DIRS})
  target_compile_options(eversoul_offline_server PRIVATE -O2 -Wall -Wextra)
  target_link_libraries(eversoul_offline_server PRIVATE CURL::libcurl Threads::Threads ${CMAKE_DL_LIBS})
  if(WIN32)
    target_link_libraries(eversoul_offline_server PRIVATE ws2_32)

    # Copy MinGW runtime DLLs and libcurl DLL next to the executable.
    get_filename_component(_CXX_DIR "${CMAKE_CXX_COMPILER}" DIRECTORY)
    foreach(_dll
        libgcc_s_seh-1.dll
        libstdc++-6.dll
        libwinpthread-1.dll)
      if(EXISTS "${_CXX_DIR}/${_dll}")
        add_custom_command(TARGET eversoul_offline_server POST_BUILD
          COMMAND ${CMAKE_COMMAND} -E copy_if_different
            "${_CXX_DIR}/${_dll}"
            "$<TARGET_FILE_DIR:eversoul_offline_server>")
      endif()
    endforeach()

    # libcurl DLL — check lib/ then ../bin/ relative to the import library.
    if(DEFINED CURL_LIBRARY)
      get_filename_component(_CURL_LIB_DIR "${CURL_LIBRARY}" DIRECTORY)
      set(_CURL_SEARCH_DIRS "${_CURL_LIB_DIR}" "${_CURL_LIB_DIR}/../bin")
      foreach(_curl_dll libcurl.dll libcurl-4.dll curl.dll)
        foreach(_dir ${_CURL_SEARCH_DIRS})
          if(EXISTS "${_dir}/${_curl_dll}")
            add_custom_command(TARGET eversoul_offline_server POST_BUILD
              COMMAND ${CMAKE_COMMAND} -E copy_if_different
                "${_dir}/${_curl_dll}"
                "$<TARGET_FILE_DIR:eversoul_offline_server>")
            set(_CURL_DLL_FOUND TRUE)
            break()
          endif()
        endforeach()
        if(DEFINED _CURL_DLL_FOUND)
          break()
        endif()
      endforeach()
    endif()
  endif()


  # Desktop validator for the descriptor-driven JSON->protobuf encoder. Links
  # only the small pieces it needs (no curl/sqlite), so it builds fast.
  add_executable(encoder_validate
    src/json.cpp src/json_encoder.cpp src/protobuf.cpp src/crypto.cpp
    src/encoder_validate.cpp)
  target_include_directories(encoder_validate PRIVATE ${EVERSOUL_INCLUDE_DIRS})
  target_compile_options(encoder_validate PRIVATE -O2 -Wall -Wextra)

  add_executable(offline_data_test
    src/json.cpp src/json_encoder.cpp src/protobuf.cpp src/crypto.cpp
    src/offline_data.cpp src/log.cpp src/util.cpp
    src/admin_log_sink.cpp src/offline_data_test.cpp)
  target_include_directories(offline_data_test PRIVATE ${EVERSOUL_INCLUDE_DIRS})
  target_compile_options(offline_data_test PRIVATE -O2 -Wall -Wextra)
  target_link_libraries(offline_data_test PRIVATE ${CMAKE_DL_LIBS})

  add_executable(orm_seed_check
    src/json.cpp src/json_encoder.cpp src/protobuf.cpp src/crypto.cpp
    src/offline_data.cpp src/log.cpp src/util.cpp src/orm/storage.cpp
    src/orm/userinfo_builder.cpp src/admin_log_sink.cpp
    src/orm_seed_check.cpp third_party/sqlite/sqlite3.c)
  target_include_directories(orm_seed_check PRIVATE ${EVERSOUL_INCLUDE_DIRS})
  target_compile_options(orm_seed_check PRIVATE -O2 -Wall -Wextra)
  target_link_libraries(orm_seed_check PRIVATE ${CMAKE_DL_LIBS})
endif()
