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
include persistent/CMakeFiles/persistent.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include persistent/CMakeFiles/persistent.dir/compiler_depend.make

# Include the progress variables for this target.
include persistent/CMakeFiles/persistent.dir/progress.make

# Include the compile flags for this target's objects.
include persistent/CMakeFiles/persistent.dir/flags.make

persistent/CMakeFiles/persistent.dir/persistent.c.o: persistent/CMakeFiles/persistent.dir/flags.make
persistent/CMakeFiles/persistent.dir/persistent.c.o: ../persistent/persistent.c
persistent/CMakeFiles/persistent.dir/persistent.c.o: persistent/CMakeFiles/persistent.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object persistent/CMakeFiles/persistent.dir/persistent.c.o"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/persistent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT persistent/CMakeFiles/persistent.dir/persistent.c.o -MF CMakeFiles/persistent.dir/persistent.c.o.d -o CMakeFiles/persistent.dir/persistent.c.o -c /home/ldg/CLionProjects/curlTest/allexamples/persistent/persistent.c

persistent/CMakeFiles/persistent.dir/persistent.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/persistent.dir/persistent.c.i"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/persistent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/persistent/persistent.c > CMakeFiles/persistent.dir/persistent.c.i

persistent/CMakeFiles/persistent.dir/persistent.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/persistent.dir/persistent.c.s"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/persistent && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/persistent/persistent.c -o CMakeFiles/persistent.dir/persistent.c.s

# Object files for target persistent
persistent_OBJECTS = \
"CMakeFiles/persistent.dir/persistent.c.o"

# External object files for target persistent
persistent_EXTERNAL_OBJECTS =

persistent/persistent: persistent/CMakeFiles/persistent.dir/persistent.c.o
persistent/persistent: persistent/CMakeFiles/persistent.dir/build.make
persistent/persistent: /usr/local/lib/libcurl.so
persistent/persistent: persistent/CMakeFiles/persistent.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable persistent"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/persistent && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/persistent.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
persistent/CMakeFiles/persistent.dir/build: persistent/persistent
.PHONY : persistent/CMakeFiles/persistent.dir/build

persistent/CMakeFiles/persistent.dir/clean:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/persistent && $(CMAKE_COMMAND) -P CMakeFiles/persistent.dir/cmake_clean.cmake
.PHONY : persistent/CMakeFiles/persistent.dir/clean

persistent/CMakeFiles/persistent.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/persistent /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/persistent /home/ldg/CLionProjects/curlTest/allexamples/build/persistent/CMakeFiles/persistent.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : persistent/CMakeFiles/persistent.dir/depend
