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
include http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/compiler_depend.make

# Include the progress variables for this target.
include http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/progress.make

# Include the compile flags for this target's objects.
include http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/flags.make

http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/http2-pushinmemory.c.o: http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/flags.make
http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/http2-pushinmemory.c.o: ../http2-pushinmemory/http2-pushinmemory.c
http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/http2-pushinmemory.c.o: http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/http2-pushinmemory.c.o"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/http2-pushinmemory && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/http2-pushinmemory.c.o -MF CMakeFiles/http2-pushinmemory.dir/http2-pushinmemory.c.o.d -o CMakeFiles/http2-pushinmemory.dir/http2-pushinmemory.c.o -c /home/ldg/CLionProjects/curlTest/allexamples/http2-pushinmemory/http2-pushinmemory.c

http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/http2-pushinmemory.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/http2-pushinmemory.dir/http2-pushinmemory.c.i"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/http2-pushinmemory && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/http2-pushinmemory/http2-pushinmemory.c > CMakeFiles/http2-pushinmemory.dir/http2-pushinmemory.c.i

http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/http2-pushinmemory.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/http2-pushinmemory.dir/http2-pushinmemory.c.s"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/http2-pushinmemory && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/http2-pushinmemory/http2-pushinmemory.c -o CMakeFiles/http2-pushinmemory.dir/http2-pushinmemory.c.s

# Object files for target http2-pushinmemory
http2__pushinmemory_OBJECTS = \
"CMakeFiles/http2-pushinmemory.dir/http2-pushinmemory.c.o"

# External object files for target http2-pushinmemory
http2__pushinmemory_EXTERNAL_OBJECTS =

http2-pushinmemory/http2-pushinmemory: http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/http2-pushinmemory.c.o
http2-pushinmemory/http2-pushinmemory: http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/build.make
http2-pushinmemory/http2-pushinmemory: /usr/local/lib/libcurl.so
http2-pushinmemory/http2-pushinmemory: http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable http2-pushinmemory"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/http2-pushinmemory && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/http2-pushinmemory.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/build: http2-pushinmemory/http2-pushinmemory
.PHONY : http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/build

http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/clean:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/http2-pushinmemory && $(CMAKE_COMMAND) -P CMakeFiles/http2-pushinmemory.dir/cmake_clean.cmake
.PHONY : http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/clean

http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/http2-pushinmemory /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/http2-pushinmemory /home/ldg/CLionProjects/curlTest/allexamples/build/http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : http2-pushinmemory/CMakeFiles/http2-pushinmemory.dir/depend

