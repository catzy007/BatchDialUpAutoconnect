@echo off
color 0b
cls
::BEGIN
stopwatch start > timestamp.txt

::COMMAND
set /p am=

::END
stopwatch stop < timestamp.txt > elapsed.txt
for /F %%a in ('type elapsed.txt') do set /a elapsed_time=%%a
echo %elapsed_time%
pause