<h2 align="center" style="color:white">
<?php
$px=$_POST['pagina_in'] ;
#echo "enlace numero </br>";
echo "GR&AacuteFICA GENERADA</br>";
echo "Enlace n&uacutemero: $px </br>";

$f=$_POST['fecha'];
#echo "$f";
echo "Fecha:  $f </br>";

$di=$_POST['inicial_in'];
echo "Hora inicial:  $di </br>";

$df=$_POST['final_in'];
echo " Hora final:   $df </br>";

 $servername = "localhost";
$username = "root";
$password = "mamacita.com";
$dbname = "pingdb";
$i=0;
//$variable[]=;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn -> connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
//$variable = [];
$sql = "SELECT $px, horas FROM pingtabla where fecha = '$f' AND horas >= '$di' AND horas <= '$df'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
	$i=0;
while ($row = $result->fetch_assoc()) {
    #echo "yt" . $row["$px"] . "ty";
$var[$i] = $row["$px"];
$var2[$i] = $row['horas'];
$i++;
}
} else {
    echo "0 resultados";
}

#$conn->close();
?>
</h2>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>GRAFICAS PROYECTO</title>

		<style type="text/css">
#container {
	min-width: 310px;
	max-width: 800px;
	height: 400px;
	margin: 0 auto
}

		</style>
	</head>

	<body style ="background-image:url(imagen/fondo4.jpg)">

<script src="code/highcharts.js"></script>
<script src="code/series-label.js"></script>
<script src="code/exporting.js"></script>
<script src="code/export-data.js"></script>
<?php 
echo "<p align= 'center' style='color:white;'>La Pagina es: $web De $h1 a $h2</p>";
?> 
<div id="container"></div>
<script type="text/javascript">
Highcharts.chart('container', {
    chart: {
        type: 'area'
    },
    title: {
        text: 'Ping max de paginas web'

    },
    subtitle: {
        text: 'BCD, OCG, CMV'
    },
    xAxis: {
        categories: [<?php $datemp = join($var2, ','); 
		     echo "'" . str_replace(",", "','", $datemp) . "'";?>]
    },
    yAxis: {
        title: {
            text: 'ping_max(ms)'
        }
    },
    plotOptions: {
        line: {
            dataLabels: {
                enabled: true
            },
            enableMouseTracking: false
        }
    },
    series: [{
        name: 'tiempo',
        data: [<?php echo join($var, ','); ?>]
    }]
});

</script>
</body>
</html>

