from gcc:latest

label maintainer="markuspawellek@gmail.com"

workdir /tmp
run git clone https://github.com/Kitware/CMake.git --depth=1 --branch release --single-branch cmake
workdir cmake
run ./bootstrap && make && make install
workdir /
run rm -rf /tmp/cmake