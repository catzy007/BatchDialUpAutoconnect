@echo off
color 0b
cls
set x=1
:loop1
set /a x=x+1
echo %x% 
echo %x% >countx.inf
FIND /C /I "226" countx.inf >nul
IF ERRORLEVEL 1 goto next
goto end
:next
set n=1
:loop2
set /a n=n+1
echo %x%.%n%
echo %n% >countn.inf
FIND /C /I "226" countn.inf >nul
IF ERRORLEVEL 1 goto loop2
goto loop1
:end
pause>nul