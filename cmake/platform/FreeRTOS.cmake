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
set(FPRIME_PICO_SDK_PATH "/usr/local/pico-sdk")
include(${FPRIME_PICO_SDK_PATH}/pico_sdk_init.cmake)
pico_sdk_init()

# Add the FreeRTOS subdirectory and divcheck
add_subdirectory(freertos)
add_subdirectory(divcheck)