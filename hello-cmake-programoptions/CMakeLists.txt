cmake_minimum_required (VERSION 3.2)
project(
    HelloProgramOptions
    VERSION 1
    LANGUAGES CXX
)

# I don't think this should have to be added, but for whatever reason
# it does. Find a way to fix it.
add_definitions( -DBOOST_ALL_NO_LIB )
#set(Boost_USE_STATIC_LIBS OFF)
#set(Boost_USE_MULTITHREADED ON)
#set(Boost_USE_STATIC_RUNTIME OFF)

find_package(Boost 1.59 COMPONENTS program_options REQUIRED )

include_directories(${Boost_INCLUDE_DIRS})

add_executable(wf
               ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp)

target_link_libraries(wf  ${Boost_LIBRARIES})

# install wf?
