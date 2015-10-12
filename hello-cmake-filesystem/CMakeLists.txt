cmake_minimum_required (VERSION 3.2)
project(
    HelloFileSystem
    VERSION 1
    LANGUAGES CXX
)

# I don't think this should have to be added, but for whatever reason
# it does. Find a way to fix it.
add_definitions( -DBOOST_ALL_NO_LIB )

#set(Boost_USE_STATIC_LIBS OFF)
#set(Boost_USE_MULTITHREADED ON)
#set(Boost_USE_STATIC_RUNTIME OFF)
find_package(Boost 1.59 COMPONENTS system filesystem REQUIRED )

include_directories(${Boost_INCLUDE_DIRS})

add_executable(ls
               ${CMAKE_CURRENT_SOURCE_DIR}/main.cpp)

target_link_libraries(ls
  ${Boost_FILESYSTEM_LIBRARY}
  ${Boost_SYSTEM_LIBRARY}
  ${Boost_LIBRARIES}
)

# install ls?
