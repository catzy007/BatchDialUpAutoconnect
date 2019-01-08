@echo off
color 0b
title UMBRELLA-SERVER@UMBRELLA.NET: T/S/F=0/0/0
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
set ntrans=0
set nfail=0
set nsend=0
echo.
:loop
set time=%random:~0,1%
set pcksiz=%random:~0,1%
echo Sending %pcksiz% bytes to %host%
ping %host% -n 1 -l %pcksiz% | find "bytes="
IF ERRORLEVEL 1 goto FAIL1
set /a nsend=nsend+1
goto TIME
:FAIL1
set /a nfail=nfail+1
echo Ping transmit failed, Please check your connection [%nfail%]
:TIME
set /a ntrans=ntrans+1
title UMBRELLA-SERVER@UMBRELLA.NET: T/S/F=%ntrans%/%nsend%/%nfail%
echo Waiting for %time% seconds, before next ping
timeout /t %time% /nobreak >nul
goto loop
