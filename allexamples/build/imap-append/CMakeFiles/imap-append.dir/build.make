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
include imap-append/CMakeFiles/imap-append.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include imap-append/CMakeFiles/imap-append.dir/compiler_depend.make

# Include the progress variables for this target.
include imap-append/CMakeFiles/imap-append.dir/progress.make

# Include the compile flags for this target's objects.
include imap-append/CMakeFiles/imap-append.dir/flags.make

imap-append/CMakeFiles/imap-append.dir/imap-append.c.o: imap-append/CMakeFiles/imap-append.dir/flags.make
imap-append/CMakeFiles/imap-append.dir/imap-append.c.o: ../imap-append/imap-append.c
imap-append/CMakeFiles/imap-append.dir/imap-append.c.o: imap-append/CMakeFiles/imap-append.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object imap-append/CMakeFiles/imap-append.dir/imap-append.c.o"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-append && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT imap-append/CMakeFiles/imap-append.dir/imap-append.c.o -MF CMakeFiles/imap-append.dir/imap-append.c.o.d -o CMakeFiles/imap-append.dir/imap-append.c.o -c /home/ldg/CLionProjects/curlTest/allexamples/imap-append/imap-append.c

imap-append/CMakeFiles/imap-append.dir/imap-append.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/imap-append.dir/imap-append.c.i"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-append && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/imap-append/imap-append.c > CMakeFiles/imap-append.dir/imap-append.c.i

imap-append/CMakeFiles/imap-append.dir/imap-append.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/imap-append.dir/imap-append.c.s"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-append && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/imap-append/imap-append.c -o CMakeFiles/imap-append.dir/imap-append.c.s

# Object files for target imap-append
imap__append_OBJECTS = \
"CMakeFiles/imap-append.dir/imap-append.c.o"

# External object files for target imap-append
imap__append_EXTERNAL_OBJECTS =

imap-append/imap-append: imap-append/CMakeFiles/imap-append.dir/imap-append.c.o
imap-append/imap-append: imap-append/CMakeFiles/imap-append.dir/build.make
imap-append/imap-append: /usr/local/lib/libcurl.so
imap-append/imap-append: imap-append/CMakeFiles/imap-append.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable imap-append"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-append && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imap-append.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
imap-append/CMakeFiles/imap-append.dir/build: imap-append/imap-append
.PHONY : imap-append/CMakeFiles/imap-append.dir/build

imap-append/CMakeFiles/imap-append.dir/clean:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-append && $(CMAKE_COMMAND) -P CMakeFiles/imap-append.dir/cmake_clean.cmake
.PHONY : imap-append/CMakeFiles/imap-append.dir/clean

imap-append/CMakeFiles/imap-append.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/imap-append /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/imap-append /home/ldg/CLionProjects/curlTest/allexamples/build/imap-append/CMakeFiles/imap-append.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : imap-append/CMakeFiles/imap-append.dir/depend

