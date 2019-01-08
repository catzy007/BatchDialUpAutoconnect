@echo off
cls
set a=0
set /p INPUT="Type MD5 Here "
:loop
set /a a=a+1

if %a%==1 set outa=1
if %a%==2 set outa=2
if %a%==3 set outa=3
if %a%==4 set outa=4
if %a%==5 set outa=5
if %a%==6 set outa=6
if %a%==7 set outa=7
if %a%==8 set outa=8
if %a%==9 set outa=9

if %a%==10 set outa=a
if %a%==11 set outa=b
if %a%==12 set outa=c
if %a%==13 set outa=d
if %a%==14 set outa=e
if %a%==15 set outa=f
if %a%==16 set outa=g
if %a%==17 set outa=h
if %a%==18 set outa=i
if %a%==19 set outa=j
if %a%==20 set outa=k
if %a%==21 set outa=l
if %a%==22 set outa=m
if %a%==23 set outa=n
if %a%==24 set outa=o
if %a%==25 set outa=p
if %a%==26 set outa=q
if %a%==27 set outa=r
if %a%==28 set outa=s
if %a%==29 set outa=t
if %a%==30 set outa=u
if %a%==31 set outa=v
if %a%==32 set outa=w
if %a%==33 set outa=x
if %a%==34 set outa=y
if %a%==35 set outa=z

if %a%==36 set outa=A
if %a%==37 set outa=B
if %a%==38 set outa=C
if %a%==39 set outa=D
if %a%==40 set outa=E
if %a%==41 set outa=F
if %a%==42 set outa=G
if %a%==43 set outa=H
if %a%==44 set outa=I
if %a%==45 set outa=J
if %a%==46 set outa=K
if %a%==47 set outa=L
if %a%==48 set outa=M
if %a%==49 set outa=N
if %a%==50 set outa=O
if %a%==51 set outa=P
if %a%==52 set outa=Q
if %a%==53 set outa=R
if %a%==54 set outa=S
if %a%==55 set outa=T
if %a%==56 set outa=U
if %a%==57 set outa=V
if %a%==58 set outa=W
if %a%==59 set outa=X
if %a%==60 set outa=Y
if %a%==61 set outa=Z
if %a%==62 goto fail
echo %outa%
echo %outa% | core.exe 
echo %INPUT% 
echo %outa% | core.exe >>chk.inf
FIND /C /I "%INPUT%" chk.inf >nul
IF ERRORLEVEL 1 goto loop
echo FOUND!!
pause>nul
:fail
echo FAIL!
pause>nul