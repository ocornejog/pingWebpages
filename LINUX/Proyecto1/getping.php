<html>
<body style ="background-image:url(imagen/fondo.jpg)">
<h1 align="center">PING MAXIMO </h1>
</body>
<h2 align="center">
<?php
 $enlace=$_GET['link'] ;
 
 echo "enlace: $enlace <br />";


 if ($enlace == 1) {
 $comando = "/var/www/html/proyecto/./getping.sh www.amazon.es"; }
 if ($enlace == 2) {
  $comando = "/var/www/html/proyecto/./getping.sh www.dropbox.com"; }
 if ($enlace == 3) {
 $comando = "/var/www/html/proyecto/./getping.sh www.instagram.com"; }
if ($enlace == 4) {
  $comando = "/var/www/html/proyecto/./getping.sh www.java.com"; }
 if ($enlace == 5) {
 $comando = "/var/www/html/proyecto/./getping.sh www.twitter.com"; }
if ($enlace == 6) {
  $comando = "/var/www/html/proyecto/./getping.sh es.wikipedia.org"; }
 if ($enlace == 7) {
 $comando = "/var/www/html/proyecto/./getping.sh mariadb.org"; }
if ($enlace == 8) {
  $comando = "/var/www/html/proyecto/./getping.sh www.yahoo.com"; }
 if ($enlace == 9) {
 $comando = "/var/www/html/proyecto/./getping.sh www.google.com"; }
if ($enlace == 10) {
 $comando = "/var/www/html/proyecto/./getping.sh facebook.com"; }
 $salida = shell_exec($comando);
?>
</h2>
 <pre>
<h2 align="center">
<?php
 echo $salida;
?> 
</h2>

