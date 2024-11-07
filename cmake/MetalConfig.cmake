get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/.." ABSOLUTE)
set(Metal_INCLUDE_DIRS "${PACKAGE_PREFIX_DIR}/metal-cpp;${PACKAGE_PREFIX_DIR}/metal-cpp-extensions")

add_library(Metal INTERFACE)
target_include_directories(Metal INTERFACE ${Metal_INCLUDE_DIRS})
target_link_libraries(Metal INTERFACE "-framework Metal")
target_link_libraries(Metal INTERFACE "-framework MetalKit")
target_link_libraries(Metal INTERFACE "-framework QuartzCore")
target_link_libraries(Metal INTERFACE "-framework AppKit")
target_link_libraries(Metal INTERFACE "-framework Foundation")

include(CMakeFindDependencyMacro)
