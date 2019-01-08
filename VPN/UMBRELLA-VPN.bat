@echo off
setlocal
title UMBRELLA@OpenVPN
color 0b
:loop
echo.
echo System : Welcome to UMBRELLA-VPN Service V12.27.16
color 0b
SET IPT=0
set /p IPT="System : Type location of config file here "
TIMEOUT /T 1 >nul
echo System : Reading Configuration File. . .

REM LINE BELOW IS CHECKING FILESIZE UNDER 100KB
set maxsz=100000
echo Set objFS = CreateObject("Scripting.FileSystemObject") >"vb.vbs"
echo Set wshArgs = WScript.Arguments >>"vb.vbs"
echo strFile = wshArgs(0) >>"vb.vbs"
echo WScript.Echo objFS.GetFile(strFile).Size >>"vb.vbs"
cscript /nologo vb.vbs %IPT% >byte.inf
for /f %%a in (byte.inf) do (
del /F /Q vb.vbs
if %%a GTR %maxsz% goto err2
)

REM LINE BELOW IS CHECKING AVABILITY OF FILE
type %IPT%
IF %errorlevel% EQU 0 GOTO next1
goto err1

REM LINE BELOW IS CHECKING CERTIFICATE INSIDE THE CONFIGURATION FILE
REM IF YOUR CONFIG FILE HAS NO CERTIFICATE, THEN ADD REM FOLLOWED BY SPACE IN FRONT OF findstr
:next1
findstr CERTIFICATE %IPT% >nul
IF %errorlevel% EQU 0 GOTO next2
goto err2

REM LINE BELOW IS RUNNING THE OVPN SERVICE
:next2
echo System : Starting OpenVPN Service. . . 
TIMEOUT /T 3 >nul
openvpn.exe %IPT%
echo System : VPN Session Closed. . .
echo System : Press Any Key to Continue.
pause >nul
cls
goto loop

REM LINE BELOW IS ERROR CODE
:err1
color 04
echo System : Cannot Find Config File.
echo System : Closing VPN Session. . . 
TIMEOUT /T 5 >nul
color 0b
echo System : VPN Session Closed. . . 
echo System : Press Any Key to Continue.
pause >nul
cls
goto loop
:err2
color 04
echo System : Cannot Read The Config File or Config File is Wrong.
echo System : Closing VPN Session. . . 
TIMEOUT /T 5 >nul
color 0b
echo System : VPN Session Closed. . . 
echo System : Press Any Key to Continue.
pause >nul
cls
goto loop

REM    This program is free software: you can redistribute it and/or modify
REM    it under the terms of the GNU General Public License as published by
REM    the Free Software Foundation, either version 3 of the License, or
REM    (at your option) any later version.
REM
REM    This program is distributed in the hope that it will be useful,
REM    but WITHOUT ANY WARRANTY; without even the implied warranty of
REM    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
REM    GNU General Public License for more details.
REM
REM    You should have received a copy of the GNU General Public License
REM    along with this program.  If not, see <http://www.gnu.org/licenses/>.