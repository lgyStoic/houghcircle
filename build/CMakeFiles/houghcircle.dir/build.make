# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.7.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.7.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lgy/Downloads/houghcircle

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lgy/Downloads/houghcircle/build

# Include any dependencies generated for this target.
include CMakeFiles/houghcircle.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/houghcircle.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/houghcircle.dir/flags.make

CMakeFiles/houghcircle.dir/houghcircle.cpp.o: CMakeFiles/houghcircle.dir/flags.make
CMakeFiles/houghcircle.dir/houghcircle.cpp.o: ../houghcircle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lgy/Downloads/houghcircle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/houghcircle.dir/houghcircle.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/houghcircle.dir/houghcircle.cpp.o -c /Users/lgy/Downloads/houghcircle/houghcircle.cpp

CMakeFiles/houghcircle.dir/houghcircle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/houghcircle.dir/houghcircle.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lgy/Downloads/houghcircle/houghcircle.cpp > CMakeFiles/houghcircle.dir/houghcircle.cpp.i

CMakeFiles/houghcircle.dir/houghcircle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/houghcircle.dir/houghcircle.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lgy/Downloads/houghcircle/houghcircle.cpp -o CMakeFiles/houghcircle.dir/houghcircle.cpp.s

CMakeFiles/houghcircle.dir/houghcircle.cpp.o.requires:

.PHONY : CMakeFiles/houghcircle.dir/houghcircle.cpp.o.requires

CMakeFiles/houghcircle.dir/houghcircle.cpp.o.provides: CMakeFiles/houghcircle.dir/houghcircle.cpp.o.requires
	$(MAKE) -f CMakeFiles/houghcircle.dir/build.make CMakeFiles/houghcircle.dir/houghcircle.cpp.o.provides.build
.PHONY : CMakeFiles/houghcircle.dir/houghcircle.cpp.o.provides

CMakeFiles/houghcircle.dir/houghcircle.cpp.o.provides.build: CMakeFiles/houghcircle.dir/houghcircle.cpp.o


# Object files for target houghcircle
houghcircle_OBJECTS = \
"CMakeFiles/houghcircle.dir/houghcircle.cpp.o"

# External object files for target houghcircle
houghcircle_EXTERNAL_OBJECTS =

houghcircle: CMakeFiles/houghcircle.dir/houghcircle.cpp.o
houghcircle: CMakeFiles/houghcircle.dir/build.make
houghcircle: /usr/local/lib/libpng.dylib
houghcircle: CMakeFiles/houghcircle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lgy/Downloads/houghcircle/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable houghcircle"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/houghcircle.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/houghcircle.dir/build: houghcircle

.PHONY : CMakeFiles/houghcircle.dir/build

CMakeFiles/houghcircle.dir/requires: CMakeFiles/houghcircle.dir/houghcircle.cpp.o.requires

.PHONY : CMakeFiles/houghcircle.dir/requires

CMakeFiles/houghcircle.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/houghcircle.dir/cmake_clean.cmake
.PHONY : CMakeFiles/houghcircle.dir/clean

CMakeFiles/houghcircle.dir/depend:
	cd /Users/lgy/Downloads/houghcircle/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lgy/Downloads/houghcircle /Users/lgy/Downloads/houghcircle /Users/lgy/Downloads/houghcircle/build /Users/lgy/Downloads/houghcircle/build /Users/lgy/Downloads/houghcircle/build/CMakeFiles/houghcircle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/houghcircle.dir/depend

