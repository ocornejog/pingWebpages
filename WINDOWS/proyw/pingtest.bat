@echo off
echo Estoy trabajando ...
SET /a enlace=1
SET  datos1=
:start
IF %enlace% EQU 1  set link="www.amazon.es" 
IF %enlace% EQU 2 set link="www.dropbox.com"
IF %enlace% EQU 3 set link="www.instagram.com"
IF %enlace% EQU 4 set link="www.java.com"
IF %enlace% EQU 5 set link="www.twitter.com"
IF %enlace% EQU 6 set link="es.wikipedia.org"
IF %enlace% EQU 7 set link="mariadb.org"
IF %enlace% EQU 8 set link="www.yahoo.com"
IF %enlace% EQU 9 set link="www.google.com"
IF %enlace% EQU 10 set link="facebook.com"
IF %enlace% EQU 11 goto hora 

echo tu pagina es %link% ?
ping /n 3 %link% > C:\inetpub\wwwroot\proyw\p1.txt
findstr "ximum" C:\inetpub\wwwroot\proyw\p1.txt > C:\inetpub\wwwroot\proyw\p2.txt
for /f "tokens=2 delims=," %%i in (C:\inetpub\wwwroot\proyw\p2.txt) do @echo %%i > C:\inetpub\wwwroot\proyw\p3.txt
for /f "tokens=3 delims= " %%i in (C:\inetpub\wwwroot\proyw\p3.txt) do @echo %%i > C:\inetpub\wwwroot\proyw\p4.txt
for /f "tokens=1 delims=m" %%i in (C:\inetpub\wwwroot\proyw\p4.txt) do @echo %%i >> C:\inetpub\wwwroot\proyw\rep.txt
Setlocal EnableDelayedExpansion
for /f "tokens=*" %%x in (C:\inetpub\wwwroot\proyw\rep.txt) do (
        set datos2=%%x
		 ) 
echo !datos1! !datos2!  > C:\inetpub\wwwroot\proyw\rep.txt
for /f "tokens=*" %%x in (C:\inetpub\wwwroot\proyw\rep.txt) do (
        set datos1=%%x
		 )  
:del C:\inetpub\wwwroot\proyw\p*.*
set /a enlace = %enlace% +  1
echo  %enlace%
goto start
:hora
time /t > C:\inetpub\wwwroot\proyw\p6.txt
for /f "tokens=1 delims= " %%j in (C:\inetpub\wwwroot\proyw\p6.txt) do @echo %%j > C:\inetpub\wwwroot\proyw\p7.txt
set  ar=:00
Setlocal EnableDelayedExpansion
 for /f "tokens=*" %%y in (C:\inetpub\wwwroot\proyw\p7.txt) do (
    set datos3=%%y:00
	)
	set datos3=!datos3: :00=:00!
@echo off
echo Estoy trabajando ...
set datetimef=%date:~-4%-%date:~8,2%-%date:~5,2% 	
@echo %datetimef%> C:\inetpub\wwwroot\proyw\p8.txt
Setlocal EnableDelayedExpansion
 for /f "tokens=*" %%y in (C:\inetpub\wwwroot\proyw\p8.txt) do (
    set datos4=%%y
	)
echo !datos1! !datos4!!datos3! >> C:\inetpub\wwwroot\proyw\rep5.txt	
:del C:\inetpub\wwwroot\proyw\p*.*
:del C:\inetpub\wwwroot\proyw\rep
:cls