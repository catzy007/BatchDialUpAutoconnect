@echo off
echo HEADER FILE>cout2.inf
set Calcu=%random:~0,1%
if %Calcu%==1 echo fail >cout1.inf
if %Calcu%==2 echo fail >cout1.inf
if %Calcu%==3 echo fail >cout1.inf
if %Calcu%==4 echo fail >cout1.inf
if %Calcu%==5 echo fail >cout1.inf
if %Calcu%==6 echo succ >cout1.inf
if %Calcu%==7 echo succ >cout1.inf
if %Calcu%==8 echo succ >cout1.inf
if %Calcu%==9 echo succ >cout1.inf
if %Calcu%==0 echo succ >cout1.inf
:LOOP2100
set Calcu=%random:~0,1%
if %Calcu%==1 echo fail >>cout1.inf
if %Calcu%==2 echo fail >>cout1.inf
if %Calcu%==3 echo fail >>cout1.inf
if %Calcu%==4 echo fail >>cout1.inf
if %Calcu%==5 echo fail >>cout1.inf
if %Calcu%==6 echo succ >>cout1.inf
if %Calcu%==7 echo succ >>cout1.inf
if %Calcu%==8 echo succ >>cout1.inf
if %Calcu%==9 echo succ >>cout1.inf
if %Calcu%==0 echo succ >>cout1.inf
type cout1.inf | find /C "fail" >countf.inf
type cout1.inf | find /C "succ" >counts.inf
for /f %%i in ('type cout1.inf ^| find /C "fail"')do set FAILRATE=%%i
for /f %%i in ('type cout1.inf ^| find /C "succ"')do set SUCCRATE=%%i
set /a TOTAL=%FAILRATE%+%SUCCRATE%
set /a FAILLT100=(%FAILRATE%*100)/%TOTAL%
if %TOTAL%==100 goto LOOP100nC1
title %FAILLT100%%%
goto LOOP2100

:LOOP100nC1
set Calcu=%random:~0,1%
if %Calcu%==1 echo fail >>cout1.inf
if %Calcu%==2 echo fail >>cout1.inf
if %Calcu%==3 echo fail >>cout1.inf
if %Calcu%==4 echo fail >>cout1.inf
if %Calcu%==5 echo fail >>cout1.inf
if %Calcu%==6 echo succ >>cout1.inf
if %Calcu%==7 echo succ >>cout1.inf
if %Calcu%==8 echo succ >>cout1.inf
if %Calcu%==9 echo succ >>cout1.inf
if %Calcu%==0 echo succ >>cout1.inf
echo HEADER FILE>cout2.inf
for /f "skip=1 delims=*" %%a in (cout1.inf) do (
echo %%a >>cout2.inf
)
del /F /Q cout1.inf >nul
type cout2.inf | find /C "fail" >countf.inf
type cout2.inf | find /C "succ" >counts.inf
for /f %%i in ('type cout2.inf ^| find /C "fail"')do set FAILRATE=%%i
for /f %%i in ('type cout2.inf ^| find /C "succ"')do set SUCCRATE=%%i
title %FAILRATE%%%
set /a NNN=%FAILRATE%+%SUCCRATE%
echo %NNN% 1
set Calcu=%random:~0,1%
if %Calcu%==1 echo fail >>cout2.inf
if %Calcu%==2 echo fail >>cout2.inf
if %Calcu%==3 echo fail >>cout2.inf
if %Calcu%==4 echo fail >>cout2.inf
if %Calcu%==5 echo fail >>cout2.inf
if %Calcu%==6 echo succ >>cout2.inf
if %Calcu%==7 echo succ >>cout2.inf
if %Calcu%==8 echo succ >>cout2.inf
if %Calcu%==9 echo succ >>cout2.inf
if %Calcu%==0 echo succ >>cout2.inf
for /f "skip=2 delims=*" %%a in (cout2.inf) do (
echo %%a >>cout1.inf
)
del /F /Q cout2.inf >nul
type cout1.inf | find /C "fail" >countf.inf
type cout1.inf | find /C "succ" >counts.inf
for /f %%i in ('type cout1.inf ^| find /C "fail"')do set FAILRATE=%%i
for /f %%i in ('type cout1.inf ^| find /C "succ"')do set SUCCRATE=%%i
title %FAILRATE%%%
set /a NNN=%FAILRATE%+%SUCCRATE%
echo %NNN% 2
goto LOOP100nC1
