# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.24

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\CLion\CLion 2022.3.2\bin\cmake\win\x64\bin\cmake.exe"

# The command to remove a file.
RM = "D:\CLion\CLion 2022.3.2\bin\cmake\win\x64\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\sixqaq\Desktop\draw_v2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\sixqaq\Desktop\draw_v2\build

# Include any dependencies generated for this target.
include CMakeFiles/main.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/main.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.dir/flags.make

main_autogen/DCE47BCNNQ/qrc_resources.cpp: C:/Users/sixqaq/Desktop/draw_v2/rc/resources.qrc
main_autogen/DCE47BCNNQ/qrc_resources.cpp: CMakeFiles/main_autogen.dir/AutoRcc_resources_DCE47BCNNQ_Info.json
main_autogen/DCE47BCNNQ/qrc_resources.cpp: C:/Users/sixqaq/Desktop/draw_v2/rc/icon.ico
main_autogen/DCE47BCNNQ/qrc_resources.cpp: D:/Qt/6.3.2/mingw_64/./bin/rcc.exe
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\sixqaq\Desktop\draw_v2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic RCC for rc/resources.qrc"
	"D:\CLion\CLion 2022.3.2\bin\cmake\win\x64\bin\cmake.exe" -E cmake_autorcc C:/Users/sixqaq/Desktop/draw_v2/build/CMakeFiles/main_autogen.dir/AutoRcc_resources_DCE47BCNNQ_Info.json Debug

CMakeFiles/main.dir/main_autogen/mocs_compilation.cpp.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/main_autogen/mocs_compilation.cpp.obj: CMakeFiles/main.dir/includes_CXX.rsp
CMakeFiles/main.dir/main_autogen/mocs_compilation.cpp.obj: main_autogen/mocs_compilation.cpp
CMakeFiles/main.dir/main_autogen/mocs_compilation.cpp.obj: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\sixqaq\Desktop\draw_v2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/main.dir/main_autogen/mocs_compilation.cpp.obj"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/main_autogen/mocs_compilation.cpp.obj -MF CMakeFiles\main.dir\main_autogen\mocs_compilation.cpp.obj.d -o CMakeFiles\main.dir\main_autogen\mocs_compilation.cpp.obj -c C:\Users\sixqaq\Desktop\draw_v2\build\main_autogen\mocs_compilation.cpp

CMakeFiles/main.dir/main_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/main_autogen/mocs_compilation.cpp.i"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\sixqaq\Desktop\draw_v2\build\main_autogen\mocs_compilation.cpp > CMakeFiles\main.dir\main_autogen\mocs_compilation.cpp.i

CMakeFiles/main.dir/main_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/main_autogen/mocs_compilation.cpp.s"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\sixqaq\Desktop\draw_v2\build\main_autogen\mocs_compilation.cpp -o CMakeFiles\main.dir\main_autogen\mocs_compilation.cpp.s

CMakeFiles/main.dir/src/Image.cpp.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/Image.cpp.obj: CMakeFiles/main.dir/includes_CXX.rsp
CMakeFiles/main.dir/src/Image.cpp.obj: C:/Users/sixqaq/Desktop/draw_v2/src/Image.cpp
CMakeFiles/main.dir/src/Image.cpp.obj: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\sixqaq\Desktop\draw_v2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/main.dir/src/Image.cpp.obj"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/src/Image.cpp.obj -MF CMakeFiles\main.dir\src\Image.cpp.obj.d -o CMakeFiles\main.dir\src\Image.cpp.obj -c C:\Users\sixqaq\Desktop\draw_v2\src\Image.cpp

CMakeFiles/main.dir/src/Image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/Image.cpp.i"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\sixqaq\Desktop\draw_v2\src\Image.cpp > CMakeFiles\main.dir\src\Image.cpp.i

CMakeFiles/main.dir/src/Image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/Image.cpp.s"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\sixqaq\Desktop\draw_v2\src\Image.cpp -o CMakeFiles\main.dir\src\Image.cpp.s

CMakeFiles/main.dir/src/MainWindow.cpp.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/MainWindow.cpp.obj: CMakeFiles/main.dir/includes_CXX.rsp
CMakeFiles/main.dir/src/MainWindow.cpp.obj: C:/Users/sixqaq/Desktop/draw_v2/src/MainWindow.cpp
CMakeFiles/main.dir/src/MainWindow.cpp.obj: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\sixqaq\Desktop\draw_v2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/main.dir/src/MainWindow.cpp.obj"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/src/MainWindow.cpp.obj -MF CMakeFiles\main.dir\src\MainWindow.cpp.obj.d -o CMakeFiles\main.dir\src\MainWindow.cpp.obj -c C:\Users\sixqaq\Desktop\draw_v2\src\MainWindow.cpp

CMakeFiles/main.dir/src/MainWindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/MainWindow.cpp.i"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\sixqaq\Desktop\draw_v2\src\MainWindow.cpp > CMakeFiles\main.dir\src\MainWindow.cpp.i

CMakeFiles/main.dir/src/MainWindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/MainWindow.cpp.s"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\sixqaq\Desktop\draw_v2\src\MainWindow.cpp -o CMakeFiles\main.dir\src\MainWindow.cpp.s

CMakeFiles/main.dir/src/Mouse.cpp.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/Mouse.cpp.obj: CMakeFiles/main.dir/includes_CXX.rsp
CMakeFiles/main.dir/src/Mouse.cpp.obj: C:/Users/sixqaq/Desktop/draw_v2/src/Mouse.cpp
CMakeFiles/main.dir/src/Mouse.cpp.obj: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\sixqaq\Desktop\draw_v2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/main.dir/src/Mouse.cpp.obj"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/src/Mouse.cpp.obj -MF CMakeFiles\main.dir\src\Mouse.cpp.obj.d -o CMakeFiles\main.dir\src\Mouse.cpp.obj -c C:\Users\sixqaq\Desktop\draw_v2\src\Mouse.cpp

CMakeFiles/main.dir/src/Mouse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/Mouse.cpp.i"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\sixqaq\Desktop\draw_v2\src\Mouse.cpp > CMakeFiles\main.dir\src\Mouse.cpp.i

CMakeFiles/main.dir/src/Mouse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/Mouse.cpp.s"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\sixqaq\Desktop\draw_v2\src\Mouse.cpp -o CMakeFiles\main.dir\src\Mouse.cpp.s

CMakeFiles/main.dir/src/api.cpp.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/api.cpp.obj: CMakeFiles/main.dir/includes_CXX.rsp
CMakeFiles/main.dir/src/api.cpp.obj: C:/Users/sixqaq/Desktop/draw_v2/src/api.cpp
CMakeFiles/main.dir/src/api.cpp.obj: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\sixqaq\Desktop\draw_v2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/main.dir/src/api.cpp.obj"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/src/api.cpp.obj -MF CMakeFiles\main.dir\src\api.cpp.obj.d -o CMakeFiles\main.dir\src\api.cpp.obj -c C:\Users\sixqaq\Desktop\draw_v2\src\api.cpp

CMakeFiles/main.dir/src/api.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/api.cpp.i"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\sixqaq\Desktop\draw_v2\src\api.cpp > CMakeFiles\main.dir\src\api.cpp.i

CMakeFiles/main.dir/src/api.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/api.cpp.s"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\sixqaq\Desktop\draw_v2\src\api.cpp -o CMakeFiles\main.dir\src\api.cpp.s

CMakeFiles/main.dir/src/main.cpp.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/main.cpp.obj: CMakeFiles/main.dir/includes_CXX.rsp
CMakeFiles/main.dir/src/main.cpp.obj: C:/Users/sixqaq/Desktop/draw_v2/src/main.cpp
CMakeFiles/main.dir/src/main.cpp.obj: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\sixqaq\Desktop\draw_v2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/main.dir/src/main.cpp.obj"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/src/main.cpp.obj -MF CMakeFiles\main.dir\src\main.cpp.obj.d -o CMakeFiles\main.dir\src\main.cpp.obj -c C:\Users\sixqaq\Desktop\draw_v2\src\main.cpp

CMakeFiles/main.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/main.cpp.i"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\sixqaq\Desktop\draw_v2\src\main.cpp > CMakeFiles\main.dir\src\main.cpp.i

CMakeFiles/main.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/main.cpp.s"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\sixqaq\Desktop\draw_v2\src\main.cpp -o CMakeFiles\main.dir\src\main.cpp.s

CMakeFiles/main.dir/rc/icon.rc.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/rc/icon.rc.obj: C:/Users/sixqaq/Desktop/draw_v2/rc/icon.rc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\sixqaq\Desktop\draw_v2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building RC object CMakeFiles/main.dir/rc/icon.rc.obj"
	D:\tdm-gcc\bin\windres.exe -O coff $(RC_DEFINES) $(RC_INCLUDES) $(RC_FLAGS) C:\Users\sixqaq\Desktop\draw_v2\rc\icon.rc CMakeFiles\main.dir\rc\icon.rc.obj

CMakeFiles/main.dir/main_autogen/DCE47BCNNQ/qrc_resources.cpp.obj: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/main_autogen/DCE47BCNNQ/qrc_resources.cpp.obj: CMakeFiles/main.dir/includes_CXX.rsp
CMakeFiles/main.dir/main_autogen/DCE47BCNNQ/qrc_resources.cpp.obj: main_autogen/DCE47BCNNQ/qrc_resources.cpp
CMakeFiles/main.dir/main_autogen/DCE47BCNNQ/qrc_resources.cpp.obj: CMakeFiles/main.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\sixqaq\Desktop\draw_v2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/main.dir/main_autogen/DCE47BCNNQ/qrc_resources.cpp.obj"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.dir/main_autogen/DCE47BCNNQ/qrc_resources.cpp.obj -MF CMakeFiles\main.dir\main_autogen\DCE47BCNNQ\qrc_resources.cpp.obj.d -o CMakeFiles\main.dir\main_autogen\DCE47BCNNQ\qrc_resources.cpp.obj -c C:\Users\sixqaq\Desktop\draw_v2\build\main_autogen\DCE47BCNNQ\qrc_resources.cpp

CMakeFiles/main.dir/main_autogen/DCE47BCNNQ/qrc_resources.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/main_autogen/DCE47BCNNQ/qrc_resources.cpp.i"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\sixqaq\Desktop\draw_v2\build\main_autogen\DCE47BCNNQ\qrc_resources.cpp > CMakeFiles\main.dir\main_autogen\DCE47BCNNQ\qrc_resources.cpp.i

CMakeFiles/main.dir/main_autogen/DCE47BCNNQ/qrc_resources.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/main_autogen/DCE47BCNNQ/qrc_resources.cpp.s"
	D:\tdm-gcc\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\sixqaq\Desktop\draw_v2\build\main_autogen\DCE47BCNNQ\qrc_resources.cpp -o CMakeFiles\main.dir\main_autogen\DCE47BCNNQ\qrc_resources.cpp.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main_autogen/mocs_compilation.cpp.obj" \
"CMakeFiles/main.dir/src/Image.cpp.obj" \
"CMakeFiles/main.dir/src/MainWindow.cpp.obj" \
"CMakeFiles/main.dir/src/Mouse.cpp.obj" \
"CMakeFiles/main.dir/src/api.cpp.obj" \
"CMakeFiles/main.dir/src/main.cpp.obj" \
"CMakeFiles/main.dir/rc/icon.rc.obj" \
"CMakeFiles/main.dir/main_autogen/DCE47BCNNQ/qrc_resources.cpp.obj"

# External object files for target main
main_EXTERNAL_OBJECTS =

C:/Users/sixqaq/Desktop/draw_v2/bin/main.exe: CMakeFiles/main.dir/main_autogen/mocs_compilation.cpp.obj
C:/Users/sixqaq/Desktop/draw_v2/bin/main.exe: CMakeFiles/main.dir/src/Image.cpp.obj
C:/Users/sixqaq/Desktop/draw_v2/bin/main.exe: CMakeFiles/main.dir/src/MainWindow.cpp.obj
C:/Users/sixqaq/Desktop/draw_v2/bin/main.exe: CMakeFiles/main.dir/src/Mouse.cpp.obj
C:/Users/sixqaq/Desktop/draw_v2/bin/main.exe: CMakeFiles/main.dir/src/api.cpp.obj
C:/Users/sixqaq/Desktop/draw_v2/bin/main.exe: CMakeFiles/main.dir/src/main.cpp.obj
C:/Users/sixqaq/Desktop/draw_v2/bin/main.exe: CMakeFiles/main.dir/rc/icon.rc.obj
C:/Users/sixqaq/Desktop/draw_v2/bin/main.exe: CMakeFiles/main.dir/main_autogen/DCE47BCNNQ/qrc_resources.cpp.obj
C:/Users/sixqaq/Desktop/draw_v2/bin/main.exe: CMakeFiles/main.dir/build.make
C:/Users/sixqaq/Desktop/draw_v2/bin/main.exe: D:/Qt/6.3.2/mingw_64/lib/libQt6Widgets.a
C:/Users/sixqaq/Desktop/draw_v2/bin/main.exe: D:/Qt/6.3.2/mingw_64/lib/libQt6Test.a
C:/Users/sixqaq/Desktop/draw_v2/bin/main.exe: D:/Qt/6.3.2/mingw_64/lib/libQt6Gui.a
C:/Users/sixqaq/Desktop/draw_v2/bin/main.exe: D:/Qt/6.3.2/mingw_64/lib/libQt6Core.a
C:/Users/sixqaq/Desktop/draw_v2/bin/main.exe: CMakeFiles/main.dir/linklibs.rsp
C:/Users/sixqaq/Desktop/draw_v2/bin/main.exe: CMakeFiles/main.dir/objects1.rsp
C:/Users/sixqaq/Desktop/draw_v2/bin/main.exe: CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\sixqaq\Desktop\draw_v2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable C:\Users\sixqaq\Desktop\draw_v2\bin\main.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\main.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.dir/build: C:/Users/sixqaq/Desktop/draw_v2/bin/main.exe
.PHONY : CMakeFiles/main.dir/build

CMakeFiles/main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\main.dir\cmake_clean.cmake
.PHONY : CMakeFiles/main.dir/clean

CMakeFiles/main.dir/depend: main_autogen/DCE47BCNNQ/qrc_resources.cpp
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\sixqaq\Desktop\draw_v2 C:\Users\sixqaq\Desktop\draw_v2 C:\Users\sixqaq\Desktop\draw_v2\build C:\Users\sixqaq\Desktop\draw_v2\build C:\Users\sixqaq\Desktop\draw_v2\build\CMakeFiles\main.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main.dir/depend

