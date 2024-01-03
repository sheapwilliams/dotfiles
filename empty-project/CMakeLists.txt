cmake_policy(SET CMP0048 NEW)
project(
  02
  VERSION 1.0
  LANGUAGES CXX)
cmake_minimum_required(VERSION 3.20)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_compile_options("-Wall" "-Werror")

add_executable(main main.cpp)
target_include_directories(main PUBLIC "include")

set_property(TARGET main PROPERTY CXX_STANDARD 23)

add_subdirectory(vendor/googletest)

function(add_unit_test target source)
  add_executable(${target} ${source} ${ARGN})
  set_property(TARGET ${target} PROPERTY CXX_STANDARD 23)
  target_include_directories(
    ${target}
    PUBLIC "vendor/googletest/googletest/include"
           "vendor/googletest/googlemock/include"
           "include")
  target_link_libraries(${target}
                        "-L${CMAKE_BINARY_DIR}/lib -lgtest -lgtest_main")
  add_dependencies(${target} gtest gtest_main)

  add_custom_target(
    run_${target} ALL
    "${CMAKE_BINARY_DIR}/${target}"
    DEPENDS ${target})
endfunction()

add_unit_test(test unit/test.cpp)
