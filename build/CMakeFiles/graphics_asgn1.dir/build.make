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
include CMakeFiles/graphics_asgn1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/graphics_asgn1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/graphics_asgn1.dir/flags.make

CMakeFiles/graphics_asgn1.dir/src/ball.cpp.o: CMakeFiles/graphics_asgn1.dir/flags.make
CMakeFiles/graphics_asgn1.dir/src/ball.cpp.o: ../src/ball.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abhinav/joyride/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/graphics_asgn1.dir/src/ball.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn1.dir/src/ball.cpp.o -c /Users/abhinav/joyride/src/ball.cpp

CMakeFiles/graphics_asgn1.dir/src/ball.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn1.dir/src/ball.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/abhinav/joyride/src/ball.cpp > CMakeFiles/graphics_asgn1.dir/src/ball.cpp.i

CMakeFiles/graphics_asgn1.dir/src/ball.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn1.dir/src/ball.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/abhinav/joyride/src/ball.cpp -o CMakeFiles/graphics_asgn1.dir/src/ball.cpp.s

CMakeFiles/graphics_asgn1.dir/src/balloon.cpp.o: CMakeFiles/graphics_asgn1.dir/flags.make
CMakeFiles/graphics_asgn1.dir/src/balloon.cpp.o: ../src/balloon.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abhinav/joyride/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/graphics_asgn1.dir/src/balloon.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn1.dir/src/balloon.cpp.o -c /Users/abhinav/joyride/src/balloon.cpp

CMakeFiles/graphics_asgn1.dir/src/balloon.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn1.dir/src/balloon.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/abhinav/joyride/src/balloon.cpp > CMakeFiles/graphics_asgn1.dir/src/balloon.cpp.i

CMakeFiles/graphics_asgn1.dir/src/balloon.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn1.dir/src/balloon.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/abhinav/joyride/src/balloon.cpp -o CMakeFiles/graphics_asgn1.dir/src/balloon.cpp.s

CMakeFiles/graphics_asgn1.dir/src/beam.cpp.o: CMakeFiles/graphics_asgn1.dir/flags.make
CMakeFiles/graphics_asgn1.dir/src/beam.cpp.o: ../src/beam.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abhinav/joyride/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/graphics_asgn1.dir/src/beam.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn1.dir/src/beam.cpp.o -c /Users/abhinav/joyride/src/beam.cpp

CMakeFiles/graphics_asgn1.dir/src/beam.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn1.dir/src/beam.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/abhinav/joyride/src/beam.cpp > CMakeFiles/graphics_asgn1.dir/src/beam.cpp.i

CMakeFiles/graphics_asgn1.dir/src/beam.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn1.dir/src/beam.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/abhinav/joyride/src/beam.cpp -o CMakeFiles/graphics_asgn1.dir/src/beam.cpp.s

CMakeFiles/graphics_asgn1.dir/src/boomerang.cpp.o: CMakeFiles/graphics_asgn1.dir/flags.make
CMakeFiles/graphics_asgn1.dir/src/boomerang.cpp.o: ../src/boomerang.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abhinav/joyride/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/graphics_asgn1.dir/src/boomerang.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn1.dir/src/boomerang.cpp.o -c /Users/abhinav/joyride/src/boomerang.cpp

CMakeFiles/graphics_asgn1.dir/src/boomerang.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn1.dir/src/boomerang.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/abhinav/joyride/src/boomerang.cpp > CMakeFiles/graphics_asgn1.dir/src/boomerang.cpp.i

CMakeFiles/graphics_asgn1.dir/src/boomerang.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn1.dir/src/boomerang.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/abhinav/joyride/src/boomerang.cpp -o CMakeFiles/graphics_asgn1.dir/src/boomerang.cpp.s

CMakeFiles/graphics_asgn1.dir/src/coins.cpp.o: CMakeFiles/graphics_asgn1.dir/flags.make
CMakeFiles/graphics_asgn1.dir/src/coins.cpp.o: ../src/coins.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abhinav/joyride/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/graphics_asgn1.dir/src/coins.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn1.dir/src/coins.cpp.o -c /Users/abhinav/joyride/src/coins.cpp

CMakeFiles/graphics_asgn1.dir/src/coins.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn1.dir/src/coins.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/abhinav/joyride/src/coins.cpp > CMakeFiles/graphics_asgn1.dir/src/coins.cpp.i

CMakeFiles/graphics_asgn1.dir/src/coins.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn1.dir/src/coins.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/abhinav/joyride/src/coins.cpp -o CMakeFiles/graphics_asgn1.dir/src/coins.cpp.s

CMakeFiles/graphics_asgn1.dir/src/color.cpp.o: CMakeFiles/graphics_asgn1.dir/flags.make
CMakeFiles/graphics_asgn1.dir/src/color.cpp.o: ../src/color.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abhinav/joyride/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/graphics_asgn1.dir/src/color.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn1.dir/src/color.cpp.o -c /Users/abhinav/joyride/src/color.cpp

CMakeFiles/graphics_asgn1.dir/src/color.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn1.dir/src/color.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/abhinav/joyride/src/color.cpp > CMakeFiles/graphics_asgn1.dir/src/color.cpp.i

CMakeFiles/graphics_asgn1.dir/src/color.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn1.dir/src/color.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/abhinav/joyride/src/color.cpp -o CMakeFiles/graphics_asgn1.dir/src/color.cpp.s

CMakeFiles/graphics_asgn1.dir/src/enemy.cpp.o: CMakeFiles/graphics_asgn1.dir/flags.make
CMakeFiles/graphics_asgn1.dir/src/enemy.cpp.o: ../src/enemy.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abhinav/joyride/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/graphics_asgn1.dir/src/enemy.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn1.dir/src/enemy.cpp.o -c /Users/abhinav/joyride/src/enemy.cpp

CMakeFiles/graphics_asgn1.dir/src/enemy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn1.dir/src/enemy.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/abhinav/joyride/src/enemy.cpp > CMakeFiles/graphics_asgn1.dir/src/enemy.cpp.i

CMakeFiles/graphics_asgn1.dir/src/enemy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn1.dir/src/enemy.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/abhinav/joyride/src/enemy.cpp -o CMakeFiles/graphics_asgn1.dir/src/enemy.cpp.s

CMakeFiles/graphics_asgn1.dir/src/ground.cpp.o: CMakeFiles/graphics_asgn1.dir/flags.make
CMakeFiles/graphics_asgn1.dir/src/ground.cpp.o: ../src/ground.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abhinav/joyride/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/graphics_asgn1.dir/src/ground.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn1.dir/src/ground.cpp.o -c /Users/abhinav/joyride/src/ground.cpp

CMakeFiles/graphics_asgn1.dir/src/ground.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn1.dir/src/ground.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/abhinav/joyride/src/ground.cpp > CMakeFiles/graphics_asgn1.dir/src/ground.cpp.i

CMakeFiles/graphics_asgn1.dir/src/ground.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn1.dir/src/ground.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/abhinav/joyride/src/ground.cpp -o CMakeFiles/graphics_asgn1.dir/src/ground.cpp.s

CMakeFiles/graphics_asgn1.dir/src/input.cpp.o: CMakeFiles/graphics_asgn1.dir/flags.make
CMakeFiles/graphics_asgn1.dir/src/input.cpp.o: ../src/input.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abhinav/joyride/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/graphics_asgn1.dir/src/input.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn1.dir/src/input.cpp.o -c /Users/abhinav/joyride/src/input.cpp

CMakeFiles/graphics_asgn1.dir/src/input.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn1.dir/src/input.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/abhinav/joyride/src/input.cpp > CMakeFiles/graphics_asgn1.dir/src/input.cpp.i

CMakeFiles/graphics_asgn1.dir/src/input.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn1.dir/src/input.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/abhinav/joyride/src/input.cpp -o CMakeFiles/graphics_asgn1.dir/src/input.cpp.s

CMakeFiles/graphics_asgn1.dir/src/magnet.cpp.o: CMakeFiles/graphics_asgn1.dir/flags.make
CMakeFiles/graphics_asgn1.dir/src/magnet.cpp.o: ../src/magnet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abhinav/joyride/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/graphics_asgn1.dir/src/magnet.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn1.dir/src/magnet.cpp.o -c /Users/abhinav/joyride/src/magnet.cpp

CMakeFiles/graphics_asgn1.dir/src/magnet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn1.dir/src/magnet.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/abhinav/joyride/src/magnet.cpp > CMakeFiles/graphics_asgn1.dir/src/magnet.cpp.i

CMakeFiles/graphics_asgn1.dir/src/magnet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn1.dir/src/magnet.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/abhinav/joyride/src/magnet.cpp -o CMakeFiles/graphics_asgn1.dir/src/magnet.cpp.s

CMakeFiles/graphics_asgn1.dir/src/main.cpp.o: CMakeFiles/graphics_asgn1.dir/flags.make
CMakeFiles/graphics_asgn1.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abhinav/joyride/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/graphics_asgn1.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn1.dir/src/main.cpp.o -c /Users/abhinav/joyride/src/main.cpp

CMakeFiles/graphics_asgn1.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn1.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/abhinav/joyride/src/main.cpp > CMakeFiles/graphics_asgn1.dir/src/main.cpp.i

CMakeFiles/graphics_asgn1.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn1.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/abhinav/joyride/src/main.cpp -o CMakeFiles/graphics_asgn1.dir/src/main.cpp.s

CMakeFiles/graphics_asgn1.dir/src/nonedit.cpp.o: CMakeFiles/graphics_asgn1.dir/flags.make
CMakeFiles/graphics_asgn1.dir/src/nonedit.cpp.o: ../src/nonedit.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abhinav/joyride/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/graphics_asgn1.dir/src/nonedit.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn1.dir/src/nonedit.cpp.o -c /Users/abhinav/joyride/src/nonedit.cpp

CMakeFiles/graphics_asgn1.dir/src/nonedit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn1.dir/src/nonedit.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/abhinav/joyride/src/nonedit.cpp > CMakeFiles/graphics_asgn1.dir/src/nonedit.cpp.i

CMakeFiles/graphics_asgn1.dir/src/nonedit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn1.dir/src/nonedit.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/abhinav/joyride/src/nonedit.cpp -o CMakeFiles/graphics_asgn1.dir/src/nonedit.cpp.s

CMakeFiles/graphics_asgn1.dir/src/other_handlers.cpp.o: CMakeFiles/graphics_asgn1.dir/flags.make
CMakeFiles/graphics_asgn1.dir/src/other_handlers.cpp.o: ../src/other_handlers.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abhinav/joyride/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/graphics_asgn1.dir/src/other_handlers.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn1.dir/src/other_handlers.cpp.o -c /Users/abhinav/joyride/src/other_handlers.cpp

CMakeFiles/graphics_asgn1.dir/src/other_handlers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn1.dir/src/other_handlers.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/abhinav/joyride/src/other_handlers.cpp > CMakeFiles/graphics_asgn1.dir/src/other_handlers.cpp.i

CMakeFiles/graphics_asgn1.dir/src/other_handlers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn1.dir/src/other_handlers.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/abhinav/joyride/src/other_handlers.cpp -o CMakeFiles/graphics_asgn1.dir/src/other_handlers.cpp.s

CMakeFiles/graphics_asgn1.dir/src/sky.cpp.o: CMakeFiles/graphics_asgn1.dir/flags.make
CMakeFiles/graphics_asgn1.dir/src/sky.cpp.o: ../src/sky.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abhinav/joyride/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/graphics_asgn1.dir/src/sky.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn1.dir/src/sky.cpp.o -c /Users/abhinav/joyride/src/sky.cpp

CMakeFiles/graphics_asgn1.dir/src/sky.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn1.dir/src/sky.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/abhinav/joyride/src/sky.cpp > CMakeFiles/graphics_asgn1.dir/src/sky.cpp.i

CMakeFiles/graphics_asgn1.dir/src/sky.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn1.dir/src/sky.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/abhinav/joyride/src/sky.cpp -o CMakeFiles/graphics_asgn1.dir/src/sky.cpp.s

CMakeFiles/graphics_asgn1.dir/src/timer.cpp.o: CMakeFiles/graphics_asgn1.dir/flags.make
CMakeFiles/graphics_asgn1.dir/src/timer.cpp.o: ../src/timer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/abhinav/joyride/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/graphics_asgn1.dir/src/timer.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graphics_asgn1.dir/src/timer.cpp.o -c /Users/abhinav/joyride/src/timer.cpp

CMakeFiles/graphics_asgn1.dir/src/timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graphics_asgn1.dir/src/timer.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/abhinav/joyride/src/timer.cpp > CMakeFiles/graphics_asgn1.dir/src/timer.cpp.i

CMakeFiles/graphics_asgn1.dir/src/timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graphics_asgn1.dir/src/timer.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/abhinav/joyride/src/timer.cpp -o CMakeFiles/graphics_asgn1.dir/src/timer.cpp.s

# Object files for target graphics_asgn1
graphics_asgn1_OBJECTS = \
"CMakeFiles/graphics_asgn1.dir/src/ball.cpp.o" \
"CMakeFiles/graphics_asgn1.dir/src/balloon.cpp.o" \
"CMakeFiles/graphics_asgn1.dir/src/beam.cpp.o" \
"CMakeFiles/graphics_asgn1.dir/src/boomerang.cpp.o" \
"CMakeFiles/graphics_asgn1.dir/src/coins.cpp.o" \
"CMakeFiles/graphics_asgn1.dir/src/color.cpp.o" \
"CMakeFiles/graphics_asgn1.dir/src/enemy.cpp.o" \
"CMakeFiles/graphics_asgn1.dir/src/ground.cpp.o" \
"CMakeFiles/graphics_asgn1.dir/src/input.cpp.o" \
"CMakeFiles/graphics_asgn1.dir/src/magnet.cpp.o" \
"CMakeFiles/graphics_asgn1.dir/src/main.cpp.o" \
"CMakeFiles/graphics_asgn1.dir/src/nonedit.cpp.o" \
"CMakeFiles/graphics_asgn1.dir/src/other_handlers.cpp.o" \
"CMakeFiles/graphics_asgn1.dir/src/sky.cpp.o" \
"CMakeFiles/graphics_asgn1.dir/src/timer.cpp.o"

# External object files for target graphics_asgn1
graphics_asgn1_EXTERNAL_OBJECTS =

graphics_asgn1: CMakeFiles/graphics_asgn1.dir/src/ball.cpp.o
graphics_asgn1: CMakeFiles/graphics_asgn1.dir/src/balloon.cpp.o
graphics_asgn1: CMakeFiles/graphics_asgn1.dir/src/beam.cpp.o
graphics_asgn1: CMakeFiles/graphics_asgn1.dir/src/boomerang.cpp.o
graphics_asgn1: CMakeFiles/graphics_asgn1.dir/src/coins.cpp.o
graphics_asgn1: CMakeFiles/graphics_asgn1.dir/src/color.cpp.o
graphics_asgn1: CMakeFiles/graphics_asgn1.dir/src/enemy.cpp.o
graphics_asgn1: CMakeFiles/graphics_asgn1.dir/src/ground.cpp.o
graphics_asgn1: CMakeFiles/graphics_asgn1.dir/src/input.cpp.o
graphics_asgn1: CMakeFiles/graphics_asgn1.dir/src/magnet.cpp.o
graphics_asgn1: CMakeFiles/graphics_asgn1.dir/src/main.cpp.o
graphics_asgn1: CMakeFiles/graphics_asgn1.dir/src/nonedit.cpp.o
graphics_asgn1: CMakeFiles/graphics_asgn1.dir/src/other_handlers.cpp.o
graphics_asgn1: CMakeFiles/graphics_asgn1.dir/src/sky.cpp.o
graphics_asgn1: CMakeFiles/graphics_asgn1.dir/src/timer.cpp.o
graphics_asgn1: CMakeFiles/graphics_asgn1.dir/build.make
graphics_asgn1: external/glfw-3.1.2/src/libglfw3.a
graphics_asgn1: external/libGLEW_1130.a
graphics_asgn1: external/glfw-3.1.2/src/libglfw3.a
graphics_asgn1: external/libGLEW_1130.a
graphics_asgn1: CMakeFiles/graphics_asgn1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/abhinav/joyride/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking CXX executable graphics_asgn1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/graphics_asgn1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/graphics_asgn1.dir/build: graphics_asgn1

.PHONY : CMakeFiles/graphics_asgn1.dir/build

CMakeFiles/graphics_asgn1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/graphics_asgn1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/graphics_asgn1.dir/clean

CMakeFiles/graphics_asgn1.dir/depend:
	cd /Users/abhinav/joyride/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/abhinav/joyride /Users/abhinav/joyride /Users/abhinav/joyride/build /Users/abhinav/joyride/build /Users/abhinav/joyride/build/CMakeFiles/graphics_asgn1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/graphics_asgn1.dir/depend
