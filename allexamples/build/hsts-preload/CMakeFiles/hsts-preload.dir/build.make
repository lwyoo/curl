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
include hsts-preload/CMakeFiles/hsts-preload.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include hsts-preload/CMakeFiles/hsts-preload.dir/compiler_depend.make

# Include the progress variables for this target.
include hsts-preload/CMakeFiles/hsts-preload.dir/progress.make

# Include the compile flags for this target's objects.
include hsts-preload/CMakeFiles/hsts-preload.dir/flags.make

hsts-preload/CMakeFiles/hsts-preload.dir/hsts-preload.c.o: hsts-preload/CMakeFiles/hsts-preload.dir/flags.make
hsts-preload/CMakeFiles/hsts-preload.dir/hsts-preload.c.o: ../hsts-preload/hsts-preload.c
hsts-preload/CMakeFiles/hsts-preload.dir/hsts-preload.c.o: hsts-preload/CMakeFiles/hsts-preload.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object hsts-preload/CMakeFiles/hsts-preload.dir/hsts-preload.c.o"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/hsts-preload && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT hsts-preload/CMakeFiles/hsts-preload.dir/hsts-preload.c.o -MF CMakeFiles/hsts-preload.dir/hsts-preload.c.o.d -o CMakeFiles/hsts-preload.dir/hsts-preload.c.o -c /home/ldg/CLionProjects/curlTest/allexamples/hsts-preload/hsts-preload.c

hsts-preload/CMakeFiles/hsts-preload.dir/hsts-preload.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hsts-preload.dir/hsts-preload.c.i"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/hsts-preload && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/hsts-preload/hsts-preload.c > CMakeFiles/hsts-preload.dir/hsts-preload.c.i

hsts-preload/CMakeFiles/hsts-preload.dir/hsts-preload.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hsts-preload.dir/hsts-preload.c.s"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/hsts-preload && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/hsts-preload/hsts-preload.c -o CMakeFiles/hsts-preload.dir/hsts-preload.c.s

# Object files for target hsts-preload
hsts__preload_OBJECTS = \
"CMakeFiles/hsts-preload.dir/hsts-preload.c.o"

# External object files for target hsts-preload
hsts__preload_EXTERNAL_OBJECTS =

hsts-preload/hsts-preload: hsts-preload/CMakeFiles/hsts-preload.dir/hsts-preload.c.o
hsts-preload/hsts-preload: hsts-preload/CMakeFiles/hsts-preload.dir/build.make
hsts-preload/hsts-preload: /usr/local/lib/libcurl.so
hsts-preload/hsts-preload: hsts-preload/CMakeFiles/hsts-preload.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable hsts-preload"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/hsts-preload && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hsts-preload.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
hsts-preload/CMakeFiles/hsts-preload.dir/build: hsts-preload/hsts-preload
.PHONY : hsts-preload/CMakeFiles/hsts-preload.dir/build

hsts-preload/CMakeFiles/hsts-preload.dir/clean:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/hsts-preload && $(CMAKE_COMMAND) -P CMakeFiles/hsts-preload.dir/cmake_clean.cmake
.PHONY : hsts-preload/CMakeFiles/hsts-preload.dir/clean

hsts-preload/CMakeFiles/hsts-preload.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/hsts-preload /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/hsts-preload /home/ldg/CLionProjects/curlTest/allexamples/build/hsts-preload/CMakeFiles/hsts-preload.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : hsts-preload/CMakeFiles/hsts-preload.dir/depend

