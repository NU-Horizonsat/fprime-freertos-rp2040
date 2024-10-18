# Specify the OS type include directive
add_definitions(-DTGT_OS_TYPE_FREERTOS)

# Specify that a thread package should be searched in the toolchain directory
if (NOT DEFINED FPRIME_USE_FREERTOS_SCHEDULER)
    set(FPRIME_USE_FREERTOS_SCHEDULER ON)
    # message(STATUS "Requiring thread library")
    # FIND_PACKAGE ( Threads REQUIRED )
endif()

# Define SKIP_FLOAT_IEEE_754_COMPLIANCE
add_definitions(-DSKIP_FLOAT_IEEE_754_COMPLIANCE=1)

# Text Logging OFF
add_definitions(-DFW_ENABLE_TEXT_LOGGING=0)
set(FPRIME_ENABLE_TEXT_LOGGERS OFF)

# Pico SDK cmake initialization
set(FPRIME_PICO_SDK_PATH "${CMAKE_CURRENT_LIST_DIR}/pico-sdk")
set(PICO_SDK_PATH "${FPRIME_PICO_SDK_PATH}")
include(${FPRIME_PICO_SDK_PATH}/external/pico_sdk_import.cmake)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
pico_sdk_init()
