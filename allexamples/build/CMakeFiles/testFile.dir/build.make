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
include CMakeFiles/testFile.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/testFile.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/testFile.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testFile.dir/flags.make

CMakeFiles/testFile.dir/10-at-a-time.cpp.o: CMakeFiles/testFile.dir/flags.make
CMakeFiles/testFile.dir/10-at-a-time.cpp.o: ../10-at-a-time.cpp
CMakeFiles/testFile.dir/10-at-a-time.cpp.o: CMakeFiles/testFile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/testFile.dir/10-at-a-time.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/testFile.dir/10-at-a-time.cpp.o -MF CMakeFiles/testFile.dir/10-at-a-time.cpp.o.d -o CMakeFiles/testFile.dir/10-at-a-time.cpp.o -c /home/ldg/CLionProjects/curlTest/allexamples/10-at-a-time.cpp

CMakeFiles/testFile.dir/10-at-a-time.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testFile.dir/10-at-a-time.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/10-at-a-time.cpp > CMakeFiles/testFile.dir/10-at-a-time.cpp.i

CMakeFiles/testFile.dir/10-at-a-time.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testFile.dir/10-at-a-time.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/10-at-a-time.cpp -o CMakeFiles/testFile.dir/10-at-a-time.cpp.s

# Object files for target testFile
testFile_OBJECTS = \
"CMakeFiles/testFile.dir/10-at-a-time.cpp.o"

# External object files for target testFile
testFile_EXTERNAL_OBJECTS =

testFile: CMakeFiles/testFile.dir/10-at-a-time.cpp.o
testFile: CMakeFiles/testFile.dir/build.make
testFile: /usr/local/lib/libcurl.so
testFile: CMakeFiles/testFile.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable testFile"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testFile.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testFile.dir/build: testFile
.PHONY : CMakeFiles/testFile.dir/build

CMakeFiles/testFile.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testFile.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testFile.dir/clean

CMakeFiles/testFile.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles/testFile.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testFile.dir/depend
