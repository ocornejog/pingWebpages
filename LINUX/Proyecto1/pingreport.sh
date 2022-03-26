#!/bin/bash
#
for ((i=1;i<=10;i=i+1)); do
 if [ $i -eq 1 ];
  then link="www.amazon.com"
  elif [ $i -eq 2 ];
   then link="www.dropbox.com"
  elif [ $i -eq 3 ];
   then link="www.instagram.com"
  elif [ $i -eq 4 ];
   then link="www.java.com"
  elif [ $i -eq 5 ];
   then link="www.twitter.com"
  elif [ $i -eq 6 ];
   then link="es.wikipedia.org"
  elif [ $i -eq 7 ];
   then link="mariadb.org"
  elif [ $i -eq 8 ];
   then link="www.yahoo.com"
  elif [ $i -eq 9 ];
   then link="www.google.com"
   elif [ $i -eq 10 ];
   then link="facebook.com"
  else echo $i
 fi

echo $link
touch /var/www/html/proyecto/p0
echo "maximo   = " >> /var/www/html/proyecto/p0 
ping -c 5 $link  > /var/www/html/proyecto/p1
fgrep avg /var/www/html/proyecto/p1 > /var/www/html/proyecto/p2
cut -f4-8 -d"/" /var/www/html/proyecto/p2 > /var/www/html/proyecto/p3
cut -f3 -d"/" /var/www/html/proyecto/p3 >> /var/www/html/proyecto/p5
if [ "/var/www/html/proyecto/p5" = "    " ]
  then echo "9000" > /var/www/html/proyecto/p5
fi
paste /var/www/html/proyecto/p5 >> /var/www/html/proyecto/reporte
more p3
rm /var/www/html/proyecto/p0
rm /var/www/html/proyecto/p1
rm /var/www/html/proyecto/p2
rm /var/www/html/proyecto/p3
rm /var/www/html/proyecto/p5
done
paste -s /var/www/html/proyecto/reporte >> /var/www/html/proyecto/reporte2
tail -3 /var/www/html/proyecto/reporte2 | tee /var/www/html/proyecto/reporte3

date --rfc-3339 seconds > /var/www/html/proyecto/pa1
cut -f1-3 -d"-" /var/www/html/proyecto/pa1 > /var/www/html/proyecto/pa2 #
cut -f1 -d" " /var/www/html/proyecto/pa2 > /var/www/html/proyecto/pa3 #fecha
cut -f2 -d" " /var/www/html/proyecto/pa2 > /var/www/html/proyecto/pa4 #fecha
paste /var/www/html/proyecto/reporte3 /var/www/html/proyecto/pa3 /var/www/html/proyecto/pa4  >> /var/www/html/proyecto/reporte2.txt
 
rm /var/www/html/proyecto/reporte
rm /var/www/html/proyecto/reporte2
rm /var/www/html/proyecto/reporte3
rm /var/www/html/proyecto/pa1
rm /var/www/html/proyecto/pa2
rm /var/www/html/proyecto/pa3
rm /var/www/html/proyecto/pa4

