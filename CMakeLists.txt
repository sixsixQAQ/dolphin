cmake_minimum_required(VERSION 3.1)
project(main)
set(EXE main)

if(WIN32)
    set(CMAKE_PREFIX_PATH D:/Qt/6.3.2/mingw_64)
elseif(UNIX)
    set(CMAKE_PREFIX_PATH /opt/Qt/6.3.2/gcc_64)
endif()

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

#可执行文件在bin下
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/bin)

#add_compile_options(-g)

FILE(GLOB INC ${CMAKE_SOURCE_DIR}/include/*.h)
FILE(GLOB QRC ${CMAKE_SOURCE_DIR}/rc/*.qrc)
aux_source_directory(${CMAKE_SOURCE_DIR}/src SRC)

if (WIN32)
    add_executable(${EXE} ${SRC} ${INC} ${QRC} ${CMAKE_SOURCE_DIR}/rc/icon.rc)#添加图标
    target_link_options(${EXE} PUBLIC -mwindows)#关闭控制台
else()
    add_executable(${EXE} ${SRC} ${INC} ${QRC})
endif ()

target_include_directories(${EXE} PUBLIC ${CMAKE_SOURCE_DIR}/include)

find_package(Qt6 REQUIRED Widgets Test)
target_link_libraries(${EXE} PUBLIC Qt6::Widgets Qt6::Test)


#linux平台鼠标实现要借助 libx11 和 libxtst 库
if(UNIX)
    target_link_libraries(${EXE} PUBLIC X11 Xtst)
endif()