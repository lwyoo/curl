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
include imap-store/CMakeFiles/imap-store.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include imap-store/CMakeFiles/imap-store.dir/compiler_depend.make

# Include the progress variables for this target.
include imap-store/CMakeFiles/imap-store.dir/progress.make

# Include the compile flags for this target's objects.
include imap-store/CMakeFiles/imap-store.dir/flags.make

imap-store/CMakeFiles/imap-store.dir/imap-store.c.o: imap-store/CMakeFiles/imap-store.dir/flags.make
imap-store/CMakeFiles/imap-store.dir/imap-store.c.o: ../imap-store/imap-store.c
imap-store/CMakeFiles/imap-store.dir/imap-store.c.o: imap-store/CMakeFiles/imap-store.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object imap-store/CMakeFiles/imap-store.dir/imap-store.c.o"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-store && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT imap-store/CMakeFiles/imap-store.dir/imap-store.c.o -MF CMakeFiles/imap-store.dir/imap-store.c.o.d -o CMakeFiles/imap-store.dir/imap-store.c.o -c /home/ldg/CLionProjects/curlTest/allexamples/imap-store/imap-store.c

imap-store/CMakeFiles/imap-store.dir/imap-store.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/imap-store.dir/imap-store.c.i"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-store && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/imap-store/imap-store.c > CMakeFiles/imap-store.dir/imap-store.c.i

imap-store/CMakeFiles/imap-store.dir/imap-store.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/imap-store.dir/imap-store.c.s"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-store && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/imap-store/imap-store.c -o CMakeFiles/imap-store.dir/imap-store.c.s

# Object files for target imap-store
imap__store_OBJECTS = \
"CMakeFiles/imap-store.dir/imap-store.c.o"

# External object files for target imap-store
imap__store_EXTERNAL_OBJECTS =

imap-store/imap-store: imap-store/CMakeFiles/imap-store.dir/imap-store.c.o
imap-store/imap-store: imap-store/CMakeFiles/imap-store.dir/build.make
imap-store/imap-store: /usr/local/lib/libcurl.so
imap-store/imap-store: imap-store/CMakeFiles/imap-store.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable imap-store"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-store && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imap-store.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
imap-store/CMakeFiles/imap-store.dir/build: imap-store/imap-store
.PHONY : imap-store/CMakeFiles/imap-store.dir/build

imap-store/CMakeFiles/imap-store.dir/clean:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/imap-store && $(CMAKE_COMMAND) -P CMakeFiles/imap-store.dir/cmake_clean.cmake
.PHONY : imap-store/CMakeFiles/imap-store.dir/clean

imap-store/CMakeFiles/imap-store.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/imap-store /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/imap-store /home/ldg/CLionProjects/curlTest/allexamples/build/imap-store/CMakeFiles/imap-store.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : imap-store/CMakeFiles/imap-store.dir/depend

