# Install script for directory: /group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Debug")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "0")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/CMakeFiles/CMakeRelink.dir/hemelb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/CMakeFiles/CMakeRelink.dir/unittests_hemelb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/CMakeFiles/CMakeRelink.dir/functionaltests_hemelb")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hemelb/resources" TYPE FILE FILES "/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/resources/report.txt.ctp")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hemelb/resources" TYPE FILE FILES "/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/resources/report.xml.ctp")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hemelb/resources" TYPE FILE FILES "/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/resources/four_cube.gmy")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hemelb/resources" TYPE FILE FILES "/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/resources/four_cube.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hemelb/resources" TYPE FILE FILES "/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/resources/four_cube_multiscale.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hemelb/resources" TYPE FILE FILES "/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/resources/config.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hemelb/resources" TYPE FILE FILES "/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/resources/config0_2_0.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hemelb/resources" TYPE FILE FILES "/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/resources/config_file_inlet.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hemelb/resources" TYPE FILE FILES "/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/resources/iolet.txt")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hemelb/resources" TYPE FILE FILES "/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/resources/config-velocity-iolet.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/hemelb/resources" TYPE FILE FILES "/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/resources/config_new_velocity_inlets.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/configuration/cmake_install.cmake")
  INCLUDE("/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/extraction/cmake_install.cmake")
  INCLUDE("/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/reporting/cmake_install.cmake")
  INCLUDE("/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/steering/cmake_install.cmake")
  INCLUDE("/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/vis/cmake_install.cmake")
  INCLUDE("/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/lb/cmake_install.cmake")
  INCLUDE("/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/geometry/cmake_install.cmake")
  INCLUDE("/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/net/cmake_install.cmake")
  INCLUDE("/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/debug/cmake_install.cmake")
  INCLUDE("/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/topology/cmake_install.cmake")
  INCLUDE("/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/util/cmake_install.cmake")
  INCLUDE("/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/io/cmake_install.cmake")
  INCLUDE("/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/log/cmake_install.cmake")
  INCLUDE("/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/colloids/cmake_install.cmake")
  INCLUDE("/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/resources/cmake_install.cmake")
  INCLUDE("/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/unittests/cmake_install.cmake")
  INCLUDE("/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/functionaltests/cpptests/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/group/SRV/Group-ScientificVisualization/FangChen/hemelb-dev/hemelb/Code/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
