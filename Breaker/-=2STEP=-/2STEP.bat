@echo off
setlocal
color 0b
title TEST-CODE %date:~4,10% %time%
cls
set sec1=%time:~6,2%
set /a min1=%time:~3,2%*60
set /a hrs1=%time:~0,2%*3600
set /a time1=sec1+min1+hrs1
set a=0
set b=0
:loopb
set a=0
set /a b=b+1
echo %b% >countb.inf
FIND /C /I "63" countb.inf >nul
IF ERRORLEVEL 1 goto nextb
goto end
:nextb
:loopa
@echo off
set /a a=a+1
if %a%==1 set resa=0 
if %a%==2 set resa=1 
if %a%==3 set resa=2 
if %a%==4 set resa=3 
if %a%==5 set resa=4 
if %a%==6 set resa=5 
if %a%==7 set resa=6 
if %a%==8 set resa=7 
if %a%==9 set resa=8 
if %a%==10 set resa=9 
if %a%==11 set resa=a
if %a%==12 set resa=b
if %a%==13 set resa=c
if %a%==14 set resa=d
if %a%==15 set resa=e
if %a%==16 set resa=f
if %a%==17 set resa=g
if %a%==18 set resa=h
if %a%==19 set resa=i
if %a%==20 set resa=j
if %a%==21 set resa=k
if %a%==22 set resa=l
if %a%==23 set resa=m
if %a%==24 set resa=n
if %a%==25 set resa=o
if %a%==26 set resa=p
if %a%==27 set resa=q
if %a%==28 set resa=r
if %a%==29 set resa=s
if %a%==30 set resa=t
if %a%==31 set resa=u
if %a%==32 set resa=v
if %a%==33 set resa=w
if %a%==34 set resa=x
if %a%==35 set resa=y
if %a%==36 set resa=z
if %a%==37 set resa=A
if %a%==38 set resa=B
if %a%==39 set resa=C
if %a%==40 set resa=D
if %a%==41 set resa=E
if %a%==42 set resa=F
if %a%==43 set resa=G
if %a%==44 set resa=H
if %a%==45 set resa=I
if %a%==46 set resa=J
if %a%==47 set resa=K
if %a%==48 set resa=L
if %a%==49 set resa=M
if %a%==50 set resa=N
if %a%==51 set resa=O
if %a%==52 set resa=P
if %a%==53 set resa=Q
if %a%==54 set resa=R
if %a%==55 set resa=S
if %a%==56 set resa=T
if %a%==57 set resa=U
if %a%==58 set resa=V
if %a%==59 set resa=W
if %a%==60 set resa=X
if %a%==61 set resa=Y
if %a%==62 set resa=Z

if %b%==1 set resb=0
if %b%==2 set resb=1
if %b%==3 set resb=2
if %b%==4 set resb=3
if %b%==5 set resb=4
if %b%==6 set resb=5
if %b%==7 set resb=6
if %b%==8 set resb=7
if %b%==9 set resb=8
if %b%==10 set resb=9
if %b%==11 set resb=a
if %b%==12 set resb=b
if %b%==13 set resb=c
if %b%==14 set resb=d
if %b%==15 set resb=e
if %b%==16 set resb=f
if %b%==17 set resb=g
if %b%==18 set resb=h
if %b%==19 set resb=i
if %b%==20 set resb=j
if %b%==21 set resb=k
if %b%==22 set resb=l
if %b%==23 set resb=m
if %b%==24 set resb=n
if %b%==25 set resb=o
if %b%==26 set resb=p
if %b%==27 set resb=q
if %b%==28 set resb=r
if %b%==29 set resb=s
if %b%==30 set resb=t
if %b%==31 set resb=u
if %b%==32 set resb=v
if %b%==33 set resb=w
if %b%==34 set resb=x
if %b%==35 set resb=y
if %b%==36 set resb=z
if %b%==37 set resb=A
if %b%==38 set resb=B
if %b%==39 set resb=C
if %b%==40 set resb=D
if %b%==41 set resb=E
if %b%==42 set resb=F
if %b%==43 set resb=G
if %b%==44 set resb=H
if %b%==45 set resb=I
if %b%==46 set resb=J
if %b%==47 set resb=K
if %b%==48 set resb=L
if %b%==49 set resb=M
if %b%==50 set resb=N
if %b%==51 set resb=O
if %b%==52 set resb=P
if %b%==53 set resb=Q
if %b%==54 set resb=R
if %b%==55 set resb=S
if %b%==56 set resb=T
if %b%==57 set resb=U
if %b%==58 set resb=V
if %b%==59 set resb=W
if %b%==60 set resb=X
if %b%==61 set resb=Y
if %b%==62 set resb=Z
echo %resb%%resa%
echo %resb%%resa% >>note.txt
set STR=ZZ
if %STR%== %resb%%resa% goto Fin
echo %a% >counta.inf
FIND /C /I "62" counta.inf >nul
IF ERRORLEVEL 1 goto nextb
goto loopb
:end
echo Not Found!
pause
exit
:Fin
@echo off
echo.
set sec2=%time:~6,2%
set /a min2=%time:~3,2%*60
set /a hrs2=%time:~0,2%*3600
set /a time2=sec2+min2+hrs2
set /a timetotal=time2-time1
echo Operation Completed in %timetotal% Second
echo %resh%%resg%%resf%%rese%%resd%%resc%%resb%%resa%
echo.
pause