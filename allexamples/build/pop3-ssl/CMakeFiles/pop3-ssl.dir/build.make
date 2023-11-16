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
include pop3-ssl/CMakeFiles/pop3-ssl.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include pop3-ssl/CMakeFiles/pop3-ssl.dir/compiler_depend.make

# Include the progress variables for this target.
include pop3-ssl/CMakeFiles/pop3-ssl.dir/progress.make

# Include the compile flags for this target's objects.
include pop3-ssl/CMakeFiles/pop3-ssl.dir/flags.make

pop3-ssl/CMakeFiles/pop3-ssl.dir/pop3-ssl.c.o: pop3-ssl/CMakeFiles/pop3-ssl.dir/flags.make
pop3-ssl/CMakeFiles/pop3-ssl.dir/pop3-ssl.c.o: ../pop3-ssl/pop3-ssl.c
pop3-ssl/CMakeFiles/pop3-ssl.dir/pop3-ssl.c.o: pop3-ssl/CMakeFiles/pop3-ssl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object pop3-ssl/CMakeFiles/pop3-ssl.dir/pop3-ssl.c.o"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/pop3-ssl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT pop3-ssl/CMakeFiles/pop3-ssl.dir/pop3-ssl.c.o -MF CMakeFiles/pop3-ssl.dir/pop3-ssl.c.o.d -o CMakeFiles/pop3-ssl.dir/pop3-ssl.c.o -c /home/ldg/CLionProjects/curlTest/allexamples/pop3-ssl/pop3-ssl.c

pop3-ssl/CMakeFiles/pop3-ssl.dir/pop3-ssl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pop3-ssl.dir/pop3-ssl.c.i"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/pop3-ssl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/pop3-ssl/pop3-ssl.c > CMakeFiles/pop3-ssl.dir/pop3-ssl.c.i

pop3-ssl/CMakeFiles/pop3-ssl.dir/pop3-ssl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pop3-ssl.dir/pop3-ssl.c.s"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/pop3-ssl && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/pop3-ssl/pop3-ssl.c -o CMakeFiles/pop3-ssl.dir/pop3-ssl.c.s

# Object files for target pop3-ssl
pop3__ssl_OBJECTS = \
"CMakeFiles/pop3-ssl.dir/pop3-ssl.c.o"

# External object files for target pop3-ssl
pop3__ssl_EXTERNAL_OBJECTS =

pop3-ssl/pop3-ssl: pop3-ssl/CMakeFiles/pop3-ssl.dir/pop3-ssl.c.o
pop3-ssl/pop3-ssl: pop3-ssl/CMakeFiles/pop3-ssl.dir/build.make
pop3-ssl/pop3-ssl: /usr/local/lib/libcurl.so
pop3-ssl/pop3-ssl: pop3-ssl/CMakeFiles/pop3-ssl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pop3-ssl"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/pop3-ssl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pop3-ssl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
pop3-ssl/CMakeFiles/pop3-ssl.dir/build: pop3-ssl/pop3-ssl
.PHONY : pop3-ssl/CMakeFiles/pop3-ssl.dir/build

pop3-ssl/CMakeFiles/pop3-ssl.dir/clean:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/pop3-ssl && $(CMAKE_COMMAND) -P CMakeFiles/pop3-ssl.dir/cmake_clean.cmake
.PHONY : pop3-ssl/CMakeFiles/pop3-ssl.dir/clean

pop3-ssl/CMakeFiles/pop3-ssl.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/pop3-ssl /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/pop3-ssl /home/ldg/CLionProjects/curlTest/allexamples/build/pop3-ssl/CMakeFiles/pop3-ssl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pop3-ssl/CMakeFiles/pop3-ssl.dir/depend
