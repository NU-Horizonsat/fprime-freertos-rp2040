# arm_toolchain.cmake

set(CMAKE_SYSTEM_NAME FreeRTOS)
set(CMAKE_SYSTEM_PROCESSOR cortex-m0plus)
set(FPRIME_PLATFORM "FreeRTOS")

# Specify the cross compiler (in PATH already)
set(CMAKE_C_COMPILER arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER arm-none-eabi-g++)

# Path to root of toolchain package
set(CMAKE_FIND_ROOT_PATH /usr)

# DO NOT EDIT
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# Set the compiler flags
set(CMAKE_C_FLAGS_INIT "-mcpu=cortex-m0plus -mthumb -O2 -D__RP2040__ -D__ARM_ARCH_6M__ -D__FPU_PRESENT=0 -D__ARM_ARCH_ISA_THUMB=1 -D__ARM_ARCH=6M")
set(CMAKE_CXX_FLAGS_INIT "-mcpu=cortex-m0plus -mthumb -O2 -D__RP2040__ -D__ARM_ARCH_6M__ -D__FPU_PRESENT=0 -D__ARM_ARCH_ISA_THUMB=1 -D__ARM_ARCH=6M")
set(CMAKE_EXE_LINKER_FLAGS_INIT "-T rp2040.ld -Wl,--gc-sections -Wl,-Map=output.map,--cref -Wl,--start-group -lm -lc -lgcc -Wl,--end-group")

# Prevent CMake from adding its own -mcpu and -mthumb flags
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS_INIT}" CACHE STRING "Initial C FLAGS" FORCE)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS_INIT}" CACHE STRING "Initial CXX FLAGS" FORCE)
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS_INIT}" CACHE STRING "Initial EXE LINKER FLAGS" FORCE)

# Remove POSIX
set(FPRIME_USE_POSIX OFF)

