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
include urlapi/CMakeFiles/urlapi.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include urlapi/CMakeFiles/urlapi.dir/compiler_depend.make

# Include the progress variables for this target.
include urlapi/CMakeFiles/urlapi.dir/progress.make

# Include the compile flags for this target's objects.
include urlapi/CMakeFiles/urlapi.dir/flags.make

urlapi/CMakeFiles/urlapi.dir/urlapi.c.o: urlapi/CMakeFiles/urlapi.dir/flags.make
urlapi/CMakeFiles/urlapi.dir/urlapi.c.o: ../urlapi/urlapi.c
urlapi/CMakeFiles/urlapi.dir/urlapi.c.o: urlapi/CMakeFiles/urlapi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object urlapi/CMakeFiles/urlapi.dir/urlapi.c.o"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/urlapi && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT urlapi/CMakeFiles/urlapi.dir/urlapi.c.o -MF CMakeFiles/urlapi.dir/urlapi.c.o.d -o CMakeFiles/urlapi.dir/urlapi.c.o -c /home/ldg/CLionProjects/curlTest/allexamples/urlapi/urlapi.c

urlapi/CMakeFiles/urlapi.dir/urlapi.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/urlapi.dir/urlapi.c.i"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/urlapi && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/urlapi/urlapi.c > CMakeFiles/urlapi.dir/urlapi.c.i

urlapi/CMakeFiles/urlapi.dir/urlapi.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/urlapi.dir/urlapi.c.s"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/urlapi && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/urlapi/urlapi.c -o CMakeFiles/urlapi.dir/urlapi.c.s

# Object files for target urlapi
urlapi_OBJECTS = \
"CMakeFiles/urlapi.dir/urlapi.c.o"

# External object files for target urlapi
urlapi_EXTERNAL_OBJECTS =

urlapi/urlapi: urlapi/CMakeFiles/urlapi.dir/urlapi.c.o
urlapi/urlapi: urlapi/CMakeFiles/urlapi.dir/build.make
urlapi/urlapi: /usr/local/lib/libcurl.so
urlapi/urlapi: urlapi/CMakeFiles/urlapi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable urlapi"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/urlapi && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/urlapi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
urlapi/CMakeFiles/urlapi.dir/build: urlapi/urlapi
.PHONY : urlapi/CMakeFiles/urlapi.dir/build

urlapi/CMakeFiles/urlapi.dir/clean:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/urlapi && $(CMAKE_COMMAND) -P CMakeFiles/urlapi.dir/cmake_clean.cmake
.PHONY : urlapi/CMakeFiles/urlapi.dir/clean

urlapi/CMakeFiles/urlapi.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/urlapi /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/urlapi /home/ldg/CLionProjects/curlTest/allexamples/build/urlapi/CMakeFiles/urlapi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : urlapi/CMakeFiles/urlapi.dir/depend
