#
# Main CMakeList for libhass_ent
#

#------------------------------------------------------------------------------------#
#                           Build directory check                                    #
#------------------------------------------------------------------------------------#
if(${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR})
  message(FATAL_ERROR "Libraries cannot be build in the source directory.")
endif(${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR})

#------------------------------------------------------------------------------------#
#                          CMake minimum version                                     #
#------------------------------------------------------------------------------------#
cmake_minimum_required (VERSION 2.6)

#------------------------------------------------------------------------------------#
#                                Project name                                        #
#------------------------------------------------------------------------------------#
if (UNIX)
    project (libanne Fortran C)
else ()
    project (libanne Fortran C)
endif ()

set (libanne_VERSION_MAJOR 4)
set (libanne_VERSION_MINOR 2)

#------------------------------------------------------------------------------------#
#                               Include subdirectories                               #
#------------------------------------------------------------------------------------#
include_directories(src/lib/INCLUDE_ANNE)
include_directories(src/lib/INCLUDE_HSPF)

add_subdirectory (src/lib/HEC)
add_subdirectory (src/lib/UTIL)

add_subdirectory (src/lib/ADWDM)
add_subdirectory (src/lib/AIDE)
add_subdirectory (src/lib/ANN)
add_subdirectory (src/lib/AWSTAT)
add_subdirectory (src/lib/GRAPH)
add_subdirectory (src/lib/STATS)
add_subdirectory (src/lib/WAIDE)
add_subdirectory (src/lib/WDM)


add_subdirectory (src/lib/HSPF)
#add_subdirectory (src/lib/HSPNODSS)
add_subdirectory (src/lib/HSPDSS)
add_subdirectory (src/lib/NEWAQT)
add_subdirectory (src/lib/IOWDM)


add_subdirectory (src/lib/HASSLIBS)

add_subdirectory (src/bin/wdmrx)
add_subdirectory (src/bin/wdimex)
add_subdirectory (src/bin/space)
#add_subdirectory (src/bin/mkcom)
add_subdirectory (msg)
