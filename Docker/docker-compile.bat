@echo off
REM Launches build with docker image.
REM sed command for removing root path so vscode problemMatcher links to the correct path.
REM Output the log to out.txt
docker run --rm -v %cd%:/ws cortesja/arm-none-eabi-scons:1.0.0 bash -c "scons | sed -e 's/^\/ws\///' | tee build/log.txt"
