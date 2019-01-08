@echo off
mode 44,5
Title Auto Reconnect Dial Up Modem
color 0b
mkdir C:\temp >nul
goto PING
:RECONN
del /F /Q info.inf
cls
set STARTc=%time:~0,2%
set STARTd=%time:~3,2%
Start /wait rasdial "3Data" >nul
echo.
echo  Redialing.....
echo.
:PING
cls
echo.
echo  Counting down for network testing.
echo Counting down 5.
timeout /t 1 /nobreak> nul
cls
echo.
echo  Counting down for network testing..
echo Counting down 4.
timeout /t 1 /nobreak> nul
cls
echo.
echo  Counting down for network testing...
echo Counting down 3.
timeout /t 1 /nobreak> nul
cls
echo.
echo  Counting down for network testing....
echo Counting down 2.
timeout /t 1 /nobreak> nul
cls
echo.
echo  Counting down for network testing.....
echo Counting down 1.
timeout /t 1 /nobreak> nul
cls
echo.
echo  Counting down for network testing.....
rasdial >info.inf
FIND /C /I "Connected to" info.inf >nul
IF ERRORLEVEL 1 goto RECONN
del /F /Q info.inf
Goto PING