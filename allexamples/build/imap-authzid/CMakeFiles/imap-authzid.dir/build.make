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
include imap-authzid/CMakeFiles/imap-authzid.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include imap-authzid/CMakeFiles/imap-authzid.dir/compiler_depend.make

# Include the progress variables for this target.
include imap-authzid/CMakeFiles/imap-authzid.dir/progress.make

# Include the compile flags for this target's objects.
include imap-authzid/CMakeFiles/imap-authzid.dir/flags.make

imap-authzid/CMakeFiles/imap-authzid.dir/imap-authzid.c.o: imap-authzid/CMakeFiles/imap-authzid.dir/flags.make
imap-authzid/CMakeFiles/imap-authzid.dir/imap-authzid.c.o: ../imap-authzid/imap-authzid.c
imap-authzid/CMakeFiles/imap-authzid.dir/imap-authzid.c.o: imap-authzid/CMakeFiles/imap-authzid.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object imap-authzid/CMakeFiles/imap-authzid.dir/imap-authzid.c.o"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-authzid && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT imap-authzid/CMakeFiles/imap-authzid.dir/imap-authzid.c.o -MF CMakeFiles/imap-authzid.dir/imap-authzid.c.o.d -o CMakeFiles/imap-authzid.dir/imap-authzid.c.o -c /home/ldg/CLionProjects/curlTest/allexamples/imap-authzid/imap-authzid.c

imap-authzid/CMakeFiles/imap-authzid.dir/imap-authzid.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/imap-authzid.dir/imap-authzid.c.i"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-authzid && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/imap-authzid/imap-authzid.c > CMakeFiles/imap-authzid.dir/imap-authzid.c.i

imap-authzid/CMakeFiles/imap-authzid.dir/imap-authzid.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/imap-authzid.dir/imap-authzid.c.s"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-authzid && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/imap-authzid/imap-authzid.c -o CMakeFiles/imap-authzid.dir/imap-authzid.c.s

# Object files for target imap-authzid
imap__authzid_OBJECTS = \
"CMakeFiles/imap-authzid.dir/imap-authzid.c.o"

# External object files for target imap-authzid
imap__authzid_EXTERNAL_OBJECTS =

imap-authzid/imap-authzid: imap-authzid/CMakeFiles/imap-authzid.dir/imap-authzid.c.o
imap-authzid/imap-authzid: imap-authzid/CMakeFiles/imap-authzid.dir/build.make
imap-authzid/imap-authzid: /usr/local/lib/libcurl.so
imap-authzid/imap-authzid: imap-authzid/CMakeFiles/imap-authzid.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable imap-authzid"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-authzid && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imap-authzid.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
imap-authzid/CMakeFiles/imap-authzid.dir/build: imap-authzid/imap-authzid
.PHONY : imap-authzid/CMakeFiles/imap-authzid.dir/build

imap-authzid/CMakeFiles/imap-authzid.dir/clean:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-authzid && $(CMAKE_COMMAND) -P CMakeFiles/imap-authzid.dir/cmake_clean.cmake
.PHONY : imap-authzid/CMakeFiles/imap-authzid.dir/clean

imap-authzid/CMakeFiles/imap-authzid.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/imap-authzid /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/imap-authzid /home/ldg/CLionProjects/curlTest/allexamples/build/imap-authzid/CMakeFiles/imap-authzid.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : imap-authzid/CMakeFiles/imap-authzid.dir/depend

