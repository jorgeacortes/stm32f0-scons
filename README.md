# STM32F0 Scons example

![Build](https://github.com/jorgeacortes/stm32f0-scons/workflows/Build/badge.svg)

This project contains a blinking led project example for compiling a STM32F072xB microcontroller with Scons and HAL drivers.

## Project contents

* `scons/compiler.scons` Scons script with arm-none-eabi toolchain loader for Scons.
* `scons/stm32f072xB.scons` Scons script with settings for compiling STM32F072xB microcontroller.
* `SConstruct` Scons script for launching Scons in a build directory.
* `prj.scons` Scons script with build settings.
* `basic.ioc` STM32CubeMX project.
* `debug.launch` debug configuration for STM32CubeIDE.
* `Docker/` scripts for compiling with [arm-none-eabi-scons Docker image](https://hub.docker.com/r/cortesja/arm-none-eabi-scons).

## Sample usage

```
# build project in debug mode
docker run --rm -v $(pwd):/ws cortesja/arm-none-eabi-scons:latest bash -c "scons"
```

## Notes

Toolchain is searched in the directory of the enviroment variable `ARM_TOOLCHAIN`, you can configure this as you require at `scons/compiler.scons`.
