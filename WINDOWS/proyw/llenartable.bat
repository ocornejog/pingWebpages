@echo off
setlocal EnableDelayedExpansion
set "Noms=p2 p3 p4 p5 p6 p7 p8 p9 p10"
rem --------------------------------------------------------------
rem Crea la base de datos con las tablas para los 10 empresas
mysql -u root -p12345678 -e "create database pingdb " 
mysql -u root -p12345678 -e "use pingdb; create table pingtabla (p1 float not null)"
for %%j in (%Noms%) do (
mysql -u root -p12345678 -e "use pingdb; alter table pingtabla add (%%j float not null)"
)
mysql -u root -p12345678 -e "use pingdb; alter table pingtabla add  (fecha date not null , horas char(8) not null)"
mysql -u root -p12345678 -e "use pingdb; load data infile 'C:/inetpub/wwwroot/proyw/rep5.txt' into table pingtabla fields terminated by '    ' lines terminated by '\n'"