cmake_minimum_required(VERSION 3.20)
project(Lab_8_CPE390)

set(CMAKE_CXX_STANDARD 23)

include_directories(.)

add_executable(Lab_8_CPE390
        GravSim.cc
        GravSim.hh
        main.cc
        )
