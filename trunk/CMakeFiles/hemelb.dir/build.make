# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/local/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code

# Utility rule file for hemelb.

# Include the progress variables for this target.
include CMakeFiles/hemelb.dir/progress.make

CMakeFiles/hemelb: CMakeFiles/hemelb-complete

CMakeFiles/hemelb-complete: hemelb-prefix/src/hemelb-stamp/hemelb-install
CMakeFiles/hemelb-complete: hemelb-prefix/src/hemelb-stamp/hemelb-mkdir
CMakeFiles/hemelb-complete: hemelb-prefix/src/hemelb-stamp/hemelb-download
CMakeFiles/hemelb-complete: hemelb-prefix/src/hemelb-stamp/hemelb-update
CMakeFiles/hemelb-complete: hemelb-prefix/src/hemelb-stamp/hemelb-patch
CMakeFiles/hemelb-complete: hemelb-prefix/src/hemelb-stamp/hemelb-configure
CMakeFiles/hemelb-complete: hemelb-prefix/src/hemelb-stamp/hemelb-build
CMakeFiles/hemelb-complete: hemelb-prefix/src/hemelb-stamp/hemelb-install
	$(CMAKE_COMMAND) -E cmake_progress_report /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Completed 'hemelb'"
	/usr/local/bin/cmake -E make_directory /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/CMakeFiles
	/usr/local/bin/cmake -E touch /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/CMakeFiles/hemelb-complete
	/usr/local/bin/cmake -E touch /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src/hemelb-stamp/hemelb-done

hemelb-prefix/src/hemelb-stamp/hemelb-install: hemelb-prefix/src/hemelb-stamp/hemelb-build
	$(CMAKE_COMMAND) -E cmake_progress_report /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing install step for 'hemelb'"
	cd /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src/hemelb-build && $(MAKE) install
	cd /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src/hemelb-build && /usr/local/bin/cmake -E touch /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src/hemelb-stamp/hemelb-install

hemelb-prefix/src/hemelb-stamp/hemelb-mkdir:
	$(CMAKE_COMMAND) -E cmake_progress_report /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Creating directories for 'hemelb'"
	/usr/local/bin/cmake -E make_directory /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src/hemelb
	/usr/local/bin/cmake -E make_directory /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src/hemelb-build
	/usr/local/bin/cmake -E make_directory /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix
	/usr/local/bin/cmake -E make_directory /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/tmp
	/usr/local/bin/cmake -E make_directory /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src/hemelb-stamp
	/usr/local/bin/cmake -E make_directory /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src
	/usr/local/bin/cmake -E touch /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src/hemelb-stamp/hemelb-mkdir

hemelb-prefix/src/hemelb-stamp/hemelb-download: hemelb-prefix/src/hemelb-stamp/hemelb-urlinfo.txt
hemelb-prefix/src/hemelb-stamp/hemelb-download: hemelb-prefix/src/hemelb-stamp/hemelb-mkdir
	$(CMAKE_COMMAND) -E cmake_progress_report /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing download step (DIR copy) for 'hemelb'"
	cd /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src && /usr/local/bin/cmake -E remove_directory /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src/hemelb
	cd /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src && /usr/local/bin/cmake -E copy_directory /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src/hemelb
	cd /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src && /usr/local/bin/cmake -E touch /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src/hemelb-stamp/hemelb-download

hemelb-prefix/src/hemelb-stamp/hemelb-update: hemelb-prefix/src/hemelb-stamp/hemelb-download
	$(CMAKE_COMMAND) -E cmake_progress_report /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "No update step for 'hemelb'"
	/usr/local/bin/cmake -E touch /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src/hemelb-stamp/hemelb-update

hemelb-prefix/src/hemelb-stamp/hemelb-patch: hemelb-prefix/src/hemelb-stamp/hemelb-download
	$(CMAKE_COMMAND) -E cmake_progress_report /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "No patch step for 'hemelb'"
	/usr/local/bin/cmake -E touch /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src/hemelb-stamp/hemelb-patch

hemelb-prefix/src/hemelb-stamp/hemelb-configure: hemelb-prefix/tmp/hemelb-cfgcmd.txt
hemelb-prefix/src/hemelb-stamp/hemelb-configure: hemelb-prefix/src/hemelb-stamp/hemelb-update
hemelb-prefix/src/hemelb-stamp/hemelb-configure: hemelb-prefix/src/hemelb-stamp/hemelb-patch
	$(CMAKE_COMMAND) -E cmake_progress_report /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing configure step for 'hemelb'"
	cd /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src/hemelb-build && cmake /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src/hemelb -DCMAKE_INSTALL_PREFIX=/usr/local -DHEMELB_DEPENDENCIES_PATH=/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/dependencies -DHEMELB_DEPENDENCIES_INSTALL_PATH=/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/dependencies -DTIXML_USE_STL=ON -DHEMELB_USE_DEBUGGER=OFF -DHEMELB_VALIDATE_GEOMETRY=OFF -DHEMELB_LOG_LEVEL=Info -DHEMELB_STEERING_LIB=basic -DHEMELB_USE_MULTIMACHINE=OFF -DHEMELB_BUILD_UNITTESTS=ON -DHEMELB_USE_STREAKLINES=OFF -DHEMELB_OPTIMISATION=-O4 -DHEMELB_READING_GROUP_SIZE=5 -DCMAKE_C_COMPILER=/usr/bin/cc -DCMAKE_CXX_COMPILER=/usr/bin/c++ -DMPI_C_COMPILER=/tools/modulesystem/tools/mpi/mpich-3.0.4/install/sled11.x86_64.gcc.release/bin/mpicc -DMPI_CXX_COMPILER=/tools/modulesystem/tools/mpi/mpich-3.0.4/install/sled11.x86_64.gcc.release/bin/mpicxx -DMPI_C_NO_INTERROGATE= -DMPI_CXX_NO_INTERROGATE= -DHEMELB_USE_ALL_WARNINGS_GNU=ON -DHEMELB_USE_BOOST=ON -DHEMELB_STEERING_HOST=CCS -DCTEMPLATE_USE_STATIC=OFF -DCPPUNIT_USE_STATIC=OFF -DHEMELB_DEPENDENCIES_SET_RPATH=ON -DHEMELB_STATIC_ASSERT=ON -DHEMELB_LATTICE=D3Q15 -DHEMELB_KERNEL=LBGK -DHEMELB_WALL_BOUNDARY=SIMPLEBOUNCEBACK -DHEMELB_WAIT_ON_CONNECT=ON -DHEMELB_BUILD_MULTISCALE=OFF -DHEMELB_IMAGES_TO_NULL=OFF -DHEMELB_USE_SSE3=OFF
	cd /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src/hemelb-build && /usr/local/bin/cmake -E touch /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src/hemelb-stamp/hemelb-configure

hemelb-prefix/src/hemelb-stamp/hemelb-build: hemelb-prefix/src/hemelb-stamp/hemelb-configure
	$(CMAKE_COMMAND) -E cmake_progress_report /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing build step for 'hemelb'"
	cd /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src/hemelb-build && make -j1
	cd /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src/hemelb-build && /usr/local/bin/cmake -E touch /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/hemelb-prefix/src/hemelb-stamp/hemelb-build

hemelb: CMakeFiles/hemelb
hemelb: CMakeFiles/hemelb-complete
hemelb: hemelb-prefix/src/hemelb-stamp/hemelb-install
hemelb: hemelb-prefix/src/hemelb-stamp/hemelb-mkdir
hemelb: hemelb-prefix/src/hemelb-stamp/hemelb-download
hemelb: hemelb-prefix/src/hemelb-stamp/hemelb-update
hemelb: hemelb-prefix/src/hemelb-stamp/hemelb-patch
hemelb: hemelb-prefix/src/hemelb-stamp/hemelb-configure
hemelb: hemelb-prefix/src/hemelb-stamp/hemelb-build
hemelb: CMakeFiles/hemelb.dir/build.make
.PHONY : hemelb

# Rule to build all files generated by this target.
CMakeFiles/hemelb.dir/build: hemelb
.PHONY : CMakeFiles/hemelb.dir/build

CMakeFiles/hemelb.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hemelb.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hemelb.dir/clean

CMakeFiles/hemelb.dir/depend:
	cd /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/CMakeFiles/hemelb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hemelb.dir/depend

