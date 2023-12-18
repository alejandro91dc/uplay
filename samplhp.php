<!DOCTYPE html>
<html>

<head>
    <title>Insert Page page</title>
</head>

<body>
 
        <?php

        // servername => localhost
        // username => root
        // password => empty
        // database name => staff
        $conn = mysqli_connect("localhost", "root", "", "uplaydb");

        // Check connection
        if($conn === false){
            die("ERROR: Could not connect. "
                . mysqli_connect_error());
        }

        // Taking all 5 values from the form data(input)
        /*$first_name = $_REQUEST['id'];
        $last_name = $_REQUEST['nombre'];
        $gender = $_REQUEST['foto'];
        $address = $_REQUEST['color'];
        $email = $_REQUEST['email'];
*/
        $first_name = "batman";
        $pass = "rasena"
        $last_name = "wayne";
        $address = "addr";
        $email = "ema";
        
        // We are going to insert the data into our sampleDB table
       /*  $sql = "INSERT INTO users VALUES ('$first_name',
            '$last_name','$gender','$address','$email')"; */

/*             $sql = "INSERT INTO `users` (`idAcceso`, `identificador`, `clave`, `nombre`, `foto`, `color`) VALUES (' ', '$first_name', '$pass', '$last_name', '$address', '$email')";
 */



      /*   // Check if the query is successful
        if(mysqli_query($conn, $sql)){
            echo "<h3>data stored in a database successfully."
                . " Please browse your localhost php my admin"
                . " to view the updated data</h3>";

            echo nl2br("\n$first_name\n $last_name\n "
                . "$pass\n $address\n $email");
        } else{
            echo "ERROR: Hush! Sorry $sql. "
                . mysqli_error($conn);
        }

        // Close connection
        mysqli_close($conn); */


        $sql = "INSERT INTO `users` (`idAcceso`, `identificador`, `clave`, `nombre`, `foto`, `color`) VALUES (NULL, 'hooll', 'hool', 'jkj', 'fdfd', 'sdfsdf')";
$stmt = $mysqli->prepare($sql);

// Verificar si la preparación de la consulta fue exitosa
if ($stmt) {
    // Vincular parámetros y sus tipos
    $stmt->bind_param("sssss", $identificador, $clave, $nombre, $foto, $color);

    // Ejecutar la consulta
    $stmt->execute();

    // Cerrar la sentencia preparada
    $stmt->close();

    echo "Datos insertados correctamente.";
} else {
    // Manejar el caso en que la preparación de la consulta falla
    echo "Error en la preparación de la consulta: " . $mysqli->error;
}

// Cerrar la conexión a la base de datos
$mysqli->close();
        ?>
  
</body>

</html>