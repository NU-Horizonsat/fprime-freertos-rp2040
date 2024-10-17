# F Prime Port for the RP2040 Eval Board with FreeRTOS

This repository contains an F Prime (F') port for Microchips DM320113 demo board, utilizing FreeRTOS for real-time operating system capabilities. The project is cross-compiled using the `xc32` compiler. This project should be included and adapted for any project looking to use this FreeRTOS port. A reference application for how to configure a new project can be seen here: https://github.com/fprime-community/fprime-microchip-DM320113-demo 

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Platform Configuration](#platform-configuration)

## Overview

This project demonstrates the integration of NASA's F' (F Prime) framework with Microchips DM320113 demo board. It leverages FreeRTOS for task scheduling and real-time capabilities. The project is set up to be built with the `xc32` compiler, ensuring compatibility with the targeted hardware.

## Features

- **F Prime Integration:** Utilize the robust F Prime framework for building flight software applications.
- **FreeRTOS Support:** Benefit from the real-time capabilities of FreeRTOS.
- **Cross Compilation:** Use the `xc32` compiler for building the project.
- **Toolchain and Platform Configuration:** Custom `Toolchain.cmake` and `Platform.cmake` for the DM320113 board and FreeRTOS.

## Getting Started

### Prerequisites

- [XC32 Compiler](https://www.microchip.com/mplab/compilers)
- [CMake](https://cmake.org/)
- [Git](https://git-scm.com/)
- [F Prime](https://nasa.github.io/fprime/)
- [FreeRTOS](https://www.freertos.org/)


## Toolchain and Platform Configuration
The `Toolchain.cmake` file enables the xc32 compiler to work with the F' framework.

The `Platform.cmake` file is tailored for the DM320113 eval board with FreeRTOS. It includes specific configurations required for building and running the project on the target hardware.

### Toolchain.cmake & Platform.cmake Highlights

- **Compiler Settings:** Configuration for the `xc32` compiler.
- **Board Specifications:** Definitions for the DM320113 board.
- **RTOS Integration:** Settings for integrating FreeRTOS with F Prime.
