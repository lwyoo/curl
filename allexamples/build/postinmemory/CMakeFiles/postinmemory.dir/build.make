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
include postinmemory/CMakeFiles/postinmemory.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include postinmemory/CMakeFiles/postinmemory.dir/compiler_depend.make

# Include the progress variables for this target.
include postinmemory/CMakeFiles/postinmemory.dir/progress.make

# Include the compile flags for this target's objects.
include postinmemory/CMakeFiles/postinmemory.dir/flags.make

postinmemory/CMakeFiles/postinmemory.dir/postinmemory.c.o: postinmemory/CMakeFiles/postinmemory.dir/flags.make
postinmemory/CMakeFiles/postinmemory.dir/postinmemory.c.o: ../postinmemory/postinmemory.c
postinmemory/CMakeFiles/postinmemory.dir/postinmemory.c.o: postinmemory/CMakeFiles/postinmemory.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object postinmemory/CMakeFiles/postinmemory.dir/postinmemory.c.o"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/postinmemory && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT postinmemory/CMakeFiles/postinmemory.dir/postinmemory.c.o -MF CMakeFiles/postinmemory.dir/postinmemory.c.o.d -o CMakeFiles/postinmemory.dir/postinmemory.c.o -c /home/ldg/CLionProjects/curlTest/allexamples/postinmemory/postinmemory.c

postinmemory/CMakeFiles/postinmemory.dir/postinmemory.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/postinmemory.dir/postinmemory.c.i"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/postinmemory && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/postinmemory/postinmemory.c > CMakeFiles/postinmemory.dir/postinmemory.c.i

postinmemory/CMakeFiles/postinmemory.dir/postinmemory.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/postinmemory.dir/postinmemory.c.s"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/postinmemory && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/postinmemory/postinmemory.c -o CMakeFiles/postinmemory.dir/postinmemory.c.s

# Object files for target postinmemory
postinmemory_OBJECTS = \
"CMakeFiles/postinmemory.dir/postinmemory.c.o"

# External object files for target postinmemory
postinmemory_EXTERNAL_OBJECTS =

postinmemory/postinmemory: postinmemory/CMakeFiles/postinmemory.dir/postinmemory.c.o
postinmemory/postinmemory: postinmemory/CMakeFiles/postinmemory.dir/build.make
postinmemory/postinmemory: /usr/local/lib/libcurl.so
postinmemory/postinmemory: postinmemory/CMakeFiles/postinmemory.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable postinmemory"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/postinmemory && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/postinmemory.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
postinmemory/CMakeFiles/postinmemory.dir/build: postinmemory/postinmemory
.PHONY : postinmemory/CMakeFiles/postinmemory.dir/build

postinmemory/CMakeFiles/postinmemory.dir/clean:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/postinmemory && $(CMAKE_COMMAND) -P CMakeFiles/postinmemory.dir/cmake_clean.cmake
.PHONY : postinmemory/CMakeFiles/postinmemory.dir/clean

postinmemory/CMakeFiles/postinmemory.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/postinmemory /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/postinmemory /home/ldg/CLionProjects/curlTest/allexamples/build/postinmemory/CMakeFiles/postinmemory.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : postinmemory/CMakeFiles/postinmemory.dir/depend

