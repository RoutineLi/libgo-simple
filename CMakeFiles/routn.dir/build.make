# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rotun-li/libgo-simple

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rotun-li/libgo-simple

# Include any dependencies generated for this target.
include CMakeFiles/routn.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/routn.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/routn.dir/flags.make

CMakeFiles/routn.dir/src/libco/coctx.cpp.o: CMakeFiles/routn.dir/flags.make
CMakeFiles/routn.dir/src/libco/coctx.cpp.o: src/libco/coctx.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rotun-li/libgo-simple/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/routn.dir/src/libco/coctx.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/routn.dir/src/libco/coctx.cpp.o -c /home/rotun-li/libgo-simple/src/libco/coctx.cpp

CMakeFiles/routn.dir/src/libco/coctx.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/routn.dir/src/libco/coctx.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rotun-li/libgo-simple/src/libco/coctx.cpp > CMakeFiles/routn.dir/src/libco/coctx.cpp.i

CMakeFiles/routn.dir/src/libco/coctx.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/routn.dir/src/libco/coctx.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rotun-li/libgo-simple/src/libco/coctx.cpp -o CMakeFiles/routn.dir/src/libco/coctx.cpp.s

CMakeFiles/routn.dir/src/libco/coctx_swap.S.o: CMakeFiles/routn.dir/flags.make
CMakeFiles/routn.dir/src/libco/coctx_swap.S.o: src/libco/coctx_swap.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rotun-li/libgo-simple/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building ASM object CMakeFiles/routn.dir/src/libco/coctx_swap.S.o"
	/usr/bin/cc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/routn.dir/src/libco/coctx_swap.S.o -c /home/rotun-li/libgo-simple/src/libco/coctx_swap.S

CMakeFiles/routn.dir/src/Log.cpp.o: CMakeFiles/routn.dir/flags.make
CMakeFiles/routn.dir/src/Log.cpp.o: src/Log.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rotun-li/libgo-simple/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/routn.dir/src/Log.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/routn.dir/src/Log.cpp.o -c /home/rotun-li/libgo-simple/src/Log.cpp

CMakeFiles/routn.dir/src/Log.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/routn.dir/src/Log.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rotun-li/libgo-simple/src/Log.cpp > CMakeFiles/routn.dir/src/Log.cpp.i

CMakeFiles/routn.dir/src/Log.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/routn.dir/src/Log.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rotun-li/libgo-simple/src/Log.cpp -o CMakeFiles/routn.dir/src/Log.cpp.s

CMakeFiles/routn.dir/src/Util.cpp.o: CMakeFiles/routn.dir/flags.make
CMakeFiles/routn.dir/src/Util.cpp.o: src/Util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rotun-li/libgo-simple/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/routn.dir/src/Util.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/routn.dir/src/Util.cpp.o -c /home/rotun-li/libgo-simple/src/Util.cpp

CMakeFiles/routn.dir/src/Util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/routn.dir/src/Util.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rotun-li/libgo-simple/src/Util.cpp > CMakeFiles/routn.dir/src/Util.cpp.i

CMakeFiles/routn.dir/src/Util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/routn.dir/src/Util.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rotun-li/libgo-simple/src/Util.cpp -o CMakeFiles/routn.dir/src/Util.cpp.s

CMakeFiles/routn.dir/src/Config.cpp.o: CMakeFiles/routn.dir/flags.make
CMakeFiles/routn.dir/src/Config.cpp.o: src/Config.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rotun-li/libgo-simple/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/routn.dir/src/Config.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/routn.dir/src/Config.cpp.o -c /home/rotun-li/libgo-simple/src/Config.cpp

CMakeFiles/routn.dir/src/Config.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/routn.dir/src/Config.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rotun-li/libgo-simple/src/Config.cpp > CMakeFiles/routn.dir/src/Config.cpp.i

CMakeFiles/routn.dir/src/Config.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/routn.dir/src/Config.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rotun-li/libgo-simple/src/Config.cpp -o CMakeFiles/routn.dir/src/Config.cpp.s

CMakeFiles/routn.dir/src/Fiber.cpp.o: CMakeFiles/routn.dir/flags.make
CMakeFiles/routn.dir/src/Fiber.cpp.o: src/Fiber.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rotun-li/libgo-simple/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/routn.dir/src/Fiber.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/routn.dir/src/Fiber.cpp.o -c /home/rotun-li/libgo-simple/src/Fiber.cpp

CMakeFiles/routn.dir/src/Fiber.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/routn.dir/src/Fiber.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rotun-li/libgo-simple/src/Fiber.cpp > CMakeFiles/routn.dir/src/Fiber.cpp.i

CMakeFiles/routn.dir/src/Fiber.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/routn.dir/src/Fiber.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rotun-li/libgo-simple/src/Fiber.cpp -o CMakeFiles/routn.dir/src/Fiber.cpp.s

CMakeFiles/routn.dir/src/Thread.cpp.o: CMakeFiles/routn.dir/flags.make
CMakeFiles/routn.dir/src/Thread.cpp.o: src/Thread.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rotun-li/libgo-simple/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/routn.dir/src/Thread.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/routn.dir/src/Thread.cpp.o -c /home/rotun-li/libgo-simple/src/Thread.cpp

CMakeFiles/routn.dir/src/Thread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/routn.dir/src/Thread.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rotun-li/libgo-simple/src/Thread.cpp > CMakeFiles/routn.dir/src/Thread.cpp.i

CMakeFiles/routn.dir/src/Thread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/routn.dir/src/Thread.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rotun-li/libgo-simple/src/Thread.cpp -o CMakeFiles/routn.dir/src/Thread.cpp.s

CMakeFiles/routn.dir/src/Scheduler.cpp.o: CMakeFiles/routn.dir/flags.make
CMakeFiles/routn.dir/src/Scheduler.cpp.o: src/Scheduler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rotun-li/libgo-simple/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/routn.dir/src/Scheduler.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/routn.dir/src/Scheduler.cpp.o -c /home/rotun-li/libgo-simple/src/Scheduler.cpp

CMakeFiles/routn.dir/src/Scheduler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/routn.dir/src/Scheduler.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rotun-li/libgo-simple/src/Scheduler.cpp > CMakeFiles/routn.dir/src/Scheduler.cpp.i

CMakeFiles/routn.dir/src/Scheduler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/routn.dir/src/Scheduler.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rotun-li/libgo-simple/src/Scheduler.cpp -o CMakeFiles/routn.dir/src/Scheduler.cpp.s

CMakeFiles/routn.dir/src/IoManager.cpp.o: CMakeFiles/routn.dir/flags.make
CMakeFiles/routn.dir/src/IoManager.cpp.o: src/IoManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rotun-li/libgo-simple/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/routn.dir/src/IoManager.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/routn.dir/src/IoManager.cpp.o -c /home/rotun-li/libgo-simple/src/IoManager.cpp

CMakeFiles/routn.dir/src/IoManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/routn.dir/src/IoManager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rotun-li/libgo-simple/src/IoManager.cpp > CMakeFiles/routn.dir/src/IoManager.cpp.i

CMakeFiles/routn.dir/src/IoManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/routn.dir/src/IoManager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rotun-li/libgo-simple/src/IoManager.cpp -o CMakeFiles/routn.dir/src/IoManager.cpp.s

CMakeFiles/routn.dir/src/Timer.cpp.o: CMakeFiles/routn.dir/flags.make
CMakeFiles/routn.dir/src/Timer.cpp.o: src/Timer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rotun-li/libgo-simple/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/routn.dir/src/Timer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/routn.dir/src/Timer.cpp.o -c /home/rotun-li/libgo-simple/src/Timer.cpp

CMakeFiles/routn.dir/src/Timer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/routn.dir/src/Timer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rotun-li/libgo-simple/src/Timer.cpp > CMakeFiles/routn.dir/src/Timer.cpp.i

CMakeFiles/routn.dir/src/Timer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/routn.dir/src/Timer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rotun-li/libgo-simple/src/Timer.cpp -o CMakeFiles/routn.dir/src/Timer.cpp.s

CMakeFiles/routn.dir/src/Hook.cpp.o: CMakeFiles/routn.dir/flags.make
CMakeFiles/routn.dir/src/Hook.cpp.o: src/Hook.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rotun-li/libgo-simple/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/routn.dir/src/Hook.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/routn.dir/src/Hook.cpp.o -c /home/rotun-li/libgo-simple/src/Hook.cpp

CMakeFiles/routn.dir/src/Hook.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/routn.dir/src/Hook.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rotun-li/libgo-simple/src/Hook.cpp > CMakeFiles/routn.dir/src/Hook.cpp.i

CMakeFiles/routn.dir/src/Hook.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/routn.dir/src/Hook.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rotun-li/libgo-simple/src/Hook.cpp -o CMakeFiles/routn.dir/src/Hook.cpp.s

CMakeFiles/routn.dir/src/FdManager.cpp.o: CMakeFiles/routn.dir/flags.make
CMakeFiles/routn.dir/src/FdManager.cpp.o: src/FdManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rotun-li/libgo-simple/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/routn.dir/src/FdManager.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/routn.dir/src/FdManager.cpp.o -c /home/rotun-li/libgo-simple/src/FdManager.cpp

CMakeFiles/routn.dir/src/FdManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/routn.dir/src/FdManager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rotun-li/libgo-simple/src/FdManager.cpp > CMakeFiles/routn.dir/src/FdManager.cpp.i

CMakeFiles/routn.dir/src/FdManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/routn.dir/src/FdManager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rotun-li/libgo-simple/src/FdManager.cpp -o CMakeFiles/routn.dir/src/FdManager.cpp.s

# Object files for target routn
routn_OBJECTS = \
"CMakeFiles/routn.dir/src/libco/coctx.cpp.o" \
"CMakeFiles/routn.dir/src/libco/coctx_swap.S.o" \
"CMakeFiles/routn.dir/src/Log.cpp.o" \
"CMakeFiles/routn.dir/src/Util.cpp.o" \
"CMakeFiles/routn.dir/src/Config.cpp.o" \
"CMakeFiles/routn.dir/src/Fiber.cpp.o" \
"CMakeFiles/routn.dir/src/Thread.cpp.o" \
"CMakeFiles/routn.dir/src/Scheduler.cpp.o" \
"CMakeFiles/routn.dir/src/IoManager.cpp.o" \
"CMakeFiles/routn.dir/src/Timer.cpp.o" \
"CMakeFiles/routn.dir/src/Hook.cpp.o" \
"CMakeFiles/routn.dir/src/FdManager.cpp.o"

# External object files for target routn
routn_EXTERNAL_OBJECTS =

/home/rotun-li/routn/lib/libroutn.so: CMakeFiles/routn.dir/src/libco/coctx.cpp.o
/home/rotun-li/routn/lib/libroutn.so: CMakeFiles/routn.dir/src/libco/coctx_swap.S.o
/home/rotun-li/routn/lib/libroutn.so: CMakeFiles/routn.dir/src/Log.cpp.o
/home/rotun-li/routn/lib/libroutn.so: CMakeFiles/routn.dir/src/Util.cpp.o
/home/rotun-li/routn/lib/libroutn.so: CMakeFiles/routn.dir/src/Config.cpp.o
/home/rotun-li/routn/lib/libroutn.so: CMakeFiles/routn.dir/src/Fiber.cpp.o
/home/rotun-li/routn/lib/libroutn.so: CMakeFiles/routn.dir/src/Thread.cpp.o
/home/rotun-li/routn/lib/libroutn.so: CMakeFiles/routn.dir/src/Scheduler.cpp.o
/home/rotun-li/routn/lib/libroutn.so: CMakeFiles/routn.dir/src/IoManager.cpp.o
/home/rotun-li/routn/lib/libroutn.so: CMakeFiles/routn.dir/src/Timer.cpp.o
/home/rotun-li/routn/lib/libroutn.so: CMakeFiles/routn.dir/src/Hook.cpp.o
/home/rotun-li/routn/lib/libroutn.so: CMakeFiles/routn.dir/src/FdManager.cpp.o
/home/rotun-li/routn/lib/libroutn.so: CMakeFiles/routn.dir/build.make
/home/rotun-li/routn/lib/libroutn.so: CMakeFiles/routn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rotun-li/libgo-simple/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX shared library /home/rotun-li/routn/lib/libroutn.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/routn.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/routn.dir/build: /home/rotun-li/routn/lib/libroutn.so

.PHONY : CMakeFiles/routn.dir/build

CMakeFiles/routn.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/routn.dir/cmake_clean.cmake
.PHONY : CMakeFiles/routn.dir/clean

CMakeFiles/routn.dir/depend:
	cd /home/rotun-li/libgo-simple && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rotun-li/libgo-simple /home/rotun-li/libgo-simple /home/rotun-li/libgo-simple /home/rotun-li/libgo-simple /home/rotun-li/libgo-simple/CMakeFiles/routn.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/routn.dir/depend

