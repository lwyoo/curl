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
include chkspeed/CMakeFiles/chkspeed.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include chkspeed/CMakeFiles/chkspeed.dir/compiler_depend.make

# Include the progress variables for this target.
include chkspeed/CMakeFiles/chkspeed.dir/progress.make

# Include the compile flags for this target's objects.
include chkspeed/CMakeFiles/chkspeed.dir/flags.make

chkspeed/CMakeFiles/chkspeed.dir/chkspeed.c.o: chkspeed/CMakeFiles/chkspeed.dir/flags.make
chkspeed/CMakeFiles/chkspeed.dir/chkspeed.c.o: ../chkspeed/chkspeed.c
chkspeed/CMakeFiles/chkspeed.dir/chkspeed.c.o: chkspeed/CMakeFiles/chkspeed.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object chkspeed/CMakeFiles/chkspeed.dir/chkspeed.c.o"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/chkspeed && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT chkspeed/CMakeFiles/chkspeed.dir/chkspeed.c.o -MF CMakeFiles/chkspeed.dir/chkspeed.c.o.d -o CMakeFiles/chkspeed.dir/chkspeed.c.o -c /home/ldg/CLionProjects/curlTest/allexamples/chkspeed/chkspeed.c

chkspeed/CMakeFiles/chkspeed.dir/chkspeed.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/chkspeed.dir/chkspeed.c.i"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/chkspeed && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/chkspeed/chkspeed.c > CMakeFiles/chkspeed.dir/chkspeed.c.i

chkspeed/CMakeFiles/chkspeed.dir/chkspeed.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/chkspeed.dir/chkspeed.c.s"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/chkspeed && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/chkspeed/chkspeed.c -o CMakeFiles/chkspeed.dir/chkspeed.c.s

# Object files for target chkspeed
chkspeed_OBJECTS = \
"CMakeFiles/chkspeed.dir/chkspeed.c.o"

# External object files for target chkspeed
chkspeed_EXTERNAL_OBJECTS =

chkspeed/chkspeed: chkspeed/CMakeFiles/chkspeed.dir/chkspeed.c.o
chkspeed/chkspeed: chkspeed/CMakeFiles/chkspeed.dir/build.make
chkspeed/chkspeed: /usr/local/lib/libcurl.so
chkspeed/chkspeed: chkspeed/CMakeFiles/chkspeed.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable chkspeed"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/chkspeed && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chkspeed.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
chkspeed/CMakeFiles/chkspeed.dir/build: chkspeed/chkspeed
.PHONY : chkspeed/CMakeFiles/chkspeed.dir/build

chkspeed/CMakeFiles/chkspeed.dir/clean:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/chkspeed && $(CMAKE_COMMAND) -P CMakeFiles/chkspeed.dir/cmake_clean.cmake
.PHONY : chkspeed/CMakeFiles/chkspeed.dir/clean

chkspeed/CMakeFiles/chkspeed.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/chkspeed /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/chkspeed /home/ldg/CLionProjects/curlTest/allexamples/build/chkspeed/CMakeFiles/chkspeed.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : chkspeed/CMakeFiles/chkspeed.dir/depend

