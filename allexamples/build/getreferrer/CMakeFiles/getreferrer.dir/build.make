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
include getreferrer/CMakeFiles/getreferrer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include getreferrer/CMakeFiles/getreferrer.dir/compiler_depend.make

# Include the progress variables for this target.
include getreferrer/CMakeFiles/getreferrer.dir/progress.make

# Include the compile flags for this target's objects.
include getreferrer/CMakeFiles/getreferrer.dir/flags.make

getreferrer/CMakeFiles/getreferrer.dir/getreferrer.c.o: getreferrer/CMakeFiles/getreferrer.dir/flags.make
getreferrer/CMakeFiles/getreferrer.dir/getreferrer.c.o: ../getreferrer/getreferrer.c
getreferrer/CMakeFiles/getreferrer.dir/getreferrer.c.o: getreferrer/CMakeFiles/getreferrer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object getreferrer/CMakeFiles/getreferrer.dir/getreferrer.c.o"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/getreferrer && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT getreferrer/CMakeFiles/getreferrer.dir/getreferrer.c.o -MF CMakeFiles/getreferrer.dir/getreferrer.c.o.d -o CMakeFiles/getreferrer.dir/getreferrer.c.o -c /home/ldg/CLionProjects/curlTest/allexamples/getreferrer/getreferrer.c

getreferrer/CMakeFiles/getreferrer.dir/getreferrer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/getreferrer.dir/getreferrer.c.i"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/getreferrer && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/getreferrer/getreferrer.c > CMakeFiles/getreferrer.dir/getreferrer.c.i

getreferrer/CMakeFiles/getreferrer.dir/getreferrer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/getreferrer.dir/getreferrer.c.s"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/getreferrer && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/getreferrer/getreferrer.c -o CMakeFiles/getreferrer.dir/getreferrer.c.s

# Object files for target getreferrer
getreferrer_OBJECTS = \
"CMakeFiles/getreferrer.dir/getreferrer.c.o"

# External object files for target getreferrer
getreferrer_EXTERNAL_OBJECTS =

getreferrer/getreferrer: getreferrer/CMakeFiles/getreferrer.dir/getreferrer.c.o
getreferrer/getreferrer: getreferrer/CMakeFiles/getreferrer.dir/build.make
getreferrer/getreferrer: /usr/local/lib/libcurl.so
getreferrer/getreferrer: getreferrer/CMakeFiles/getreferrer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable getreferrer"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/getreferrer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/getreferrer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
getreferrer/CMakeFiles/getreferrer.dir/build: getreferrer/getreferrer
.PHONY : getreferrer/CMakeFiles/getreferrer.dir/build

getreferrer/CMakeFiles/getreferrer.dir/clean:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/getreferrer && $(CMAKE_COMMAND) -P CMakeFiles/getreferrer.dir/cmake_clean.cmake
.PHONY : getreferrer/CMakeFiles/getreferrer.dir/clean

getreferrer/CMakeFiles/getreferrer.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/getreferrer /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/getreferrer /home/ldg/CLionProjects/curlTest/allexamples/build/getreferrer/CMakeFiles/getreferrer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : getreferrer/CMakeFiles/getreferrer.dir/depend

