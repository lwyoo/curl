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
include smtp-mail/CMakeFiles/smtp-mail.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include smtp-mail/CMakeFiles/smtp-mail.dir/compiler_depend.make

# Include the progress variables for this target.
include smtp-mail/CMakeFiles/smtp-mail.dir/progress.make

# Include the compile flags for this target's objects.
include smtp-mail/CMakeFiles/smtp-mail.dir/flags.make

smtp-mail/CMakeFiles/smtp-mail.dir/smtp-mail.c.o: smtp-mail/CMakeFiles/smtp-mail.dir/flags.make
smtp-mail/CMakeFiles/smtp-mail.dir/smtp-mail.c.o: ../smtp-mail/smtp-mail.c
smtp-mail/CMakeFiles/smtp-mail.dir/smtp-mail.c.o: smtp-mail/CMakeFiles/smtp-mail.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object smtp-mail/CMakeFiles/smtp-mail.dir/smtp-mail.c.o"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/smtp-mail && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT smtp-mail/CMakeFiles/smtp-mail.dir/smtp-mail.c.o -MF CMakeFiles/smtp-mail.dir/smtp-mail.c.o.d -o CMakeFiles/smtp-mail.dir/smtp-mail.c.o -c /home/ldg/CLionProjects/curlTest/allexamples/smtp-mail/smtp-mail.c

smtp-mail/CMakeFiles/smtp-mail.dir/smtp-mail.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/smtp-mail.dir/smtp-mail.c.i"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/smtp-mail && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ldg/CLionProjects/curlTest/allexamples/smtp-mail/smtp-mail.c > CMakeFiles/smtp-mail.dir/smtp-mail.c.i

smtp-mail/CMakeFiles/smtp-mail.dir/smtp-mail.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/smtp-mail.dir/smtp-mail.c.s"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/smtp-mail && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ldg/CLionProjects/curlTest/allexamples/smtp-mail/smtp-mail.c -o CMakeFiles/smtp-mail.dir/smtp-mail.c.s

# Object files for target smtp-mail
smtp__mail_OBJECTS = \
"CMakeFiles/smtp-mail.dir/smtp-mail.c.o"

# External object files for target smtp-mail
smtp__mail_EXTERNAL_OBJECTS =

smtp-mail/smtp-mail: smtp-mail/CMakeFiles/smtp-mail.dir/smtp-mail.c.o
smtp-mail/smtp-mail: smtp-mail/CMakeFiles/smtp-mail.dir/build.make
smtp-mail/smtp-mail: /usr/local/lib/libcurl.so
smtp-mail/smtp-mail: smtp-mail/CMakeFiles/smtp-mail.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ldg/CLionProjects/curlTest/allexamples/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable smtp-mail"
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/smtp-mail && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/smtp-mail.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
smtp-mail/CMakeFiles/smtp-mail.dir/build: smtp-mail/smtp-mail
.PHONY : smtp-mail/CMakeFiles/smtp-mail.dir/build

smtp-mail/CMakeFiles/smtp-mail.dir/clean:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build/smtp-mail && $(CMAKE_COMMAND) -P CMakeFiles/smtp-mail.dir/cmake_clean.cmake
.PHONY : smtp-mail/CMakeFiles/smtp-mail.dir/clean

smtp-mail/CMakeFiles/smtp-mail.dir/depend:
	cd /home/ldg/CLionProjects/curlTest/allexamples/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ldg/CLionProjects/curlTest/allexamples /home/ldg/CLionProjects/curlTest/allexamples/smtp-mail /home/ldg/CLionProjects/curlTest/allexamples/build /home/ldg/CLionProjects/curlTest/allexamples/build/smtp-mail /home/ldg/CLionProjects/curlTest/allexamples/build/smtp-mail/CMakeFiles/smtp-mail.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : smtp-mail/CMakeFiles/smtp-mail.dir/depend
