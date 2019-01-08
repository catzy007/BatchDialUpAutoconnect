color 0b
:rep
title ALARM : Current Date %date:~0,14% %time:~0,8%
@echo off
:rep
echo  Current Time : %time:~0,5%
if %time:~0,8%==23:30:01 goto suc
cls
goto rep
:suc
:num
set num=%random%
if exist temp%num%.vbs goto num
echo ' > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "Shutting down system" >> "temp%num%.vbs"
start temp%num%.vbs
del temp%num%.vbs
shutdown -s -t 0 -y
shutdown -s -t 1 -y
shutdown -s -t 2 -y
exit