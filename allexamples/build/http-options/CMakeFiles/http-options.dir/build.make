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
include http-options/CMakeFiles/http-options.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include http-options/CMakeFiles/http-options.dir/compiler_depend.make

# Include the progress variables for this target.
include http-options/CMakeFiles/http-options.dir/progress.make

# Include the compile flags for this target's objects.
include http-options/CMakeFiles/http-options.dir/flags.make

http-options/CMakeFiles/http-options.dir/http-options.c.o: http-options/CMakeFiles/http-options.dir/flags.make
http-options/CMakeFiles/http-options.dir/http-options.c.o: ../http-options/http-options.c
http-options/CMakeFiles/http-options.dir/http-options.c.o: http-options/CMakeFiles/http-options.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object http-options/CMakeFiles/http-options.dir/http-options.c.o"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/http-options && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT http-options/CMakeFiles/http-options.dir/http-options.c.o -MF CMakeFiles/http-options.dir/http-options.c.o.d -o CMakeFiles/http-options.dir/http-options.c.o -c /home/ldg/CLionProjects/curlTest/allexamples/http-options/http-options.c

http-options/CMakeFiles/http-options.dir/http-options.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http-options.dir/http-options.c.i"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/http-options && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/http-options/http-options.c > CMakeFiles/http-options.dir/http-options.c.i

http-options/CMakeFiles/http-options.dir/http-options.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http-options.dir/http-options.c.s"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/http-options && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/http-options/http-options.c -o CMakeFiles/http-options.dir/http-options.c.s

# Object files for target http-options
http__options_OBJECTS = \
"CMakeFiles/http-options.dir/http-options.c.o"

# External object files for target http-options
http__options_EXTERNAL_OBJECTS =

http-options/http-options: http-options/CMakeFiles/http-options.dir/http-options.c.o
http-options/http-options: http-options/CMakeFiles/http-options.dir/build.make
http-options/http-options: /usr/local/lib/libcurl.so
http-options/http-options: http-options/CMakeFiles/http-options.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable http-options"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/http-options && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/http-options.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
http-options/CMakeFiles/http-options.dir/build: http-options/http-options
.PHONY : http-options/CMakeFiles/http-options.dir/build

http-options/CMakeFiles/http-options.dir/clean:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/http-options && $(CMAKE_COMMAND) -P CMakeFiles/http-options.dir/cmake_clean.cmake
.PHONY : http-options/CMakeFiles/http-options.dir/clean

http-options/CMakeFiles/http-options.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/http-options /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/http-options /home/ldg/CLionProjects/curlTest/allexamples/build/http-options/CMakeFiles/http-options.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : http-options/CMakeFiles/http-options.dir/depend

