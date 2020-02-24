project(example)
cmake_minimum_required(VERSION 2.6)

include_directories(                    
                    "$ENV{GTEST_INC}"
                    "${CMAKE_CURRENT_SOURCE_DIR}/src"
		           )

link_directories(
                 "$ENV{GTEST_LIB}"
		        )

set(CMAKE_CXX_FLAGS "${CMAXE_CXX_FLAGS} -std=c++17 -g -Wall -O3")

set(sources
    main.cpp
    example_test.cpp
    example.cpp 	
  )

add_executable(example ${sources})
target_link_libraries(example gtest)
target_link_libraries(example pthread)

add_custom_command(TARGET example
                   POST_BUILD
                   COMMAND "make")

add_custom_command(TARGET example
                   POST_BUILD
#                  COMMAND valgrind --tool=memcheck --track-origins=yes --leak-check=full --show-leak-kinds=all ./example)
#		           COMMAND valgrind --tool=memcheck --leak-check=yes ./example)
                   COMMAND "example")

