# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /mnt/sdb/home/donghaosen/apps/cmake-3.25.1-linux-x86_64/bin/cmake

# The command to remove a file.
RM = /mnt/sdb/home/donghaosen/apps/cmake-3.25.1-linux-x86_64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/donghaosen/donghaosen/ops2023/aitisa_api

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/donghaosen/donghaosen/ops2023/aitisa_api/build

# Include any dependencies generated for this target.
include test/CMakeFiles/tensor_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/tensor_test.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/tensor_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/tensor_test.dir/flags.make

test/CMakeFiles/tensor_test.dir/tensor_test.cpp.o: test/CMakeFiles/tensor_test.dir/flags.make
test/CMakeFiles/tensor_test.dir/tensor_test.cpp.o: /home/donghaosen/donghaosen/ops2023/aitisa_api/test/tensor_test.cpp
test/CMakeFiles/tensor_test.dir/tensor_test.cpp.o: test/CMakeFiles/tensor_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/donghaosen/donghaosen/ops2023/aitisa_api/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/tensor_test.dir/tensor_test.cpp.o"
	cd /home/donghaosen/donghaosen/ops2023/aitisa_api/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/tensor_test.dir/tensor_test.cpp.o -MF CMakeFiles/tensor_test.dir/tensor_test.cpp.o.d -o CMakeFiles/tensor_test.dir/tensor_test.cpp.o -c /home/donghaosen/donghaosen/ops2023/aitisa_api/test/tensor_test.cpp

test/CMakeFiles/tensor_test.dir/tensor_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tensor_test.dir/tensor_test.cpp.i"
	cd /home/donghaosen/donghaosen/ops2023/aitisa_api/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/donghaosen/donghaosen/ops2023/aitisa_api/test/tensor_test.cpp > CMakeFiles/tensor_test.dir/tensor_test.cpp.i

test/CMakeFiles/tensor_test.dir/tensor_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tensor_test.dir/tensor_test.cpp.s"
	cd /home/donghaosen/donghaosen/ops2023/aitisa_api/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/donghaosen/donghaosen/ops2023/aitisa_api/test/tensor_test.cpp -o CMakeFiles/tensor_test.dir/tensor_test.cpp.s

# Object files for target tensor_test
tensor_test_OBJECTS = \
"CMakeFiles/tensor_test.dir/tensor_test.cpp.o"

# External object files for target tensor_test
tensor_test_EXTERNAL_OBJECTS =

bin/tensor_test: test/CMakeFiles/tensor_test.dir/tensor_test.cpp.o
bin/tensor_test: test/CMakeFiles/tensor_test.dir/build.make
bin/tensor_test: lib64/libgmock_maind.so
bin/tensor_test: lib64/libaitisa_api.so.0
bin/tensor_test: lib64/libgmockd.so
bin/tensor_test: lib64/libgtestd.so
bin/tensor_test: test/CMakeFiles/tensor_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/donghaosen/donghaosen/ops2023/aitisa_api/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/tensor_test"
	cd /home/donghaosen/donghaosen/ops2023/aitisa_api/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tensor_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/tensor_test.dir/build: bin/tensor_test
.PHONY : test/CMakeFiles/tensor_test.dir/build

test/CMakeFiles/tensor_test.dir/clean:
	cd /home/donghaosen/donghaosen/ops2023/aitisa_api/build/test && $(CMAKE_COMMAND) -P CMakeFiles/tensor_test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/tensor_test.dir/clean

test/CMakeFiles/tensor_test.dir/depend:
	cd /home/donghaosen/donghaosen/ops2023/aitisa_api/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/donghaosen/donghaosen/ops2023/aitisa_api /home/donghaosen/donghaosen/ops2023/aitisa_api/test /home/donghaosen/donghaosen/ops2023/aitisa_api/build /home/donghaosen/donghaosen/ops2023/aitisa_api/build/test /home/donghaosen/donghaosen/ops2023/aitisa_api/build/test/CMakeFiles/tensor_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/tensor_test.dir/depend

