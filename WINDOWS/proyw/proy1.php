<html>
<body style ="background-image:url(imagen/fondo.jpg)">
<h1 align="center">PING MAXIMO </h1>
</body>
<h2 align="center">
<?php
 $enlace=$_GET['link'] ;
 
 echo "enlace: $enlace <br />";


 if ($enlace == 1) {
 $comando = "C:\inetpub\wwwroot\proyw/getping.bat www.amazon.com"; }
 if ($enlace == 2) {
  $comando = "C:\inetpub\wwwroot\proyw/getping.bat www.dropbox.com"; }
 if ($enlace == 3) {
 $comando = "C:\inetpub\wwwroot\proyw/getping.bat www.instagram.com"; }
if ($enlace == 4) {
  $comando = "C:\inetpub\wwwroot\proyw/getping.bat www.java.com"; }
 if ($enlace == 5) {
 $comando = "C:\inetpub\wwwroot\proyw/getping.bat www.twitter.com"; }
if ($enlace == 6) {
  $comando = "C:\inetpub\wwwroot\proyw/getping.bat es.wikipedia.com"; }
 if ($enlace == 7) {
 $comando = "C:\inetpub\wwwroot\proyw/getping.bat mariadb.org"; }
 if ($enlace == 8) {
  $comando = "C:\inetpub\wwwroot\proyw/getping.bat www.yahoo.com"; }
 if ($enlace == 9) {
 $comando = "C:\inetpub\wwwroot\proyw/getping.bat www.google.com"; }
if ($enlace == 10) {
 $comando = "C:\inetpub\wwwroot\proyw/getping.bat facebook.com"; }
 $salida = shell_exec($comando);
?>
</h2>
 <pre>
<h2 align="center">
<?php
 echo $salida;
?> 
</h2>

