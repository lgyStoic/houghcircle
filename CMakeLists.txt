cmake_minimum_required (VERSION 2.6)
project (houghcircle)
# The version number.
set (Tutorial_VERSION_MAJOR 1)
set (Tutorial_VERSION_MINOR 0)
 
FILE(COPY "${PROJECT_SOURCE_DIR}/blury_circle.png" DESTINATION "${CMAKE_BINARY_DIR}")
include_directories("${PROJECT_SOURCE_DIR}/include")
find_package(PNG REQUIRED) 
include_directories(${PNG_INCLUDE_DIR})

# add the executable
add_executable(houghcircle houghcircle.cpp)

target_link_libraries(houghcircle ${PNG_LIBRARY})

