<?php  

//Se establece la conexión a la base de datos.
$mysql_usuario = "root";
$mysql_password = "";
$mysql_host = "localhost";
$mysql_database = "gasolina";
$v1 = $_POST["placa"];

$conexion = mysql_connect($mysql_host, $mysql_usuario, $mysql_password, true);

//Seleccionar la base datos y la conexión, si existe un error se captura el error con die.
mysql_select_db($mysql_database, $conexion) || die('No pudo conectarse: '.mysql_error());

$consulta = "SELECT * FROM civil1 WHERE placas = '$v1'";
$consulta2 = "SELECT * FROM empleados1 WHERE placas = '$v1'";
//Preparar la consulta
//$consulta = "SELECT * FROM civil1";
//Ejecutar la consulta
$resultado = mysql_query($consulta, $conexion) or die(mysql_error());
$resultado2 = mysql_query($consulta2, $conexion) or die(mysql_error());

//Se crea una tabla para mostrar los resultados
$tabla = "<table border='1' cellpadding='10'>\n";
$tabla .= "<tr><th>ZONA</th><th>TIPO DE CARGA</th><th>ID</th><th>PLACAS</th><th>MARCA</th><th>TIPO</th><th>MODELO</th><th>AREA</th><th>CONDUCTOR</th><th>VALE</th><th>CANTIDAD($)</th><th>FECHA DE CARGA</th><th>KILOMETRAJE</th><th>CARGA REAL</th><th>DIA INICIAL DEL PERIODO</th><th>DIA FINAL DEL PERIDO</th><th>FIRMA</th></tr>\n";
//Extraer fila a fila con un búcle while
$acumulado=0;
$acum=(int)$acumulado;

while($fila = mysql_fetch_assoc($resultado)){
$tabla .= "<tr>
       <td>".$fila["zona"]."</td>
       <td>".$fila["tipo_carga"]."</td>
       <td>".$fila["id"]."</td>
       <td>".$fila["placas"]."</td>
       <td>".$fila["marca"]."</td>
       <td>".$fila["tipo"]."</td>
       <td>".$fila["modelo"]."</td>
       <td>".$fila["area"]."</td>
       <td>".$fila["conductor"]."</td>
       <td>".$fila["vale"]."</td>
       <td>".$fila['cantidad']."</td>
       <td>".$fila["fecha_carga"]."</td>
       <td>".$fila["kilometraje"]."</td>
       <td>".$fila["carga_real"]."</td>
       <td>".$fila["fecha_inicial"]."</td>
       <td>".$fila["fecha_final"]."</td>
       <td>".$fila["firma"]."</td>

      
      </tr>\n";
$entero=(int)$fila["cantidad"];

      $acumulado= $entero+$acumulado;
}
//Se cierra la tabla
$tabla .= "</table>\n";

echo "<h2>Total gastado civil: </h2> <br>";
echo $acumulado;  echo ' pesos';
$tabla2 = "<table border='1' cellpadding='10'>\n";
$tabla2 .= "<tr><th>ZONA</th><th>TIPO DE CARGA</th><th>ID</th><th>PLACAS</th><th>MARCA</th><th>TIPO</th><th>MODELO</th><th>AREA</th><th>CONDUCTOR</th><th>VALE</th><th>CANTIDAD($)</th><th>FECHA DE CARGA</th><th>KILOMETRAJE</th><th>CARGA REAL</th><th>DIA INICIAL DEL PERIODO</th><th>DIA FINAL DEL PERIDO</th><th>FIRMA</th></tr>\n";
//Extraer fila a fila con un búcle while
//$acumulado=0;
//$acum=(int)$acumulado;

while($fila2 = mysql_fetch_assoc($resultado2)){
$tabla2 .= "<tr>
       <td>".$fila2["zona"]."</td>
       <td>".$fila2["tipo_carga"]."</td>
       <td>".$fila2["id"]."</td>
       <td>".$fila2["placas"]."</td>
       <td>".$fila2["marca"]."</td>
       <td>".$fila2["tipo"]."</td>
       <td>".$fila2["modelo"]."</td>
       <td>".$fila2["area"]."</td>
       <td>".$fila2["conductor"]."</td>
       <td>".$fila2["vale"]."</td>
       <td>".$fila2["cantidad"]."</td>
       <td>".$fila2["fecha_carga"]."</td>
       <td>".$fila2["kilometraje"]."</td>
       <td>".$fila2["carga_real"]."</td>
       <td>".$fila2["fecha_inicial"]."</td>
       <td>".$fila2["fecha_final"]."</td>
       <td>".$fila2["firma"]."</td>

     

      </tr>\n";
      $entero1=(int)$fila2["cantidad"];
      $acumulado1=$entero1+$acumulado1;
}
//Se cierra la tabla
$tabla2 .= "</table>\n";
echo "<h2>Total gastado empleado: </h2> <br>";
echo $acumulado1;   echo ' pesos';
//Cerrar la conexión
$acumuladotot=$acumulado+$acumulado1;
echo "<h2>TOTAL ACUMULADO: </h2> <br>";
echo $acumuladotot; echo ' pesos';
mysql_close($conexion);
?>
 
<!DOCTYPE HTML>
<html>

<meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
      <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="vendor/noui/nouislider.min.css">
<!--===============================================================================================-->
      <link rel="stylesheet" type="text/css" href="css/util.css">
      <link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<head>
<title>placas encontradas</title>
</head>
<body>
<hr>  
<h2>Civiles:</h2>
<?php

//Se muestra la tabla con los resultados de la consulta
echo $tabla;
?>

<br>
<br>
<h2>Empleados:</h2>
<?php
//Se muestra la tabla con los resultados de la consulta
echo $tabla2;
?>
<br>
<br>
<br>
<a href="consulta1.html"><h2><i class="fa fa-long-arrow-left m-l-7" aria-hidden="true"></i> REGRESAR</h2></a>

</body>
</html>
