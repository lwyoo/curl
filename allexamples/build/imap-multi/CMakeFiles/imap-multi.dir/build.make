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
include imap-multi/CMakeFiles/imap-multi.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include imap-multi/CMakeFiles/imap-multi.dir/compiler_depend.make

# Include the progress variables for this target.
include imap-multi/CMakeFiles/imap-multi.dir/progress.make

# Include the compile flags for this target's objects.
include imap-multi/CMakeFiles/imap-multi.dir/flags.make

imap-multi/CMakeFiles/imap-multi.dir/imap-multi.c.o: imap-multi/CMakeFiles/imap-multi.dir/flags.make
imap-multi/CMakeFiles/imap-multi.dir/imap-multi.c.o: ../imap-multi/imap-multi.c
imap-multi/CMakeFiles/imap-multi.dir/imap-multi.c.o: imap-multi/CMakeFiles/imap-multi.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object imap-multi/CMakeFiles/imap-multi.dir/imap-multi.c.o"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-multi && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT imap-multi/CMakeFiles/imap-multi.dir/imap-multi.c.o -MF CMakeFiles/imap-multi.dir/imap-multi.c.o.d -o CMakeFiles/imap-multi.dir/imap-multi.c.o -c /home/ldg/CLionProjects/curlTest/allexamples/imap-multi/imap-multi.c

imap-multi/CMakeFiles/imap-multi.dir/imap-multi.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/imap-multi.dir/imap-multi.c.i"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-multi && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/imap-multi/imap-multi.c > CMakeFiles/imap-multi.dir/imap-multi.c.i

imap-multi/CMakeFiles/imap-multi.dir/imap-multi.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/imap-multi.dir/imap-multi.c.s"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-multi && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/imap-multi/imap-multi.c -o CMakeFiles/imap-multi.dir/imap-multi.c.s

# Object files for target imap-multi
imap__multi_OBJECTS = \
"CMakeFiles/imap-multi.dir/imap-multi.c.o"

# External object files for target imap-multi
imap__multi_EXTERNAL_OBJECTS =

imap-multi/imap-multi: imap-multi/CMakeFiles/imap-multi.dir/imap-multi.c.o
imap-multi/imap-multi: imap-multi/CMakeFiles/imap-multi.dir/build.make
imap-multi/imap-multi: /usr/local/lib/libcurl.so
imap-multi/imap-multi: imap-multi/CMakeFiles/imap-multi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable imap-multi"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-multi && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imap-multi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
imap-multi/CMakeFiles/imap-multi.dir/build: imap-multi/imap-multi
.PHONY : imap-multi/CMakeFiles/imap-multi.dir/build

imap-multi/CMakeFiles/imap-multi.dir/clean:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-multi && $(CMAKE_COMMAND) -P CMakeFiles/imap-multi.dir/cmake_clean.cmake
.PHONY : imap-multi/CMakeFiles/imap-multi.dir/clean

imap-multi/CMakeFiles/imap-multi.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/imap-multi /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/imap-multi /home/ldg/CLionProjects/curlTest/allexamples/build/imap-multi/CMakeFiles/imap-multi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : imap-multi/CMakeFiles/imap-multi.dir/depend

