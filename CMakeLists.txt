cmake_minimum_required(VERSION 3.0)
project(libgo-simple)

##g++ -g -fno-strict-aliasing -O3 -Wall -export-dynamic -Wall -pipe -D_GNU_SOURCE -D_REENTRANT -fPIC -Wno-deprecated -m64 -O example_echosvr.cpp co*.cpp  -lpthread -ldl -L ./lib -lcolib

set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
set(CMAKE_CXX_FLAGS "$ENV{CXXFLAGS} -rdynamic -fno-strict-aliasing -export-dynamic -o3 -pipe -g -D_GNU_SOURCE -D_REENTRANT -m64 -std=c++11 -Wall -Wno-deprecated -Werror -Wno-unused-function -Wno-builtin-macro-redefined -Wno-dev -lssl -lcrypto -L ./lib")

set(PROJECT_SOURCE_DIR /home/rotun-li/libgo-simple/)

include_directories(.)
include_directories(/usr/local/include)
link_directories(/usr/local/lib)

ENABLE_LANGUAGE(ASM)
option(BUILD_TEST "ON for complile test" OFF)

find_package(Boost REQUIRED)
if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
endif()

find_library(YAMLCPP yamlcpp)
find_library(PTHREAD pthread)

set(LIB_SRC
    src/libco/coctx.cpp
    src/libco/coctx_swap.S
    src/Log.cpp
    src/Util.cpp
    src/Config.cpp
    src/Fiber.cpp
    src/Thread.cpp
    src/Scheduler.cpp
    src/IoManager.cpp
    src/Timer.cpp
    src/Hook.cpp
    src/FdManager.cpp
    )

add_library(routine SHARED ${LIB_SRC})
target_link_libraries(routine)

set(LIBS
        routine
        pthread
        yaml-cpp
        dl
        colib
)


add_executable(test_go test/test_go.cpp)
add_dependencies(test_go routine)
target_link_libraries(test_go routine ${LIBS})


add_executable(test_go_sync test/test_go_sync.cpp)
add_dependencies(test_go_sync routine)
target_link_libraries(test_go_sync routine ${LIBS})


SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)
