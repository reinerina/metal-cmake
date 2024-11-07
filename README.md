# metal-cmake
A CMake module for building Metal projects.

## Usage
Add this repository as a submodule to your project:
```sh
git submodule add https://github.com/reinerina/metal-cmake.git
```
Add the following lines to your `CMakeLists.txt`:
```cmake
set(Metal_DIR "metal-cmake/cmake")
find_package(Metal CONFIG REQUIRED)
```
Then, link the Metal library to your target:
```cmake
target_link_libraries(your_target PRIVATE Metal)
```
## Example
```cmake
cmake_minimum_required(VERSION 3.12)

project(MyMetalProject)

set(Metal_DIR "metal-cmake/cmake")
find_package(Metal REQUIRED)

add_executable(MyMetalApp main.cpp)
target_link_libraries(MyMetalApp PRIVATE Metal)
```