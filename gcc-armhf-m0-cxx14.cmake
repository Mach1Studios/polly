# Copyright (c) 2021, Mach1
# All rights reserved.

# install cross compiler on unix/macos
# - `brew tap ArmMbed/homebrew-formulae`
# - `brew install arm-none-eabi-gcc`
# - add to environment variables

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_init.cmake")

polly_init(
    "Linux / gcc / armhf / c++14 support / cortex-m0"
    "Unix Makefiles"
)

include("${CMAKE_CURRENT_LIST_DIR}/utilities/polly_common.cmake")

# set system name, this sets the variable CMAKE_CROSSCOMPILING
set(CMAKE_SYSTEM_NAME Linux)
set(CROSS_COMPILE_TOOLCHAIN_PREFIX "arm-none-eabi")

include(
    "${CMAKE_CURRENT_LIST_DIR}/compiler/gcc-cross-compile.cmake"
)
include("${CMAKE_CURRENT_LIST_DIR}/flags/cxx14.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/flags/hardfloat.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/flags/cortex-m0.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/flags/arm-none-eabi.cmake")
