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
CMAKE_SOURCE_DIR = /home/youbot/uva_at_work_catkin/src/speech_recognizer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/youbot/uva_at_work_catkin/src/qtc/speech_recogniser

# Include any dependencies generated for this target.
include CMakeFiles/lcmtypes_speech_recognizer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lcmtypes_speech_recognizer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lcmtypes_speech_recognizer.dir/flags.make

CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.o: CMakeFiles/lcmtypes_speech_recognizer.dir/flags.make
CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.o: /home/youbot/uva_at_work_catkin/src/speech_recognizer/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/youbot/uva_at_work_catkin/src/qtc/speech_recogniser/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -fPIC -o CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.o   -c /home/youbot/uva_at_work_catkin/src/speech_recognizer/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c

CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -fPIC -E /home/youbot/uva_at_work_catkin/src/speech_recognizer/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c > CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.i

CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -fPIC -S /home/youbot/uva_at_work_catkin/src/speech_recognizer/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c -o CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.s

CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.o.requires:
.PHONY : CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.o.requires

CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.o.provides: CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.o.requires
	$(MAKE) -f CMakeFiles/lcmtypes_speech_recognizer.dir/build.make CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.o.provides.build
.PHONY : CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.o.provides

CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.o.provides.build: CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.o

# Object files for target lcmtypes_speech_recognizer
lcmtypes_speech_recognizer_OBJECTS = \
"CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.o"

# External object files for target lcmtypes_speech_recognizer
lcmtypes_speech_recognizer_EXTERNAL_OBJECTS =

lib/liblcmtypes_speech_recognizer.a: CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.o
lib/liblcmtypes_speech_recognizer.a: CMakeFiles/lcmtypes_speech_recognizer.dir/build.make
lib/liblcmtypes_speech_recognizer.a: CMakeFiles/lcmtypes_speech_recognizer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library lib/liblcmtypes_speech_recognizer.a"
	$(CMAKE_COMMAND) -P CMakeFiles/lcmtypes_speech_recognizer.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lcmtypes_speech_recognizer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lcmtypes_speech_recognizer.dir/build: lib/liblcmtypes_speech_recognizer.a
.PHONY : CMakeFiles/lcmtypes_speech_recognizer.dir/build

CMakeFiles/lcmtypes_speech_recognizer.dir/requires: CMakeFiles/lcmtypes_speech_recognizer.dir/lcmtypes/c/lcmtypes/h2sl_xml_string_t.c.o.requires
.PHONY : CMakeFiles/lcmtypes_speech_recognizer.dir/requires

CMakeFiles/lcmtypes_speech_recognizer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lcmtypes_speech_recognizer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lcmtypes_speech_recognizer.dir/clean

CMakeFiles/lcmtypes_speech_recognizer.dir/depend:
	cd /home/youbot/uva_at_work_catkin/src/qtc/speech_recogniser && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/youbot/uva_at_work_catkin/src/speech_recognizer /home/youbot/uva_at_work_catkin/src/speech_recognizer /home/youbot/uva_at_work_catkin/src/qtc/speech_recogniser /home/youbot/uva_at_work_catkin/src/qtc/speech_recogniser /home/youbot/uva_at_work_catkin/src/qtc/speech_recogniser/CMakeFiles/lcmtypes_speech_recognizer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lcmtypes_speech_recognizer.dir/depend

