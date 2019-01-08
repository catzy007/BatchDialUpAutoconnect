@echo off
color 0b
cls
set sec1=%time:~6,2%
set /a min1=%time:~3,2%*60
set /a hrs1=%time:~0,2%*3600
set /a day1=%date:~7,2%*86400
set /a mon1=%date:~4,2%*2629744
set /a time1=sec1+min1+hrs1+day1+mon1
echo %time1%
set /p "qq="
set sec2=%time:~6,2%
set /a min2=%time:~3,2%*60
set /a hrs2=%time:~0,2%*3600
set /a day2=%date:~7,2%*86400
set /a mon2=%date:~4,2%*2629744
set /a time2=sec2+min2+hrs2+day2+mon2
echo %time2%
set /a time=time2-time1
echo.
echo Total %time% Second
pause