# Copyright (c) 2015-2017, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_VS_16_2019_MT_CMAKE_)
  return()
else()
  set(POLLY_VS_16_2019_MT_CMAKE_ 1)
  set(COMPILE_MT 1)
endif()

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_init.cmake")

polly_init(
    "Visual Studio 16 2019 / MT (static)"
    "Visual Studio 16 2019"
)

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_common.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/flags/vs-platform-win32.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/flags/vs-mt.cmake")