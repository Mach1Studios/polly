# Copyright (c) 2014-2019, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_VS_15_2017_WIN64_MT_CMAKE_)
  return()
else()
  set(POLLY_VS_15_2017_WIN64_MT_CMAKE_ 1)
  set(COMPILE_MT 1)
endif()

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_init.cmake")

polly_init(
    "Visual Studio 15 2017 Win64 / MT (static)"
    "Visual Studio 15 2017 Win64"
)

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_common.cmake")

include("${CMAKE_CURRENT_LIST_DIR}/flags/vs-mt.cmake")
