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
include sepheaders/CMakeFiles/sepheaders.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include sepheaders/CMakeFiles/sepheaders.dir/compiler_depend.make

# Include the progress variables for this target.
include sepheaders/CMakeFiles/sepheaders.dir/progress.make

# Include the compile flags for this target's objects.
include sepheaders/CMakeFiles/sepheaders.dir/flags.make

sepheaders/CMakeFiles/sepheaders.dir/sepheaders.c.o: sepheaders/CMakeFiles/sepheaders.dir/flags.make
sepheaders/CMakeFiles/sepheaders.dir/sepheaders.c.o: ../sepheaders/sepheaders.c
sepheaders/CMakeFiles/sepheaders.dir/sepheaders.c.o: sepheaders/CMakeFiles/sepheaders.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object sepheaders/CMakeFiles/sepheaders.dir/sepheaders.c.o"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/sepheaders && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT sepheaders/CMakeFiles/sepheaders.dir/sepheaders.c.o -MF CMakeFiles/sepheaders.dir/sepheaders.c.o.d -o CMakeFiles/sepheaders.dir/sepheaders.c.o -c /home/ldg/CLionProjects/curlTest/allexamples/sepheaders/sepheaders.c

sepheaders/CMakeFiles/sepheaders.dir/sepheaders.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sepheaders.dir/sepheaders.c.i"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/sepheaders && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/sepheaders/sepheaders.c > CMakeFiles/sepheaders.dir/sepheaders.c.i

sepheaders/CMakeFiles/sepheaders.dir/sepheaders.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sepheaders.dir/sepheaders.c.s"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/sepheaders && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/sepheaders/sepheaders.c -o CMakeFiles/sepheaders.dir/sepheaders.c.s

# Object files for target sepheaders
sepheaders_OBJECTS = \
"CMakeFiles/sepheaders.dir/sepheaders.c.o"

# External object files for target sepheaders
sepheaders_EXTERNAL_OBJECTS =

sepheaders/sepheaders: sepheaders/CMakeFiles/sepheaders.dir/sepheaders.c.o
sepheaders/sepheaders: sepheaders/CMakeFiles/sepheaders.dir/build.make
sepheaders/sepheaders: /usr/local/lib/libcurl.so
sepheaders/sepheaders: sepheaders/CMakeFiles/sepheaders.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable sepheaders"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/sepheaders && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sepheaders.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sepheaders/CMakeFiles/sepheaders.dir/build: sepheaders/sepheaders
.PHONY : sepheaders/CMakeFiles/sepheaders.dir/build

sepheaders/CMakeFiles/sepheaders.dir/clean:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/sepheaders && $(CMAKE_COMMAND) -P CMakeFiles/sepheaders.dir/cmake_clean.cmake
.PHONY : sepheaders/CMakeFiles/sepheaders.dir/clean

sepheaders/CMakeFiles/sepheaders.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/sepheaders /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/sepheaders /home/ldg/CLionProjects/curlTest/allexamples/build/sepheaders/CMakeFiles/sepheaders.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sepheaders/CMakeFiles/sepheaders.dir/depend
