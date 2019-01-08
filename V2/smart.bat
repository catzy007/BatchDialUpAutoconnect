@echo off
color 0b
title AutoReconnect V2
set n=0
cls
rasdial >check.inf
find /C /I "Connected" check.inf >nul
if ERRORLEVEL 0 goto begin
rasdial "ZTE Wireless Terminal" "smart" "smart" >nul
echo Connecting to ZTE Wireless Terminal
:begin
set /a n=n+1
if %n%==60 goto clear
echo.
echo Waiting for 60 Seconds... [%n%]
timeout /T 60 /NOBREAK >nul
rasdial >check.inf
find /C /I "Connected" check.inf >nul
if ERRORLEVEL 1 goto reconnect
echo.
echo System still connected to right APN
goto begin
:reconnect
echo.
rasdial "ZTE Wireless Terminal" "smart" "smart" >nul
echo Connecting to ZTE Wireless Terminal
goto begin
:clear
set n=0
cls
goto begin