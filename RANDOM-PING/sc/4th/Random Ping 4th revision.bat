@echo off
color 0b
title RANDOM-PING: Sent=0%% Loss=0%%
del /F /Q cout1.inf
del /F /Q cout2.inf
del /F /Q countf.inf
del /F /Q counts.inf
cls
set /p host="Enter Url or IP Destination : "
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
set time=%random:~0,1%
set pcksiz=%random:~0,1%
echo Sending %pcksiz% bytes to %host%
ping %host% -n 1 -l %pcksiz% | find "bytes="
IF ERRORLEVEL 1 goto FAIL1
echo succ >cout1.inf
goto TIME1
:FAIL1
echo fail >cout1.inf
echo Ping transmit failed, Please check your connection 
:TIME1
type cout1.inf | find /C "fail" >countf.inf
type cout1.inf | find /C "succ" >counts.inf
for /f %%i in ('type cout1.inf ^| find /C "fail"')do set FAILRATE=%%i
for /f %%i in ('type cout1.inf ^| find /C "succ"')do set SUCCRATE=%%i
if %FAILRATE%==1 set FAILRATE=100
if %SUCCRATE%==1 set SUCCRATE=100
title RANDOM-PING: Sent=%SUCCRATE%%% Loss=%FAILRATE%%%
echo Waiting for %time% seconds, before next ping
timeout /t %time% /nobreak >nul
:LOOP2100
set time=%random:~0,1%
set pcksiz=%random:~0,1%
echo Sending %pcksiz% bytes to %host%
ping %host% -n 1 -l %pcksiz% | find "bytes="
IF ERRORLEVEL 1 goto FAIL2
echo succ >>cout1.inf
goto TIME2
:FAIL2
echo fail >>cout1.inf
echo Ping transmit failed, Please check your connection 
:TIME2
type cout1.inf | find /C "fail" >countf.inf
type cout1.inf | find /C "succ" >counts.inf
for /f %%i in ('type cout1.inf ^| find /C "fail"')do set FAILRATE=%%i
for /f %%i in ('type cout1.inf ^| find /C "succ"')do set SUCCRATE=%%i
set /a TOTAL=%FAILRATE%+%SUCCRATE%
set /a SUCCLT100=(%SUCCRATE%*100)/%TOTAL%
set /a FAILLT100=100-%SUCCLT100%
if %TOTAL%==100 goto LOOP100nC1
title RANDOM-PING: Sent=%SUCCLT100%%% Loss=%FAILLT100%%%
echo Waiting for %time% seconds, before next ping
timeout /t %time% /nobreak >nul
goto LOOP2100
:LOOP100nC1
set time=%random:~0,1%
set pcksiz=%random:~0,1%
echo Sending %pcksiz% bytes to %host%
ping %host% -n 1 -l %pcksiz% | find "bytes="
IF ERRORLEVEL 1 goto FAIL3
echo succ >>cout1.inf
goto TIME3
:FAIL3
echo fail >>cout1.inf
echo Ping transmit failed, Please check your connection 
:TIME3
echo HEADER FILE>cout2.inf
for /f "skip=1 delims=*" %%a in (cout1.inf) do (
echo %%a >>cout2.inf
)
del /F /Q cout1.inf >nul
type cout2.inf | find /C "fail" >countf.inf
type cout2.inf | find /C "succ" >counts.inf
for /f %%i in ('type cout2.inf ^| find /C "fail"')do set FAILRATE=%%i
for /f %%i in ('type cout2.inf ^| find /C "succ"')do set SUCCRATE=%%i
title RANDOM-PING: Sent=%SUCCRATE%%% Loss=%FAILRATE%%%
echo Waiting for %time% seconds, before next ping
timeout /t %time% /nobreak >nul
set time=%random:~0,1%
set pcksiz=%random:~0,1%
echo Sending %pcksiz% bytes to %host%
ping %host% -n 1 -l %pcksiz% | find "bytes="
IF ERRORLEVEL 1 goto FAIL4
echo succ >>cout2.inf
goto TIME4
:FAIL4
echo fail >>cout2.inf
echo Ping transmit failed, Please check your connection 
:TIME4
for /f "skip=2 delims=*" %%a in (cout2.inf) do (
echo %%a >>cout1.inf
)
del /F /Q cout2.inf >nul
type cout1.inf | find /C "fail" >countf.inf
type cout1.inf | find /C "succ" >counts.inf
for /f %%i in ('type cout1.inf ^| find /C "fail"')do set FAILRATE=%%i
for /f %%i in ('type cout1.inf ^| find /C "succ"')do set SUCCRATE=%%i
title RANDOM-PING: Sent=%SUCCRATE%%% Loss=%FAILRATE%%%
echo Waiting for %time% seconds, before next ping
timeout /t %time% /nobreak >nul
goto LOOP100nC1