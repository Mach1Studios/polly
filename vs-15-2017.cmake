# Copyright (c) 2015-2017, Ruslan Baratov
# All rights reserved.

if(DEFINED POLLY_VS_15_2017_CMAKE_)
  return()
else()
  set(POLLY_VS_15_2017_CMAKE_ 1)
  set(COMPILE_MT 0)
endif()

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_init.cmake")

polly_init(
    "Visual Studio 15 2017"
    "Visual Studio 15 2017"
)

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_common.cmake")
