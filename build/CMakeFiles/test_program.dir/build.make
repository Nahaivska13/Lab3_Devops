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
CMAKE_SOURCE_DIR = /home/ubuntu/Lab3_Devops

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/Lab3_Devops/build

# Include any dependencies generated for this target.
include CMakeFiles/test_program.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_program.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_program.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_program.dir/flags.make

CMakeFiles/test_program.dir/main_test.cpp.o: CMakeFiles/test_program.dir/flags.make
CMakeFiles/test_program.dir/main_test.cpp.o: ../main_test.cpp
CMakeFiles/test_program.dir/main_test.cpp.o: CMakeFiles/test_program.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Lab3_Devops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_program.dir/main_test.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_program.dir/main_test.cpp.o -MF CMakeFiles/test_program.dir/main_test.cpp.o.d -o CMakeFiles/test_program.dir/main_test.cpp.o -c /home/ubuntu/Lab3_Devops/main_test.cpp

CMakeFiles/test_program.dir/main_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_program.dir/main_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/Lab3_Devops/main_test.cpp > CMakeFiles/test_program.dir/main_test.cpp.i

CMakeFiles/test_program.dir/main_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_program.dir/main_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/Lab3_Devops/main_test.cpp -o CMakeFiles/test_program.dir/main_test.cpp.s

CMakeFiles/test_program.dir/euler.cpp.o: CMakeFiles/test_program.dir/flags.make
CMakeFiles/test_program.dir/euler.cpp.o: ../euler.cpp
CMakeFiles/test_program.dir/euler.cpp.o: CMakeFiles/test_program.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Lab3_Devops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/test_program.dir/euler.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_program.dir/euler.cpp.o -MF CMakeFiles/test_program.dir/euler.cpp.o.d -o CMakeFiles/test_program.dir/euler.cpp.o -c /home/ubuntu/Lab3_Devops/euler.cpp

CMakeFiles/test_program.dir/euler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_program.dir/euler.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/Lab3_Devops/euler.cpp > CMakeFiles/test_program.dir/euler.cpp.i

CMakeFiles/test_program.dir/euler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_program.dir/euler.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/Lab3_Devops/euler.cpp -o CMakeFiles/test_program.dir/euler.cpp.s

# Object files for target test_program
test_program_OBJECTS = \
"CMakeFiles/test_program.dir/main_test.cpp.o" \
"CMakeFiles/test_program.dir/euler.cpp.o"

# External object files for target test_program
test_program_EXTERNAL_OBJECTS =

test_program: CMakeFiles/test_program.dir/main_test.cpp.o
test_program: CMakeFiles/test_program.dir/euler.cpp.o
test_program: CMakeFiles/test_program.dir/build.make
test_program: CMakeFiles/test_program.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/Lab3_Devops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable test_program"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_program.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_program.dir/build: test_program
.PHONY : CMakeFiles/test_program.dir/build

CMakeFiles/test_program.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_program.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_program.dir/clean

CMakeFiles/test_program.dir/depend:
	cd /home/ubuntu/Lab3_Devops/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/Lab3_Devops /home/ubuntu/Lab3_Devops /home/ubuntu/Lab3_Devops/build /home/ubuntu/Lab3_Devops/build /home/ubuntu/Lab3_Devops/build/CMakeFiles/test_program.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_program.dir/depend

