@echo off
color 0b
title Active IP Finder
del /F /Q countn.inf
del /F /Q countx.inf
del /F /Q ipchck.inf
del /F /Q reslt.inf
del /F /Q result.inf
cls
set ipINPT=127.0
set ipINTV=100
echo -Enter active ip you want to find and interval time.
echo *ex. 123.455.432.225 = 123.455 *default interval = 100
echo.
set/p "ipINPT= Enter ip address : "
set/p "ipINTV= Enter interval   : "
title Active IP Finder : Finding
set x=0
:loop1
set /a x=x+1
echo.
echo %x% >countx.inf
FIND /C /I "226" countx.inf >nul
IF ERRORLEVEL 1 goto next
goto end
:next
set n=0
:loop2
set /a n=n+1
set status=ACTIVED
ping %ipINPT%.%x%.%n% -w %ipINTV% -n 1 -l 32 >ipchck.inf
FIND /C /I "bytes=32" ipchck.inf >nul
IF ERRORLEVEL 1 set status=DEACTIVED
echo %ipINPT%.%x%.%n% [%Status%]
echo %ipINPT%.%x%.%n% [%Status%] >reslt.inf
FIND /C /I "[ACTIVED" reslt.inf >nul
IF ERRORLEVEL 1 goto skip
echo %ipINPT%.%x%.%n% [%Status%] >>result.inf
:skip
echo %n% >countn.inf
FIND /C /I "226" countn.inf >nul
IF ERRORLEVEL 1 goto loop2
goto loop1
:end
title Active IP Finder : Result
cls
echo -Result : 
type result.inf
pause >nul