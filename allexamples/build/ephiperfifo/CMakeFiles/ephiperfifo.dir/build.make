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
include ephiperfifo/CMakeFiles/ephiperfifo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include ephiperfifo/CMakeFiles/ephiperfifo.dir/compiler_depend.make

# Include the progress variables for this target.
include ephiperfifo/CMakeFiles/ephiperfifo.dir/progress.make

# Include the compile flags for this target's objects.
include ephiperfifo/CMakeFiles/ephiperfifo.dir/flags.make

ephiperfifo/CMakeFiles/ephiperfifo.dir/ephiperfifo.c.o: ephiperfifo/CMakeFiles/ephiperfifo.dir/flags.make
ephiperfifo/CMakeFiles/ephiperfifo.dir/ephiperfifo.c.o: ../ephiperfifo/ephiperfifo.c
ephiperfifo/CMakeFiles/ephiperfifo.dir/ephiperfifo.c.o: ephiperfifo/CMakeFiles/ephiperfifo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object ephiperfifo/CMakeFiles/ephiperfifo.dir/ephiperfifo.c.o"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/ephiperfifo && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT ephiperfifo/CMakeFiles/ephiperfifo.dir/ephiperfifo.c.o -MF CMakeFiles/ephiperfifo.dir/ephiperfifo.c.o.d -o CMakeFiles/ephiperfifo.dir/ephiperfifo.c.o -c /home/ldg/CLionProjects/curlTest/allexamples/ephiperfifo/ephiperfifo.c

ephiperfifo/CMakeFiles/ephiperfifo.dir/ephiperfifo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ephiperfifo.dir/ephiperfifo.c.i"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/ephiperfifo && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/ephiperfifo/ephiperfifo.c > CMakeFiles/ephiperfifo.dir/ephiperfifo.c.i

ephiperfifo/CMakeFiles/ephiperfifo.dir/ephiperfifo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ephiperfifo.dir/ephiperfifo.c.s"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/ephiperfifo && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/ephiperfifo/ephiperfifo.c -o CMakeFiles/ephiperfifo.dir/ephiperfifo.c.s

# Object files for target ephiperfifo
ephiperfifo_OBJECTS = \
"CMakeFiles/ephiperfifo.dir/ephiperfifo.c.o"

# External object files for target ephiperfifo
ephiperfifo_EXTERNAL_OBJECTS =

ephiperfifo/ephiperfifo: ephiperfifo/CMakeFiles/ephiperfifo.dir/ephiperfifo.c.o
ephiperfifo/ephiperfifo: ephiperfifo/CMakeFiles/ephiperfifo.dir/build.make
ephiperfifo/ephiperfifo: /usr/local/lib/libcurl.so
ephiperfifo/ephiperfifo: ephiperfifo/CMakeFiles/ephiperfifo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ephiperfifo"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/ephiperfifo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ephiperfifo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ephiperfifo/CMakeFiles/ephiperfifo.dir/build: ephiperfifo/ephiperfifo
.PHONY : ephiperfifo/CMakeFiles/ephiperfifo.dir/build

ephiperfifo/CMakeFiles/ephiperfifo.dir/clean:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/ephiperfifo && $(CMAKE_COMMAND) -P CMakeFiles/ephiperfifo.dir/cmake_clean.cmake
.PHONY : ephiperfifo/CMakeFiles/ephiperfifo.dir/clean

ephiperfifo/CMakeFiles/ephiperfifo.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/ephiperfifo /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/ephiperfifo /home/ldg/CLionProjects/curlTest/allexamples/build/ephiperfifo/CMakeFiles/ephiperfifo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ephiperfifo/CMakeFiles/ephiperfifo.dir/depend

