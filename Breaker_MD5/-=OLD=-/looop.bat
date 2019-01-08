echo off
set n=61
set /a tot=%n%+40
:loop
set /a n=n+1
echo if +==%n% set outa= >>a.txt
if %n%==%tot% goto exit
goto loop
 