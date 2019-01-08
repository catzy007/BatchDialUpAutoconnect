@echo off
cls
set n=0
:loop
set /a n=n+1
if %n%==1 set m=0 
if %n%==2 set m=1 
if %n%==3 set m=2 
if %n%==4 set m=3 
if %n%==5 set m=4 
if %n%==6 set m=5 
if %n%==7 set m=6 
if %n%==8 set m=7 
if %n%==9 set m=8 
if %n%==10 set m=9 
if %n%==11 set m=a
if %n%==12 set m=b
if %n%==13 set m=c
if %n%==14 set m=d
if %n%==15 set m=e
if %n%==16 set m=f
if %n%==17 set m=g
if %n%==18 set m=h
if %n%==19 set m=i
if %n%==20 set m=j
if %n%==21 set m=k
if %n%==22 set m=l
if %n%==23 set m=m
if %n%==24 set m=n
if %n%==25 set m=o
if %n%==26 set m=p
if %n%==27 set m=q
if %n%==28 set m=r
if %n%==29 set m=s
if %n%==30 set m=t
if %n%==31 set m=u
if %n%==32 set m=v
if %n%==33 set m=w
if %n%==34 set m=x
if %n%==35 set m=y
if %n%==36 set m=z
if %n%==37 set m=A
if %n%==38 set m=B
if %n%==39 set m=C
if %n%==40 set m=D
if %n%==41 set m=E
if %n%==42 set m=F
if %n%==43 set m=G
if %n%==44 set m=H
if %n%==45 set m=I
if %n%==46 set m=J
if %n%==47 set m=K
if %n%==48 set m=L
if %n%==49 set m=M
if %n%==50 set m=N
if %n%==51 set m=O
if %n%==52 set m=P
if %n%==53 set m=Q
if %n%==54 set m=R
if %n%==55 set m=S
if %n%==56 set m=T
if %n%==57 set m=U
if %n%==58 set m=V
if %n%==59 set m=W
if %n%==60 set m=X
if %n%==61 set m=Y
if %n%==62 set m=Z
echo   case '%n%' :>>a.txt
echo   	cout??"Out : %m% ";>>a.txt
echo   	break; >>a.txt
if %n%==62 goto exit
goto loop
:exit
exit
