# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ldg/CLionProjects/curlTest/allexamples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ldg/CLionProjects/curlTest/allexamples/build

# Include any dependencies generated for this target.
include websocket/CMakeFiles/websocket.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include websocket/CMakeFiles/websocket.dir/compiler_depend.make

# Include the progress variables for this target.
include websocket/CMakeFiles/websocket.dir/progress.make

# Include the compile flags for this target's objects.
include websocket/CMakeFiles/websocket.dir/flags.make

websocket/CMakeFiles/websocket.dir/websocket.c.o: websocket/CMakeFiles/websocket.dir/flags.make
websocket/CMakeFiles/websocket.dir/websocket.c.o: ../websocket/websocket.c
websocket/CMakeFiles/websocket.dir/websocket.c.o: websocket/CMakeFiles/websocket.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object websocket/CMakeFiles/websocket.dir/websocket.c.o"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/websocket && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT websocket/CMakeFiles/websocket.dir/websocket.c.o -MF CMakeFiles/websocket.dir/websocket.c.o.d -o CMakeFiles/websocket.dir/websocket.c.o -c /home/ldg/CLionProjects/curlTest/allexamples/websocket/websocket.c

websocket/CMakeFiles/websocket.dir/websocket.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/websocket.dir/websocket.c.i"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/websocket && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/websocket/websocket.c > CMakeFiles/websocket.dir/websocket.c.i

websocket/CMakeFiles/websocket.dir/websocket.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/websocket.dir/websocket.c.s"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/websocket && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/websocket/websocket.c -o CMakeFiles/websocket.dir/websocket.c.s

# Object files for target websocket
websocket_OBJECTS = \
"CMakeFiles/websocket.dir/websocket.c.o"

# External object files for target websocket
websocket_EXTERNAL_OBJECTS =

websocket/websocket: websocket/CMakeFiles/websocket.dir/websocket.c.o
websocket/websocket: websocket/CMakeFiles/websocket.dir/build.make
websocket/websocket: /usr/local/lib/libcurl.so
websocket/websocket: websocket/CMakeFiles/websocket.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable websocket"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/websocket && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/websocket.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
websocket/CMakeFiles/websocket.dir/build: websocket/websocket
.PHONY : websocket/CMakeFiles/websocket.dir/build

websocket/CMakeFiles/websocket.dir/clean:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/websocket && $(CMAKE_COMMAND) -P CMakeFiles/websocket.dir/cmake_clean.cmake
.PHONY : websocket/CMakeFiles/websocket.dir/clean

websocket/CMakeFiles/websocket.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/websocket /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/websocket /home/ldg/CLionProjects/curlTest/allexamples/build/websocket/CMakeFiles/websocket.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : websocket/CMakeFiles/websocket.dir/depend
