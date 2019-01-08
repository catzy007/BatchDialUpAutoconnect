@echo off
color 0b
title TEST-CODE %date:~4,10% %time%
cls
set sec1=%time:~6,2%
set /a min1=%time:~3,2%*60
set /a hrs1=%time:~0,2%*3600
set /a time1=sec1+min1+hrs1
set/p "STR=Enter ABET : "
set resua=0
set x=0
:loopa
echo %resua%
if %STR%== %resua% goto find
:skipa
@echo off
set /A x=x+1
if %x%==1 set resua=1
if %x%==2 set resua=2
if %x%==3 set resua=3
if %x%==4 set resua=4
if %x%==5 set resua=5
if %x%==6 set resua=6
if %x%==7 set resua=7
if %x%==8 set resua=8
if %x%==9 set resua=9
if %x%==10 set resua=a
if %x%==11 set resua=b
if %x%==12 set resua=c
if %x%==13 set resua=d
if %x%==14 set resua=e
if %x%==15 set resua=f
if %x%==16 set resua=g
if %x%==17 set resua=h
if %x%==18 set resua=i
if %x%==19 set resua=j
if %x%==20 set resua=k
if %x%==21 set resua=l
if %x%==22 set resua=m
if %x%==23 set resua=n
if %x%==24 set resua=o
if %x%==25 set resua=p
if %x%==26 set resua=q
if %x%==27 set resua=r
if %x%==28 set resua=s
if %x%==29 set resua=t
if %x%==30 set resua=u
if %x%==31 set resua=v
if %x%==32 set resua=w
if %x%==33 set resua=x
if %x%==34 set resua=y
if %x%==35 set resua=z
if %x%==36 set resua=A
if %x%==37 set resua=B
if %x%==38 set resua=C
if %x%==39 set resua=D
if %x%==40 set resua=E
if %x%==41 set resua=F
if %x%==42 set resua=G
if %x%==43 set resua=H
if %x%==44 set resua=I
if %x%==45 set resua=J
if %x%==46 set resua=K
if %x%==47 set resua=L
if %x%==48 set resua=M
if %x%==49 set resua=N
if %x%==50 set resua=O
if %x%==51 set resua=P
if %x%==52 set resua=Q
if %x%==53 set resua=R
if %x%==54 set resua=S
if %x%==55 set resua=T
if %x%==56 set resua=U
if %x%==57 set resua=V
if %x%==58 set resua=W
if %x%==59 set resua=X
if %x%==60 set resua=Y
if %x%==61 set resua=Z
goto loopa
:find
echo.
set sec2=%time:~6,2%
set /a min2=%time:~3,2%*60
set /a hrs2=%time:~0,2%*3600
set /a time2=sec2+min2+hrs2
set /a timetotal=time2-time1
echo Operation Completed in %timetotal% Second
echo %resua%
echo.
pause 