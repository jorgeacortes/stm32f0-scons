@echo off
docker run --rm -v %cd%:/ws arm-none-eabi-scons:1.0.0 bash -c "scons -c && rm -rf build/*"
