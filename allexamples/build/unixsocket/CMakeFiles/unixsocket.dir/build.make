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
include unixsocket/CMakeFiles/unixsocket.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include unixsocket/CMakeFiles/unixsocket.dir/compiler_depend.make

# Include the progress variables for this target.
include unixsocket/CMakeFiles/unixsocket.dir/progress.make

# Include the compile flags for this target's objects.
include unixsocket/CMakeFiles/unixsocket.dir/flags.make

unixsocket/CMakeFiles/unixsocket.dir/unixsocket.c.o: unixsocket/CMakeFiles/unixsocket.dir/flags.make
unixsocket/CMakeFiles/unixsocket.dir/unixsocket.c.o: ../unixsocket/unixsocket.c
unixsocket/CMakeFiles/unixsocket.dir/unixsocket.c.o: unixsocket/CMakeFiles/unixsocket.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object unixsocket/CMakeFiles/unixsocket.dir/unixsocket.c.o"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/unixsocket && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT unixsocket/CMakeFiles/unixsocket.dir/unixsocket.c.o -MF CMakeFiles/unixsocket.dir/unixsocket.c.o.d -o CMakeFiles/unixsocket.dir/unixsocket.c.o -c /home/ldg/CLionProjects/curlTest/allexamples/unixsocket/unixsocket.c

unixsocket/CMakeFiles/unixsocket.dir/unixsocket.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/unixsocket.dir/unixsocket.c.i"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/unixsocket && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/unixsocket/unixsocket.c > CMakeFiles/unixsocket.dir/unixsocket.c.i

unixsocket/CMakeFiles/unixsocket.dir/unixsocket.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/unixsocket.dir/unixsocket.c.s"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/unixsocket && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/unixsocket/unixsocket.c -o CMakeFiles/unixsocket.dir/unixsocket.c.s

# Object files for target unixsocket
unixsocket_OBJECTS = \
"CMakeFiles/unixsocket.dir/unixsocket.c.o"

# External object files for target unixsocket
unixsocket_EXTERNAL_OBJECTS =

unixsocket/unixsocket: unixsocket/CMakeFiles/unixsocket.dir/unixsocket.c.o
unixsocket/unixsocket: unixsocket/CMakeFiles/unixsocket.dir/build.make
unixsocket/unixsocket: /usr/local/lib/libcurl.so
unixsocket/unixsocket: unixsocket/CMakeFiles/unixsocket.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable unixsocket"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/unixsocket && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/unixsocket.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unixsocket/CMakeFiles/unixsocket.dir/build: unixsocket/unixsocket
.PHONY : unixsocket/CMakeFiles/unixsocket.dir/build

unixsocket/CMakeFiles/unixsocket.dir/clean:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/unixsocket && $(CMAKE_COMMAND) -P CMakeFiles/unixsocket.dir/cmake_clean.cmake
.PHONY : unixsocket/CMakeFiles/unixsocket.dir/clean

unixsocket/CMakeFiles/unixsocket.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/unixsocket /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/unixsocket /home/ldg/CLionProjects/curlTest/allexamples/build/unixsocket/CMakeFiles/unixsocket.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unixsocket/CMakeFiles/unixsocket.dir/depend
