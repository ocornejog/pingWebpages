@echo off
color 30
echo Estoy trabajando ...

ping /n 3 %1 > C:\php\p1.txt
findstr "ximo" C:\php\p1.txt > C:\php\p2.txt
for /f "tokens=2 delims=," %%i in (C:\php\p2.txt) do @echo %%i > C:\php\p3.txt
for /f "tokens=3 delims= " %%i in (C:\php\p3.txt) do @echo %%i > C:\php\p4.txt
for /f "tokens=1 delims=m" %%i in (C:\php\p4.txt) do @echo %%i >> C:\php\p5.txt
Setlocal EnableDelayedExpansion
for /f "tokens=*" %%x in (C:\php\p5.txt) do (
set datos1=%%x
)
:proceso
echo !datos1!

:fin
del C:\php\p1*.*
del C:\php\p2*.*
del C:\php\p3*.*
del C:\php\p4*.*
del C:\php\p5*.*