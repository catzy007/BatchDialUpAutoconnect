@echo off
color 0b
title TEST-CODE 0730-052415
cls
set a=0
set b=0
set c=0
set d=0
set e=0
set f=0
set g=0
set h=0
:looph
set g=0
set /a h=h+1
echo %h% >counth.inf
FIND /C /I "63" counth.inf >nul
IF ERRORLEVEL 1 goto nexth
goto end
:nexth
:loopg
set f=0
set /a g=g+1
echo %g% >countg.inf
FIND /C /I "63" countg.inf >nul
IF ERRORLEVEL 1 goto nextg
goto looph
:nextg
:loopf
set e=0
set /a f=f+1
echo %f% >countf.inf
FIND /C /I "63" countf.inf >nul
IF ERRORLEVEL 1 goto nextf
goto loopg
:nextf
:loope
set d=0
set /a e=e+1
echo %e% >counte.inf
FIND /C /I "63" counte.inf >nul
IF ERRORLEVEL 1 goto nexte
goto loopf
:nexte
:loopd
set c=0
set /a d=d+1
echo %d% >countd.inf
FIND /C /I "63" countd.inf >nul
IF ERRORLEVEL 1 goto nextd
goto loope
:nextd
:loopc
set b=0
set /a c=c+1
echo %c% >countc.inf
FIND /C /I "63" countc.inf >nul
IF ERRORLEVEL 1 goto nextc
goto loopd
:nextc
:loopb
set a=0
set /a b=b+1
echo %b% >countb.inf
FIND /C /I "63" countb.inf >nul
IF ERRORLEVEL 1 goto nextb
goto loopc
:nextb
:loopa
set /a a=a+1
echo %h% %g% %f% %e% %d% %c% %b% %a%
echo %a% >counta.inf
FIND /C /I "62" counta.inf >nul
IF ERRORLEVEL 1 goto nextb
goto loopb





:end
pause