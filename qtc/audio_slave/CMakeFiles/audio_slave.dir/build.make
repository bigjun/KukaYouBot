# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/youbot/uva_at_work_catkin/src/audio_slave

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/youbot/uva_at_work_catkin/src/qtc/audio_slave

# Include any dependencies generated for this target.
include CMakeFiles/audio_slave.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/audio_slave.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/audio_slave.dir/flags.make

CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.o: CMakeFiles/audio_slave.dir/flags.make
CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.o: /home/youbot/uva_at_work_catkin/src/audio_slave/src/audio_slave_node.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/youbot/uva_at_work_catkin/src/qtc/audio_slave/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.o -c /home/youbot/uva_at_work_catkin/src/audio_slave/src/audio_slave_node.cpp

CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/youbot/uva_at_work_catkin/src/audio_slave/src/audio_slave_node.cpp > CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.i

CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/youbot/uva_at_work_catkin/src/audio_slave/src/audio_slave_node.cpp -o CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.s

CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.o.requires:
.PHONY : CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.o.requires

CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.o.provides: CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.o.requires
	$(MAKE) -f CMakeFiles/audio_slave.dir/build.make CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.o.provides.build
.PHONY : CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.o.provides

CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.o.provides.build: CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.o

# Object files for target audio_slave
audio_slave_OBJECTS = \
"CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.o"

# External object files for target audio_slave
audio_slave_EXTERNAL_OBJECTS =

devel/lib/libaudio_slave.so: CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.o
devel/lib/libaudio_slave.so: CMakeFiles/audio_slave.dir/build.make
devel/lib/libaudio_slave.so: CMakeFiles/audio_slave.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library devel/lib/libaudio_slave.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/audio_slave.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/audio_slave.dir/build: devel/lib/libaudio_slave.so
.PHONY : CMakeFiles/audio_slave.dir/build

CMakeFiles/audio_slave.dir/requires: CMakeFiles/audio_slave.dir/src/audio_slave_node.cpp.o.requires
.PHONY : CMakeFiles/audio_slave.dir/requires

CMakeFiles/audio_slave.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/audio_slave.dir/cmake_clean.cmake
.PHONY : CMakeFiles/audio_slave.dir/clean

CMakeFiles/audio_slave.dir/depend:
	cd /home/youbot/uva_at_work_catkin/src/qtc/audio_slave && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/youbot/uva_at_work_catkin/src/audio_slave /home/youbot/uva_at_work_catkin/src/audio_slave /home/youbot/uva_at_work_catkin/src/qtc/audio_slave /home/youbot/uva_at_work_catkin/src/qtc/audio_slave /home/youbot/uva_at_work_catkin/src/qtc/audio_slave/CMakeFiles/audio_slave.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/audio_slave.dir/depend
