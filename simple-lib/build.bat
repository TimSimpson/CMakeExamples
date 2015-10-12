mkdir build
cmake CMakeLists.txt -Bbuild -G "Visual Studio 14 2015 Win64"
cmake --build build --target ALL_BUILD --config debug
cmake --build build --target RUN_TESTS --config debug


