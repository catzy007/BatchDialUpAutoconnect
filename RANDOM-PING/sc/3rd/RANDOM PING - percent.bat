@echo off
color 0b
title RANDOM-PING: Transfer=0 Loss=00,00%%
setlocal enabledelayedexpansion
setlocal enableextensions
cls
:V4
echo.
set /p host=" Enter Url or IP Destination : "
if %host%==1 set host=www.msn.com
if %host%==2 set host=www.facebook.com
if %host%==3 set host=www.youtube.com
if %host%==4 set host=www.yahoo.com
if %host%==5 set host=www.blogspot.com
if %host%==6 set host=www.twitter.com
if %host%==7 set host=www.apple.com
if %host%==8 set host=www.microsoft.com
if %host%==9 set host=www.cnn.com
if %host%==0 set host=www.google.com
if "%host%"==" " set host=www.msn.com
set nfail=0
set nsend=0
echo.
goto loop
:loop
set tme=%random:~0,1%
set pcksiz=%random:~0,1%
echo Sending %pcksiz% bytes to %host%
ping %host% -n 1 -l %pcksiz% | find "bytes="
IF ERRORLEVEL 1 goto FAIL1
set /a nsend=nsend+1
goto TIME
:FAIL1
set /a nfail=nfail+1
echo Ping Transmit Failed, Please Check Your Connection!
:TIME
set BF=%nsend%
set BS=%nfail%
set/A A1=BS+BF
SET/A PERC=(BS*10000)/A1
set good=0
:start
set w=%PERC%
if %good%==1 goto cletter
set l=0
set r=1
:cletter
set a=w:~%l%,1
set b=w:~%l%,8
set /a ll=%l% + 1
set c=w:~%ll%,1
if "!%b%!"=="(ndownn)" (
set /a l=%l% + 2
set /a r=%r% + 1
set good=1
goto start
)
if "!%a%!"=="" (
goto WCOUNT
)
if "!%a%!"==" " (
if "!%c%!"==" " set /a l=%l% + 1
if not "!%c%!"==" " set /a l=%l% + 1 & set /a r=%r% + 1
goto cletter
) else (
set /a l=%l% + 1
goto cletter
)
pause
:WCOUNT
set /a TRANSTOTL=%nsend%+%nfail%
if "%nsend%"=="0" goto SUC100
if "%l%"=="3" goto SUC001
if "%l%"=="2" goto SUC000
if "%l%"=="1" goto SUC00X
if "%l%"==" " goto SUC00X
title RANDOM-PING: Transfer=%TRANSTOTL% Loss=%PERC:~0,02%,%PERC:~2,04%%%
goto randp
:SUC001
title RANDOM-PING: Transfer=%TRANSTOTL% Loss=0%PERC:~0,01%,%PERC:~1,02%%%
goto randp
:SUC000
title RANDOM-PING: Transfer=%TRANSTOTL% Loss=00,%PERC:~0,02%%%
goto randp
:SUC00X
title RANDOM-PING: Transfer=%TRANSTOTL% Loss=00,0%PERC%%%
goto randp
:SUC100
title RANDOM-PING: Transfer=%TRANSTOTL% Loss=100,00%%
goto randp
:randp
set /a ntotl=%nsend%+%nfail%
if %ntotl%==10000 set nsend=0 
if %ntotl%==10000 set nfail=0 
echo Waiting for %tme% seconds, before next ping
timeout /t %tme% /nobreak >nul
goto loop
