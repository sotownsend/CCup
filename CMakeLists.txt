cmake_minimum_required(VERSION 2.6.4)
project(CCup)
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Werror")
set(CMAKE_BUILD_TYPE "DEBUG")
add_executable(main main.cpp CCup.cpp CCNetwork.cpp)
add_library(ccup CCup.cpp CCNetwork.cpp)
