<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gasolina";
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
$v1=$_POST["op1"];
$v2=$_POST["op2"];
$v3=$_POST["placas"];
$v4=$_POST["marca"];
$v5=$_POST["tipo"];
$v6=$_POST["modelo"];
$v7=$_POST["area"];
$v8=$_POST["nombrecond"];
$v9=$_POST["vale"];
$v10=$_POST["cantidad"];
$v11=$_POST["kilometraje"];
$v12=$_POST["cargareal"];
$v13=$_POST["inicio"];
$v14=$_POST["fin"];
$v15=$_POST["firma"];
$v16=$_POST["fere"];

$fecha_actual = strtotime(date("$v13",time()));
$fecha_entrada = strtotime("$v14");
	
if($fecha_actual > $fecha_entrada)
	{
	header("Status: 301 Moved Permanently");
header("Location: fechaincorrecta2.html");
exit;
	}
	else
	{
				///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		$conn = new mysqli($servername, $username, $password, $dbname);
		  
		// Check connection
		if ($conn->connect_error) {
		    die("Connection failed: " . $conn->connect_error);
		} 
		///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


		$sql ="INSERT INTO empleados1 (zona, tipo_carga, placas, marca, tipo, modelo, area, conductor, vale, cantidad, kilometraje, carga_real, fecha_inicial, fecha_final, firma)VALUES ('$v1', '$v2', '$v3', '$v4', '$v5', '$v6', '$v7', '$v8', '$v9', '$v10', '$v11', '$v12', '$v13', '$v14', '$v15')";
		if ($conn->query($sql) === TRUE) {

		} else {
		    echo "Error: " . $sql . "<br>" . $conn->error;
		}


		header("Status: 301 Moved Permanently");
		header("Location: finalizado.html");
		exit;
	}


$conn->close();
?>