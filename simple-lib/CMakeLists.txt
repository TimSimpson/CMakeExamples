cmake_minimum_required (VERSION 3.2)
project(
    CalculatorAsLib
    VERSION 1
    LANGUAGES CXX
)

# I don't think this should have to be added, but for whatever reason
# it does. Find a way to fix it.
add_definitions( -DBOOST_ALL_NO_LIB )
#set(Boost_USE_STATIC_LIBS OFF)
#set(Boost_USE_MULTITHREADED ON)
#set(Boost_USE_STATIC_RUNTIME OFF)

find_package(Boost 1.59 REQUIRED )

include_directories(${Boost_INCLUDE_DIRS})

enable_testing()

add_executable(calc_test_runner
               calc.cpp
               ${CMAKE_CURRENT_SOURCE_DIR}/test.cpp)
add_test(
    NAME calc_test
    COMMAND calc_test_runner
)

add_library(calc_lib
    calc.cpp
)

add_executable(calc
   ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp
)
target_link_libraries(calc calc_lib)

# install wf?
