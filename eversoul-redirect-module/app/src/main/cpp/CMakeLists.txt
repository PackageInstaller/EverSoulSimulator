cmake_minimum_required(VERSION 3.22.1)
project(redirect C CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


set(DOBBY_BUILD_TEST OFF CACHE INTERNAL "")
set(DOBBY_GENERATE_LAYOUT OFF CACHE INTERNAL "")

add_subdirectory(dobby)

add_library(redirect SHARED redirect.cpp)

target_link_libraries(redirect
    android
    log
    dobby
)
