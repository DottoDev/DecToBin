# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/s34m/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/203.7717.62/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/s34m/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/203.7717.62/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/s34m/projects/smallPrograms/decimalToBinary/cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/s34m/projects/smallPrograms/decimalToBinary/cpp/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/decimalToBinary.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/decimalToBinary.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/decimalToBinary.dir/flags.make

CMakeFiles/decimalToBinary.dir/main.cpp.o: CMakeFiles/decimalToBinary.dir/flags.make
CMakeFiles/decimalToBinary.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/s34m/projects/smallPrograms/decimalToBinary/cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/decimalToBinary.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/decimalToBinary.dir/main.cpp.o -c /home/s34m/projects/smallPrograms/decimalToBinary/cpp/main.cpp

CMakeFiles/decimalToBinary.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/decimalToBinary.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/s34m/projects/smallPrograms/decimalToBinary/cpp/main.cpp > CMakeFiles/decimalToBinary.dir/main.cpp.i

CMakeFiles/decimalToBinary.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/decimalToBinary.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/s34m/projects/smallPrograms/decimalToBinary/cpp/main.cpp -o CMakeFiles/decimalToBinary.dir/main.cpp.s

# Object files for target decimalToBinary
decimalToBinary_OBJECTS = \
"CMakeFiles/decimalToBinary.dir/main.cpp.o"

# External object files for target decimalToBinary
decimalToBinary_EXTERNAL_OBJECTS =

decimalToBinary: CMakeFiles/decimalToBinary.dir/main.cpp.o
decimalToBinary: CMakeFiles/decimalToBinary.dir/build.make
decimalToBinary: CMakeFiles/decimalToBinary.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/s34m/projects/smallPrograms/decimalToBinary/cpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable decimalToBinary"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/decimalToBinary.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/decimalToBinary.dir/build: decimalToBinary

.PHONY : CMakeFiles/decimalToBinary.dir/build

CMakeFiles/decimalToBinary.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/decimalToBinary.dir/cmake_clean.cmake
.PHONY : CMakeFiles/decimalToBinary.dir/clean

CMakeFiles/decimalToBinary.dir/depend:
	cd /home/s34m/projects/smallPrograms/decimalToBinary/cpp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/s34m/projects/smallPrograms/decimalToBinary/cpp /home/s34m/projects/smallPrograms/decimalToBinary/cpp /home/s34m/projects/smallPrograms/decimalToBinary/cpp/cmake-build-debug /home/s34m/projects/smallPrograms/decimalToBinary/cpp/cmake-build-debug /home/s34m/projects/smallPrograms/decimalToBinary/cpp/cmake-build-debug/CMakeFiles/decimalToBinary.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/decimalToBinary.dir/depend
