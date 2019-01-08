@echo off
cls
echo %date:~4,13% >date.txxt
set DTE=%date:~4,13%
for /f %%d in (date.txt) do (
IF "%DTE%"=="%%d" GOTO START
)
exit
:START
EcHO succc
pause >nul