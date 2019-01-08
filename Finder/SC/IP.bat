@echo off
color 0b
title Welcome to MBSinc Active IP Finder
del /F /Q %windir%\countn.inf
del /F /Q %windir%\countx.inf
del /F /Q %windir%\ipchck.inf
del /F /Q %windir%\reslt.inf
del /F /Q %windir%\tstSTPO.inf
del /F /Q %windir%\tstEDPO.inf
del /F /Q %windir%\tstSTED.inf
del /F /Q result.inf
:start
cls
set ipSTPO=0
set ipEDPO=255
set ipINPT=127.0
set ipINTV=100
echo.
echo Enter ip ex. 111.222.333.444 = 111.222 
echo Minimum starting point = 0 
echo Maximum ending point = 255
echo Default search interval = 100
echo.
set/p "ipINPT= Enter ip address      : "
set/p "ipSTPO= Enter starting point  : "
set/p "ipEDPO= Enter Ending point    : "
set/p "ipINTV= Enter Search interval : "
title FindingIP: Press Ctrl+C to Break
set /a tstSTPO=%ipSTPO%-255
set /a tstEDPO=%ipEDPO%-255
set /a tstSTED=%ipEDPO%-%ipSTPO%
echo %tstSTED% >%windir%\tstSTED.inf
FIND /C /I "-" %windir%\tstSTED.inf >nul
IF ERRORLEVEL 1 goto nxt0
goto start
:nxt0
echo %tstSTPO% >%windir%\tstSTPO.inf
echo %tstEDPO% >%windir%\tstEDPO.inf
FIND /C /I "0" %windir%\tstSTPO.inf >nul
IF ERRORLEVEL 1 goto nxt
goto passed1
:nxt
FIND /C /I "-" %windir%\tstSTPO.inf >nul
IF ERRORLEVEL 1 goto start
:passed1
FIND /C /I "0" %windir%\tstEDPO.inf >nul
IF ERRORLEVEL 1 goto nxt2
goto passed2
:nxt2
FIND /C /I "-" %windir%\tstEDPO.inf >nul
IF ERRORLEVEL 1 goto start
:passed2
set /a x=%ipSTPO%-1
set /a edp=%ipEDPO%+1
:loop1
set /a x=x+1
echo %x% >%windir%\countx.inf
FIND /C /I "%edp%" %windir%\countx.inf >nul
IF ERRORLEVEL 1 goto next
goto end
:next
set n=0
:loop2
set /a n=n+1
set status=ACTIVATED
ping %ipINPT%.%x%.%n% -w %ipINTV% -n 1 -l 32 >%windir%\ipchck.inf
FIND /C /I "bytes=32" %windir%\ipchck.inf >nul
IF ERRORLEVEL 1 set status=DEACTIVATED
echo %ipINPT%.%x%.%n% [%Status%]
echo %ipINPT%.%x%.%n% [%Status%] >%windir%\reslt.inf
FIND /C /I "[ACTIVATED" %windir%\reslt.inf >nul
IF ERRORLEVEL 1 goto skip
echo %ipINPT%.%x%.%n% [%Status%] >>result.inf
:skip
echo %n% >%windir%\countn.inf
FIND /C /I "255" %windir%\countn.inf >nul
IF ERRORLEVEL 1 goto loop2
goto loop1
:end
title Active IP Finder: Result
del /F /Q %windir%\countn.inf
del /F /Q %windir%\countx.inf
del /F /Q %windir%\ipchck.inf
del /F /Q %windir%\reslt.inf
del /F /Q %windir%\tstSTPO.inf
del /F /Q %windir%\tstEDPO.inf
del /F /Q %windir%\tstSTED.inf
start /wait Play.vbs
cls
if NOT EXIST result.inf echo Cannot Find Any Active IP >result.inf
start notepad result.inf
exit