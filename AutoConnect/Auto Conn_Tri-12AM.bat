@echo off
mode 44,4
Title Auto Connect Tri
color 0b
mkdir C:\temp >nul
:WAIT
cls
echo.
echo  Waiting For 00:15:00
echo Curent time : %time:~0,8%
if "%time:~0,5%"==" 0:15" goto RECONN
timeout /t 1 /nobreak> nul
goto WAIT
:RECONN
del /F /Q C:\temp\info.inf
cls
set STARTc=%time:~0,2%
set STARTd=%time:~3,2%
start /wait rasdial /disconnect
Start /wait rasdial "ZTE Wireless Terminal" >nul
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
if "%time:~0,5%"==" 5:45" goto DISCONN
rasdial >C:\temp\info.inf
FIND /C /I "Connected to" C:\temp\info.inf >nul
IF ERRORLEVEL 1 goto RECONN
del /F /Q C:\temp\info.inf
Goto PING
:DISCONN
echo.
echo  Maximum time reached....
echo Disconnecting!
start /wait rasdial /disconnect
exit
