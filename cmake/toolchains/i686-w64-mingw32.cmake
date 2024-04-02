if(AOM_BUILD_CMAKE_TOOLCHAINS_I686_MINGW_GCC_CMAKE_)
  return()
endif() # AOM_BUILD_CMAKE_TOOLCHAINS_I686_MINGW_GCC_CMAKE_
set(AOM_BUILD_CMAKE_TOOLCHAINS_I686_MINGW_GCC_CMAKE_ 1)
set(CMAKE_SYSTEM_PROCESSOR "i686")
set(CMAKE_SYSTEM_NAME "Windows")
if("${CROSS}" STREQUAL "")
  set(CROSS i686-w64-mingw32-)
endif()
if(NOT CMAKE_C_COMPILER)
  set(CMAKE_C_COMPILER ${CROSS}gcc)
endif()
if(NOT CMAKE_CXX_COMPILER)
  set(CMAKE_CXX_COMPILER ${CROSS}g++)
endif()
if(NOT CMAKE_AR)
  set(CMAKE_AR ${CROSS}ar CACHE FILEPATH Archiver)
endif()
if(NOT CMAKE_RANLIB)
  set(CMAKE_RANLIB ${CROSS}ranlib CACHE FILEPATH Indexer)
endif()