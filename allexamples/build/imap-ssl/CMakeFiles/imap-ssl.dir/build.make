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
include imap-ssl/CMakeFiles/imap-ssl.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include imap-ssl/CMakeFiles/imap-ssl.dir/compiler_depend.make

# Include the progress variables for this target.
include imap-ssl/CMakeFiles/imap-ssl.dir/progress.make

# Include the compile flags for this target's objects.
include imap-ssl/CMakeFiles/imap-ssl.dir/flags.make

imap-ssl/CMakeFiles/imap-ssl.dir/imap-ssl.c.o: imap-ssl/CMakeFiles/imap-ssl.dir/flags.make
imap-ssl/CMakeFiles/imap-ssl.dir/imap-ssl.c.o: ../imap-ssl/imap-ssl.c
imap-ssl/CMakeFiles/imap-ssl.dir/imap-ssl.c.o: imap-ssl/CMakeFiles/imap-ssl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object imap-ssl/CMakeFiles/imap-ssl.dir/imap-ssl.c.o"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-ssl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT imap-ssl/CMakeFiles/imap-ssl.dir/imap-ssl.c.o -MF CMakeFiles/imap-ssl.dir/imap-ssl.c.o.d -o CMakeFiles/imap-ssl.dir/imap-ssl.c.o -c /home/ldg/CLionProjects/curlTest/allexamples/imap-ssl/imap-ssl.c

imap-ssl/CMakeFiles/imap-ssl.dir/imap-ssl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/imap-ssl.dir/imap-ssl.c.i"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-ssl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/imap-ssl/imap-ssl.c > CMakeFiles/imap-ssl.dir/imap-ssl.c.i

imap-ssl/CMakeFiles/imap-ssl.dir/imap-ssl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/imap-ssl.dir/imap-ssl.c.s"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-ssl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/imap-ssl/imap-ssl.c -o CMakeFiles/imap-ssl.dir/imap-ssl.c.s

# Object files for target imap-ssl
imap__ssl_OBJECTS = \
"CMakeFiles/imap-ssl.dir/imap-ssl.c.o"

# External object files for target imap-ssl
imap__ssl_EXTERNAL_OBJECTS =

imap-ssl/imap-ssl: imap-ssl/CMakeFiles/imap-ssl.dir/imap-ssl.c.o
imap-ssl/imap-ssl: imap-ssl/CMakeFiles/imap-ssl.dir/build.make
imap-ssl/imap-ssl: /usr/local/lib/libcurl.so
imap-ssl/imap-ssl: imap-ssl/CMakeFiles/imap-ssl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable imap-ssl"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-ssl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imap-ssl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
imap-ssl/CMakeFiles/imap-ssl.dir/build: imap-ssl/imap-ssl
.PHONY : imap-ssl/CMakeFiles/imap-ssl.dir/build

imap-ssl/CMakeFiles/imap-ssl.dir/clean:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-ssl && $(CMAKE_COMMAND) -P CMakeFiles/imap-ssl.dir/cmake_clean.cmake
.PHONY : imap-ssl/CMakeFiles/imap-ssl.dir/clean

imap-ssl/CMakeFiles/imap-ssl.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/imap-ssl /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/imap-ssl /home/ldg/CLionProjects/curlTest/allexamples/build/imap-ssl/CMakeFiles/imap-ssl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : imap-ssl/CMakeFiles/imap-ssl.dir/depend
