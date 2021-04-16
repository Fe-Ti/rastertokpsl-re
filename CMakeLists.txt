cmake_minimum_required(VERSION 3.4)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(rastertokpsl-re)

option(DEBUG "Debug" OFF)
option(VERBOSE "Verbose" OFF)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/bin")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O2 -lm -ldl ")

if(VERBOSE)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wpointer-arith ")
endif()

if(DEBUG)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g ")
endif()

set (SRC_DIR ${PROJECT_SOURCE_DIR}/src)
set (CUPS_SRC_DIR ${SRC_DIR}/cups-2.1.1)
set (UNICODE_SRC_DIR ${SRC_DIR}/unicode)

find_library(CUPS_LIB cups)
find_library(CUPSIMAGE_LIB cupsimage)

add_subdirectory(src)
add_subdirectory(tests)
