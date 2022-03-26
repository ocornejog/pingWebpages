touch /var/www/html/proyecto/p0
echo "maximo   = " >> /var/www/html/proyecto/p0 
ping -c 5 $1  > /var/www/html/proyecto/p1
fgrep max /var/www/html/proyecto/p1 > /var/www/html/proyecto/p2
cut -f4-8 -d"/" /var/www/html/proyecto/p2 > /var/www/html/proyecto/p3
cut -f3 -d"/" /var/www/html/proyecto/p3 >> /var/www/html/proyecto/p5
paste /var/www/html/proyecto/p0 /var/www/html/proyecto/p5 > /var/www/html/proyecto/reporte
rm /var/www/html/proyecto/p0
rm /var/www/html/proyecto/p1
rm /var/www/html/proyecto/p2
rm /var/www/html/proyecto/p3
rm /var/www/html/proyecto/p5
echo "---------------------" >> /var/www/html/proyecto/reporte
echo "equipo = "$1 >> /var/www/html/proyecto/reporte
#more /var/www/html/proyecto/reporte
cat /var/www/html/proyecto/reporte
#rm /var/www/html/proyecto/reporte
