<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gasolina";
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
$v1=$_POST["op1"];
$v2=$_POST["op2"];
$v3=$_POST["op3"];
$v4="empleado";
$v5="civil";
$

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
$conn = new mysqli($servername, $username, $password, $dbname);
  
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

if($v3==$v4)
{

$sql ="SELECT *FROM USUARIOS empleados (zona, tipo_carga, placas, marca, tipo, modelo, area, periodo, vale, cantidad, fecha_carga, kilometraje, carga_real, conductor, firma)VALUES ('$v1', '$v2', '$v6', '$v7', '$v8', '$v9', '$v10', '$v11', '$v12', '$v13', '$v14', '$v15', '$v16', '$v17', '$v18')";
if ($conn->query($sql) === TRUE) {

} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

if($v3==$v5)
{

$sql ="INSERT INTO civil (zona, tipo_carga, placas, marca, tipo, modelo, area, periodo, vale, cantidad, fecha_carga, kilometraje, carga_real, conductor, firma)VALUES ('$v1', '$v2', '$v6', '$v7', '$v8', '$v9', '$v10', '$v11', '$v12', '$v13', '$v14', '$v15', '$v16', '$v17', '$v18')";
if ($conn->query($sql) === TRUE) {
 

} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
header("Status: 301 Moved Permanently");
header("Location: finalizado.html");
exit;
$conn->close();
?>