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
include url2file/CMakeFiles/url2file.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include url2file/CMakeFiles/url2file.dir/compiler_depend.make

# Include the progress variables for this target.
include url2file/CMakeFiles/url2file.dir/progress.make

# Include the compile flags for this target's objects.
include url2file/CMakeFiles/url2file.dir/flags.make

url2file/CMakeFiles/url2file.dir/url2file.c.o: url2file/CMakeFiles/url2file.dir/flags.make
url2file/CMakeFiles/url2file.dir/url2file.c.o: ../url2file/url2file.c
url2file/CMakeFiles/url2file.dir/url2file.c.o: url2file/CMakeFiles/url2file.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object url2file/CMakeFiles/url2file.dir/url2file.c.o"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/url2file && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT url2file/CMakeFiles/url2file.dir/url2file.c.o -MF CMakeFiles/url2file.dir/url2file.c.o.d -o CMakeFiles/url2file.dir/url2file.c.o -c /home/ldg/CLionProjects/curlTest/allexamples/url2file/url2file.c

url2file/CMakeFiles/url2file.dir/url2file.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/url2file.dir/url2file.c.i"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/url2file && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/url2file/url2file.c > CMakeFiles/url2file.dir/url2file.c.i

url2file/CMakeFiles/url2file.dir/url2file.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/url2file.dir/url2file.c.s"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/url2file && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/url2file/url2file.c -o CMakeFiles/url2file.dir/url2file.c.s

# Object files for target url2file
url2file_OBJECTS = \
"CMakeFiles/url2file.dir/url2file.c.o"

# External object files for target url2file
url2file_EXTERNAL_OBJECTS =

url2file/url2file: url2file/CMakeFiles/url2file.dir/url2file.c.o
url2file/url2file: url2file/CMakeFiles/url2file.dir/build.make
url2file/url2file: /usr/local/lib/libcurl.so
url2file/url2file: url2file/CMakeFiles/url2file.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable url2file"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/url2file && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/url2file.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
url2file/CMakeFiles/url2file.dir/build: url2file/url2file
.PHONY : url2file/CMakeFiles/url2file.dir/build

url2file/CMakeFiles/url2file.dir/clean:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/url2file && $(CMAKE_COMMAND) -P CMakeFiles/url2file.dir/cmake_clean.cmake
.PHONY : url2file/CMakeFiles/url2file.dir/clean

url2file/CMakeFiles/url2file.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/url2file /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/url2file /home/ldg/CLionProjects/curlTest/allexamples/build/url2file/CMakeFiles/url2file.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : url2file/CMakeFiles/url2file.dir/depend
