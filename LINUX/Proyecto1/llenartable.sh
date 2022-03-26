#!/bin/bash
#
#
mysql -u root -p$1 -e "CREATE DATABASE pingdb;"
mysql -u root -p$1 -D pingdb -e "create table pingtabla (p1 float not null, p2 float not null, p3 float not null, p4 float not null, p5 float not null, p6 float not null, p7 float not null, p8 float not null, p9 float not null, p10 float not null, fecha date not null, horas time not null);"  #crea tabla
mysql -u root -p$1 -D pingdb -e "load data infile '/var/www/html/proyecto/reporte2.txt' into table pingtabla;"
