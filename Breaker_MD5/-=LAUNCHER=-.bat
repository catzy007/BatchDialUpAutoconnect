@echo off
color 0b
del /F /Q out.inf
SETLOCAL EnableDelayedExpansion
title CATZY@FORCE_TEST %date:~4,10% %time%
cls
set /p INPUT="INPUT MD5 HERE : "
:main00
echo.
set a=0
set b=0
set c=0
set d=0
set e=0
set f=0
set g=0
set h=0
:looph
set g=0
set /a h=h+1
echo %h% >counth.inf
FIND /C /I "63" counth.inf >nul
IF ERRORLEVEL 1 goto nexth
goto end
:nexth
:loopg
set f=0
set /a g=g+1
echo %g% >countg.inf
FIND /C /I "63" countg.inf >nul
IF ERRORLEVEL 1 goto nextg
goto looph
:nextg
:loopf
set e=0
set /a f=f+1
echo %f% >countf.inf
FIND /C /I "63" countf.inf >nul
IF ERRORLEVEL 1 goto nextf
goto loopg
:nextf
:loope
set d=0
set /a e=e+1
echo %e% >counte.inf
FIND /C /I "63" counte.inf >nul
IF ERRORLEVEL 1 goto nexte
goto loopf
:nexte
:loopd
set c=0
set /a d=d+1
echo %d% >countd.inf
FIND /C /I "63" countd.inf >nul
IF ERRORLEVEL 1 goto nextd
goto loope
:nextd
:loopc
set b=0
set /a c=c+1
echo %c% >countc.inf
FIND /C /I "63" countc.inf >nul
IF ERRORLEVEL 1 goto nextc
goto loopd
:nextc
:loopb
set a=0
set /a b=b+1
echo %b% >countb.inf
FIND /C /I "63" countb.inf >nul
IF ERRORLEVEL 1 goto nextb
goto loopc
:nextb
:loopa
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

if %c%==1 set resc=0
if %c%==2 set resc=1
if %c%==3 set resc=2
if %c%==4 set resc=3
if %c%==5 set resc=4
if %c%==6 set resc=5
if %c%==7 set resc=6
if %c%==8 set resc=7
if %c%==9 set resc=8
if %c%==10 set resc=9
if %c%==11 set resc=a
if %c%==12 set resc=b
if %c%==13 set resc=c
if %c%==14 set resc=d
if %c%==15 set resc=e
if %c%==16 set resc=f
if %c%==17 set resc=g
if %c%==18 set resc=h
if %c%==19 set resc=i
if %c%==20 set resc=j
if %c%==21 set resc=k
if %c%==22 set resc=l
if %c%==23 set resc=m
if %c%==24 set resc=n
if %c%==25 set resc=o
if %c%==26 set resc=p
if %c%==27 set resc=q
if %c%==28 set resc=r
if %c%==29 set resc=s
if %c%==30 set resc=t
if %c%==31 set resc=u
if %c%==32 set resc=v
if %c%==33 set resc=w
if %c%==34 set resc=x
if %c%==35 set resc=y
if %c%==36 set resc=z
if %c%==37 set resc=A
if %c%==38 set resc=B
if %c%==39 set resc=C
if %c%==40 set resc=D
if %c%==41 set resc=E
if %c%==42 set resc=F
if %c%==43 set resc=G
if %c%==44 set resc=H
if %c%==45 set resc=I
if %c%==46 set resc=J
if %c%==47 set resc=K
if %c%==48 set resc=L
if %c%==49 set resc=M
if %c%==50 set resc=N
if %c%==51 set resc=O
if %c%==52 set resc=P
if %c%==53 set resc=Q
if %c%==54 set resc=R
if %c%==55 set resc=S
if %c%==56 set resc=T
if %c%==57 set resc=U
if %c%==58 set resc=V
if %c%==59 set resc=W
if %c%==60 set resc=X
if %c%==61 set resc=Y
if %c%==62 set resc=Z

if %d%==1 set resd=0
if %d%==2 set resd=1
if %d%==3 set resd=2
if %d%==4 set resd=3
if %d%==5 set resd=4
if %d%==6 set resd=5
if %d%==7 set resd=6
if %d%==8 set resd=7
if %d%==9 set resd=8
if %d%==10 set resd=9
if %d%==11 set resd=a
if %d%==12 set resd=b
if %d%==13 set resd=c
if %d%==14 set resd=d
if %d%==15 set resd=e
if %d%==16 set resd=f
if %d%==17 set resd=g
if %d%==18 set resd=h
if %d%==19 set resd=i
if %d%==20 set resd=j
if %d%==21 set resd=k
if %d%==22 set resd=l
if %d%==23 set resd=m
if %d%==24 set resd=n
if %d%==25 set resd=o
if %d%==26 set resd=p
if %d%==27 set resd=q
if %d%==28 set resd=r
if %d%==29 set resd=s
if %d%==30 set resd=t
if %d%==31 set resd=u
if %d%==32 set resd=v
if %d%==33 set resd=w
if %d%==34 set resd=x
if %d%==35 set resd=y
if %d%==36 set resd=z
if %d%==37 set resd=A
if %d%==38 set resd=B
if %d%==39 set resd=C
if %d%==40 set resd=D
if %d%==41 set resd=E
if %d%==42 set resd=F
if %d%==43 set resd=G
if %d%==44 set resd=H
if %d%==45 set resd=I
if %d%==46 set resd=J
if %d%==47 set resd=K
if %d%==48 set resd=L
if %d%==49 set resd=M
if %d%==50 set resd=N
if %d%==51 set resd=O
if %d%==52 set resd=P
if %d%==53 set resd=Q
if %d%==54 set resd=R
if %d%==55 set resd=S
if %d%==56 set resd=T
if %d%==57 set resd=U
if %d%==58 set resd=V
if %d%==59 set resd=W
if %d%==60 set resd=X
if %d%==61 set resd=Y
if %d%==62 set resd=Z

if %e%==1 set rese=0
if %e%==2 set rese=1
if %e%==3 set rese=2
if %e%==4 set rese=3
if %e%==5 set rese=4
if %e%==6 set rese=5
if %e%==7 set rese=6
if %e%==8 set rese=7
if %e%==9 set rese=8
if %e%==10 set rese=9
if %e%==11 set rese=a
if %e%==12 set rese=b
if %e%==13 set rese=c
if %e%==14 set rese=d
if %e%==15 set rese=e
if %e%==16 set rese=f
if %e%==17 set rese=g
if %e%==18 set rese=h
if %e%==19 set rese=i
if %e%==20 set rese=j
if %e%==21 set rese=k
if %e%==22 set rese=l
if %e%==23 set rese=m
if %e%==24 set rese=n
if %e%==25 set rese=o
if %e%==26 set rese=p
if %e%==27 set rese=q
if %e%==28 set rese=r
if %e%==29 set rese=s
if %e%==30 set rese=t
if %e%==31 set rese=u
if %e%==32 set rese=v
if %e%==33 set rese=w
if %e%==34 set rese=x
if %e%==35 set rese=y
if %e%==36 set rese=z
if %e%==37 set rese=A
if %e%==38 set rese=B
if %e%==39 set rese=C
if %e%==40 set rese=D
if %e%==41 set rese=E
if %e%==42 set rese=F
if %e%==43 set rese=G
if %e%==44 set rese=H
if %e%==45 set rese=I
if %e%==46 set rese=J
if %e%==47 set rese=K
if %e%==48 set rese=L
if %e%==49 set rese=M
if %e%==50 set rese=N
if %e%==51 set rese=O
if %e%==52 set rese=P
if %e%==53 set rese=Q
if %e%==54 set rese=R
if %e%==55 set rese=S
if %e%==56 set rese=T
if %e%==57 set rese=U
if %e%==58 set rese=V
if %e%==59 set rese=W
if %e%==60 set rese=X
if %e%==61 set rese=Y
if %e%==62 set rese=Z

if %f%==1 set resf=0
if %f%==2 set resf=1
if %f%==3 set resf=2
if %f%==4 set resf=3
if %f%==5 set resf=4
if %f%==6 set resf=5
if %f%==7 set resf=6
if %f%==8 set resf=7
if %f%==9 set resf=8
if %f%==10 set resf=9
if %f%==11 set resf=a
if %f%==12 set resf=b
if %f%==13 set resf=c
if %f%==14 set resf=d
if %f%==15 set resf=e
if %f%==16 set resf=f
if %f%==17 set resf=g
if %f%==18 set resf=h
if %f%==19 set resf=i
if %f%==20 set resf=j
if %f%==21 set resf=k
if %f%==22 set resf=l
if %f%==23 set resf=m
if %f%==24 set resf=n
if %f%==25 set resf=o
if %f%==26 set resf=p
if %f%==27 set resf=q
if %f%==28 set resf=r
if %f%==29 set resf=s
if %f%==30 set resf=t
if %f%==31 set resf=u
if %f%==32 set resf=v
if %f%==33 set resf=w
if %f%==34 set resf=x
if %f%==35 set resf=y
if %f%==36 set resf=z
if %f%==37 set resf=A
if %f%==38 set resf=B
if %f%==39 set resf=C
if %f%==40 set resf=D
if %f%==41 set resf=E
if %f%==42 set resf=F
if %f%==43 set resf=G
if %f%==44 set resf=H
if %f%==45 set resf=I
if %f%==46 set resf=J
if %f%==47 set resf=K
if %f%==48 set resf=L
if %f%==49 set resf=M
if %f%==50 set resf=N
if %f%==51 set resf=O
if %f%==52 set resf=P
if %f%==53 set resf=Q
if %f%==54 set resf=R
if %f%==55 set resf=S
if %f%==56 set resf=T
if %f%==57 set resf=U
if %f%==58 set resf=V
if %f%==59 set resf=W
if %f%==60 set resf=X
if %f%==61 set resf=Y
if %f%==62 set resf=Z

if %g%==1 set resg=0
if %g%==2 set resg=1
if %g%==3 set resg=2
if %g%==4 set resg=3
if %g%==5 set resg=4
if %g%==6 set resg=5
if %g%==7 set resg=6
if %g%==8 set resg=7
if %g%==9 set resg=8
if %g%==10 set resg=9
if %g%==11 set resg=a
if %g%==12 set resg=b
if %g%==13 set resg=c
if %g%==14 set resg=d
if %g%==15 set resg=e
if %g%==16 set resg=f
if %g%==17 set resg=g
if %g%==18 set resg=h
if %g%==19 set resg=i
if %g%==20 set resg=j
if %g%==21 set resg=k
if %g%==22 set resg=l
if %g%==23 set resg=m
if %g%==24 set resg=n
if %g%==25 set resg=o
if %g%==26 set resg=p
if %g%==27 set resg=q
if %g%==28 set resg=r
if %g%==29 set resg=s
if %g%==30 set resg=t
if %g%==31 set resg=u
if %g%==32 set resg=v
if %g%==33 set resg=w
if %g%==34 set resg=x
if %g%==35 set resg=y
if %g%==36 set resg=z
if %g%==37 set resg=A
if %g%==38 set resg=B
if %g%==39 set resg=C
if %g%==40 set resg=D
if %g%==41 set resg=E
if %g%==42 set resg=F
if %g%==43 set resg=G
if %g%==44 set resg=H
if %g%==45 set resg=I
if %g%==46 set resg=J
if %g%==47 set resg=K
if %g%==48 set resg=L
if %g%==49 set resg=M
if %g%==50 set resg=N
if %g%==51 set resg=O
if %g%==52 set resg=P
if %g%==53 set resg=Q
if %g%==54 set resg=R
if %g%==55 set resg=S
if %g%==56 set resg=T
if %g%==57 set resg=U
if %g%==58 set resg=V
if %g%==59 set resg=W
if %g%==60 set resg=X
if %g%==61 set resg=Y
if %g%==62 set resg=Z

if %h%==1 set resh=0
if %h%==2 set resh=1
if %h%==3 set resh=2
if %h%==4 set resh=3
if %h%==5 set resh=4
if %h%==6 set resh=5
if %h%==7 set resh=6
if %h%==8 set resh=7
if %h%==9 set resh=8
if %h%==10 set resh=9
if %h%==11 set resh=a
if %h%==12 set resh=b
if %h%==13 set resh=c
if %h%==14 set resh=d
if %h%==15 set resh=e
if %h%==16 set resh=f
if %h%==17 set resh=g
if %h%==18 set resh=h
if %h%==19 set resh=i
if %h%==20 set resh=j
if %h%==21 set resh=k
if %h%==22 set resh=l
if %h%==23 set resh=m
if %h%==24 set resh=n
if %h%==25 set resh=o
if %h%==26 set resh=p
if %h%==27 set resh=q
if %h%==28 set resh=r
if %h%==29 set resh=s
if %h%==30 set resh=t
if %h%==31 set resh=u
if %h%==32 set resh=v
if %h%==33 set resh=w
if %h%==34 set resh=x
if %h%==35 set resh=y
if %h%==36 set resh=z
if %h%==37 set resh=A
if %h%==38 set resh=B
if %h%==39 set resh=C
if %h%==40 set resh=D
if %h%==41 set resh=E
if %h%==42 set resh=F
if %h%==43 set resh=G
if %h%==44 set resh=H
if %h%==45 set resh=I
if %h%==46 set resh=J
if %h%==47 set resh=K
if %h%==48 set resh=L
if %h%==49 set resh=M
if %h%==50 set resh=N
if %h%==51 set resh=O
if %h%==52 set resh=P
if %h%==53 set resh=Q
if %h%==54 set resh=R
if %h%==55 set resh=S
if %h%==56 set resh=T
if %h%==57 set resh=U
if %h%==58 set resh=V
if %h%==59 set resh=W
if %h%==60 set resh=X
if %h%==61 set resh=Y
if %h%==62 set resh=Z
REM LINE IS BELOW IS USED FOR OUTPUT

set /p = %resh%%resg%%resf%%rese%%resd%%resc%%resb%%resa% <nul >out.inf
md5.exe -d%resh%%resg%%resf%%rese%%resd%%resc%%resb%%resa%>>out.inf
type out.inf

FIND /C /I "%INPUT%" out.inf >nul
IF ERRORLEVEL 1 goto retry
goto DONE

:retry
REM LINE BELOW IS VALUE . NUMBER OF VALUE IS 8
set STR=ZZZZZZZZ
if %STR%== %resh%%resg%%resf%%rese%%resd%%resc%%resb%%resa% goto main00

REM LINE ABOVE IS USED FOR OUTPUT
echo %a% >counta.inf
FIND /C /I "62" counta.inf >nul
IF ERRORLEVEL 1 goto nextb
goto loopb

:DONE
echo SUCESS
pause >nul