# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.13.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.13.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/abhinav/joyride

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/abhinav/joyride/build

# Include any dependencies generated for this target.
include external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/depend.make

# Include the progress variables for this target.
include external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/progress.make

# Include the compile flags for this target's objects.
include external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/flags.make

external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.o: external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/flags.make
external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.o: ../external/glfw-3.1.2/tests/tearing.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abhinav/joyride/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.o"
	cd /Users/abhinav/joyride/build/external/glfw-3.1.2/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tearing.dir/tearing.c.o   -c /Users/abhinav/joyride/external/glfw-3.1.2/tests/tearing.c

external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tearing.dir/tearing.c.i"
	cd /Users/abhinav/joyride/build/external/glfw-3.1.2/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/abhinav/joyride/external/glfw-3.1.2/tests/tearing.c > CMakeFiles/tearing.dir/tearing.c.i

external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tearing.dir/tearing.c.s"
	cd /Users/abhinav/joyride/build/external/glfw-3.1.2/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/abhinav/joyride/external/glfw-3.1.2/tests/tearing.c -o CMakeFiles/tearing.dir/tearing.c.s

external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.o: external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/flags.make
external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.o: ../external/glfw-3.1.2/deps/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abhinav/joyride/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.o"
	cd /Users/abhinav/joyride/build/external/glfw-3.1.2/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tearing.dir/__/deps/getopt.c.o   -c /Users/abhinav/joyride/external/glfw-3.1.2/deps/getopt.c

external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tearing.dir/__/deps/getopt.c.i"
	cd /Users/abhinav/joyride/build/external/glfw-3.1.2/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/abhinav/joyride/external/glfw-3.1.2/deps/getopt.c > CMakeFiles/tearing.dir/__/deps/getopt.c.i

external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tearing.dir/__/deps/getopt.c.s"
	cd /Users/abhinav/joyride/build/external/glfw-3.1.2/tests && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/abhinav/joyride/external/glfw-3.1.2/deps/getopt.c -o CMakeFiles/tearing.dir/__/deps/getopt.c.s

# Object files for target tearing
tearing_OBJECTS = \
"CMakeFiles/tearing.dir/tearing.c.o" \
"CMakeFiles/tearing.dir/__/deps/getopt.c.o"

# External object files for target tearing
tearing_EXTERNAL_OBJECTS =

external/glfw-3.1.2/tests/tearing.app/Contents/MacOS/tearing: external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/tearing.c.o
external/glfw-3.1.2/tests/tearing.app/Contents/MacOS/tearing: external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/__/deps/getopt.c.o
external/glfw-3.1.2/tests/tearing.app/Contents/MacOS/tearing: external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/build.make
external/glfw-3.1.2/tests/tearing.app/Contents/MacOS/tearing: external/glfw-3.1.2/src/libglfw3.a
external/glfw-3.1.2/tests/tearing.app/Contents/MacOS/tearing: external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/abhinav/joyride/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable tearing.app/Contents/MacOS/tearing"
	cd /Users/abhinav/joyride/build/external/glfw-3.1.2/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tearing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/build: external/glfw-3.1.2/tests/tearing.app/Contents/MacOS/tearing

.PHONY : external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/build

external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/clean:
	cd /Users/abhinav/joyride/build/external/glfw-3.1.2/tests && $(CMAKE_COMMAND) -P CMakeFiles/tearing.dir/cmake_clean.cmake
.PHONY : external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/clean

external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/depend:
	cd /Users/abhinav/joyride/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/abhinav/joyride /Users/abhinav/joyride/external/glfw-3.1.2/tests /Users/abhinav/joyride/build /Users/abhinav/joyride/build/external/glfw-3.1.2/tests /Users/abhinav/joyride/build/external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/glfw-3.1.2/tests/CMakeFiles/tearing.dir/depend

