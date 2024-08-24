cmake_minimum_required(VERSION 3.14.1)

project(cofizzbuzz C CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(code code.cc)
if(CMAKE_BUILD_TYPE STREQUAL "Release")
  target_compile_definitions(code PRIVATE NDEBUG)
else()
  target_compile_definitions(code PRIVATE DEBUG)
endif()
