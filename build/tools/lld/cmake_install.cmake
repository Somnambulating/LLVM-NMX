# Install script for directory: /volumes/hello2/nmx/llvm/tools/lld

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/volumes/hello2/nmx/llvm/tools/lld/include/" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/\\.svn$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/volumes/hello2/nmx/build/tools/lld/Common/cmake_install.cmake")
  include("/volumes/hello2/nmx/build/tools/lld/lib/cmake_install.cmake")
  include("/volumes/hello2/nmx/build/tools/lld/tools/lld/cmake_install.cmake")
  include("/volumes/hello2/nmx/build/tools/lld/test/cmake_install.cmake")
  include("/volumes/hello2/nmx/build/tools/lld/unittests/cmake_install.cmake")
  include("/volumes/hello2/nmx/build/tools/lld/docs/cmake_install.cmake")
  include("/volumes/hello2/nmx/build/tools/lld/COFF/cmake_install.cmake")
  include("/volumes/hello2/nmx/build/tools/lld/ELF/cmake_install.cmake")
  include("/volumes/hello2/nmx/build/tools/lld/MinGW/cmake_install.cmake")
  include("/volumes/hello2/nmx/build/tools/lld/wasm/cmake_install.cmake")

endif()

